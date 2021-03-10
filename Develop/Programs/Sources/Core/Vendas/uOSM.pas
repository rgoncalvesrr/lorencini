unit uOSM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  DB, ZAbstractRODataset, ZDataset, StdCtrls, Mask, DBCtrls, ZAbstractDataset,
  ZSqlUpdate, iTypes, Htmlview, ComObj, Buttons, Menus, JvExStdCtrls,
  JvDBCombobox, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, JvDBDatePickerEdit, JvCombobox, JvBaseEdits, JvDBControls;

type
  TOSM = class(TIDefBrowseEdit)
    TabSheet2: TTabSheet;
    TabSheet4: TTabSheet;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    ToolButton18: TToolButton;
    actLucra: TAction;
    Label10: TLabel;
    qOrigem: TZQuery;
    qOrigemrecno: TIntegerField;
    qOrigemdescri: TStringField;
    dsOrigem: TDataSource;
    JvDBDatePickerEdit1: TJvDBDatePickerEdit;
    actLkpContatos: TAction;
    DBEdit17: TDBEdit;
    Label33: TLabel;
    TabSheet9: TTabSheet;
    qFat: TZQuery;
    dsFat: TDataSource;
    qFatnf: TIntegerField;
    qFatserie: TIntegerField;
    qFatstatus: TIntegerField;
    qFatvalor: TFloatField;
    qFatvlsrv: TFloatField;
    qFatvlmat: TFloatField;
    qFatvlcom: TFloatField;
    qFathistorico: TStringField;
    GroupBox8: TGroupBox;
    DBGrid5: TDBGrid;
    GroupBox9: TGroupBox;
    Label4: TLabel;
    DBEdit19: TDBEdit;
    Label22: TLabel;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    Label36: TLabel;
    Label37: TLabel;
    DBEdit22: TDBEdit;
    Label38: TLabel;
    DBEdit23: TDBEdit;
    Label39: TLabel;
    DBEdit24: TDBEdit;
    Label40: TLabel;
    DBEdit25: TDBEdit;
    Label41: TLabel;
    DBEdit26: TDBEdit;
    GroupBox10: TGroupBox;
    Bevel6: TBevel;
    qFatemissao: TDateField;
    qFatvencto: TDateField;
    qFin: TZQuery;
    dsFin: TDataSource;
    qFinrecno: TIntegerField;
    qFindocto: TStringField;
    qFinemissao: TDateField;
    qFinvencimento: TDateField;
    qFinvencimento_real: TDateField;
    qFinbaixa: TDateField;
    qFinvalor: TFloatField;
    qFinstatus: TStringField;
    qFincriacao: TDateTimeField;
    DBGrid6: TDBGrid;
    GroupBox11: TGroupBox;
    Label43: TLabel;
    DBEdit28: TDBEdit;
    Label44: TLabel;
    DBEdit29: TDBEdit;
    Label45: TLabel;
    DBEdit30: TDBEdit;
    Label46: TLabel;
    DBEdit31: TDBEdit;
    Label47: TLabel;
    DBEdit32: TDBEdit;
    Label42: TLabel;
    DBEdit27: TDBEdit;
    Label48: TLabel;
    DBEdit33: TDBEdit;
    actFindCli: TAction;
    JvDBComboBox7: TJvDBComboBox;
    Label7: TLabel;
    Label49: TLabel;
    DBEdit34: TDBEdit;
    TabSheet10: TTabSheet;
    DBGrid7: TDBGrid;
    Panel2: TPanel;
    Label50: TLabel;
    DBMemo4: TDBMemo;
    actDespVinc: TAction;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Label11: TLabel;
    DBEdit4: TDBEdit;
    Panel13: TPanel;
    Label12: TLabel;
    DBEdit7: TDBEdit;
    Panel14: TPanel;
    SpeedButton2: TSpeedButton;
    Panel15: TPanel;
    Label13: TLabel;
    DBEdit8: TDBEdit;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    Label14: TLabel;
    DBEdit6: TDBEdit;
    Label15: TLabel;
    DBEdit9: TDBEdit;
    Label16: TLabel;
    DBEdit10: TDBEdit;
    Label17: TLabel;
    DBEdit18: TDBEdit;
    actFindTipo: TAction;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel29: TPanel;
    Panel34: TPanel;
    SpeedButton4: TSpeedButton;
    Panel30: TPanel;
    Label18: TLabel;
    DBEdit35: TDBEdit;
    Panel31: TPanel;
    Panel33: TPanel;
    Label35: TLabel;
    DBEdit37: TDBEdit;
    ToolButton5: TToolButton;
    GroupBox3: TGroupBox;
    Panel25: TPanel;
    Label51: TLabel;
    DBEdit49: TDBEdit;
    Panel26: TPanel;
    SpeedButton5: TSpeedButton;
    Panel27: TPanel;
    Label8: TLabel;
    DBEdit45: TDBEdit;
    Panel28: TPanel;
    Label9: TLabel;
    DBEdit48: TDBEdit;
    Panel32: TPanel;
    Label19: TLabel;
    DBEdit47: TDBEdit;
    Panel35: TPanel;
    Label20: TLabel;
    DBEdit46: TDBEdit;
    Panel36: TPanel;
    Label52: TLabel;
    DBEdit50: TDBEdit;
    actFindCont: TAction;
    actFindContFin: TAction;
    actFindContTec: TAction;
    TabSheet5: TTabSheet;
    GroupBox1: TGroupBox;
    Panel37: TPanel;
    Label53: TLabel;
    DBEdit2: TDBEdit;
    Panel38: TPanel;
    SpeedButton1: TSpeedButton;
    Panel39: TPanel;
    Label54: TLabel;
    DBEdit3: TDBEdit;
    Panel40: TPanel;
    Label55: TLabel;
    DBEdit36: TDBEdit;
    Panel41: TPanel;
    Label56: TLabel;
    DBEdit38: TDBEdit;
    Panel42: TPanel;
    Label57: TLabel;
    DBEdit39: TDBEdit;
    Panel43: TPanel;
    Label58: TLabel;
    DBEdit40: TDBEdit;
    GroupBox2: TGroupBox;
    Panel44: TPanel;
    Label59: TLabel;
    DBEdit41: TDBEdit;
    Panel45: TPanel;
    SpeedButton3: TSpeedButton;
    Panel46: TPanel;
    Label60: TLabel;
    DBEdit42: TDBEdit;
    Panel47: TPanel;
    Label61: TLabel;
    DBEdit43: TDBEdit;
    Panel48: TPanel;
    Label62: TLabel;
    DBEdit44: TDBEdit;
    Panel49: TPanel;
    Label63: TLabel;
    DBEdit51: TDBEdit;
    Panel50: TPanel;
    Label64: TLabel;
    DBEdit52: TDBEdit;
    Panel19: TPanel;
    Label5: TLabel;
    DBEdit53: TDBEdit;
    ToolBar2: TToolBar;
    Panel6: TPanel;
    Label6: TLabel;
    DBEdit16: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure actLucraExecute(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure qFatstatusGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure DBEdit27Exit(Sender: TObject);
    procedure actFindCliExecute(Sender: TObject);
    procedure PageControl3Change(Sender: TObject);
    procedure actDespVincExecute(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure actFindTipoExecute(Sender: TObject);
    procedure DBEdit49Exit(Sender: TObject);
    procedure actFindContExecute(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshControls; override;
    procedure OnEdit; override;
    procedure RefreshFatuFin;
    function GetOsDir: String;
    function GetOsFile: String;
    function GetOsCtrFileName: String;
    function GetOsFileName: String;
    function GetOSNfDebFileName: String;
    procedure OnLoad; override;
  public
    { Public declarations }
  end;

var
  OSM: TOSM;

implementation

{$R *.dfm}

uses uDM, uIUtils, uOS, uOSMServicos, uOSMMat, uOSMMO, DateUtils, mcUtils,
  uContatoF, FileWorks, ShellApi, uOrcaOrigens, uClientes, uMarkup, uOrcaGrupos,
  uResources;

{ TOrcamentosM }

procedure TOSM.DBEdit27Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit27.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('nome_chave');
    fLkp.Add('cnpj');
    fLkp.Add('qtdorcs');
    fLkp.Add('id_vendedor');

    if U.Data.CheckFK('tbclientes', 'codigo', QuotedStr(DBEdit27.Text), fLkp) then
    begin
      DataSet.FieldByName('nome_chave').AsString := fLkp[0];
      DataSet.FieldByName('cnpj').AsString := fLkp[1];
      DataSet.FieldByName('qtdorcs').AsString := fLkp[2];
      DataSet.FieldByName('id_vendedor').AsString := fLkp[3];
      DataSet.FieldByName('idvendedor').AsString := fLkp[3];
    end
    else
    begin
      U.Out.ShowErro('Cliente não cadastrado.');
      DBEdit27.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TOSM.DBEdit49Exit(Sender: TObject);
var
  fLkp: TStringList;
  fnome, ffuncao, ftel, fcel, femail: string;
begin
  inherited;
  
  if mcEmpty(TDBEdit(Sender).Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  fLkp:= TStringList.Create;
  try
    fLkp.Add('nome');
    fLkp.Add('funcao');
    fLkp.Add('telefone');
    fLkp.Add('celular');
    fLkp.Add('email');

    if U.Data.CheckFK('vclientes_contatos', 'contato', TDBEdit(Sender).Text, fLkp,
      Format(' cliente = %d ', [DBEdit27.Field.AsInteger])) then
    begin
      case TDBEdit(sender).Tag of
        0:
        begin
          fnome := 'contato_nome';
          ffuncao := 'contato_funcao';
          ftel := 'contato_telefone';
          fcel := 'contato_celular';
          femail := 'contato_email';
        end;
        1:
        begin
          fnome := 'contatofin_nome';
          ffuncao := 'contatofin_funcao';
          ftel := 'contatofin_telefone';
          fcel := 'contatofin_celular';
          femail := 'contatofin_email';
        end;
        2:
        begin
          fnome := 'contatotec_nome';
          ffuncao := 'contatotec_funcao';
          ftel := 'contatotec_telefone';
          fcel := 'contatotec_celular';
          femail := 'contatotec_email';
        end;
      end;


      DataSet.FieldByName(fnome).AsString := fLkp[0];
      DataSet.FieldByName(ffuncao).AsString := fLkp[1];
      DataSet.FieldByName(ftel).AsString := fLkp[2];
      DataSet.FieldByName(fcel).AsString := fLkp[3];
      DataSet.FieldByName(femail).AsString := fLkp[4];
    end
    else
    begin
      U.Out.ShowErro('Contato não cadastrado.');
      TDBEdit(Sender).SetFocus;
    end;
  finally
    FreeAndNil(fLkp);
  end;
end;

procedure TOSM.DBEdit7Exit(Sender: TObject);
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
      DataSet.FieldByName('descri_grupo').AsString := fLkp[0];
    end
    else
    begin
      U.Out.ShowErro('Tipo de OS não cadastrado.');
      TDBEdit(Sender).SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TOSM.actDespVincExecute(Sender: TObject);
var
  msg: string;
begin
  inherited;
  with U.Data.Query do
  try
    SQL.Text :=
    'select fin_caixaVincularOs(:codigo, :os)';

    ParamByName('codigo').AsInteger := OS.IBrwSrcidcliente.AsInteger;
    ParamByName('os').AsInteger := OS.IBrwSrcos.AsInteger;

    Open;

    if Fields[0].AsInteger = 0 then
      U.Out.ShowWarn('Não há despesas para serem vinculadas a OS!')
    else
    begin
      G.RefreshDataSet(OS.IBrwSrc, True);

      U.Out.ShowInfo('%d despesa(s) vinculada(s) a OS %s',
        [Fields[0].AsInteger, OS.IBrwSrcidos.DisplayText]);
    end;
  finally
    Close;
    G.RefreshDataSet(OS.qDesp);
    RefreshControls;
  end;
end;

procedure TOSM.actFindCliExecute(Sender: TObject);
begin
  Clientes := TClientes.Create(Application);
  try
    Clientes.DisplayMode := dmQuery;
    Clientes.ShowModal;
    if (Clientes.Execute) then
    begin
      DataSet.FieldByName('idcliente').AsInteger := Clientes.IBrwSrccodigo.AsInteger;
      DBEdit27Exit(DBEdit27);
    end;
  finally
    Clientes.Release;
  end;
end;

procedure TOSM.actFindContExecute(Sender: TObject);
var
  oDbEdit: TDBEdit;
begin
  inherited;
  ContatoF := TContatoF.Create(nil);
  try
    ContatoF.Situacao := csAtivos;
    ContatoF.Cliente := DataSet.FieldByName('idcliente').AsInteger;
    ContatoF.ShowModal;
    if ContatoF.Execute then
    with DM do
    begin
      case TAction(Sender).Tag of
        0: oDbEdit := DBEdit49;
        1: oDbEdit := DBEdit2;
        2: oDbEdit := DBEdit41;
      end;
      DataSet.FieldByName(oDbEdit.Field.FieldName).AsInteger := ContatoF.IBrwSrccontato.AsInteger;
      DBEdit49Exit(oDbEdit);
    end;
  finally
    FreeAndNil(ContatoF);
  end;
end;

procedure TOSM.actFindTipoExecute(Sender: TObject);
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

procedure TOSM.actLucraExecute(Sender: TObject);
begin
  Markup := TMarkup.Create(nil);
  try
    Markup.MarkupID := OS.IBrwSrcmarkup.AsInteger;
    Markup.MarkupAprovacao := False;
    Markup.ShowModal;
  finally
    FreeAndNil(Markup);
    G.RefreshDataSet(OS.IBrwSrc, True);
  end;
end;

{ Summary: Gera orçamento no MS-Word. }
procedure TOSM.actOkExecute(Sender: TObject);
var
  PosFirst: Boolean;
begin
  PosFirst:= DataSet.State = dsInsert;

  inherited;

  if PosFirst then
    DataSet.First;
end;

procedure TOSM.FormCreate(Sender: TObject);
begin
  inherited;
  OSM:= Self;
end;

procedure TOSM.FormShow(Sender: TObject);
begin
  inherited;
  G.RefreshDataSet(qOrigem, False);

  // Preenche lista de vendedores
  U.FillDBComboBox(JvDBComboBox7, 'tb_vendedores', 'idvendedor', 'nome');
end;

function TOSM.GetOsCtrFileName: String;
begin
  Result := GetOsFile  + '-ctr.doc';
end;

function TOSM.GetOsDir: String;
var
  Month: Word;
  Year: Word;
begin
  {Novo nome de arquivo}
  with DM do
  begin
    Month :=  MonthOf(OS.IBrwSrcdata.AsDateTime);
    Year := YearOf(OS.IBrwSrcdata.AsDateTime);

    Result:= U.Path.Budgets + IntToStr(Year) + '\' +
      IntToStr(Month) + ' ' + mcMonthExt(Month) + '\';
  end;
end;

function TOSM.GetOsFile: String;
begin
  {Novo nome de arquivo}
  with DM do
    Result := GetOsDir + 'OS-' + OS.IBrwSrcidos.Text;
end;

function TOSM.GetOsFileName: String;
begin
  Result := GetOsFile  + '.doc';
end;

function TOSM.GetOSNfDebFileName: String;
begin
  Result := GetOsFile  + '-nfdeb.doc';
end;

procedure TOSM.OnEdit;
begin
  case ChildDataSet.Tag of
    0:
    begin
      OSMServicos := TOSMServicos.Create(nil);
      try
        OSMServicos.ScreenType:= stMasterDetail;
        OSMServicos.DataSet:= OS.qServ;

        OSMServicos.ShowModal;
      finally
        FreeAndNil(OSMServicos);
      end;
    end;
    1:
    begin
      OSMMat := TOSMMat.Create(nil);
      try
        OSMMat.DataSet:= OS.qMat;
        OSMMat.ShowModal;
      finally
        FreeAndNil(OSMMat);
      end;
    end;
    2:
    begin
      OSMMO := TOSMMO.Create(nil);
      try
        OSMMO.DataSet:= OS.qMObra;
        OSMMO.ShowModal;
      finally
        FreeAndNil(OSMMO);
      end;
    end;
  else
    inherited;
  end;
end;

procedure TOSM.OnLoad;
begin
  inherited;
  WindowState := wsMaximized;
end;

procedure TOSM.PageControl1Change(Sender: TObject);
begin
  inherited;
  RefreshFatuFin;
end;

procedure TOSM.PageControl3Change(Sender: TObject);
begin
  inherited;
  ToolButton10.Action := actNew;

  if PageControl3.ActivePageIndex = 3 then
    ToolButton10.Action := actDespVinc;

  RefreshControls;
end;

procedure TOSM.qFatstatusGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Em Digitação';
    2: Text := 'Faturada';
    3: Text := 'Cancelada';
  end;
end;

procedure TOSM.RefreshControls;
begin
  inherited;
  with OS.IBrwSrc do
  begin
    JvDBDatePickerEdit1.Enabled:= (State = dsInsert);
    actFindCli.Enabled := (State in [dsEdit, dsInsert]);
    actFindCont.Enabled := (State in [dsEdit, dsInsert]);
    actFindContFin.Enabled := (State in [dsEdit, dsInsert]);
    actFindContTec.Enabled := (State in [dsEdit, dsInsert]);
    actFindTipo.Enabled := (State in [dsEdit, dsInsert]);
    actLkpContatos.Enabled := (State in [dsEdit, dsInsert]);
  end;

  // Atualiza Lucratividade
  actLucra.Enabled:= True;
  actNew.Enabled := actNew.Enabled and (PageControl3.ActivePageIndex <> 3);
  actEdit.Enabled := actEdit.Enabled and (PageControl3.ActivePageIndex <> 3);
  actDespVinc.Enabled := (PageControl3.ActivePageIndex = 3);
  
  JvDBComboBox7.Enabled := (U.Info.User = 'DAGOBERTO') or
    (U.Info.User = 'RICARDO');
  TabSheet9.TabVisible := JvDBComboBox7.Enabled;

  // Atualiza informações de faturamento e financeiras
  RefreshFatuFin;
end;

procedure TOSM.RefreshFatuFin;
begin
  if PageControl1.ActivePage <> TabSheet9 then
    exit;
    
  qFat.ParamByName('os').AsInteger := DataSet.FieldByName('os').AsInteger;
  qFin.ParamByName('os').AsInteger := DataSet.FieldByName('os').AsInteger;
  G.RefreshDataSet(qFat, False);
  G.RefreshDataSet(qFin, False);
end;

end.
