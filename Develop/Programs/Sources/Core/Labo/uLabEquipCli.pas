unit uLabEquipCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, ZSequence, JvExMask, JvToolEdit, JvBaseEdits,
  JvExStdCtrls, JvEdit;

type
  TLabEquipCli = class(TIDefBrowse)
    IBrwSrcequip: TIntegerField;
    IBrwSrctag: TStringField;
    IBrwSrcsubest: TIntegerField;
    IBrwSrcstatus: TIntegerField;
    IBrwSrcenerg: TDateField;
    IBrwSrcrecno: TIntegerField;
    IBrwSrcserie: TStringField;
    IBrwSrcdescri: TStringField;
    IBrwSrcfases: TIntegerField;
    IBrwSrclote: TStringField;
    IBrwSrcano: TIntegerField;
    IBrwSrcvolume: TIntegerField;
    IBrwSrcdrenos: TStringField;
    ZSequence1: TZSequence;
    IBrwSrccodigo: TIntegerField;
    Label7: TLabel;
    SpeedButton3: TSpeedButton;
    Label8: TLabel;
    Label9: TLabel;
    edCliCod: TJvEdit;
    edCliNome: TEdit;
    edCliCNPJ: TMaskEdit;
    actFindCli: TAction;
    IBrwSrcnome_chave: TStringField;
    IBrwSrccnpj: TStringField;
    IBrwSrcfabricante: TStringField;
    IBrwSrctipo: TStringField;
    IBrwSrcisolante: TStringField;
    IBrwSrcsigla: TStringField;
    IBrwSrcsubest_nome: TStringField;
    IBrwSrcregional: TIntegerField;
    IBrwSrcreg_nome: TStringField;
    IBrwSrcimped: TFloatField;
    IBrwSrctensao: TFloatField;
    IBrwSrccorr: TFloatField;
    IBrwSrcpotencia: TFloatField;
    IBrwSrclocal: TStringField;
    IBrwSrcpotencia_un: TStringField;
    IBrwSrctensao_un: TStringField;
    procedure IBrwSrcstatusGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBrwSrcstatusSetText(Sender: TField; const Text: string);
    procedure edCliCodKeyPress(Sender: TObject; var Key: Char);
    procedure edCliCodExit(Sender: TObject);
    procedure actFindCliExecute(Sender: TObject);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
    procedure IBrwSrccodigoChange(Sender: TField);
    procedure IBrwSrcequipChange(Sender: TField);
    procedure IBrwSrcsubestChange(Sender: TField);
    procedure FormShow(Sender: TObject);
  private
    procedure RefreshCtrl; override;
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  LabEquipCli: TLabEquipCli;

implementation

uses uDM, mcUtils, uIUtils, uClientes, uLabEquipCliM, uResources;

{$R *.dfm}

procedure TLabEquipCli.IBrwSrcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if edCliCod.Text <> EmptyStr then
  begin
    DataSet.FieldByName('codigo').AsInteger := StrToInt(edCliCod.Text);
    DataSet.FieldByName('nome_chave').AsString := edCliNome.Text;
    DataSet.FieldByName('cnpj').AsString := edCliCNPJ.Text;
  end;

  IBrwSrcstatus.AsInteger := 1;
end;

procedure TLabEquipCli.IBrwSrccodigoChange(Sender: TField);
begin
  inherited;
  if not (DataSet.State in [dsEdit, dsInsert]) or not Sender.IsNull then
    Exit;

  IBrwSrcnome_chave.SetData(nil);
  IBrwSrccnpj.SetData(nil);
  IBrwSrcsubest.SetData(nil);
end;

procedure TLabEquipCli.IBrwSrcequipChange(Sender: TField);
begin
  inherited;
  if not (DataSet.State in [dsEdit, dsInsert]) or not Sender.IsNull then
    Exit;

  IBrwSrctipo.SetData(nil);
  IBrwSrcfabricante.SetData(nil);
  IBrwSrcano.SetData(nil);
  IBrwSrclote.SetData(nil);
  IBrwSrcserie.SetData(nil);
  IBrwSrcdescri.SetData(nil);
  IBrwSrcpotencia.SetData(nil);
  IBrwSrcfases.SetData(nil);
  IBrwSrcimped.SetData(nil);
  IBrwSrctensao.SetData(nil);
  IBrwSrccorr.SetData(nil);
  IBrwSrcisolante.SetData(nil);
  IBrwSrcvolume.SetData(nil);
  IBrwSrcdrenos.SetData(nil);
  IBrwSrcpotencia_un.SetData(nil);
  IBrwSrctensao_un.SetData(nil);
end;

procedure TLabEquipCli.IBrwSrcstatusGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Ativo';
    2: Text := 'Inativo';
  end;
end;

procedure TLabEquipCli.IBrwSrcstatusSetText(Sender: TField; const Text: string);
begin
  inherited;
  if not (IBrwSrc.State in [dsEdit, dsInsert]) then
    Exit;

  case Text[1] of
    'A': Sender.AsInteger := 1;
    'I': Sender.AsInteger := 2;
  end;
end;

procedure TLabEquipCli.IBrwSrcsubestChange(Sender: TField);
begin
  inherited;

  if not (DataSet.State in [dsEdit, dsInsert]) or not Sender.IsNull then
    Exit;

  IBrwSrcsigla.SetData(nil);
  IBrwSrcsubest_nome.SetData(nil);
  IBrwSrcregional.SetData(nil);
  IBrwSrcreg_nome.SetData(nil);
end;

procedure TLabEquipCli.OnEdit;
begin
  LabEquipCliM := TLabEquipCliM.Create(nil);
  try
    LabEquipCliM.DataSet := DataSet;
    LabEquipCliM.ShowModal;
  finally
    FreeAndNil(LabEquipCliM);
  end;

end;

procedure TLabEquipCli.RefreshCtrl;
begin
  inherited;
  actFindCli.Enabled := True;
end;

procedure TLabEquipCli.actFindCliExecute(Sender: TObject);
begin
  inherited;
  Clientes := TClientes.Create(nil);
  try
    Clientes.DisplayMode := dmQuery;
    Clientes.ShowModal;
    if (Clientes.Execute) then
    begin
      edCliCod.Text := Clientes.IBrwSrccodigo.AsString;
      edCliCodExit(edCliCod);
    end;
  finally
    FreeAndNil(Clientes);
  end;
end;

procedure TLabEquipCli.actQueryProcessExecute(Sender: TObject);
begin
  actQueryProcess.Enabled := False;

  inherited;

  with IBrwSrc do
  begin
    ParamByName('codigo').AsInteger := StrToInt(edCliCod.Text);
    G.RefreshDataSet(DataSet);
  end;
end;

procedure TLabEquipCli.edCliCodExit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  edCliNome.Text := '';
  edCliCNPJ.Text := '';

  if mcEmpty(edCliCod.Text) then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('nome_chave');
    fLkp.Add('cnpj');

    if U.Data.CheckFK('tbclientes', 'codigo', QuotedStr(edCliCod.Text), fLkp) then
    begin
      edCliNome.Text := fLkp[0];
      edCliCNPJ.Text := fLkp[1];

      actQueryProcess.Enabled := True;
      actQueryProcessExecute(actQueryProcess);
    end
    else
    begin
      U.Out.ShowErro('Cliente não cadastrado.');
      edCliCod.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TLabEquipCli.edCliCodKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', #8, #13]) then
    key := #0;

  inherited;
end;

procedure TLabEquipCli.FormShow(Sender: TObject);
begin
  inherited;
  if edCliCod.Text <> EmptyStr then
    edCliCodExit(edCliCod);
end;

initialization
  RegisterClass(TLabEquipCli);

finalization
  UnRegisterClass(TLabEquipCli);

end.
