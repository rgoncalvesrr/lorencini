unit uFiscal;

interface

uses
  Classes;

type

  IUF = interface
    ['{002ED92F-FFD2-450B-80EB-667E2B916A25}']    
    function Codigo: Integer;
    function Sigla: string;
    function Nome: string;
  end;

  ICNPJ = interface
    ['{569E5BA4-C1D9-4F64-B90E-463AAC47B2C3}']
    {$region 'Propriedades'}
    function Inscricao: string;
    function Numero: string;
    function Filial: string;
    function DV: string;
    {$endregion}

    function IsValid: Boolean;
  end;

  INFeChave = interface
    ['{B81E5060-F4BD-46A8-A87C-F80D3B813D6C}']
    function UF: IUF;
    function Emissao: string;
    function CNPJ: ICNPJ;
    function Modelo: Shortint;
    function Serie: Integer;
    function Numero: Integer;
    function Forma: Shortint;
    function Sequencial: Integer;
    function DV: Integer;
  end;


  TUF = class(TInterfacedObject, IUF)
  private
    FCodigo: integer;
    FSigla: string;
    FNome: string;
    Constructor Create(Nome, Sigla: string; Codigo: Integer); reintroduce;
  public
    class function New(Nome, Sigla: string; Codigo: Integer): IUF;

    function Codigo: Integer;
    function Sigla: string;
    function Nome: string;
  end;

  TUFFacotry = class
  public
    class function NewByUF(UF: string): IUF;
    class function NewByCode(Code: string): IUF; overload;
    class function NewByCode(Code: integer): IUF; overload;
  end;

  TCNPJ = class(TInterfacedObject, ICNPJ)
  private
    FCNPJ: string;
    FFilial: string;
    FDV: string;
    FNumero: string;
    constructor Create(CNPJ: string); reintroduce;

    function calcularDigito(valor: string): string;
  public
    class function New(CNPJ: string): ICNPJ;

    function IsValid: Boolean;

    function Inscricao: string;
    function Numero: string;
    function Filial: string;
    function DV: string;
  end;

  TNFeChave = class(TInterfacedObject, INFeChave)
  private
    FChave: string;
    FDV: Integer;
    FSequencial: Integer;
    FUF: IUF;
    FSerie: Integer;
    FModelo: Shortint;
    FCNPJ: ICNPJ;
    FNumero: Integer;
    FEmissao: string;
    FForma: Shortint;

    constructor Create(AChaveNFe: String); reintroduce;
    procedure PreencherCampos;
  public
    class function New(AChaveNFe: String): INFeChave;

    function UF: IUF;
    function Emissao: string;
    function CNPJ: ICNPJ;
    function Modelo: Shortint;
    function Serie: Integer;
    function Numero: Integer;
    function Forma: Shortint;
    function Sequencial: Integer;
    function DV: Integer;
  end;


implementation

uses
  SysUtils;

var
  FEstados, FCodigos: TStrings;

{ TNFEChave }

constructor TNFEChave.Create(AChaveNFe: String);
begin
  Assert(AChaveNFe <> EmptyStr, 'A Chave da NF-e deve ter 44 caracteres');

  FChave := AChaveNFe;

  PreencherCampos;
end;

function TNFeChave.DV: Integer;
begin
  Result := FDV;
end;

function TNFeChave.Emissao: string;
begin
  Result := FEmissao;
end;

function TNFeChave.CNPJ: ICNPJ;
begin
  Result := FCNPJ;
end;

function TNFeChave.Forma: Shortint;
begin
  Result := FForma;
end;

function TNFeChave.Modelo: Shortint;
begin
  Result := FModelo;
end;

class function TNFEChave.New(AChaveNFe: String): INFeChave;
begin
  Result := TNFEChave.Create(AChaveNFe);
end;

function TNFeChave.Numero: Integer;
begin
  Result := FNumero;
end;

procedure TNFEChave.PreencherCampos;
begin
  FUF := TUFFacotry.NewByCode(Copy(FChave, 1, 2));
  FEmissao := Copy(FChave, 3, 4);
  FCNPJ := TCNPJ.New(Copy(FChave, 7, 14));
  FModelo := StrToInt(Copy(FChave, 21, 2));
  FSerie := StrToInt(Copy(FChave, 23, 3));
  FNumero := StrToInt(Copy(FChave, 26, 9));
  FForma := StrToInt(Copy(FChave, 35, 1));
  FSequencial := StrToInt(Copy(FChave, 36, 8));
  FDV := StrToInt(Copy(FChave, 44, 1));
end;

function TNFeChave.Sequencial: Integer;
begin
  Result := FSequencial;
end;

function TNFeChave.Serie: Integer;
begin
  Result := FSerie;
end;

function TNFeChave.UF: IUF;
begin
  Result := FUF;
end;

{ TCNPJ }

function TCNPJ.calcularDigito(valor: string): string;
var
  I, multplicador, produto, digito: integer;

begin
  multplicador := 2;
  produto := 0;

  for I := length(valor) downto 1 do
  begin
    produto := produto + StrToInt(valor[i]) * multplicador;

    if multplicador = 9 then
      multplicador := 2
    else
      Inc(multplicador);
  end;

  digito := 11 - produto mod 11;

  if digito >= 10 then
    digito := 0;

  Result := IntToStr(digito);
end;

constructor TCNPJ.Create(CNPJ: string);
var
  c: char;
begin
  inherited Create;

  FCNPJ := EmptyStr;

  for c in CNPJ do
    FCNPJ := FCNPJ + c;

  if Length(FCNPJ) <> 14 then
    raise Exception.Create('CNPJ deve ter comprimento de 14 digitos!');

  FNumero := Copy(FCNPJ, 1, 8);
  FFilial := Copy(FCNPJ, 9, 4);
  FDV := Copy(FCNPJ, 13, 2);
end;

function TCNPJ.DV: string;
begin
  Result := FDV;
end;

function TCNPJ.Filial: string;
begin
  Result := FFilial;
end;

function TCNPJ.Inscricao: string;
begin
  Result := FCNPJ;
end;

function TCNPJ.IsValid: Boolean;
var
  cnpj: string;
begin
  if length(FCNPJ) <> 14 then
  begin
    Result := False;
    Exit;
  end;

  cnpj := copy(FCNPJ, 1, 12);

  cnpj := cnpj + calcularDigito(cnpj); // calular a primeiro dígito
  cnpj := cnpj + calcularDigito(cnpj); // calular o segundo dígito

  Result := cnpj = FCNPJ;
end;

class function TCNPJ.New(CNPJ: string): ICNPJ;
begin
  Result := TCNPJ.Create(CNPJ);
end;

function TCNPJ.Numero: string;
begin
  Result := FNumero;
end;

{ TUF }

function TUF.Codigo: Integer;
begin
  Result := FCodigo;
end;

constructor TUF.Create(Nome, Sigla: string; Codigo: Integer);
begin
  inherited Create;
  FSigla := Sigla;
  FNome := Nome;
  FCodigo := Codigo;
end;

class function TUF.New(Nome, Sigla: string; Codigo: Integer): IUF;
begin
  Result := TUF.Create(Nome, Sigla, Codigo);
end;

function TUF.Nome: string;
begin
  Result := FNome;
end;

function TUF.Sigla: string;
begin
  Result := FSigla;
end;

{ TUFList }

class function TUFFacotry.NewByCode(Code: string): IUF;
begin
  Result := NewByCode(StrToInt(Code));
end;

class function TUFFacotry.NewByCode(Code: integer): IUF;
begin
  case Code of
    11: Result := TUF.New('Rondônia', 'RO', 11);
    12: Result := TUF.New('Acre', 'AC', 12);
    13: Result := TUF.New('Amazonas', 'AM', 13);
    14: Result := TUF.New('Roraima', 'RR', 14);
    15: Result := TUF.New('Pará', 'PA', 15);
    16: Result := TUF.New('Amapá', 'AP', 16);
    17: Result := TUF.New('Tocantins', 'TO', 17);
    21: Result := TUF.New('Maranhão', 'MA', 21);
    22: Result := TUF.New('Piauí', 'PI', 22);
    23: Result := TUF.New('Ceará', 'CE', 23);
    24: Result := TUF.New('Rio Grande do Norte', 'RN', 24);
    25: Result := TUF.New('Paraíba', 'PB', 25);
    26: Result := TUF.New('Pernambuco', 'PE', 26);
    27: Result := TUF.New('Alagoas', 'AL', 27);
    28: Result := TUF.New('Sergipe', 'SE', 28);
    29: Result := TUF.New('Bahia', 'BA', 29);
    31: Result := TUF.New('Minas Gerais', 'MG', 31);
    32: Result := TUF.New('Espírito Santo', 'ES', 32);
    33: Result := TUF.New('Rio de Janeiro', 'RJ', 33);
    35: Result := TUF.New('São Paulo', 'SP', 35);
    41: Result := TUF.New('Paraná', 'PR', 41);
    42: Result := TUF.New('Santa Catarina', 'SC', 42);
    43: Result := TUF.New('Rio Grande do Sul', 'RS', 43);
    50: Result := TUF.New('Mato Grosso do Sul', 'MS', 50);
    51: Result := TUF.New('Mato Grosso', 'MT', 51);
    52: Result := TUF.New('Goiás', 'GO', 52);
    53: Result := TUF.New('Distrito Federal', 'DF', 53);
  end;
end;

class function TUFFacotry.NewByUF(UF: string): IUF;
var
  idxEstado: Integer;
begin
  idxEstado := FEstados.IndexOf(UF);

  Result := NewByCode(FCodigos[idxEstado]);
end;

initialization
  FEstados := TStringList.Create;
  FCodigos := TStringList.Create;

  FEstados.Add('RO'); FEstados.Add('AC'); FEstados.Add('AM'); FEstados.Add('RR'); FEstados.Add('PA'); FEstados.Add('AP');
  FEstados.Add('TO'); FEstados.Add('MA'); FEstados.Add('PI'); FEstados.Add('CE'); FEstados.Add('RN'); FEstados.Add('PB');
  FEstados.Add('PE'); FEstados.Add('AL'); FEstados.Add('SE'); FEstados.Add('BA'); FEstados.Add('MG'); FEstados.Add('ES');
  FEstados.Add('RJ'); FEstados.Add('SP'); FEstados.Add('PR'); FEstados.Add('SC'); FEstados.Add('RS'); FEstados.Add('MS');
  FEstados.Add('MT'); FEstados.Add('GO'); FEstados.Add('DF');

  FCodigos.Add('11'); FCodigos.Add('12'); FCodigos.Add('13'); FCodigos.Add('14'); FCodigos.Add('15'); FCodigos.Add('16');
  FCodigos.Add('17'); FCodigos.Add('21'); FCodigos.Add('22'); FCodigos.Add('23'); FCodigos.Add('24'); FCodigos.Add('25');
  FCodigos.Add('26'); FCodigos.Add('27'); FCodigos.Add('28'); FCodigos.Add('29'); FCodigos.Add('31'); FCodigos.Add('32');
  FCodigos.Add('33'); FCodigos.Add('35'); FCodigos.Add('41'); FCodigos.Add('42'); FCodigos.Add('43'); FCodigos.Add('50');
  FCodigos.Add('51'); FCodigos.Add('52'); FCodigos.Add('53');

finalization
  FreeAndNil(FEstados);
  FreeAndNil(FCodigos);

end.
