unit Remessa;

interface

uses
  Windows, SysUtils, Classes;

type
  TRemessas = class;

  TRemessaSituacao = (rsAguardando, rsRemessa, rsVolumes, rdDespacho, rsExpedicao, rsDesconhecida);
  TRemessa = class
  private
    FAtualizado: TDateTime;
    FFrascos: integer;
    FModificado: Boolean;
    FCodigo: Integer;
    FVolumes: integer;
    FId: integer;
    FSeringas: integer;
    FEmissao: TDateTime;
    FEmpresa: string;
    FSituacao: TRemessaSituacao;
    FManter: Boolean;
    FNomeChave: string;
    procedure SetAtualizado(const Value: TDateTime);
    procedure SetCodigo(const Value: Integer);
    procedure SetEmissao(const Value: TDateTime);
    procedure SetEmpresa(const Value: string);
    procedure SetFrascos(const Value: integer);
    procedure SetId(const Value: integer);
    procedure SetManter(const Value: Boolean);
    procedure SetModificado(const Value: Boolean);
    procedure SetNomeChave(const Value: string);
    procedure SetSeringas(const Value: integer);
    procedure SetSituacao(const Value: TRemessaSituacao);
    procedure SetVolumes(const Value: integer);
  public
    constructor Create;

    function SituacaoToText: string;

    property Codigo: Integer read FCodigo write SetCodigo;
    property Atualizado: TDateTime read FAtualizado write SetAtualizado;
    property Emissao: TDateTime read FEmissao write SetEmissao;
    property Empresa: string read FEmpresa write SetEmpresa;
    property Frascos: integer read FFrascos write SetFrascos;
    property Id: integer read FId write SetId;
    property Manter: Boolean read FManter write SetManter;
    property Modificado: Boolean read FModificado write SetModificado;
    property NomeChave: string read FNomeChave write SetNomeChave;
    property Seringas: integer read FSeringas write SetSeringas;
    property Situacao: TRemessaSituacao read FSituacao write SetSituacao;
    property Volumes: integer read FVolumes write SetVolumes;
  end;

  TRemessasEnumerator = class(TListEnumerator)
  public
    constructor Create(AList: TRemessas);
    function GetCurrent: TRemessa;
    property Current: TRemessa read GetCurrent;
  end;

  TRemessas = class(TList)
  private
    function Get(Index: Integer): TRemessa;
    procedure Put(Index: Integer; const Value: TRemessa);
  public
    function GetEnumerator: TRemessasEnumerator;
    function Add(Item: TRemessa): Integer;
    function Extract(Item: TRemessa): TRemessa;
    function First: TRemessa;
    function IndexOf(Item: TRemessa): Integer;
    procedure Insert(Index: Integer; Item: TRemessa);
    function Last: TRemessa;
    function Remove(Item: TRemessa): Integer;

    procedure SortBySituacao;
    procedure SortByAtualizacao;
    function FindById(const Value: Integer): TRemessa;

    property Items[Index: Integer]: TRemessa read Get write Put; default;
  end;

  function OrdenarPorSituacao(Item1, Item2: TRemessa): Integer;
  function OrdenarPorAtualizacao(Item1, Item2: TRemessa): Integer;

implementation


function OrdenarPorSituacao(Item1, Item2: TRemessa): Integer;
begin
  Result := 0;
  if Item1.Situacao > Item2.Situacao then
    Result := 1
  else if Item1.Situacao < Item2.Situacao then
    Result := -1
  else if Item1.Id > Item2.Id then
    Result := 1
  else if Item1.Id < Item2.Id then
    Result := -1;       
end;

function OrdenarPorAtualizacao(Item1, Item2: TRemessa): Integer;
begin
  Result := 0;

  if Round(Item1.Atualizado) > Round(Item2.Atualizado) then
    Result := 1
  else if Round(Item1.Atualizado) < Round(Item2.Atualizado) then
    Result := -1;
end;

{ TRemessa }

constructor TRemessa.Create;
begin
  FModificado := True;
  FSituacao := rsDesconhecida;
  FManter := False;
end;

procedure TRemessa.SetAtualizado(const Value: TDateTime);
begin
  FModificado := FAtualizado <> Value;
  FAtualizado := Value;
end;

procedure TRemessa.SetCodigo(const Value: Integer);
begin
  FModificado := FCodigo <> Value;
  FCodigo := Value;
end;

procedure TRemessa.SetEmissao(const Value: TDateTime);
begin
  FModificado := FEmissao <> Value;
  FEmissao := Value;
end;

procedure TRemessa.SetEmpresa(const Value: string);
begin
  FModificado := FEmpresa <> Value;
  FEmpresa := Value;
end;

procedure TRemessa.SetFrascos(const Value: integer);
begin
  FModificado := FFrascos <> Value;
  FFrascos := Value;
end;

procedure TRemessa.SetId(const Value: integer);
begin
  FModificado := FId <> Value;
  FId := Value;
end;

procedure TRemessa.SetManter(const Value: Boolean);
begin
  FManter := Value;
end;

procedure TRemessa.SetModificado(const Value: Boolean);
begin
  FModificado := Value;
end;

procedure TRemessa.SetNomeChave(const Value: string);
begin
  FModificado := FNomeChave <> Value;
  FNomeChave := Value;
end;

procedure TRemessa.SetSeringas(const Value: integer);
begin
  FModificado := FSeringas <> Value;
  FSeringas := Value;
end;

procedure TRemessa.SetSituacao(const Value: TRemessaSituacao);
begin
  FModificado := FSituacao <> Value;
  FSituacao := Value;
end;

procedure TRemessa.SetVolumes(const Value: integer);
begin
  FModificado := FVolumes <> Value;
  FVolumes := Value;
end;

function TRemessa.SituacaoToText: string;
begin
  case FSituacao of
    rsAguardando:
      Result := 'Aguardando Ação';
    rsRemessa:
      Result := 'Processando Remessa';
    rsVolumes:
      Result := 'Montagem de Volumes';
    rdDespacho:
      Result := 'Preparação de Despacho';
    rsExpedicao:
      Result := 'Liberado Expedição';
    rsDesconhecida:
      Result := 'Situação Desconhecida';
  end;
end;

{ TRemessas }

function TRemessas.Add(Item: TRemessa): Integer;
begin
  Result := inherited Add(Item);
end;

function TRemessas.Extract(Item: TRemessa): TRemessa;
begin
  Result := TRemessa(inherited Extract(Item));
end;

function TRemessas.FindById(const Value: Integer): TRemessa;
var
  oRemessa: TRemessa;
begin
  Result := nil;

  for oRemessa in Self do
    if oRemessa.Id = Value then
    begin
      Result := oRemessa;
      Break;
    end;
end;

function TRemessas.First: TRemessa;
begin
  Result := TRemessa(inherited First); 
end;

function TRemessas.Get(Index: Integer): TRemessa;
begin
  Result := inherited Get(Index);
end;

function TRemessas.GetEnumerator: TRemessasEnumerator;
begin
  Result := TRemessasEnumerator.Create(Self);
end;


function TRemessas.IndexOf(Item: TRemessa): Integer;
begin
  Result := inherited IndexOf(Item);
end;

procedure TRemessas.Insert(Index: Integer; Item: TRemessa);
begin
  inherited Insert(Index, Item); 
end;

function TRemessas.Last: TRemessa;
begin
  Result := TRemessa(inherited Last);
end;

procedure TRemessas.Put(Index: Integer; const Value: TRemessa);
begin
  inherited Put(Index, Value);
end;

function TRemessas.Remove(Item: TRemessa): Integer;
begin
  Result := inherited Remove(Item);
end;

procedure TRemessas.SortByAtualizacao;
begin
  Sort(@OrdenarPorAtualizacao);
end;

procedure TRemessas.SortBySituacao;
begin
  Sort(@OrdenarPorSituacao);
end;

{ TRemessasEnumerator }

constructor TRemessasEnumerator.Create(AList: TRemessas);
begin
  inherited Create(AList);
end;

function TRemessasEnumerator.GetCurrent: TRemessa;
begin
  Result := inherited GetCurrent;
end;

end.
