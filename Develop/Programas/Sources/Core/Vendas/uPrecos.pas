unit uPrecos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids,
  DBGrids, StdCtrls, Mask, Buttons, ZSequence;

type
  TPrecos = class(TIDefBrowse)
    IBrwSrcgrupo: TIntegerField;
    IBrwSrcdescri_grupo: TStringField;
    IBrwSrccodserv: TIntegerField;
    IBrwSrcdescri: TStringField;
    IBrwSrcvalor: TFloatField;
    IBrwSrctipo: TIntegerField;
    IBrwSrcrecno: TIntegerField;
    cbCat: TComboBox;
    Label1: TLabel;
    sqLaudosCli: TZSequence;
    qGrupoServ: TZReadOnlyQuery;
    qGrupoServrecno: TIntegerField;
    qGrupoServdescri: TStringField;
    zLaudos: TZUpdateSQL;
    qLaudos: TZQuery;
    dsLaudos: TDataSource;
    qLaudosrecno: TIntegerField;
    qLaudosdescri: TStringField;
    qLaudosvalor: TFloatField;
    qLaudoscodserv: TIntegerField;
    qLaudostitulo: TStringField;
    zLaudosCli: TZUpdateSQL;
    qLaudosCli: TZQuery;
    dsLaudosCli: TDataSource;
    qLaudosClirelato_recno: TIntegerField;
    qLaudosClicliente: TIntegerField;
    qLaudosCliempresa: TStringField;
    qLaudosClinome_chave: TStringField;
    qLaudosClicnpj: TStringField;
    qLaudosClicpf: TStringField;
    qLaudosClicidade: TStringField;
    qLaudosCliestado: TStringField;
    qLaudosClivalor: TFloatField;
    qLaudosClirecno: TIntegerField;
    procedure IBrwSrctipoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBrwSrctipoSetText(Sender: TField; const Text: string);
    procedure qGrupoServAfterScroll(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure cbCatChange(Sender: TObject);
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure qLaudosAfterScroll(DataSet: TDataSet);
    procedure qLaudosCliAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    procedure ClearGrupos;
    procedure OnLoad; override;
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  Precos: TPrecos;

implementation

uses uDM, uIUtils, uPrecosM, iTypes;

{$R *.dfm}

procedure TPrecos.cbCatChange(Sender: TObject);
begin
  inherited;
  if Assigned(cbCat.Items.Objects[cbCat.ItemIndex]) then
    qGrupoServ.GotoBookmark(cbCat.Items.Objects[cbCat.ItemIndex]);

  RefreshCtrl;
end;

procedure TPrecos.ClearGrupos;
var
  I: Integer;
begin
  with cbCat do
  begin
    for I := 0 to Items.Count - 1 do
      if Assigned(Items.Objects[i]) then
        qGrupoServ.FreeBookmark(Items.Objects[i]);

    Clear;
  end;
end;

procedure TPrecos.FormCreate(Sender: TObject);
begin
  inherited;
  Precos:= Self;
end;

procedure TPrecos.FormDestroy(Sender: TObject);
begin
  ClearGrupos;
  inherited;
end;

procedure TPrecos.IBrwSrcAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qLaudos.ParamByName('servico').AsInteger := IBrwSrccodserv.AsInteger;
  G.RefreshDataSet(qLaudos);
end;

procedure TPrecos.IBrwSrctipoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  Case Sender.AsInteger of
    1: Text := 'Variável';
    2: Text := 'Fixo';
  End;
end;

procedure TPrecos.IBrwSrctipoSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if not (IBrwSrc.State in [dsEdit, dsInsert]) then
    Exit;

  case Text[1] of
    'V': Sender.AsInteger := 1;
    'F': Sender.AsInteger := 2;
  end;

end;

procedure TPrecos.OnEdit;
begin
  PrecosM := TPrecosM.Create(nil);
  with PrecosM do
  try
    AllowInsert := False;
    DataSet := IBrwSrc;
    ChildDataSet := qLaudos;
    ScreenType := stMasterDetail;
    ShowModal;
  finally
    FreeAndNil(PrecosM);
  end;
end;

procedure TPrecos.OnLoad;
begin
  inherited;
  AllowInsert := False;
  with cbCat, qGrupoServ do
  try
    Open;
    DisableControls;
    Items.BeginUpdate;
    ClearGrupos;

    while not Eof do
    begin
      Items.AddObject(FieldByName('descri').AsString, qGrupoServ.GetBookmark);

      Next;
    end;

    if Items.Count > 0 then
      ItemIndex := 0;
  finally
    Items.EndUpdate;
    EnableControls;

    cbCatChange(cbCat);
  end;
end;

procedure TPrecos.qGrupoServAfterScroll(DataSet: TDataSet);
begin
  inherited;
  IBrwSrc.ParamByName('grupo').AsInteger := qGrupoServrecno.AsInteger;
  G.RefreshDataSet(IBrwSrc);
end;

procedure TPrecos.qLaudosAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qLaudosCli.ParamByName('relato_recno').AsInteger := qLaudosrecno.AsInteger;
  G.RefreshDataSet(qLaudosCli);
end;

procedure TPrecos.qLaudosCliAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qLaudosClirelato_recno.AsInteger := qLaudosrecno.AsInteger;
  qLaudosClivalor.AsFloat := qLaudosvalor.AsFloat; 
end;

initialization
  RegisterClass(TPrecos);

finalization
  UnRegisterClass(TPrecos);

end.
