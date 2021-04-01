unit uCotaM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls, JvExMask, JvToolEdit, JvDBControls, Buttons,
  JvBaseEdits, JvExStdCtrls, JvCombobox, JvDBCombobox;

type
  TCotaM = class(TIDefBrowseEdit)
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Panel12: TPanel;
    Panel13: TPanel;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Panel14: TPanel;
    SpeedButton3: TSpeedButton;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    actFindTipo: TAction;
    Panel15: TPanel;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Panel16: TPanel;
    SpeedButton1: TSpeedButton;
    actFindCli: TAction;
    Panel17: TPanel;
    Panel20: TPanel;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Panel21: TPanel;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Panel22: TPanel;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Panel23: TPanel;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    Panel18: TPanel;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    Label16: TLabel;
    DBMemo1: TDBMemo;
    ToolButton5: TToolButton;
    ToolButton15: TToolButton;
    Panel30: TPanel;
    Label22: TLabel;
    DBEdit20: TDBEdit;
    Panel31: TPanel;
    Panel32: TPanel;
    Label23: TLabel;
    edFrascos: TDBEdit;
    Panel34: TPanel;
    Label24: TLabel;
    edSeringas: TDBEdit;
    Panel33: TPanel;
    Label25: TLabel;
    cbEnvio: TJvDBComboBox;
    Panel35: TPanel;
    Label26: TLabel;
    SpeedButton4: TSpeedButton;
    edFrete: TJvDBCalcEdit;
    actSedex: TAction;
    Panel36: TPanel;
    Label27: TLabel;
    DBEdit23: TDBEdit;
    Panel37: TPanel;
    Label28: TLabel;
    cbFrete: TJvDBComboBox;
    Panel52: TPanel;
    Label39: TLabel;
    DBEdit34: TDBEdit;
    Panel53: TPanel;
    Label40: TLabel;
    DBEdit35: TDBEdit;
    Panel58: TPanel;
    Label43: TLabel;
    cbRemessa: TJvDBComboBox;
    Panel57: TPanel;
    Label42: TLabel;
    JvDBComboBox3: TJvDBComboBox;
    TabSheet5: TTabSheet;
    DBGrid4: TDBGrid;
    actDespVinc: TAction;
    Panel54: TPanel;
    Label50: TLabel;
    DBMemo4: TDBMemo;
    Panel55: TPanel;
    Label41: TLabel;
    DBEdit21: TDBEdit;
    Panel56: TPanel;
    Panel59: TPanel;
    Label44: TLabel;
    JvDBComboBox1: TJvDBComboBox;
    TabSheet4: TTabSheet;
    DBGrid5: TDBGrid;
    procedure DBEdit7Exit(Sender: TObject);
    procedure actFindTipoExecute(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure actFindCliExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actSedexExecute(Sender: TObject);
    procedure cbEnvioChange(Sender: TObject);
    procedure cbRemessaChange(Sender: TObject);
    procedure PageControl3Change(Sender: TObject);
    procedure actDespVincExecute(Sender: TObject);
    procedure edFrascosExit(Sender: TObject);
    procedure edSeringasExit(Sender: TObject);
    procedure edFreteExit(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    procedure OnLoad; override;
    procedure OnEdit; override;
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  CotaM: TCotaM;

implementation

uses uCota, mcutils, DB, uIUtils, uOrcaGrupos, uClientes, uDM, uCotaMMat,
  uCotaMServ, iTypes, uCotaMMO, uContatoF, uSedex, uSedexCalculos;

{$R *.dfm}

{ TCotaM }

procedure TCotaM.actDespVincExecute(Sender: TObject);
var
  msg: string;
begin
  inherited;
  with U.Data.Query do
  try
    SQL.Text := 'select fin_caixaVincularCotacao(:cliente, :cotacao);';
    ParamByName('cliente').AsInteger := Cota.IBrwSrccliente.AsInteger;
    ParamByName('cotacao').AsInteger := Cota.IBrwSrcrecno.AsInteger;
    Open;

    if Fields[0].AsInteger = 0 then
      U.Out.ShowWarn('Não há despesas para serem vinculadas a cotação!')
    else
    begin
      if Cota.IBrwSrcstatus.AsInteger > 1 then
        msg := #13#10 + #13#10 + 'A cotação precisa ser aprovada novamente!';

      U.Out.ShowInfo('%d despesa(s) vinculada(s) ao pedido %d%s',
        [Fields[0].AsInteger, Cota.IBrwSrcrecno.AsInteger, msg]);
    end;
  finally
    Close;
    G.RefreshDataSet(Cota.qDesp);
    G.RefreshDataSet(Cota.IBrwSrc, True);
    RefreshControls;
  end;
end;

procedure TCotaM.actFindCliExecute(Sender: TObject);
begin
  inherited;
  Clientes := TClientes.Create(Application);
  try
//    Clientes.cbSituacao.Enabled := (DataSet.State <> dsInsert);
    Clientes.DisplayMode := dmQuery;
    Clientes.ShowModal;
    if (Clientes.Execute) then
    begin
      DataSet.FieldByName('cliente').AsInteger := Clientes.IBrwSrccodigo.AsInteger;
      DBEdit9Exit(DBEdit9);
    end;
  finally
    Clientes.Release;
  end;
end;

procedure TCotaM.actFindTipoExecute(Sender: TObject);
begin
  inherited;
  OrcaGrupos := TOrcaGrupos.Create(nil);
  try
    OrcaGrupos.DisplayMode := dmQuery;
    OrcaGrupos.ShowModal;
    if (OrcaGrupos.Execute) then
    begin
      DataSet.FieldByName('grupo').AsInteger := OrcaGrupos.IBrwSrcrecno.AsInteger;
      DBEdit7Exit(DBEdit7);
    end;
  finally
    FreeAndNil(OrcaGrupos);
  end;
end;

procedure TCotaM.actSedexExecute(Sender: TObject);
begin
  inherited;
  Sedex := TSedex.Create(nil);
  with DataSet, Sedex do
  try
    Destinatario := FieldByName('cliente').AsInteger;
    Correio := FieldByName('correio').AsInteger;
    Calculos := TFreteLab.Create(FieldByName('frascos').AsInteger, FieldByName('seringas').AsInteger);

    ShowModal;

    if Sedex.Execute then
    begin
      FieldByName('correio').AsInteger := Correio;
      FieldByName('frete').AsFloat := ValorCorrigido;
    end;
  finally
    FreeAndNil(Sedex);
    RefreshControls;
  end;
end;

procedure TCotaM.cbRemessaChange(Sender: TObject);
begin
  inherited;
  RefreshControls;
end;

procedure TCotaM.DBEdit7Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(TDBEdit(Sender).Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  fLkp:= TStringList.Create;
  try
    fLkp.Add('descri');
    fLkp.Add('validade');

    if U.Data.CheckFK('orca_grupo', 'recno', QuotedStr(TDBEdit(Sender).Text), fLkp) then
    begin
      DataSet.FieldByName('descri').AsString := fLkp[0];
      DataSet.FieldByName('validade').AsDateTime :=
        DataSet.FieldByName('emissao').AsDateTime + StrToInt(fLkp[1]);
    end
    else
    begin
      U.Out.ShowErro('Tipo de orçamento não cadastrado.');
      TDBEdit(Sender).SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TCotaM.DBEdit9Exit(Sender: TObject);
var
  fLkp: TStringList;
  filtro: string;
begin
  inherited;
  filtro := EmptyStr;  
  if mcEmpty(TDBEdit(Sender).Text) or not (DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  if DataSet.State = dsInsert then
    filtro := 'situacao = ''ATIVO'' ';

  fLkp:= TStringList.Create;
  try
    fLkp.Add('empresa');
    fLkp.Add('nome_chave');
    fLkp.Add('cnpj');
    fLkp.Add('cpf');
    fLkp.Add('id_vendedor');
    fLkp.Add('cidade');
    fLkp.Add('estado');

    if U.Data.CheckFK('tbclientes', 'codigo', QuotedStr(TDBEdit(Sender).Text), fLkp, filtro) then
    begin
      DataSet.FieldByName('empresa').AsString := fLkp[0];
      DataSet.FieldByName('nome_chave').AsString := fLkp[1];
      DataSet.FieldByName('cnpj').AsString := fLkp[2];
      DataSet.FieldByName('cpf').AsString := fLkp[3];
      DataSet.FieldByName('vendedor').AsString := fLkp[4];
      DataSet.FieldByName('cidade').AsString := fLkp[5];
      DataSet.FieldByName('estado').AsString := fLkp[6];
    end
    else
    begin
      U.Out.ShowErro('Cliente não cadastrado.');
      TDBEdit(Sender).SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TCotaM.edFrascosExit(Sender: TObject);
begin
  inherited;
  RefreshControls;
end;

procedure TCotaM.edFreteExit(Sender: TObject);
begin
  inherited;
  RefreshControls;
end;

procedure TCotaM.edSeringasExit(Sender: TObject);
begin
  inherited;
  RefreshControls;
end;

procedure TCotaM.FormResize(Sender: TObject);
begin
  inherited;
  Panel3.Height := ClientHeight - (PageControl1.Top + 380);
end;

procedure TCotaM.FormShow(Sender: TObject);
begin
  inherited;
  ChildGridEnter(DBGrid2);
end;

procedure TCotaM.cbEnvioChange(Sender: TObject);
begin
  inherited;
  edFrete.ReadOnly := cbEnvio.Values[cbEnvio.ItemIndex] = '3';
  RefreshControlsStyle(self);
end;

procedure TCotaM.OnEdit
;
begin
  case PageControl3.ActivePageIndex of
    0:
    begin
      CotaMServ := TCotaMServ.Create(nil);
      try
        CotaMServ.ScreenType := stMasterDetail;
        CotaMServ.DataSet := Cota.qServ;
        CotaMServ.ChildDataSet := Cota.qServDet;
        CotaMServ.ShowModal;
      finally
        FreeAndNil(CotaMServ);
      end;
    end;
    1:
    begin
      CotaMMat := TCotaMMat.Create(nil);
      try
        CotaMMat.DataSet := Cota.qMat;
        CotaMMat.ShowModal;
      finally
        FreeAndNil(CotaMMat);
      end;
    end;
    2:
    begin
      CotaMMO := TCotaMMO.Create(nil);
      try
        CotaMMO.DataSet := Cota.qMObra;
        CotaMMO.ShowModal;
      finally
        FreeAndNil(CotaMMO);
      end;
    end;
  else
    inherited;
  end;
  
  RefreshControls;
end;

procedure TCotaM.OnLoad;
begin
  inherited;
  WindowState := wsMaximized;
end;

procedure TCotaM.PageControl3Change(Sender: TObject);
begin
  inherited;
  try
    ToolButton10.Action := actNew;

    if PageControl3.ActivePage = TabSheet5 then
      ToolButton10.Action := actDespVinc;
  finally
    RefreshControls;
  end;
end;

procedure TCotaM.RefreshControls;
begin
  inherited;
  edFrete.ReadOnly := False;
  actSedex.Enabled := False;
  cbEnvio.Enabled := False;
  actDespVinc.Enabled := False;
  try
    if not Assigned(DataSet) or not Assigned(ChildDataSet) then
      Exit;

    with DataSet, PageControl3 do
    begin
      actFindTipo.Enabled := (State <> dsBrowse);
      actFindCli.Enabled := (State <> dsBrowse);
      actEditMaster.Enabled := actEditMaster.Enabled and (FieldByName('status').AsInteger < 5);
      actDelMaster.Enabled := actDelMaster.Enabled and (FieldByName('status').AsInteger < 3);

      Self.actNew.Enabled := (ChildDataSet.State = dsBrowse) and
      actEditMaster.Enabled and
      (((ActivePageIndex = 0) and (Cota.IBrwSrcreqsrv.AsBoolean)) or
       ((ActivePageIndex = 1) and (Cota.IBrwSrcreqmat.AsBoolean)) or
       ((ActivePageIndex = 2) and (Cota.IBrwSrcreqmo.AsBoolean)));

      cbEnvio.Enabled := cbRemessa.ItemIndex = 0;
      actDespVinc.Enabled := (FieldByName('status').AsInteger < 3);
      actSedex.Enabled := (State in [dsEdit, dsInsert]) and cbEnvio.Enabled;
      actEdit.Enabled := actEdit.Enabled and (ActivePageIndex < 3);
      actView.Enabled := actView.Enabled and (ActivePageIndex < 3);
      actDel.Enabled := actDel.Enabled and ((ActivePageIndex < 3) or actDespVinc.Enabled);
    end;
  finally
    cbFrete.Enabled := cbEnvio.Enabled;
    edFrascos.Enabled := cbEnvio.Enabled;
    edSeringas.Enabled := cbEnvio.Enabled;
    edFrete.Enabled := cbEnvio.Enabled;
  end;
end;

end.
