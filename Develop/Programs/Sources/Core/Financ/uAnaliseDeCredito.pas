unit uAnaliseDeCredito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ActnList, ComCtrls, ToolWin,
  ExtCtrls, Grids, DBGrids, StdCtrls, Mask, Buttons, uIFrameCliente, DBCtrls, JvExMask, JvToolEdit, JvBaseEdits,
  ZSequence, Contnrs;

type
  TSerasaTipo = (PJ, PF);

  TMenuItemSerasa = class(TMenuItem)
  private
    FRecno: Integer;
    FNome: string;
    FTipo: Integer;
    FCusto: Double;
    procedure SetCusto(const Value: Double);
    procedure SetNome(const Value: string);
    procedure SetRecno(const Value: Integer);
    procedure SetTipo(const Value: Integer);
  published
  public
    property Tipo: Integer read FTipo write SetTipo;
    property Nome: string read FNome write SetNome;
    property Custo: Double read FCusto write SetCusto;
    property Recno: Integer read FRecno write SetRecno;
  end;

  TAnaliseDeCredito = class(TIDefBrowse)
    IBrwSrcrecno: TLargeintField;
    IBrwSrcstatus: TIntegerField;
    IBrwSrccliente: TIntegerField;
    IBrwSrcserasa: TLargeintField;
    IBrwSrcemissao: TDateTimeField;
    IBrwSrcsolicitante: TLargeintField;
    IBrwSrcobs: TMemoField;
    IBrwSrcempresa: TStringField;
    IBrwSrcnome_chave: TStringField;
    IBrwSrccnpj: TStringField;
    IBrwSrccpf: TStringField;
    IBrwSrcnome: TStringField;
    IBrwSrcemail: TStringField;
    Panel3: TPanel;
    PageControl2: TPageControl;
    tsAnalise: TTabSheet;
    FrameCliente1: TFrameCliente;
    IBrwSrccidade: TStringField;
    IBrwSrcestado: TStringField;
    IBrwSrctelefone: TStringField;
    GroupBox1: TGroupBox;
    IBrwSrcvalor: TFloatField;
    GroupBox2: TGroupBox;
    Panel4: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel6: TPanel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Panel7: TPanel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Panel8: TPanel;
    GroupBox3: TGroupBox;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    GroupBox4: TGroupBox;
    DBMemo1: TDBMemo;
    tsPosFin: TTabSheet;
    tsSerasa: TTabSheet;
    qPosFin: TZReadOnlyQuery;
    dsPosFin: TDataSource;
    qPosFintitulos: TLargeintField;
    qPosFintitulos_quitados_atraso: TLargeintField;
    qPosFintitulos_atraso: TLargeintField;
    qPosFintitulos_a_vencer: TLargeintField;
    qPosFinptitulos_atrasados: TFloatField;
    qPosFintotal: TFloatField;
    qPosFinrecebido: TFloatField;
    qPosFinreceber: TFloatField;
    qPosFinatrasado: TFloatField;
    qPosFinpri_compra: TDateField;
    qPosFinult_compra: TDateField;
    qPosFinmenor_compra: TFloatField;
    qPosFinmaior_compra: TFloatField;
    qPosFinmaior_atraso: TIntegerField;
    GroupBox5: TGroupBox;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    GroupBox6: TGroupBox;
    Panel18: TPanel;
    Panel19: TPanel;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Panel20: TPanel;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Panel21: TPanel;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Panel22: TPanel;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    GroupBox7: TGroupBox;
    Panel23: TPanel;
    Panel25: TPanel;
    Label17: TLabel;
    DBEdit16: TDBEdit;
    Panel27: TPanel;
    Label19: TLabel;
    DBEdit18: TDBEdit;
    Panel24: TPanel;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    Panel26: TPanel;
    Label18: TLabel;
    DBEdit17: TDBEdit;
    Panel28: TPanel;
    Label20: TLabel;
    DBEdit19: TDBEdit;
    qSerasa: TZReadOnlyQuery;
    dsSerasa: TDataSource;
    qSerasarecno: TLargeintField;
    qSerasaemissao: TDateTimeField;
    qSerasanome: TStringField;
    qSerasaregistro: TDateField;
    qSerasasituacao: TIntegerField;
    qSerasadescri: TStringField;
    qSerasaclasse: TStringField;
    qSerasatipo: TIntegerField;
    qSerasanome_1: TStringField;
    qSerasamotivo: TIntegerField;
    qSerasadescri_1: TStringField;
    qSerasacusto: TFloatField;
    qSerasastatus: TStringField;
    qSerasaDet: TZReadOnlyQuery;
    dsSerasaDet: TDataSource;
    qSerasaDetdescri: TStringField;
    qSerasaDetqtd: TIntegerField;
    qSerasaDettotal: TFloatField;
    qSerasaDetocorrencia_antiga: TStringField;
    qSerasaDetocorrencia_recente: TStringField;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    DBGrid2: TDBGrid;
    qSerasadocumento: TStringField;
    qSerasauf: TStringField;
    Panel29: TPanel;
    Panel30: TPanel;
    Panel31: TPanel;
    Panel32: TPanel;
    Panel33: TPanel;
    Label21: TLabel;
    DBEdit20: TDBEdit;
    Label22: TLabel;
    DBEdit21: TDBEdit;
    Panel34: TPanel;
    Panel35: TPanel;
    Label23: TLabel;
    DBEdit22: TDBEdit;
    Label24: TLabel;
    DBEdit23: TDBEdit;
    Label25: TLabel;
    DBEdit24: TDBEdit;
    Panel36: TPanel;
    Panel37: TPanel;
    Label26: TLabel;
    DBEdit25: TDBEdit;
    Panel38: TPanel;
    Label27: TLabel;
    DBEdit26: TDBEdit;
    Panel41: TPanel;
    Label30: TLabel;
    DBEdit29: TDBEdit;
    Panel39: TPanel;
    Label28: TLabel;
    DBEdit27: TDBEdit;
    GroupBox10: TGroupBox;
    Panel40: TPanel;
    Label29: TLabel;
    DBEdit28: TDBEdit;
    Panel42: TPanel;
    Label31: TLabel;
    DBEdit30: TDBEdit;
    Panel43: TPanel;
    Label32: TLabel;
    DBEdit31: TDBEdit;
    IBrwSrcrestricao: TStringField;
    IBrwSrcrestrmotiv: TMemoField;
    GroupBox11: TGroupBox;
    DBMemo2: TDBMemo;
    qSerasaqtd: TLargeintField;
    qSerasatotal: TFloatField;
    Panel44: TPanel;
    Label33: TLabel;
    DBEdit32: TDBEdit;
    Panel45: TPanel;
    Label34: TLabel;
    DBEdit33: TDBEdit;
    Panel46: TPanel;
    Label35: TLabel;
    edEmpresa: TEdit;
    Panel47: TPanel;
    Label36: TLabel;
    edCodigo: TJvCalcEdit;
    Panel48: TPanel;
    Label37: TLabel;
    edCNPJ: TMaskEdit;
    Panel49: TPanel;
    Label38: TLabel;
    edCPF: TMaskEdit;
    ControlBar1: TControlBar;
    ToolBar2: TToolBar;
    ToolButton31: TToolButton;
    actAprov: TAction;
    actReprov: TAction;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    btnSerasa: TToolButton;
    pmSerasa: TPopupMenu;
    sIbrwSrc: TZSequence;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Panel50: TPanel;
    Label39: TLabel;
    cbStatus: TComboBox;
    IBrwSrcanalista_nome: TStringField;
    IBrwSrcanalista_email: TStringField;
    IBrwSrcanalisado_em: TDateTimeField;
    ProcessarAnalises: TTimer;
    Panel51: TPanel;
    Panel52: TPanel;
    Panel53: TPanel;
    Panel54: TPanel;
    Panel55: TPanel;
    Panel56: TPanel;
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure edEmpresaChange(Sender: TObject);
    procedure PageControl2Change(Sender: TObject);
    procedure actProcessarAnaliseExecute(Sender: TObject);
    procedure cbStatusChange(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure ProcessarAnalisesTimer(Sender: TObject);
  private
    FAtualizando: Boolean;
    FSerasaTipo: TSerasaTipo;
    procedure SetTipo(const Value: TSerasaTipo);
    procedure SerasaExecute(Sender: TObject);
    procedure RefreshCtrl; override;
    procedure OnLoad; override;
  public
    { Public declarations }
  end;

var
  AnaliseDeCredito: TAnaliseDeCredito;

implementation

uses
  uDM, uIUtils, uResources, TypInfo;

{$R *.dfm}

const
  STATUS_NEUTRO : Integer = 209;
  STATUS_OK : Integer = 208;
  STATUS_ATENCAO : Integer = 210;
  STATUS_CRITICO : Integer = 213;

procedure TAnaliseDeCredito.actProcessarAnaliseExecute(Sender: TObject);
const
  APROVADA : integer = 3;
  REPROVADA : integer = 4;
begin
  inherited;
  if TAction(Sender).Tag = APROVADA then
  begin
    if not U.Out.ConfQues('Confirma aprovação da análise %d para o cliente %s?', [IBrwSrcrecno.AsInteger, IBrwSrcnome_chave.AsString]) then
      Exit;
  end else
    if not U.Out.ConfWarn('Confirma "reprovação" da análise %d para o cliente %s?', [IBrwSrcrecno.AsInteger, IBrwSrcnome_chave.AsString]) then
      Exit;

  try
    U.ExecuteSQL('update public.cred_analise set status = %d where recno = %d',
      [TAction(Sender).Tag, IBrwSrcrecno.AsInteger]);
  except
    on E:Exception do
      U.Out.ShowErro('Não foi possível finalizar análise. Erro: %s', [E.Message]);
  end;

  G.RefreshDataSet(IBrwSrc);
  RefreshCtrl;
end;

procedure TAnaliseDeCredito.actQueryProcessExecute(Sender: TObject);
var
  swhere: string;
begin
  inherited;
  
  if not Assigned(DataSet) then
    Exit;

  with IBrwSrc do
  try
    if Length(edEmpresa.Text) > 0 then
      sWhere := sWhere + 'and c.nome_chave ilike :empresa ';

    if edCodigo.Value > 0 then
      sWhere := sWhere + 'and c.codigo = :codigo ';

    if Length(edCNPJ.Text) > 0 then
      sWhere := sWhere + 'and c.cnpj like :cnpj ';

    if Length(edCPF.Text) > 0 then
      sWhere := sWhere + 'and c.cpf like :cpf ';

    if swhere <> EmptyStr then
      SQL.Add(swhere);

    ParamByName('status').AsInteger := cbStatus.ItemIndex + 1;

    if Assigned(Params.FindParam('codigo')) then
      ParamByName('codigo').AsInteger := Round(edCodigo.Value);

    if Assigned(Params.FindParam('cnpj')) then
      ParamByName('cnpj').AsString := edCNPJ.Text + '%';

    if Assigned(Params.FindParam('cpf')) then
      ParamByName('cpf').AsString := edCPF.Text + '%';

    if Assigned(Params.FindParam('empresa')) then
        ParamByName('empresa').AsString := '%' + edEmpresa.Text + '%';
  finally
    G.RefreshDataSet(IBrwSrc);
    RefreshCtrl;
  end;
end;

procedure TAnaliseDeCredito.cbStatusChange(Sender: TObject);
begin
  actQueryProcess.Enabled := True;
  with PageControl1 do
  begin
    DBGrid1.SetFocus;
    ActivePageIndex := cbStatus.ItemIndex;
    inherited PageControl1Change(PageControl1);
  end;

  actQueryProcessExecute(actQueryProcess);
end;

procedure TAnaliseDeCredito.edEmpresaChange(Sender: TObject);
begin
  inherited;
  actQueryProcess.Enabled := True;
end;

procedure TAnaliseDeCredito.IBrwSrcAfterScroll(DataSet: TDataSet);
begin
  inherited;

  tsAnalise.ImageIndex := STATUS_NEUTRO;
  tsPosFin.ImageIndex := STATUS_NEUTRO;
  tsSerasa.ImageIndex := STATUS_NEUTRO;

  Panel44.Color := $008C8CFF;
  Panel45.Color := $008C8CFF;
  Panel44.ParentBackground := True;
  Panel45.ParentBackground := True;
  Panel15.ParentBackground := True;
  Panel17.ParentBackground := True;
  Panel19.ParentBackground := True;
  Panel21.ParentBackground := True;

  if not IBrwSrccnpj.IsNull then
    SetTipo(PJ)
  else
    SetTipo(PF);

  try
    qPosFin.ParamByName('cliente').AsInteger := IBrwSrccliente.AsInteger;
    qSerasa.ParamByName('serasa').AsInteger := IBrwSrcserasa.AsInteger;
    qSerasaDet.ParamByName('serasa').AsInteger := IBrwSrcserasa.AsInteger;
    G.RefreshDataSet(qPosFin);
    G.RefreshDataSet(qSerasa);
    G.RefreshDataSet(qSerasaDet);
  finally
    RefreshCtrl;
  end;
end;

procedure TAnaliseDeCredito.OnLoad;
begin
  inherited;
  ReadOnly := True;
  cbStatusChange(cbStatus);
  DataSet := IBrwSrc;
end;

procedure TAnaliseDeCredito.PageControl1Change(Sender: TObject);
begin
  inherited;
  if cbStatus.ItemIndex <> PageControl1.ActivePageIndex then
  begin
    cbStatus.ItemIndex := PageControl1.ActivePageIndex;
    cbStatusChange(cbStatus);
  end;
end;

procedure TAnaliseDeCredito.PageControl2Change(Sender: TObject);
begin
  inherited;
  ControlBar1.Parent := PageControl2.ActivePage;
  RefreshCtrl;
end;

procedure TAnaliseDeCredito.ProcessarAnalisesTimer(Sender: TObject);
var
  table: integer;
  atualizar: Boolean;
  title: string;
  format: TFormatSettings;
begin
  inherited;

  if FAtualizando or (PageControl1.ActivePageIndex <> 0) then
    Exit;

  format.DecimalSeparator := '.';

  title := Caption;
  Caption := Caption + '. Processando análises pendentes...';
  atualizar := False;
  ProcessarAnalises.Enabled := False;
  FAtualizando := True;
  with U.Data.Query do
  try
    SQL.Text :=
    'select sys_origem(''cred_analise''); ';

    Open;

    table := Fields[0].AsInteger;

    Close;

    SQL.Text :=
    'select '+
       'a.cliente, a.valor, a.status '+
    'from '+
       'public.cred_analise a '+
    'left join '+
       'public.sys_flags f on '+
       'f.table_ = :table_ and '+
       'f.recno = a.recno '+
    'where '+
       'a.status < 2 and '+
       'f.recno is null; ';

    ParamByName('table_').AsInteger := table;

    Open;

    while not Eof do
    begin
      try
        if FieldByName('status').AsInteger = 0 then
          U.Data.ExecSQL('select fin_ckbloqueio(%d, cast(%s as moeda$));',
            [FieldByName('cliente').AsInteger, FloatToStr(FieldByName('valor').AsFloat, format)]);

        atualizar := True;
      except
        on E:Exception do
        begin

        end;
      end;

      Next;
    end;
  finally
    Close;
    ProcessarAnalises.Enabled := True;

    if atualizar then
      G.RefreshDataSet(IBrwSrc);

    FAtualizando := False;
    Caption := title
    ;
  end;
end;

procedure TAnaliseDeCredito.RefreshCtrl;
begin
  inherited;
  FAtualizando := True;
  try
    actAprov.Enabled := IBrwSrcstatus.AsInteger = 1;
    actReprov.Enabled := IBrwSrcstatus.AsInteger = 1;
    btnSerasa.Enabled := (IBrwSrcstatus.AsInteger = 1) and (PageControl2.ActivePageIndex = 2) and
      (qSerasastatus.AsString <> 'aguardando');

    // Atualizando posição financeira
    Panel19.ParentBackground := (qPosFinrecebido.AsFloat = 0);
    if (qPosFinatrasado.AsFloat > 0) or (IBrwSrcrestricao.AsString = 'SIM')  then
    begin
      tsPosFin.ImageIndex := STATUS_CRITICO;
      if (qPosFinatrasado.AsFloat > 0) then
        Panel15.ParentBackground := False;
    end
    else if (qPosFintitulos_quitados_atraso.AsLargeInt > 0) or (qPosFinptitulos_atrasados.AsFloat > 10) then
    begin
      tsPosFin.ImageIndex := STATUS_ATENCAO;
      Panel17.ParentBackground := (qPosFintitulos_quitados_atraso.AsLargeInt = 0);
      Panel21.ParentBackground := (qPosFinptitulos_atrasados.AsFloat <= 10);
    end
    else
      tsPosFin.ImageIndex := STATUS_OK;

    // Atualizando SERASA
    btnSerasa.Enabled := btnSerasa.Enabled and (pmSerasa.Items.Count > 0);

    if qSerasa.IsEmpty then
      Exit;

    Panel44.ParentBackground := qSerasaqtd.AsLargeInt = 0;
    Panel45.ParentBackground := qSerasatotal.AsFloat = 0;

    if (qSerasaqtd.AsLargeInt > 0) or (qSerasatotal.AsFloat > 0) then
      tsSerasa.ImageIndex := STATUS_CRITICO
    else
      tsSerasa.ImageIndex := STATUS_OK;
  finally
    FAtualizando := False;
  end;
end;

procedure TAnaliseDeCredito.SerasaExecute(Sender: TObject);
var
  MenuItemSerasa: TMenuItemSerasa;
  SerasaId: Integer;
begin
  MenuItemSerasa := TMenuItemSerasa(Sender);

  if not U.Out.ConfQues('Executar a consulta %s ao custo de R$ %m?', [MenuItemSerasa.Nome, MenuItemSerasa.Custo]) then
    Exit;
    
  FAtualizando := True;

  with U.Query do
  try
    SQL.Text :=
    'select public.cred_consultar_serasa(cast(:recno as bigint), cast(:tipo as integer))';
    ParamByName('recno').AsInteger := IBrwSrcrecno.AsInteger;
    ParamByName('tipo').AsInteger := MenuItemSerasa.Recno;

    Open;

    IBrwSrc.Edit;
    IBrwSrcstatus.AsInteger := 0;
    IBrwSrcserasa.AsInteger := Fields[0].AsInteger;
    IBrwSrc.Post;

    ShowMessage('Consulta enviada ao SERASA');
  finally
    Close;
    FAtualizando := False;
    RefreshCtrl;
  end;
end;

procedure TAnaliseDeCredito.SetTipo(const Value: TSerasaTipo);
var
  MenuItem: TMenuItemSerasa;
begin
  if (Value = FSerasaTipo) and (pmSerasa.Items.Count > 0) then
    Exit;

  FSerasaTipo := Value;
  pmSerasa.Items.Clear;

  with U.Query do
  try
    SQL.Text :=
    'select tipo, nome, custo, recno '+
      'from tspeed.tipos '+
     'where classe = :classe ';

    ParamByName('classe').AsString := GetEnumName(TypeInfo(TSerasaTipo), Ord(FSerasaTipo));

    Open;

    while not Eof do
    begin
      MenuItem := TMenuItemSerasa.Create(Self);      
      MenuItem.Nome := FieldByName('nome').AsString;
      MenuItem.Custo := FieldByName('custo').AsFloat;
      MenuItem.Tipo := FieldByName('tipo').AsInteger;
      MenuItem.Recno := FieldByName('recno').AsInteger;
      MenuItem.OnClick := SerasaExecute;

      MenuItem.Caption := Format('%s (%m)', [MenuItem.Nome, MenuItem.Custo]);
      
      pmSerasa.Items.Add(MenuItem);

      Next;
    end;
  finally
    Close;
  end;
end;

{ TMenuItemSerasa }

procedure TMenuItemSerasa.SetCusto(const Value: Double);
begin
  FCusto := Value;
end;

procedure TMenuItemSerasa.SetNome(const Value: string);
begin
  FNome := Value;
end;

procedure TMenuItemSerasa.SetRecno(const Value: Integer);
begin
  FRecno := Value;
end;

procedure TMenuItemSerasa.SetTipo(const Value: Integer);
begin
  FTipo := Value;
end;

initialization
  RegisterClass(TAnaliseDeCredito);

finalization
  UnRegisterClass(TAnaliseDeCredito);

end.
