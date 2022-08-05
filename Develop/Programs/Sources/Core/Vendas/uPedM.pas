unit uPedM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, DBCtrls, Mask, Buttons, JvExMask, JvToolEdit, JvDBControls,
  JvBaseEdits, Menus, JvExStdCtrls, JvCombobox, JvDBCombobox, uIFrameCliente, 
  db;

type
  TPedM = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    GroupBox2: TGroupBox;
    DBEdit19: TDBEdit;
    Label14: TLabel;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    Panel26: TPanel;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    Panel28: TPanel;
    Panel29: TPanel;
    Label18: TLabel;
    DBComboBox1: TDBComboBox;
    Label19: TLabel;
    DBEdit16: TDBEdit;
    Panel30: TPanel;
    Label20: TLabel;
    DBEdit17: TDBEdit;
    Panel35: TPanel;
    SpeedButton1: TSpeedButton;
    actFindCli: TAction;
    pmPrint: TPopupMenu;
    actDespVinc: TAction;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    TabSheet3: TTabSheet;
    DBGrid3: TDBGrid;
    Panel14: TPanel;
    Label5: TLabel;
    DBEdit7: TDBEdit;
    Panel15: TPanel;
    SpeedButton4: TSpeedButton;
    Panel16: TPanel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Panel31: TPanel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Panel32: TPanel;
    Label21: TLabel;
    DBEdit18: TDBEdit;
    Panel33: TPanel;
    Label22: TLabel;
    DBEdit20: TDBEdit;
    Panel34: TPanel;
    Label23: TLabel;
    DBEdit33: TDBEdit;
    Panel36: TPanel;
    Label24: TLabel;
    DBEdit34: TDBEdit;
    actFindGrupo: TAction;
    Panel51: TPanel;
    Panel54: TPanel;
    Label39: TLabel;
    DBEdit37: TDBEdit;
    Panel55: TPanel;
    Label40: TLabel;
    DBEdit38: TDBEdit;
    Panel56: TPanel;
    Label41: TLabel;
    DBEdit39: TDBEdit;
    Panel11: TPanel;
    Label2: TLabel;
    edFrascos: TDBEdit;
    Panel12: TPanel;
    Label3: TLabel;
    edSeringas: TDBEdit;
    Panel13: TPanel;
    Label25: TLabel;
    cbEnvio: TJvDBComboBox;
    Panel52: TPanel;
    Label4: TLabel;
    cbFrete: TJvDBComboBox;
    Panel53: TPanel;
    Label38: TLabel;
    SpeedButton6: TSpeedButton;
    edFrete: TJvDBCalcEdit;
    actFreteCorreio: TAction;
    Panel57: TPanel;
    Label42: TLabel;
    JvDBComboBox3: TJvDBComboBox;
    Panel58: TPanel;
    Label43: TLabel;
    cbRemessa: TJvDBComboBox;
    TabSheet5: TTabSheet;
    GroupBox5: TGroupBox;
    DBMemo1: TDBMemo;
    GroupBox6: TGroupBox;
    DBMemo2: TDBMemo;
    Panel59: TPanel;
    Panel60: TPanel;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    TabSheet6: TTabSheet;
    GroupBox7: TGroupBox;
    FrameCliente1: TFrameCliente;
    TabSheet7: TTabSheet;
    DBGrid4: TDBGrid;
    Panel61: TPanel;
    Label44: TLabel;
    DBMemo4: TDBMemo;
    Panel62: TPanel;
    Label45: TLabel;
    JvDBComboBox1: TJvDBComboBox;
    TabSheet4: TTabSheet;
    DBGrid5: TDBGrid;
    actAtuContatos: TAction;
    procedure DBEdit8Exit(Sender: TObject);
    procedure actFindCliExecute(Sender: TObject);
    procedure actDespVincExecute(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure actFindGrupoExecute(Sender: TObject);
    procedure actFreteCorreioExecute(Sender: TObject);
    procedure cbEnvioChange(Sender: TObject);
    procedure cbRemessaChange(Sender: TObject);
    procedure FrameCliente1DBEdit8Exit(Sender: TObject);
    procedure PageControl3Change(Sender: TObject);
    procedure FrameCliente1SpeedButton1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actAtuContatosExecute(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshLookupFilter;
    procedure RefreshControls; override;
    procedure OnEdit; override;
    procedure FormataEtiqueta(Sender: TObject; var Row: string; DataSet: TDataSet);
    procedure OnLoad; override;
  public
    { Public declarations }
  end;

var
  PedM: TPedM;

implementation

uses uPed, uIUtils, uContatoF, uDM, mcutils, uClientes, uPrnTag, ZAbstractRODataset, uPedMMat, uPedMServ,
  iTypes, uPedMMO, uOrcaGrupos, uSedex, uSedexCalculos;

{$R *.dfm}

procedure TPedM.actAtuContatosExecute(Sender: TObject);
begin
  inherited;
  with U.Data.Query do
  try
    SQL.Text := 'select atualiza_contatos_pedido(:pedido);';
    ParamByName('pedido').AsInteger := Ped.IBrwSrcrecno.AsInteger;
    ExecSQL;
  finally
    Close;
    G.RefreshDataSet(Ped.qContatos);
  end;
end;

procedure TPedM.actDespVincExecute(Sender: TObject);
var
  msg: string;
begin
  inherited;
  msg := EmptyStr;
  with U.Data.Query do
  try
    SQL.Text :=
    'select fin_caixaVincularPedido(:codigo, :pedido)';

    ParamByName('codigo').AsInteger := Ped.IBrwSrccodigo.AsInteger;
    ParamByName('pedido').AsInteger := Ped.IBrwSrcrecno.AsInteger;

    Open;

    if Fields[0].AsInteger = 0 then
      U.Out.ShowWarn('Não há despesas para serem vinculadas ao pedido!')
    else
    begin
      if Ped.IBrwSrcstatus.AsInteger > 10 then
        msg := #13#10 + #13#10 + 'O pedido precisa ser liberado novamente!';

      G.RefreshDataSet(Ped.IBrwSrc, True);

      U.Out.ShowInfo('%d despesa(s) vinculada(s) ao pedido %d%s',
        [Fields[0].AsInteger, Ped.IBrwSrcrecno.AsInteger, msg]);
    end;
  finally
    Close;
    G.RefreshDataSet(Ped.qDesp);
    RefreshControls;
  end;
end;

procedure TPedM.actFindCliExecute(Sender: TObject);
begin
  with Clientes do
  try
    Application.CreateForm(TClientes, Clientes);
    Clientes.DisplayMode := dmQuery;
    Clientes.ShowModal;
    if (Clientes.Execute) then
    begin
      Self.DataSet.FieldByName('codigo').AsInteger := Clientes.IBrwSrccodigo.AsInteger;
      DBEdit8Exit(DBEdit8);
    end;
  finally
    FreeAndNil(Clientes);
  end;
end;

procedure TPedM.actFindGrupoExecute(Sender: TObject);
begin
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

procedure TPedM.actFreteCorreioExecute(Sender: TObject);
begin
  inherited;
  Sedex := TSedex.Create(nil);
  with Ped, Sedex do
  try
    Destinatario := IBrwSrccodigo.AsInteger;
    Correio := IBrwSrccorreio.AsInteger;
    Calculos := TFreteLab.Create(IBrwSrcfrascos.AsInteger, IBrwSrcseringas.AsInteger);

    ShowModal;

    if Sedex.Execute then
    begin
      IBrwSrccorreio.AsInteger := Correio;
      IBrwSrcfrete.AsFloat := ValorCorrigido;
//      FFreteCalculado := True;
    end;
  finally
    FreeAndNil(Sedex);
    RefreshControls;
  end;
end;

procedure TPedM.DBEdit7Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(TDBEdit(Sender).Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('descri');


    if U.Data.CheckFK('orca_grupo', 'recno', QuotedStr(TDBEdit(Sender).Text), fLkp) then
    begin
      DataSet.FieldByName('descri').AsString := fLkp[0];
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

procedure TPedM.DBEdit8Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit8.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  fLkp:= TStringList.Create;
  try
    fLkp.Add('nome_chave');
    fLkp.Add('empresa');
    fLkp.Add('cnpj');
    fLkp.Add('cpf');
    fLkp.Add('email');

    if U.Data.CheckFK('tbclientes', 'codigo', DBEdit8.Text, fLkp) then
    begin
      DataSet.FieldByName('nome_chave').AsString := fLkp[0];
      DataSet.FieldByName('empresa').AsString := fLkp[1];
      DataSet.FieldByName('cnpj').AsString := fLkp[2];
      DataSet.FieldByName('cpf').AsString := fLkp[3];
      DataSet.FieldByName('email').AsString := fLkp[4];
    end
    else
    begin
      U.Out.ShowErro('Cliente não cadastrado.');
      DBEdit8.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TPedM.FormataEtiqueta(Sender: TObject; var Row: string; DataSet: TDataSet);
begin
  Row := mcStuff('000000000000', Row, Ped.qAmostrasetiqueta.AsString);
  Row := mcStuff('000.000.000.000', Row, Ped.qAmostrasetiqueta.DisplayText);
  Row := mcStuff('@1', Row, Format('Origem: %d', [Ped.IBrwSrccodigo.AsInteger]));
  Row := mcStuff('@2', Row, 'Recepiente Cliente');
  Row := mcStuff('@3', Row, Format('Pedido: %s', [Ped.qAmostraspedido.DisplayText]));
  Row := mcStuff('@4', Row, Format('Tipo: %s', [Ped.qAmostrastipo.DisplayText]));
end;

procedure TPedM.FormResize(Sender: TObject);
begin
  inherited;
  Panel3.Height := ClientHeight - (PageControl1.Top + 380);
end;

procedure TPedM.FrameCliente1DBEdit8Exit(Sender: TObject);
begin
  inherited;
  RefreshLookupFilter;
  FrameCliente1.DBEdit8Exit(Sender);
end;

procedure TPedM.FrameCliente1SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FrameCliente1.actFindCliExecute(Sender);

end;

procedure TPedM.cbEnvioChange(Sender: TObject);
begin
  inherited;
  edFrete.ReadOnly := cbEnvio.Values[cbEnvio.ItemIndex] = '3';
  RefreshControlsStyle(self);
end;

procedure TPedM.cbRemessaChange(Sender: TObject);
begin
  inherited;
  RefreshControls;
end;

procedure TPedM.OnEdit;
begin
  case PageControl3.ActivePageIndex of
    0:
    begin
      PedMServ := TPedMServ.Create(nil);
      try
        PedMServ.ScreenType := stMasterDetail; 
        PedMServ.DataSet := Ped.qServ;
        PedMServ.ChildDataSet := Ped.qServDet;
        PedMServ.ShowModal;
      finally
        FreeAndNil(PedMServ);
      end;
    end;
    1:
    begin
      PedMMat := TPedMMat.Create(nil);
      try
        PedMMat.DataSet := Ped.qMat;
        PedMMat.ShowModal;
      finally
        FreeAndNil(PedMMat);
      end;
    end;
    2:
    begin
      PedMMO := TPedMMO.Create(nil);
      try
        PedMMO.DataSet := Ped.qMObra;
        PedMMO.ShowModal;
      finally
        FreeAndNil(PedMMO);
      end;
    end;
  end;
end;

procedure TPedM.OnLoad;
begin
  inherited;
  WindowState := wsMaximized;
end;

procedure TPedM.PageControl3Change(Sender: TObject);
begin
  inherited;
  try
    ToolButton10.Action := actNew;

    if PageControl3.ActivePage = TabSheet7 then
      ToolButton10.Action := actDespVinc;
    if PageControl3.ActivePage = TabSheet4 then
      ToolButton10.Action := actAtuContatos;
  finally
    RefreshControls;
  end;
end;

procedure TPedM.RefreshControls;
begin
  inherited;
  actFindCli.Enabled := False;
  actFindGrupo.Enabled := False;
  actFreteCorreio.Enabled := False;
  cbEnvio.Enabled := False;
  cbFrete.Enabled := False;
  edFrascos.Enabled := False;
  edSeringas.Enabled := False;
  edFrete.Enabled := False;
  FrameCliente1.actFindCli.Enabled := False;
  actDespVinc.Enabled := False;

  if not Assigned(DataSet) then
    Exit;

  actFindGrupo.Enabled := DataSet.State in [dsEdit, dsInsert];
  actFindCli.Enabled := DataSet.State in [dsEdit, dsInsert];

  cbEnvio.Enabled := cbRemessa.ItemIndex = 0;
  cbFrete.Enabled := cbEnvio.Enabled;
  edFrascos.Enabled := cbEnvio.Enabled;
  edSeringas.Enabled := cbEnvio.Enabled;
  edFrete.Enabled := cbEnvio.Enabled;

  actEditMaster.Enabled := Ped.actEdit.Enabled;
  actDelMaster.Enabled := Ped.actDel.Enabled;

  actFreteCorreio.Enabled := (DataSet.State in [dsEdit, dsInsert]) and cbEnvio.Enabled;
  FrameCliente1.actFindCli.Enabled := DataSet.State in [dsEdit, dsInsert];

  if not Assigned(ChildDataSet) then
    Exit;

  actEdit.Enabled := not ChildDataSet.IsEmpty;
  actDel.Enabled := not ChildDataSet.IsEmpty;

  with Ped, PageControl3 do
  begin
    Self.actNew.Enabled := (ChildDataSet.State = dsBrowse) and
      actEditMaster.Enabled and
      (((ActivePageIndex = 0) and (IBrwSrcreqsrv.AsBoolean)) or
       ((ActivePageIndex = 1) and (IBrwSrcreqmat.AsBoolean)) or
       ((ActivePageIndex = 2) and (IBrwSrcreqmo.AsBoolean)));

    actDespVinc.Enabled := (ChildDataSet.State = dsBrowse) and (ActivePage = Self.TabSheet7) and
      (IBrwSrcstatus.AsInteger = 10);
    actAtuContatos.Enabled := (ChildDataSet.State = dsBrowse) and (ActivePage = Self.TabSheet4) and
      (IBrwSrcstatus.AsInteger < 40);
    Self.actEdit.Enabled := Self.actEdit.Enabled and (ActivePageIndex < 3);
    Self.actView.Enabled := Self.actView.Enabled and (ActivePageIndex < 3);
    Self.actDel.Enabled := Self.actDel.Enabled and ((ActivePageIndex < 3) or actDespVinc.Enabled or actAtuContatos.Enabled);
  end;
end;

procedure TPedM.RefreshLookupFilter;
var
  sin: string;
begin
  inherited;

  { TODO -oRicardo -cLaboratório : Criar tela para exibição de clientes finais }
//  FrameCliente1.Filter := EmptyStr;
//
//  with DM.qClientesFinais do
//  try
//    DisableControls;
//    ParamByName('codigo').AsInteger := Ped.IBrwSrccodigo.AsInteger;
//    G.RefreshDataSet(DM.qClientesFinais);
//
//    First;
//    while not Eof do
//    begin
//      sin := sin + FieldByName('cliente').AsString;
//
//      Next;
//
//      if not Eof then
//        sin := sin + ',';
//    end;
//  finally
//    EnableControls;
//  end;
//
//  if sin <> EmptyStr then
//    FrameCliente1.Filter := Format('codigo in (%s)', [sin]);

end;

end.
