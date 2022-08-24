unit uLabRef;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, uIUtils, ZSequence;

type
  TLabRef = class(TIDefBrowse)
    IBrwSrctipo_recno: TIntegerField;
    IBrwSrcdescri: TStringField;
    IBrwSrcensaio_recno: TIntegerField;
    IBrwSrcnome: TStringField;
    IBrwSrcunidade: TStringField;
    IBrwSrcmetodo: TStringField;
    IBrwSrcvalor: TFloatField;
    IBrwSrcrecno: TIntegerField;
    IBrwSrctipo: TIntegerField;
    Label1: TLabel;
    cbTipo: TComboBox;
    Label3: TLabel;
    cbEnsaios: TComboBox;
    ZSequence1: TZSequence;
    procedure IBrwSrctipoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBrwSrctipoSetText(Sender: TField; const Text: string);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure cbTipoChange(Sender: TObject);
    procedure cbEnsaiosChange(Sender: TObject);
  private
    FCBTipo: TComboList;
    FCBEnsaio: TComboList;
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  LabRef: TLabRef;

implementation

uses uDM, uLabRefM;

{$R *.dfm}

procedure TLabRef.actQueryProcessExecute(Sender: TObject);
var
  fw : string;
begin
  inherited;
  fw := EmptyStr;
  
  if cbTipo.ItemIndex > 0 then
  begin
    if fw <> EmptyStr then
      fw := fw + ' and ';
    fw := fw + ' r.tipo_recno = :tipo ';
  end;

  if cbEnsaios.ItemIndex > 0 then
  begin
    if fw <> EmptyStr then
      fw := fw + ' and ';
    fw := fw + ' r.ensaio_recno = :ensaio ';
  end;

  with IBrwSrc do
  begin
    if fw <> EmptyStr then
      SQL.Add('where ' + fw);

    if Assigned(Params.FindParam('tipo')) then
      ParamByName('tipo').AsInteger := FCBTipo.Selected.Value;

    if Assigned(Params.FindParam('ensaio')) then
      ParamByName('ensaio').AsInteger := FCBEnsaio.Selected.Value;
  end;

  G.RefreshDataSet(DataSet);
end;

procedure TLabRef.cbEnsaiosChange(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQuery);
end;

procedure TLabRef.cbTipoChange(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQuery);
end;

procedure TLabRef.FormCreate(Sender: TObject);
begin
  inherited;
  FCBTipo := TComboList.Create(cbTipo, 'labtipo', 'recno', 'descri');
  FCBEnsaio := TComboList.Create(cbEnsaios, 'labens', 'recno', 'nome');

  cbTipo.Items.Insert(0, 'Todos');
  cbEnsaios.Items.Insert(0, 'Todos');

  cbTipo.ItemIndex := 0;
  cbEnsaios.ItemIndex := 0;
end;

procedure TLabRef.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FCBTipo);
  FreeAndNil(FCBEnsaio);
  inherited;
end;

procedure TLabRef.IBrwSrctipoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Mínimo';
    2: Text := 'Máximo';
  end;
end;

procedure TLabRef.IBrwSrctipoSetText(Sender: TField; const Text: string);
begin
  if Text = 'Mínimo' then
    Sender.AsInteger := 1;

  if Text = 'Máximo' then
    Sender.AsInteger := 2;
end;

procedure TLabRef.OnEdit;
begin
  LabRefM := TLabRefM.Create(nil);
  try
    LabRefM.DataSet := DataSet;
    LabRefM.ShowModal;
  finally
    FreeAndNil(LabRefM);
  end;
end;

initialization
  RegisterClass(TLabRef);

finalization
  UnRegisterClass(TLabRef);

end.
