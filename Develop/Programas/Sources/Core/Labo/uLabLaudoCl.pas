unit uLabLaudoCl;

interface

uses SysUtils, Classes;

type
  TLaudo = class;
  TEnsaio = class;

  {** Instrumento que pode ser utilizado em ensaio}
  TInstrumento = class(TCollectionItem)
  private
    FRecno: Integer;
    FSerie: String;
    FDescri: String;
    FModelo: String;
    FValidade: TDateTime;
    procedure SetRecno(const Value: Integer);
    procedure SetSerie(const Value: String);
    procedure SetDescri(const Value: String);
    procedure SetModelo(const Value: String);
    procedure SetValidade(const Value: TDateTime);
  public
    Constructor Create(Collection: TCollection); override;
  published
    property Descri: String read FDescri write SetDescri;
    property Modelo: String read FModelo write SetModelo;
    property Recno: Integer read FRecno write SetRecno;
    property Serie: String read FSerie write SetSerie;
    property Validade: TDateTime read FValidade write SetValidade;
  end;

  {** Enumerador de instrumentos}
  TInstrumentosEnumerator = class(TCollectionEnumerator)
  public
    function GetCurrent: TInstrumento;
    property Current: TInstrumento read GetCurrent;
  end;

  {** Lista de ensaios }
  TInstrumentos = class(TCollection)
  private
    FOwner: TEnsaio;
    function GetItem(Index: Integer): TInstrumento;
    procedure SetItem(Index: Integer; const Value: TInstrumento);
  protected
    function GetOwner: TPersistent; override;
  public
    constructor Create(Ensaio: TEnsaio);
    function Add: TInstrumento;
    function GetEnumerator: TInstrumentosEnumerator;

    property Items[Index: Integer]: TInstrumento read GetItem write SetItem; default;
  end;

  {** Parâmetro do ensaio}
  TEnsaioParam = class(TCollectionItem)
  private
    FRecno: integer;
    FTitulo: String;
    FValor: Double;
    FDec_: Integer;
    FInt_: Integer;
    procedure SetRecno(const Value: integer);
    procedure SetTitulo(const Value: String);
    procedure SetValor(const Value: Double);
    procedure SetDec_(const Value: Integer);
    procedure SetInt_(const Value: Integer);
    function GetMask: String;
  published
    property Dec_: Integer read FDec_ write SetDec_;
    property Int_: Integer read FInt_ write SetInt_;
    property Mask: String read GetMask;
    property Recno: integer read FRecno write SetRecno;
    property Titulo: String read FTitulo write SetTitulo;
    property Valor: Double read FValor write SetValor;
  end;

  {** Enumerador de parâmetros de ensaios}
  TEnsaioParamsEnumerator = class(TCollectionEnumerator)
  public
    function GetCurrent: TEnsaioParam;
    property Current: TEnsaioParam read GetCurrent;
  end;

  {** Lista de parâmetros ensaios}
  TEnsaioParams = class(TCollection)
  private
    FOwner: TEnsaio;
    function GetItem(Index: Integer): TEnsaioParam;
    procedure SetItem(Index: Integer; const Value: TEnsaioParam);
    function GetParamsOk: Boolean;
  protected
    function GetOwner: TPersistent; override;
  public
    constructor Create(Ensaio: TEnsaio);
    function Add: TEnsaioParam;
    function GetEnumerator: TEnsaioParamsEnumerator;

    property ParamsOk: Boolean read GetParamsOk;
    property Items[Index: Integer]: TEnsaioParam read GetItem write SetItem; default;
  end;

  {** Tipo de referência}
  TEnsaioTipoRef = (trUnknow, trMin, trMax);

  {** Valor de referência do ensaio}
  TEnsaioRef = class(TPersistent)
  private
    FValor: Double;
    FTipo: TEnsaioTipoRef;
    procedure SetTipo(const Value: TEnsaioTipoRef);
    procedure SetValor(const Value: Double);
    function GetTipoTexto: string;
  published
    property Tipo: TEnsaioTipoRef read FTipo write SetTipo;
    property TipoTexto: string read GetTipoTexto;
    property Valor: Double read FValor write SetValor;
  end;

  {** Exceção na classe ensaio}
  EEnsaio = Exception;

  {** Ensaio}
  TEnsaio = class(TCollectionItem)
  private
    FValor: Double;
    FRecno: integer;
    FEnsaio: integer;
    FRef: TEnsaioRef;
    FNome: String;
    FUnidade: String;
    FMetodo: String;
    FValorC: Double;
    FInstrumento: TInstrumento;
    FInstrumentos: TInstrumentos;
    FEnsaioParams: TEnsaioParams;
    FDecimais: Integer;
    FArredonda: Boolean;
    FTextoSeZero: string;
    FExisteAtivos: Boolean;
    FExisteSolucoes: Boolean;
    FLaudo: TLaudo;
    FSomenteLeitura: boolean;
    procedure SetEnsaio(const Value: integer);
    procedure SetRecno(const Value: integer);
    procedure SetNome(const Value: String);
    procedure SetUnidade(const Value: String);
    procedure SetMetodo(const Value: String);
    procedure SetValor(const Value: Double);
    procedure SetValorC(const Value: Double);
    procedure SetInstrumento(const Value: TInstrumento);
    procedure SetArredonda(const Value: Boolean);
    procedure SetDecimais(const Value: Integer);
    procedure SetTextoSeZero(const Value: string);
    procedure SetExisteAtivos(const Value: Boolean);
    procedure SetExisteSolucoes(const Value: Boolean);
    procedure SetLaudo(const Value: TLaudo);
    procedure SetSomenteLeitura(const Value: boolean);
  public
    constructor Create(Colletion: TCollection); override;
    destructor Destroy; override;

    procedure Update;
    procedure Refresh;
  published
    property Arredonda: Boolean read FArredonda write SetArredonda;
    property Decimais: Integer read FDecimais write SetDecimais;
    property Ensaio: integer read FEnsaio write SetEnsaio;
    property ExisteAtivos: Boolean read FExisteAtivos write SetExisteAtivos;
    property ExisteSolucoes: Boolean read FExisteSolucoes write SetExisteSolucoes;
    property Instrumento: TInstrumento read FInstrumento write SetInstrumento;
    property Instrumentos: TInstrumentos read FInstrumentos;
    property Laudo: TLaudo read FLaudo write SetLaudo;
    property Metodo: String read FMetodo write SetMetodo;
    property Nome: String read FNome write SetNome;
    property Params: TEnsaioParams read FEnsaioParams;
    property Recno: integer read FRecno write SetRecno;
    property Ref: TEnsaioRef read FRef;
    property SomenteLeitura: boolean read FSomenteLeitura write SetSomenteLeitura;
    property TextoSeZero: string read FTextoSeZero write SetTextoSeZero;
    property Unidade: String read FUnidade write SetUnidade;
    property Valor: Double read FValor write SetValor;
    property ValorC: Double read FValorC write SetValorC;
  end;

  {** Enumerador de ensaios}
  TEnsaiosEnumerator = class(TCollectionEnumerator)
  public
    function GetCurrent: TEnsaio;
    property Current: TEnsaio read GetCurrent;
  end;

  {** Lista de ensaios }
  TEnsaios = class(TCollection)
  private
    FOwner: TLaudo;
    function GetItem(Index: Integer): TEnsaio;
    procedure SetItem(Index: Integer; const Value: TEnsaio);
  protected
    function GetOwner: TPersistent; override;
  public
    constructor Create(Laudo: TLaudo);
    function Add: TEnsaio;
    function GetEnumerator: TEnsaiosEnumerator;

    procedure UpdateDB;
    function Find(Ensaio: Integer): TEnsaio;

    property Items[Index: Integer]: TEnsaio read GetItem write SetItem; default;
  end;

  {** Laudo}
  TLaudo = class(TCollectionItem)
  private
    FEnsaios: TEnsaios;
    FAmostra: Integer;
    FLaudo: Integer;
    FTipoLaudo: Integer;
  public
    constructor Create(Colletion: TCollection); override;
    destructor Destroy; override;

    {Cria lista de parâmetros}
    procedure BuildLaudo(Amostra, Laudo, TipoLaudo: Integer);
  published
    property Amostra: Integer read FAmostra;
    property Ensaios: TEnsaios read FEnsaios;
    property Laudo: Integer read FLaudo;
    property TipoLaudo: Integer read FTipoLaudo;
  end;

implementation

uses uIUtils, zDataSet, ClipBrd;

{ TEnsaio }

constructor TEnsaio.Create(Colletion: TCollection);
begin
  inherited Create(Colletion);
  FRef := TEnsaioRef.Create;
  FInstrumentos := TInstrumentos.Create(Self);
  FEnsaioParams := TEnsaioParams.Create(Self);
end;

destructor TEnsaio.Destroy;
begin
  FreeAndNil(FRef);
  FreeAndNil(FInstrumentos);
  FreeAndNil(FEnsaioParams);
  inherited;
end;

procedure TEnsaio.Refresh;
begin

end;

procedure TEnsaio.SetArredonda(const Value: Boolean);
begin
  FArredonda := Value;
end;

procedure TEnsaio.SetDecimais(const Value: Integer);
begin
  FDecimais := Value;
end;

procedure TEnsaio.SetEnsaio(const Value: integer);
begin
  FEnsaio := Value;
end;

procedure TEnsaio.SetExisteAtivos(const Value: Boolean);
begin
  FExisteAtivos := Value;
end;

procedure TEnsaio.SetExisteSolucoes(const Value: Boolean);
begin
  FExisteSolucoes := Value;
end;

procedure TEnsaio.SetInstrumento(const Value: TInstrumento);
begin
  FInstrumento := Value;
end;

procedure TEnsaio.SetLaudo(const Value: TLaudo);
begin
  FLaudo := Value;
end;

procedure TEnsaio.SetMetodo(const Value: String);
begin
  FMetodo := Value;
end;

procedure TEnsaio.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TEnsaio.SetRecno(const Value: integer);
begin
  FRecno := Value;
end;

procedure TEnsaio.SetSomenteLeitura(const Value: boolean);
begin
  FSomenteLeitura := Value;
end;

procedure TEnsaio.SetTextoSeZero(const Value: string);
begin
  FTextoSeZero := Value;
end;

procedure TEnsaio.SetUnidade(const Value: String);
begin
  FUnidade := Value;
end;

procedure TEnsaio.SetValor(const Value: Double);
begin
  FValor := Value;
end;

procedure TEnsaio.SetValorC(const Value: Double);
begin
  FValorC := Value;
end;

procedure TEnsaio.Update;
var
  p: TEnsaioParam;
  e: TEnsaio;
begin
  //Atualiza parâmetros do ensaio
  for p in Params do
    U.ExecuteSQL(
      Format('update labamostras_res_var set valor = %s where recno = %d',
    [G.Float2StrSQL(p.Valor), p.Recno]));

  // Atualiza valor digitado no ensaio
  if Assigned(Instrumento) then
    U.ExecuteSQL(
      Format('update labamostras_res set valord = %s, labinst_recno = %d where recno = %d',
      [G.Float2StrSQL(Valor), FInstrumento.Recno, Recno]))
  else
    U.ExecuteSQL(
      Format('update labamostras_res set valord = %s, labinst_recno = null where recno = %d',
      [G.Float2StrSQL(Valor), Recno]));

  // Atualiza valor corrigido
  with U.Query do
  try
    SQL.Text :=
    'select valor '+
      'from labamostras_res '+
     'where recno = :recno ';

    ParamByName('recno').AsInteger := FRecno;

    Open;

    ValorC := FieldByName('valor').AsFloat;

    // Atualizando totalizadores
    SQL.Text :=
    'select x.ensaio_recno, re.valord, re.valor '+
      'from labamostras_res re '+
           'join (select a.laudo, c.ensaio_recno '+
                   'from labamostras_res a '+
                        'join labenscomp c '+
                          'on c.ensaio_comp = a.ensaio_recno '+
                 'where a.recno = :recno) x '+
             'on re.laudo = x.laudo '+
            'and re.ensaio_recno = x.ensaio_recno';

    ParamByName('recno').AsInteger := FRecno;

    Open;

    while not Eof do
    begin
      e := TEnsaios(Collection).Find(FieldByName('ensaio_recno').AsInteger);
      e.Valor := FieldByName('valord').AsFloat;
      e.ValorC := FieldByName('valor').AsFloat;

      Next;
    end;
  finally
    Close;
  end;
end;

{ TEnsaioRef }

function TEnsaioRef.GetTipoTexto: string;
begin
  Result := '';

  case FTipo of
    trMin: Result := 'Mínimo';
    trMax: Result := 'Máximo';
  end;
end;

procedure TEnsaioRef.SetTipo(const Value: TEnsaioTipoRef);
begin
  FTipo := Value;
end;

procedure TEnsaioRef.SetValor(const Value: Double);
begin
  FValor := Value;
end;

{ TEnsaiosEnumerator }

function TEnsaiosEnumerator.GetCurrent: TEnsaio;
begin
  Result := TEnsaio(inherited GetCurrent);
end;

{ TEnsaios }

function TEnsaios.Add: TEnsaio;
begin
  Result := inherited Add as TEnsaio;
  Result.Laudo := FOwner;
end;

constructor TEnsaios.Create(Laudo: TLaudo);
begin
  inherited Create(TEnsaio);
  FOwner := Laudo;
end;

function TEnsaios.Find(Ensaio: Integer): TEnsaio;
begin
  for Result in Self do
    if Result.Ensaio = Ensaio then
      Exit;
      
  Result := nil;
end;

function TEnsaios.GetEnumerator: TEnsaiosEnumerator;
begin
  Result := TEnsaiosEnumerator.Create(Self);
end;

function TEnsaios.GetItem(Index: Integer): TEnsaio;
begin
  Result := inherited GetItem(Index) as TEnsaio;
end;

function TEnsaios.GetOwner: TPersistent;
begin
  Result := FOwner;
end;

procedure TEnsaios.SetItem(Index: Integer; const Value: TEnsaio);
begin
  inherited SetItem(Index, Value);
end;

procedure TEnsaios.UpdateDB;
var
  e: TEnsaio;
begin
  with U.Data.Stmt do
  try
    Script.Add(
    'update labamostras_res '+
       'set valord = :valor, labinst_recno = :inst '+
     'where recno = :recno; ');


    for e in Self do
    begin
      ParamByName('valor').AsFloat := e.Valor;
      ParamByName('recno').AsInteger := e.Recno;
      ParamByName('inst').SetData(nil);

      if Assigned(e.Instrumento) then
        ParamByName('inst').AsInteger := e.Instrumento.Recno;

      Execute;
    end;
  finally
  end;
end;

{ TLaudo }

procedure TLaudo.BuildLaudo(Amostra, Laudo, TipoLaudo: Integer);
var
  qInst: TZReadOnlyQuery;
  qParam: TZReadOnlyQuery;
begin
  Self.FAmostra := Amostra;
  Self.FLaudo := Laudo;
  Self.FTipoLaudo := TipoLaudo;
  Self.FEnsaios.Clear;

  {Instrumentos}
  qInst := U.Query;
  qInst.SQL.Text :=
  'select ie.ensaio_recno, ie.labinst_recno, i.serie, '+
         'i.descri, i.modelo, i.validade '+
    'from labinst_ens ie '+
         'join labinst i '+
           'on i.recno = ie.labinst_recno '+
   'order by ie.ensaio_recno, ie.labinst_recno ';

  qInst.Open;

  {Parâmetros dos ensaios}
  qParam := U.QueryPersistent;
  qParam.SQL.Text :=
  'select ep.recno, ep.param, ep.valor, p.titulo, p.int_, p.dec_ '+
    'from labamostras_res_var ep '+
         'join labcalcvar p '+
           'on p.proc = ep.proc '+
          'and p.param = ep.param '+
          'and p.ensaio_recno is null '+
   'where ep.laudo = :laudo '+
     'and ep.relato_recno = :tipolaudo '+
     'and ep.ensaio_recno = :ensaio '+
     'and ep.proc = :proc '+
   'order by p.recno ';

  with U.Query do
  try
    SQL.Text :=
    'select r.recno, r.ensaio_recno, e.nome, e.unidade, '+
           'e.metodo, r.valord, r.valor, r.labinst_recno, '+
           'r.ref_tipo, r.ref_valor, r.proc, e.dec, '+
           'e.arred, e.sezerotxt, e.somenteleitura '+
      'from labamostras_res r '+
           'join vensaios e '+
             'on e.recno = r.ensaio_recno '+
           'join labrel_ens le ' +
             'on le.relato_recno = r.relato_recno ' +
            'and le.ensaio_recno = r.ensaio_recno ' +
     'where r.laudo = :laudo '+
       'and r.relato_recno = :tipolaudo '+
     'order by r.proc desc, le.ordem ';

    ParamByName('laudo').AsInteger := FLaudo;
    ParamByName('tipolaudo').AsInteger := FTipoLaudo;

    Open;

    while not Eof do
    begin
      with FEnsaios.Add do
      begin
        Arredonda := FieldByName('arred').AsInteger = 2;
        Decimais := FieldByName('dec').AsInteger;
        Ensaio := FieldByName('ensaio_recno').AsInteger;
        Metodo := FieldByName('metodo').AsString;
        Nome := FieldByName('nome').AsString;
        Recno := FieldByName('recno').AsInteger;
        Ref.Tipo := TEnsaioTipoRef(FieldByName('ref_tipo').AsInteger);
        Ref.Valor := FieldByName('ref_valor').AsFloat;
        SomenteLeitura := FieldByName('somenteleitura').AsBoolean;
        TextoSeZero := FieldByName('sezerotxt').AsString;
        Unidade := FieldByName('unidade').AsString;
        Valor := FieldByName('valord').AsFloat;
        ValorC := FieldByName('valor').AsFloat;

        {** Processa parâmetros do ensaio}
        qParam.ParamByName('laudo').AsInteger := Self.FLaudo;
        qParam.ParamByName('tipolaudo').AsInteger := Self.FTipoLaudo;
        qParam.ParamByName('ensaio').AsInteger := Ensaio;
        qParam.ParamByName('proc').AsString := FieldByName('proc').AsString;

        G.RefreshDataSet(qParam);

        while not qParam.Eof do
          with Params.Add do
          begin
            Dec_ := qParam.FieldByName('dec_').AsInteger;
            Int_ := qParam.FieldByName('int_').AsInteger;
            Recno := qParam.FieldByName('recno').AsInteger;
            Titulo := qParam.FieldByName('titulo').AsString;
            Valor := qParam.FieldByName('valor').AsFloat;

            qParam.Next;
          end;

        {** Adiciona instrumentos disponíveis para esse tipo de ensaio}
        if qInst.Locate('ensaio_recno', Ensaio, []) then
          while (qInst.FieldByName('ensaio_recno').AsInteger = Ensaio) and not Eof do
            with Instrumentos.Add do
            begin
              Descri := qInst.FieldByName('descri').AsString;
              Modelo := qInst.FieldByName('modelo').AsString;
              Recno := qInst.FieldByName('labinst_recno').AsInteger;
              Serie := qInst.FieldByName('serie').AsString;
              Validade := qInst.FieldByName('validade').AsDateTime;

              {** Verifica se o recno do instrumento corresponde ao infomado no ensaio}
              if Recno = FieldByName('labinst_recno').AsInteger then
                Instrumento := Instrumentos.Items[Instrumentos.Count -1];

              qInst.Next;
            end;
            
        with U.Query do
        try
          SQL.Text :=
          'select exists( '+
            'select 1 '+
              'from labens_ativo e '+
                   'join ativos a '+
                     'on a.tipo = e.tipoativo '+
             'where e.labens_recno = :ensaio)';

          ParamByName('ensaio').AsInteger := Ensaio;
          Open;

          ExisteAtivos := Fields[0].AsBoolean;
        finally
          Close;
        end;

        with U.Query do
        try
          SQL.Text :=
          'select exists( '+
              'select 1 '+
                'from labens_soltipo s '+
                     'join labsol a '+
                       'on a.tipo = s.labsoltipo_recno '+
                      'and a.saldo > 0 '+
               'where s.labens_recno = :ensaio)';

          ParamByName('ensaio').AsInteger := Ensaio;
          Open;

          ExisteSolucoes := Fields[0].AsBoolean;
        finally
          Close;
        end;
      end;

      Next;
    end;
  finally
    Close;
    qInst.Close;
    qParam.Close;
    FreeAndNil(qParam);
  end;
end;

constructor TLaudo.Create(Colletion: TCollection);
begin
  inherited;
  FEnsaios := TEnsaios.Create(Self);
end;

destructor TLaudo.Destroy;
begin
  FreeAndNil(FEnsaios);
  inherited;
end;

{ TInstrumento }

constructor TInstrumento.Create(Collection: TCollection);
begin
  inherited;
end;

procedure TInstrumento.SetDescri(const Value: String);
begin
  FDescri := Value;
end;

procedure TInstrumento.SetModelo(const Value: String);
begin
  FModelo := Value;
end;

procedure TInstrumento.SetRecno(const Value: Integer);
begin
  FRecno := Value;
end;

procedure TInstrumento.SetSerie(const Value: String);
begin
  FSerie := Value;
end;

procedure TInstrumento.SetValidade(const Value: TDateTime);
begin
  FValidade := Value;
end;

{ TInstrumentosEnumerator }

function TInstrumentosEnumerator.GetCurrent: TInstrumento;
begin
  Result := TInstrumento(inherited GetCurrent);
end;

{ TInstrumentos }

function TInstrumentos.Add: TInstrumento;
begin
  Result := inherited Add as TInstrumento;
end;

constructor TInstrumentos.Create(Ensaio: TEnsaio);
begin
  inherited Create(TInstrumento);
  FOwner := Ensaio;
end;

function TInstrumentos.GetEnumerator: TInstrumentosEnumerator;
begin
  Result := TInstrumentosEnumerator.Create(Self);
end;

function TInstrumentos.GetItem(Index: Integer): TInstrumento;
begin
  Result := inherited GetItem(Index) as TInstrumento;
end;

function TInstrumentos.GetOwner: TPersistent;
begin
  Result := FOwner;
end;

procedure TInstrumentos.SetItem(Index: Integer; const Value: TInstrumento);
begin
  inherited SetItem(Index, Value);
end;

{ TEnsaioParam }

function TEnsaioParam.GetMask: String;
begin
  Result := ',0';

  if FDec_ > 0 then
  begin
    Result := Result + '.' + StringOfChar('#', FDec_);
    Result[Length(Result)] := '0';
  end;
end;

procedure TEnsaioParam.SetDec_(const Value: Integer);
begin
  FDec_ := Value;
end;

procedure TEnsaioParam.SetInt_(const Value: Integer);
begin
  FInt_ := Value;
end;

procedure TEnsaioParam.SetRecno(const Value: integer);
begin
  FRecno := Value;
end;

procedure TEnsaioParam.SetTitulo(const Value: String);
begin
  FTitulo := Value;
end;

procedure TEnsaioParam.SetValor(const Value: Double);
begin
  FValor := Value;
end;

{ TEnsaioParamsEnumerator }

function TEnsaioParamsEnumerator.GetCurrent: TEnsaioParam;
begin
  Result := inherited GetCurrent as TEnsaioParam;
end;

{ TEnsaioParams }

function TEnsaioParams.Add: TEnsaioParam;
begin
  Result := inherited Add as TEnsaioParam;
end;

constructor TEnsaioParams.Create(Ensaio: TEnsaio);
begin
  inherited Create(TEnsaioParam);
  FOwner := Ensaio;
end;

function TEnsaioParams.GetEnumerator: TEnsaioParamsEnumerator;
begin
  Result := TEnsaioParamsEnumerator.Create(Self);
end;

function TEnsaioParams.GetItem(Index: Integer): TEnsaioParam;
begin
  Result := inherited GetItem(Index) as TEnsaioParam;
end;

function TEnsaioParams.GetOwner: TPersistent;
begin
  Result := FOwner;
end;

function TEnsaioParams.GetParamsOk: Boolean;
var
  p: TEnsaioParam;
begin
  Result := True;

  for p in Self do
    if p.Valor = 0 then
    begin
      Result := False;
      Break;
    end;
end;

procedure TEnsaioParams.SetItem(Index: Integer; const Value: TEnsaioParam);
begin
  inherited SetItem(Index, Value);
end;

end.
