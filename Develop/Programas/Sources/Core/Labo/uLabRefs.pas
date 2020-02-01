unit uLabRefs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, ZSequence, uIUtils;

type
  TLabRefs = class(TIDefBrowse)
    IBrwSrcclasse: TStringField;
    IBrwSrcmin: TFloatField;
    IBrwSrcmax: TFloatField;
    IBrwSrctpamostra_recno: TIntegerField;
    IBrwSrcdescri: TStringField;
    IBrwSrcensaio_recno: TIntegerField;
    IBrwSrcnome: TStringField;
    IBrwSrcunidade: TStringField;
    IBrwSrcmetodo: TStringField;
    IBrwSrcvalor: TFloatField;
    IBrwSrcrecno: TIntegerField;
    ZSequence1: TZSequence;
    Label18: TLabel;
    cbClasse: TComboBox;
    Label1: TLabel;
    cbTipo: TComboBox;
    Label3: TLabel;
    cbEnsaios: TComboBox;
    IBrwSrctipo: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure cbClasseChange(Sender: TObject);
    procedure IBrwSrctipoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBrwSrctipoSetText(Sender: TField; const Text: string);
  private
    FCBClasse: TComboList;
    FCBTipo: TComboList;
    FCBEnsaio: TComboList;
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  LabRefs: TLabRefs;

implementation

uses uDM, uLabRefsM;

{$R *.dfm}

procedure TLabRefs.actQueryProcessExecute(Sender: TObject);
var
  fw : string;
begin
  inherited;
  fw := EmptyStr;
  
  if cbClasse.ItemIndex > 0 then
    fw := ' r.classe = :classe ';

  if cbTipo.ItemIndex > 0 then
  begin
    if fw <> EmptyStr then
      fw := fw + ' and ';
    fw := fw + ' r.tpamostra_recno = :tipo ';
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

    if Assigned(Params.FindParam('classe')) then
      ParamByName('classe').AsString := FCBClasse.Selected.Value;

    if Assigned(Params.FindParam('tipo')) then
      ParamByName('tipo').AsInteger := FCBTipo.Selected.Value;

    if Assigned(Params.FindParam('ensaio')) then
      ParamByName('ensaio').AsInteger := FCBEnsaio.Selected.Value;
  end;

  G.RefreshDataSet(DataSet);
end;

procedure TLabRefs.cbClasseChange(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQuery);
end;

procedure TLabRefs.FormCreate(Sender: TObject);
begin
  inherited;
  FCBClasse := TComboList.Create(cbClasse, 'labtensao', 'classe', 'classe');
  FCBTipo := TComboList.Create(cbTipo, 'labtipo', 'recno', 'descri');
  FCBEnsaio := TComboList.Create(cbEnsaios, 'labens', 'recno', 'nome');
  
  cbClasse.Items.Insert(0, 'Todos');
  cbTipo.Items.Insert(0, 'Todos');
  cbEnsaios.Items.Insert(0, 'Todos');

  cbClasse.ItemIndex := 0;
  cbTipo.ItemIndex := 0;
  cbEnsaios.ItemIndex := 0;
end;

procedure TLabRefs.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FCBClasse);
  FreeAndNil(FCBTipo);
  FreeAndNil(FCBEnsaio);
  inherited;
end;

procedure TLabRefs.IBrwSrctipoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Mínimo';
    2: Text := 'Máximo';
  end;
end;

procedure TLabRefs.IBrwSrctipoSetText(Sender: TField; const Text: string);
begin
  inherited;
  if Text = 'Mínimo' then
    Sender.AsInteger := 1;

  if Text = 'Máximo' then
    Sender.AsInteger := 2;
end;

procedure TLabRefs.OnEdit;
begin
  LabRefsM := TLabRefsM.Create(nil);
  try
    LabRefsM.DataSet := DataSet;
    LabRefsM.ShowModal;
  finally
    FreeAndNil(LabRefsM);
  end;

end;

initialization
  RegisterClass(TLabRefs);

finalization
  UnRegisterClass(TLabRefs);

end.
