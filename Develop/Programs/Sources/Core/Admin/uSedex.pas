unit uSedex;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIWizard, ActnList, StdCtrls, jpeg, ExtCtrls, ACBrBase, ACBrSocket,
  ACBrSedex, Mask, JvExMask, JvToolEdit, JvBaseEdits, uIUtils, ComCtrls, ToolWin;

type
  TSedex = class;
  
  ICalculos = interface
    ['{78B226DE-EA27-438E-904C-0F7C443BF1FD}']
    procedure CalcularVolume(ASedex: TSedex);
    procedure CalcularPeso(ASedex: TSedex);
  end;

  TSedex = class(TIWizard)
    ACBrSedex1: TACBrSedex;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label3: TLabel;
    edCodigo: TEdit;
    edNome: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    edInscricao: TEdit;
    Label6: TLabel;
    edDestino: TMaskEdit;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    edLarg: TJvCalcEdit;
    Label7: TLabel;
    Label8: TLabel;
    edAlt: TJvCalcEdit;
    Label9: TLabel;
    edComp: TJvCalcEdit;
    Label10: TLabel;
    edDiam: TJvCalcEdit;
    Panel14: TPanel;
    Label11: TLabel;
    edPeso: TJvCalcEdit;
    Label12: TLabel;
    edVol: TJvCalcEdit;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Label13: TLabel;
    cbServicos: TComboBox;
    Label14: TLabel;
    cbFormato: TComboBox;
    Label15: TLabel;
    edFator: TJvCalcEdit;
    Label16: TLabel;
    edValor: TJvCalcEdit;
    Label17: TLabel;
    edValorC: TJvCalcEdit;
    ControlBar1: TControlBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    actCalc: TAction;
    GroupBox1: TGroupBox;
    mLog: TMemo;
    Panel20: TPanel;
    Label18: TLabel;
    edPrazo: TJvCalcEdit;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    Panel21: TPanel;
    Panel22: TPanel;
    Label19: TLabel;
    edDescri: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure cbServicosChange(Sender: TObject);
    procedure actCalcExecute(Sender: TObject);
    procedure edLargChange(Sender: TObject);
    procedure edAltChange(Sender: TObject);
    procedure edCompChange(Sender: TObject);
    procedure edDiamChange(Sender: TObject);
    procedure edPesoChange(Sender: TObject);
    procedure edVolChange(Sender: TObject);
    procedure edFatorChange(Sender: TObject);
    procedure edValorChange(Sender: TObject);
    procedure edDestinoChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
  private
    FCorreio: Integer;
    FServicos: TComboList;
    procedure SetAltura(const Value: Double);
    procedure SetCliCodigo(const Value: Integer);
    procedure SetCliInscri(const Value: string);
    procedure SetCliNome(const Value: String);
    procedure SetComprimento(const Value: Double);
    procedure SetDestino(const Value: string);
    procedure SetDiametro(const Value: Double);
    procedure SetFator(const Value: Single);
    procedure SetLargura(const Value: Double);
    procedure SetValor(const Value: Double);
    procedure SetValorCorrigido(const Value: Double);
    procedure SetServico(const Value: string);
    procedure SetPeso(const Value: Double);
    procedure SetVolumes(const Value: Double);
    function GetAltura: Double;
    function GetCliCodigo: Integer;
    function GetCliInscri: string;
    function GetCliNome: String;
    function GetComprimento: Double;
    function GetDestino: string;
    function GetDiametro: Double;
    function GetFator: Single;
    function GetLargura: Double;
    function GetPeso: Double;
    function GetServico: string;
    function GetValor: Double;
    function GetValorCorrigido: Double;
    function GetVolumes: Double;
    procedure SetPrazo(const Value: integer);
    function GetPrazo: integer;
    function GetFormato: Integer;
    procedure SetFormato(const Value: Integer);
    function GetDescri: string;
    procedure SetDescri(const Value: string);
  private
    FDestinatario: Integer;
    FFrascos: Integer;
    FSeringas: Integer;
    FCalculos: ICalculos;
    procedure PeencherServicos;
    procedure Log(Message: string);
    procedure LogClear;
    procedure CalcCorrigido;

    procedure SetCorreio(const Value: Integer);
    procedure SetDestinatario(const Value: Integer);
    procedure SetFrascos(const Value: Integer);
    procedure SetSeringas(const Value: Integer);
    procedure SetCalculos(const Value: ICalculos);
    function CodeToService(Value: string): TACBrTpServico;
  public
    { Public declarations }
    procedure Calcular;

    property Altura: Double read GetAltura write SetAltura;
    property CliCodigo: Integer read GetCliCodigo write SetCliCodigo;
    property CliInscri: string read GetCliInscri write SetCliInscri;
    property CliNome: String read GetCliNome write SetCliNome;
    property Comprimento: Double read GetComprimento write SetComprimento;
    property Correio: Integer read FCorreio write SetCorreio;
    property Descri: string read GetDescri write SetDescri;
    property Destino: string read GetDestino write SetDestino;
    property Diametro: Double read GetDiametro write SetDiametro;
    property Fator: Single read GetFator write SetFator;
    property Formato: Integer read GetFormato write SetFormato;
    property Largura: Double read GetLargura write SetLargura;
    property Peso: Double read GetPeso write SetPeso;
    property Prazo: integer read GetPrazo write SetPrazo;
    property Servico: string read GetServico write SetServico;
    property Valor: Double read GetValor write SetValor;
    property ValorCorrigido: Double read GetValorCorrigido write SetValorCorrigido;
    property Volumes: Double read GetVolumes write SetVolumes;

    property Destinatario: Integer read FDestinatario write SetDestinatario;
    property Calculos: ICalculos read FCalculos write SetCalculos;
  end;

var
  Sedex: TSedex;

implementation

uses uResources;

{$R *.dfm}

{ TSedex }

procedure TSedex.actCalcExecute(Sender: TObject);
begin
  inherited;
  actCalc.Enabled := False;
  actOk.Enabled := False;
  Application.ProcessMessages;

  if Assigned(FCalculos) then
  begin
    FCalculos.CalcularVolume(Self);
    FCalculos.CalcularPeso(Self);
  end;

  Valor := 0;
  Prazo := 0;
  LogClear;
  Log('Consultando correios... Aguarde...');
  try
    with ACBrSedex1 do
    try
      CepOrigem := '09890510';
      CepDestino := Self.Destino;
      Comprimento := Self.Comprimento;
      Altura := Self.Altura;
      Largura := Self.Largura;
      Diametro := Self.Diametro;
      Volumes := Self.Volumes;
      Peso := Self.Peso;
      Servico := CodeToService(FServicos.Selected.Value);

      Consultar;
      LogClear;

      if retMsgErro <> EmptyStr then
        Log(retMsgErro);

      // Multiplicação do valor pela quantidade de volumes incluída por solicitação do sr. João
      // O serviço do correio não está levando em consideração os volumes.
      Self.Valor := retValor * Volumes;
      Self.Prazo := retPrazoEntrega;
      CalcCorrigido;
      actOk.Enabled := (ValorCorrigido > 0);      
    except
      on E:Exception do
        Log(E.Message);
    end;
  finally
    actCalc.Enabled := True;
  end;
end;

procedure TSedex.actOkExecute(Sender: TObject);
var
  stmt: string;
begin
  // Registrando cálculo
  with U.Data.Query do
  try
    ParamCheck := True;
    if FCorreio <= 0 then
    begin
      SQL.Text := 'select nextval(''correio_recno_seq'')';
      Open;
      FCorreio := Fields[0].AsInteger;
      Close;

      stmt :=
      'INSERT INTO correio( '+
        'recno, servico, formato, cepo, cepd, volumes, peso, prazo, '+
        'diametro, comprimento, altura, largura, fator, valor, valorc, obs, '+
        'descri, codigo) '+
      'values ( '+
        ':recno, :servico, :formato, :cepo, :cepd, :volumes, :peso, :prazo, '+
        ':diametro, :comprimento, :altura, :largura, :fator, :valor, :valorc, :obs, '+
        ':descri, :codigo);';
    end else
      stmt :=
      'update correio set '+
        'servico = :servico, formato = :formato, cepo = :cepo, cepd = :cepd, '+
        'volumes = :volumes, peso = :peso, diametro = :diametro, prazo = :prazo, '+
        'comprimento = :comprimento, altura = :altura, largura = :largura, '+
        'fator = :fator, valor = :valor, valorc = :valorc, obs = :obs,  '+
        'descri = :descri, codigo = :codigo '+
       'where recno = :recno; ';

    SQL.Clear;
    SQL.Add(stmt);
    
    ParamByName('recno').AsInteger := FCorreio;
    ParamByName('servico').AsString := Servico;
    ParamByName('formato').AsInteger := Formato;
    ParamByName('cepo').AsString := StringReplace(ACBrSedex1.CepOrigem, '-', EmptyStr, []);
    ParamByName('cepd').AsString := StringReplace(Destino, '-', EmptyStr, []);
    ParamByName('volumes').AsFloat := Volumes;
    ParamByName('peso').AsFloat := Peso;
    ParamByName('diametro').AsFloat := Diametro;
    ParamByName('comprimento').AsFloat := Comprimento;
    ParamByName('altura').AsFloat := Altura;
    ParamByName('largura').AsFloat := Largura;
    ParamByName('fator').AsFloat := Fator;
    ParamByName('valor').AsFloat := Valor;
    ParamByName('valorc').AsFloat := ValorCorrigido;
    ParamByName('prazo').AsInteger := Prazo;
    ParamByName('descri').AsString := Descri;
    ParamByName('codigo').AsInteger := CliCodigo;

    if mLog.Lines.Count > 0 then
      ParamByName('obs').AsMemo := mLog.Lines.Text;

    ExecSQL;
  finally
    Close;
  end;

  inherited;
  
  actCloseExecute(actClose);
end;

procedure TSedex.CalcCorrigido;
begin
  ValorCorrigido := Valor * (1 + Fator / 100);
end;

procedure TSedex.Calcular;
begin
  actCalcExecute(actCalc);
  if actOk.Enabled then
    actOkExecute(actOk);
end;

procedure TSedex.cbServicosChange(Sender: TObject);
begin
  inherited;
  Servico := FServicos.Selected.Value;
end;

function TSedex.CodeToService(Value: string): TACBrTpServico;
begin

  if Value = '40215' then
    Result := Tps40215SEDEX10
  else if Value = '04014' then
    Result := Tps04014SEDEX
  else if Value = '40290' then
    Result := Tps40290SEDEXHOJE
  else if Value = '81019' then
    Result := Tps81019eSEDEX
  else if Value = '44105' then
    Result := Tps44105MALOTE
  else if Value = '85480' then
    Result := Tps85480AEROGRAMA
  else if Value = '10030' then
    Result := Tps10030CARTASIMPLES
  else if Value = '10014' then
    Result := Tps10014CARTAREGISTRADA
  else if Value = '16012' then
    Result := Tps16012CARTAOPOSTAL
  else if Value = '20010' then
    Result := Tps20010IMPRESSO
  else if Value = '14010' then
    Result := Tps14010MALADIRETA
  else if Value = '40045' then
    Result := Tps40045SEDEXaCobrarVarejo
  else if Value = '40215' then
    Result := Tps40215SEDEX10Varejo
  else if Value = '40290' then
    Result := Tps40290SEDEXHojeVarejo
  else
    raise Exception.CreateFmt('Tipo de serviço %s do correio é inválido!', [Value]);

end;

procedure TSedex.edAltChange(Sender: TObject);
begin
  inherited;
  Altura := edAlt.Value;
end;

procedure TSedex.edCompChange(Sender: TObject);
begin
  inherited;
  Comprimento := edComp.Value;
end;

procedure TSedex.edDestinoChange(Sender: TObject);
begin
  inherited;
  Destino := edDestino.Text;
end;

procedure TSedex.edDiamChange(Sender: TObject);
begin
  inherited;
  Diametro := edDiam.Value;
end;

procedure TSedex.edFatorChange(Sender: TObject);
begin
  inherited;
  Fator := edFator.Value;
end;

procedure TSedex.edLargChange(Sender: TObject);
begin
  inherited;
  Largura := edLarg.Value;
end;

procedure TSedex.edPesoChange(Sender: TObject);
begin
  inherited;
  Peso := edPeso.Value;
end;

procedure TSedex.edValorChange(Sender: TObject);
begin
  inherited;
  Valor := edValor.Value;
end;

procedure TSedex.edVolChange(Sender: TObject);
begin
  inherited;
  Volumes := edVol.Value;
end;

procedure TSedex.FormCreate(Sender: TObject);
begin
  inherited;
  FCorreio := -1;
  PeencherServicos;
  Comprimento := 40;
  Altura := 35;
  Largura := 35;
end;

procedure TSedex.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FServicos);
end;

function TSedex.GetAltura: Double;
begin
  Result := edAlt.Value;
end;

function TSedex.GetCliCodigo: Integer;
begin
  Result := StrToInt(edCodigo.Text);
end;

function TSedex.GetCliInscri: string;
begin
  Result := edInscricao.Text;
end;

function TSedex.GetCliNome: String;
begin
  Result := edNome.Text;
end;

function TSedex.GetComprimento: Double;
begin
  Result := edComp.Value;
end;

function TSedex.GetDescri: string;
begin
  Result := edDescri.Text;  
end;

function TSedex.GetDestino: string;
begin
  Result := edDestino.Text;
end;

function TSedex.GetDiametro: Double;
begin
  Result := edDiam.Value;
end;

function TSedex.GetFator: Single;
begin
  Result := edFator.Value;
end;

function TSedex.GetFormato: Integer;
begin
  Result := cbFormato.ItemIndex + 1;
end;

function TSedex.GetLargura: Double;
begin
  Result := edLarg.Value;
end;

function TSedex.GetPeso: Double;
begin
  Result := edPeso.Value;
end;

function TSedex.GetPrazo: integer;
begin
  Result := Round(edPrazo.Value);
end;

function TSedex.GetServico: string;
begin
  Result := FServicos.Selected.Value;
end;

function TSedex.GetValor: Double;
begin
  Result := edValor.Value;
end;

function TSedex.GetValorCorrigido: Double;
begin
  Result := edValorC.Value;
end;

function TSedex.GetVolumes: Double;
begin
  Result := edVol.Value;
end;

procedure TSedex.Log(Message: string);
begin
  mLog.Lines.Add(Message);
  mLog.SelStart := 0; 
end;

procedure TSedex.LogClear;
begin
  mLog.Clear;
end;

procedure TSedex.PeencherServicos;
begin
  FServicos := TComboList.Create(cbServicos, 'correioserv', 'servico', 'descri', False);
  FServicos.Criteria.Add('ativo');
  FServicos.OrderField := 'servico';
  FServicos.UpdateList;
  cbServicosChange(cbServicos);
end;

procedure TSedex.SetAltura(const Value: Double);
begin
  edAlt.Value := Value;
end;

procedure TSedex.SetCalculos(const Value: ICalculos);
begin
  FCalculos := Value;
end;

procedure TSedex.SetCliCodigo(const Value: Integer);
begin
  if IntToStr(Value) <> edCodigo.Text then
    edCodigo.Text := IntToStr(Value);
end;

procedure TSedex.SetCliInscri(const Value: string);
begin
  edInscricao.Text := Value;
end;

procedure TSedex.SetCliNome(const Value: String);
begin
  edNome.Text := Value;
end;

procedure TSedex.SetComprimento(const Value: Double);
begin
  edComp.Value := Value;
end;

procedure TSedex.SetCorreio(const Value: Integer);
begin
  if (FCorreio = Value) or (Value = 0) then
    Exit;
    
  FCorreio := Value;

  with U.Data.Query do
  try
    SQL.Text :=
    'select '+
      'co.servico, co.formato, co.cepo, co.cepd, co.volumes, co.peso, '+
      'co.diametro, co.comprimento, co.altura, co.largura, co.fator, '+
      'co.valor, co.valorc, co.prazo, co.obs, co.descri, co.codigo '+
    'from '+
      'correio co '+
    'where '+
      'co.recno = :recno ';

    ParamByName('recno').AsInteger := FCorreio;

    Open;

    Servico := FieldByName('servico').AsString;
    Destino := FieldByName('cepd').AsString;
    Peso := FieldByName('peso').AsFloat;
    Diametro := FieldByName('diametro').AsFloat;
    Altura := FieldByName('altura').AsFloat;
    Largura := FieldByName('largura').AsFloat;
    Comprimento := FieldByName('comprimento').AsFloat;
    Volumes := FieldByName('volumes').AsFloat;
    Valor := FieldByName('valor').AsFloat;
    ValorCorrigido := FieldByName('valorc').AsFloat;
    Fator := FieldByName('fator').AsFloat;
    Prazo := FieldByName('prazo').AsInteger;
    Formato := FieldByName('formato').AsInteger;
    Descri := FieldByName('descri').AsString;
    
    if not FieldByName('obs').IsNull then
      Log(FieldByName('obs').AsString);
  finally
    Close;
  end;
end;

procedure TSedex.SetDescri(const Value: string);
begin
  edDescri.Text := Value;
end;

procedure TSedex.SetDestinatario(const Value: Integer);
begin
  if FDestinatario <> Value then
    with U.Data.GetQuery(
      'select codigo, empresa, cast(replace(cep, ''-'', '''') as varchar(8)) cep, coalesce(cnpj, cpf) insc '+
        'from tbclientes '+
       'where codigo = :codigo ') do
    try
      ParamByName('codigo').AsInteger := Value;

      Open;

      CliCodigo := Value;
      CliNome := FieldByName('empresa').AsString;
      CliInscri := FieldByName('insc').AsString;
      Destino := FieldByName('cep').AsString;
    finally
      Close;
    end;

  FDestinatario := Value;
end;

procedure TSedex.SetDestino(const Value: string);
begin
  edDestino.Text := Value;
end;

procedure TSedex.SetDiametro(const Value: Double);
begin
  edDiam.Value := Value;
end;

procedure TSedex.SetFator(const Value: Single);
begin
  edFator.Value := Value;
end;

procedure TSedex.SetFormato(const Value: Integer);
begin
  cbFormato.ItemIndex := Value - 1;

  with ACBrSedex1 do
    case Value of
      1: Formato := TpfCaixaPacote;
      2: Formato := TpfRoloPrisma;
      3: Formato := TpfEnvelope;
    end;
end;

procedure TSedex.SetFrascos(const Value: Integer);
begin
  FFrascos := Value;
end;

procedure TSedex.SetLargura(const Value: Double);
begin
  edLarg.Value := Value;
end;

procedure TSedex.SetPeso(const Value: Double);
begin
  edPeso.Value := Value;
end;

procedure TSedex.SetPrazo(const Value: integer);
begin
  edPrazo.Value := Value;
end;

procedure TSedex.SetSeringas(const Value: Integer);
begin
  FSeringas := Value;
end;

procedure TSedex.SetServico(const Value: string);
var
  I: Integer;
begin
  ACBrSedex1.Servico := CodeToService(Value);

  for I := 0 to FServicos.Count - 1 do
    if FServicos[i].Value = Value then
    begin
      cbServicos.ItemIndex := i;
      Break;
    end;
end;

procedure TSedex.SetValor(const Value: Double);
begin
  edValor.Value := Value;
end;

procedure TSedex.SetValorCorrigido(const Value: Double);
begin
  edValorC.Value := Value;
end;

procedure TSedex.SetVolumes(const Value: Double);
begin
  edVol.Value := Value;
end;

end.
