unit uCotaAutorizar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIWizard, ActnList, StdCtrls, ExtCtrls, Mask, DBCtrls, Buttons,
  JvExStdCtrls, JvCombobox, JvDBCombobox, JvMemo, ComCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBUltimGrid, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, DBClient, Provider, JvExMask, JvToolEdit, JvBaseEdits, ToolWin,
  ZSequence, ZSqlUpdate, ZSqlProcessor;

type
  TMarkType = (mtInvert, mtInvertAll, mtCheckAll, mtUnCheckAll);

  TCotaAutorizar = class(TIWizard)
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    lbMat: TLabel;
    lbMO: TLabel;
    Panel7: TPanel;
    lbServ: TLabel;
    Panel8: TPanel;
    lbDesp: TLabel;
    Panel9: TPanel;
    lbTot: TLabel;
    Panel10: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel11: TPanel;
    Panel12: TPanel;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Panel18: TPanel;
    Panel27: TPanel;
    Label24: TLabel;
    DBEdit22: TDBEdit;
    Panel28: TPanel;
    JvDBComboBox2: TJvDBComboBox;
    Label25: TLabel;
    Panel13: TPanel;
    Label11: TLabel;
    JvDBComboBox1: TJvDBComboBox;
    Panel14: TPanel;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    edPedCli: TEdit;
    GroupBox1: TGroupBox;
    mAprovacao: TJvMemo;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBGrid1: TDBGrid;
    qServ: TZQuery;
    qMat: TZQuery;
    qMO: TZQuery;
    qServmark: TBooleanField;
    qServservico: TIntegerField;
    qServdescri: TStringField;
    qServqtd: TFloatField;
    qServun: TStringField;
    qServvvenda: TFloatField;
    qServvtotal: TFloatField;
    qServrecno: TIntegerField;
    dsServ: TDataSource;
    cdsServ: TClientDataSet;
    dspServ: TDataSetProvider;
    cdsServmark: TBooleanField;
    cdsServservico: TIntegerField;
    cdsServdescri: TStringField;
    cdsServqtd: TFloatField;
    cdsServun: TStringField;
    cdsServvvenda: TFloatField;
    cdsServvtotal: TFloatField;
    cdsServrecno: TIntegerField;
    edTotServ: TJvCalcEdit;
    ControlBar1: TControlBar;
    ToolBar2: TToolBar;
    ToolButton17: TToolButton;
    ToolButton16: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    actCkAll: TAction;
    actUCkAll: TAction;
    actInverseAll: TAction;
    actInverse: TAction;
    ToolButton1: TToolButton;
    dsMat: TDataSource;
    cdsMat: TClientDataSet;
    dspMat: TDataSetProvider;
    cdsMatmark: TBooleanField;
    cdsMatmaterial: TIntegerField;
    cdsMatdescricao: TStringField;
    cdsMatqtd: TFloatField;
    cdsMatunidade: TStringField;
    cdsMatvvenda: TFloatField;
    cdsMatvtotal: TFloatField;
    cdsMatrecno: TIntegerField;
    edTotMO: TJvCalcEdit;
    edTotMat: TJvCalcEdit;
    edTotDesp: TJvCalcEdit;
    edTotal: TJvCalcEdit;
    cdsMO: TClientDataSet;
    BooleanField1: TBooleanField;
    StringField1: TStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    IntegerField2: TIntegerField;
    dspMO: TDataSetProvider;
    dsMO: TDataSource;
    cdsMOfuncao: TIntegerField;
    cdsMOqtd: TIntegerField;
    qMatmark: TBooleanField;
    qMatmaterial: TIntegerField;
    qMatdescricao: TStringField;
    qMatqtd: TFloatField;
    qMatunidade: TStringField;
    qMatvvenda: TFloatField;
    qMatvtotal: TFloatField;
    qMatrecno: TIntegerField;
    qMOmark: TBooleanField;
    qMOfuncao: TIntegerField;
    qMOdescricao: TStringField;
    qMOqtd: TIntegerField;
    qMOvvenda: TFloatField;
    qMOvtotal: TFloatField;
    qMOrecno: TIntegerField;
    Panel15: TPanel;
    GroupBox2: TGroupBox;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Label14: TLabel;
    Panel29: TPanel;
    GroupBox3: TGroupBox;
    Panel30: TPanel;
    Panel32: TPanel;
    Label17: TLabel;
    DBEdit10: TDBEdit;
    Panel33: TPanel;
    Panel35: TPanel;
    Label19: TLabel;
    DBEdit11: TDBEdit;
    Panel36: TPanel;
    Panel38: TPanel;
    Label21: TLabel;
    DBEdit12: TDBEdit;
    Panel39: TPanel;
    Panel41: TPanel;
    Label23: TLabel;
    DBEdit13: TDBEdit;
    Panel42: TPanel;
    Panel44: TPanel;
    Label27: TLabel;
    DBEdit14: TDBEdit;
    Label5: TLabel;
    Panel58: TPanel;
    Label43: TLabel;
    cbRemessa: TJvDBComboBox;
    Panel57: TPanel;
    Label42: TLabel;
    JvDBComboBox3: TJvDBComboBox;
    dspDesp: TDataSetProvider;
    cdsDesp: TClientDataSet;
    qDesp: TZQuery;
    dsDesp: TDataSource;
    qDespmark: TBooleanField;
    qDesprecno: TIntegerField;
    qDespcodigo: TIntegerField;
    qDespdata: TDateField;
    qDespdocto: TStringField;
    cdsDespmark: TBooleanField;
    cdsDesprecno: TIntegerField;
    cdsDespcodigo: TIntegerField;
    cdsDespdata: TDateField;
    cdsDespdocto: TStringField;
    TabSheet4: TTabSheet;
    qDespvtotal: TFloatField;
    cdsDespvtotal: TFloatField;
    qDesphistorico: TStringField;
    cdsDesphistorico: TStringField;
    sCotaAprov: TZSequence;
    pStmt: TZSQLProcessor;
    qDesptipo: TIntegerField;
    cdsDesptipo: TIntegerField;
    procedure actOkExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure cdsAfterPost(DataSet: TDataSet);
    procedure actProcessMarkExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure edTotMatChange(Sender: TObject);
    procedure edTotMOChange(Sender: TObject);
    procedure edTotServChange(Sender: TObject);
    procedure edTotDespChange(Sender: TObject);
    procedure edTotalChange(Sender: TObject);
    procedure mAprovacaoChange(Sender: TObject);
    procedure edPedCliChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    FLoteAprov: Integer;
    procedure ProcessMark(const MarkType: TMarkType);
    procedure RefreshControls;
    procedure RefreshSum(DataSet: TDataSet);
  public
    { Public declarations }
    property LoteAprov: Integer read FLoteAprov;
  end;

var
  CotaAutorizar: TCotaAutorizar;

implementation

uses
  uCota, uDM, uIUtils, uResources, Math;

{$R *.dfm}

{ TCotaAutorizar }

procedure TCotaAutorizar.actProcessMarkExecute(Sender: TObject);
begin
  inherited;
  ProcessMark(TMarkType(TAction(Sender).Tag));
end;

procedure TCotaAutorizar.actOkExecute(Sender: TObject);
var
  vlFrete: Double;

  procedure ProcessMarks(TableName: string; Itens: TDataSet);
  begin
    with pStmt do
    try
      Itens.DisableControls;
      Itens.First;

      while not Itens.Eof do
      begin
        if Itens.FieldByName('mark').AsBoolean then
        begin
          ParamByName('tablename').AsString := TableName;
          ParamByName('loteaprov').AsInteger := FLoteAprov;
          ParamByName('recno').AsInteger := Itens.FieldByName('recno').AsInteger;
          Execute;
        end;

        Itens.Next;
      end;
    finally
      Itens.EnableControls;
    end;

  end;
begin
  U.Data.StartTransaction;
  try
    vlFrete := 0;
    if cdsDesp.Locate('tipo', 2, []) then
      vlFrete := cdsDespvtotal.AsFloat;

    {* Gerando a marcação e assinando os itens da cotação *}
    with pStmt do
    begin
      Script.Clear;
      Script.Add(
        'insert into cota_aprov '+
          '(recno, frete, frascos, seringas, vlmat, vlserv, vlmobra, pedido_cliente, historico, cotacao, account, status) '+
        'values '+
          '(:recno, :frete, :frascos, :seringas, :vlmat, :vlserv, :vlmobra, :pedido_cliente, :historico, :cotacao, sys_account(), 0); ');

      FLoteAprov := sCotaAprov.GetNextValue;
      
      ParamByName('recno').AsInteger := FLoteAprov;
      ParamByName('frete').AsFloat := vlFrete;
      ParamByName('frascos').AsInteger := Cota.IBrwSrcfrascos.AsInteger;
      ParamByName('seringas').AsInteger := Cota.IBrwSrcseringas.AsInteger;
      ParamByName('vlmat').AsFloat := edTotMat.Value;
      ParamByName('vlserv').AsFloat := edTotServ.Value;
      ParamByName('vlmobra').AsFloat := edTotMO.Value;
      ParamByName('pedido_cliente').AsString := edPedCli.Text;
      ParamByName('historico').AsMemo := mAprovacao.Text;
      ParamByName('cotacao').AsInteger := Cota.IBrwSrcrecno.AsInteger;
      Execute;

      Script.Clear;
      Script.Add('select aprovar_cotacao(:tablename, :loteaprov, :recno)');

      if edTotServ.Value > 0 then
        ProcessMarks('cota_serv', cdsServ);

      if edTotMat.Value > 0 then
        ProcessMarks('cota_mat', cdsMat);

      if edTotMO.Value > 0 then
        ProcessMarks('cota_mo', cdsMO);

      if edTotDesp.Value > 0 then
      begin
        cdsDesp.Filtered := True;
        try
          ProcessMarks('cota_desp', cdsDesp);
        finally
          cdsDesp.Filtered := False;
        end;
      end;
    end;

    // Dispara geração do pedido de venda
    U.Data.ExecSQL('update cota_aprov set status = 1 where recno = %d', [FLoteAprov]);
    U.Data.Commit;
    inherited;
    Close;
  except
    on E:Exception do
    begin
      U.Data.Rollback;
    end;
  end;
end;

procedure TCotaAutorizar.cdsAfterPost(DataSet: TDataSet);
begin
  inherited;
  RefreshSum(DataSet);
end;

procedure TCotaAutorizar.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if not TDBGrid(Sender).DataSource.DataSet.IsEmpty then
    actProcessMarkExecute(actInverse);
end;

procedure TCotaAutorizar.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Bmp: TBitmap;
  x, y: integer;
begin
  with TDBGrid(Sender) do
  begin
    if not (gdFocused in State) and (DataSource.DataSet.State = dsBrowse) then
    begin
      Canvas.Brush.Color:= clWhite;

      if DataSource.DataSet.RecNo mod 2 = 0 then
        Canvas.Brush.Color:= $00D9EAD9
      else
        Canvas.Brush.Color:= clWhite;

      Canvas.FillRect(Rect);
    end;

    DefaultDrawColumnCell(Rect, DataCol, Column, State);

    if Column.Field is TBooleanField then
      try
        Bmp:= TBitmap.Create;

        if Column.Field.AsBoolean then
          Resources.small_n.GetBitmap(67, Bmp)
        else
          Resources.small_n.GetBitmap(69, Bmp);

        x:= Rect.Left + (Rect.Right - Rect.Left - Bmp.Width) div 2;
        y:= Rect.Top + (Rect.Bottom - Rect.Top - Bmp.Height) div 2;

        Canvas.FillRect(Rect);
        Canvas.Draw(x, y, Bmp);
      finally
        Bmp.Free;
      end;
  end;
end;

procedure TCotaAutorizar.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_SPACE then
  begin
    actProcessMarkExecute(actInverse);
    Key := 0;
  end;
end;

procedure TCotaAutorizar.edPedCliChange(Sender: TObject);
begin
  inherited;
  RefreshControls;
end;

procedure TCotaAutorizar.edTotalChange(Sender: TObject);
begin
  inherited;
  lbTot.Font.Color := clGreen;
  lbTot.Font.Style := [];
  Label14.Caption := 'Pedido Cheio';
  Label14.Font.Color := clGreen;
  if RoundTo(edTotal.Value, 2) < RoundTo(Cota.IBrwSrcvltotal.AsFloat, 2) then
  begin
    lbTot.Font.Color := clRed;
    lbTot.Font.Style := [fsBold];
    Label14.Caption := 'Pedido Parcial';
    Label14.Font.Color := clRed;
  end;

  actOk.Caption := 'Gerar ' + Label14.Caption;
  RefreshControls;
end;

procedure TCotaAutorizar.edTotDespChange(Sender: TObject);
begin
  inherited;
  lbDesp.Font.Color := clGreen;
  lbDesp.Font.Style := [];
  if RoundTo(edTotDesp.Value, 2) < RoundTo(Cota.IBrwSrcvldespe.AsFloat, 2) then
  begin
    lbDesp.Font.Color := clRed;
    lbDesp.Font.Style := [fsBold];
  end;
end;

procedure TCotaAutorizar.edTotMatChange(Sender: TObject);
begin
  inherited;
  lbMat.Font.Color := clGreen;
  lbMat.Font.Style := [];
  if RoundTo(edTotMat.Value, 2) < RoundTo(Cota.IBrwSrcvlmat.AsFloat, 2) then
  begin
    lbMat.Font.Color := clRed;
    lbMat.Font.Style := [fsBold];
  end;
end;

procedure TCotaAutorizar.edTotMOChange(Sender: TObject);
begin
  inherited;
  lbMO.Font.Color := clGreen;
  lbMO.Font.Style := [];
  if RoundTo(edTotMO.Value, 2) < RoundTo(Cota.IBrwSrcvlmobra.AsFloat, 2) then
  begin
    lbMO.Font.Color := clRed;
    lbMO.Font.Style := [fsBold];
  end;
end;

procedure TCotaAutorizar.edTotServChange(Sender: TObject);
begin
  inherited;
  lbServ.Font.Color := clGreen;
  lbServ.Font.Style := [];
  if RoundTo(edTotServ.Value, 2) < RoundTo(Cota.IBrwSrcvlsrv.AsFloat, 2) then
  begin
    lbServ.Font.Color := clRed;
    lbServ.Font.Style := [fsBold];
  end;
end;

procedure TCotaAutorizar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caNone;
  if (ExecCount > 0) or G.Out.ConfWarn('Quer mesmo fechar a tela sem gerar o pedido?!') then
    Action := caFree;

  if Action = caFree then
    inherited;
end;

procedure TCotaAutorizar.FormDestroy(Sender: TObject);
begin
  cdsServ.Close;
  cdsMat.Close;
  cdsMO.Close;
  inherited;
end;

procedure TCotaAutorizar.FormShow(Sender: TObject);
var
  sfrete: string;
begin
  inherited;
  qServ.ParamByName('cotacao').AsInteger := Cota.IBrwSrcrecno.AsInteger;
  G.RefreshDataSet(qServ);
  cdsServ.Open;
  cdsServ.ProviderName := EmptyStr;
  qServ.Close;

  qMat.ParamByName('cotacao').AsInteger := Cota.IBrwSrcrecno.AsInteger;
  G.RefreshDataSet(qMat);
  cdsMat.Open;
  cdsMat.ProviderName := EmptyStr;
  qMat.Close;

  qMO.ParamByName('cotacao').AsInteger := Cota.IBrwSrcrecno.AsInteger;
  G.RefreshDataSet(qMO);
  cdsMO.Open;
  cdsMO.ProviderName := EmptyStr;
  qMO.Close;

  qDesp.ParamByName('cotacao').AsInteger := Cota.IBrwSrcrecno.AsInteger;
  G.RefreshDataSet(qDesp);
  cdsDesp.Open;
  cdsDesp.ProviderName := EmptyStr;
  qDesp.Close;

  if (Cota.IBrwSrcfrete.AsFloat > 0) then //and (Cota.IBrwSrclote_aprov.IsNull) then
  begin

    if Cota.IBrwSrcfrascos.AsInteger = 1 then
      sfrete := '1 frasco'
    else if Cota.IBrwSrcfrascos.AsInteger > 1 then
      sfrete := format('%d frascos', [Cota.IBrwSrcfrascos.AsInteger]);

    if Cota.IBrwSrcseringas.AsInteger > 0 then
    begin
      if sfrete <> EmptyStr then
        sfrete := sfrete + ' e ';

      if Cota.IBrwSrcseringas.AsInteger = 1 then
        sfrete := sfrete + '1 seringa'
      else
        sfrete := sfrete + format('%d seringas', [Cota.IBrwSrcseringas.AsInteger]);
    end;

    cdsDesp.DisableControls;
    cdsDesp.First;
    cdsDesp.Insert;
    cdsDesprecno.AsInteger := -1;
    cdsDespcodigo.AsInteger := Cota.IBrwSrccliente.AsInteger;
    cdsDespdata.AsDateTime := Now;
    cdsDespdocto.AsString := 'Frete';
    cdsDesphistorico.AsString := Format('Frete referente ao envio de %s ', [sfrete]);
    cdsDespvtotal.AsFloat := Cota.IBrwSrcfrete.AsFloat;
    cdsDesptipo.AsInteger := 2;
    cdsDespmark.AsBoolean := True;
    cdsDesp.Post;
    cdsDesp.EnableControls;
  end;
  
  RefreshSum(cdsServ);
  RefreshSum(cdsMat);
  RefreshSum(cdsMO);
  RefreshSum(cdsDesp);

  edTotMatChange(edTotMat);
  edTotMOChange(edTotMO);
  edTotServChange(edTotServ);
  edTotDespChange(edTotDesp);
  edTotalChange(edTotal);

  RefreshControls;
end;

procedure TCotaAutorizar.mAprovacaoChange(Sender: TObject);
begin
  inherited;
  RefreshControls;
end;

procedure TCotaAutorizar.PageControl1Change(Sender: TObject);
begin
  inherited;
  ControlBar1.Parent := PageControl1.ActivePage;
  DBGrid1.Parent := PageControl1.ActivePage;

  case PageControl1.ActivePageIndex of
    0: DBGrid1.DataSource := dsServ;
    1: DBGrid1.DataSource := dsMat;
    2: DBGrid1.DataSource := dsMO;
    3: DBGrid1.DataSource := dsDesp;
  end;
end;

procedure TCotaAutorizar.ProcessMark(const MarkType: TMarkType);
var
  rec: TBookmark;
  bMark: Boolean;
  table: TDataSet;
begin
  inherited;
  table := DBGrid1.DataSource.DataSet;
  rec := table.GetBookmark;
  table.DisableControls;
  try
    if (MarkType <> mtInvert) then
      table.First;

    bMark := True;

    if MarkType = mtUnCheckAll then
      bMark := False;

    repeat
      if (MarkType in [mtInvert, mtInvertAll]) then
        bMark := not table.FieldByName('mark').AsBoolean;

      table.Edit;
      table.FieldByName('mark').AsBoolean := bMark;
      table.Post;

      table.Next;
    until (table.Eof or (MarkType = mtInvert));
  finally
    table.GotoBookmark(rec);
    table.FreeBookmark(rec);
    table.EnableControls;
  end;
end;

procedure TCotaAutorizar.RefreshControls;
var
  oActivePage: TTabSheet;
begin
  actOk.Enabled := (Trim(edPedCli.Text) <> EmptyStr) and
    (Length(Trim(mAprovacao.Text)) > 10) and (edTotal.Value > 0);

  TabSheet1.TabVisible := not cdsServ.IsEmpty;
  TabSheet2.TabVisible := not cdsMat.IsEmpty;
  TabSheet3.TabVisible := not cdsMO.IsEmpty;
  TabSheet4.TabVisible := not cdsDesp.IsEmpty;

  oActivePage := PageControl1.ActivePage;

  if not oActivePage.TabVisible and TabSheet1.TabVisible then
    oActivePage := TabSheet1;

  if not oActivePage.TabVisible and TabSheet2.TabVisible then
    oActivePage := TabSheet2;

  if not oActivePage.TabVisible and TabSheet3.TabVisible then
    oActivePage := TabSheet3;

  if not oActivePage.TabVisible and TabSheet4.TabVisible then
    oActivePage := TabSheet4;

  PageControl1.ActivePage := oActivePage;
  PageControl1Change(PageControl1);
end;

procedure TCotaAutorizar.RefreshSum(DataSet: TDataSet);
var
  rec: TBookmark;
  total: Double;
begin
  rec := DataSet.GetBookmark;
  DataSet.DisableControls;
  total := 0;
  try
    DataSet.First;

    while not DataSet.Eof do
    begin
      if DataSet.FieldByName('mark').AsBoolean then
        total := total + DataSet.FieldByName('vtotal').AsFloat;

      DataSet.Next;
    end;
  finally
    DataSet.GotoBookmark(rec);
    DataSet.FreeBookmark(rec);
    DataSet.EnableControls;
  end;

  case DataSet.Tag of
    0: edTotServ.Value := total;
    1: edTotMat.Value := total;
    2: edTotMO.Value := total;
    3: edTotDesp.Value := total;
  end;

  edTotal.Value := edTotServ.Value + edTotMat.Value + edTotMO.Value + edTotDesp.Value;
end;

end.
