unit uOSClass;

interface

uses uIUtils, uIConst, classes, db, sysutils, windows, dateutils, ZDataSet;

type
  TOSClass = class;
  
  {Tipos de pesquisa de OS}
  TFieldSearch = (fsOS, fsIdOS, fsIndex);
  TActiveOSEvent = procedure (Sender: TObject; OS: TOSClass) of object;

  {Status da OS}
  TOSStatus = (ossEmEstudo, ossPendente, ossAprovado, ossExecutado, ossFaturado,
    ossPerdido, ossContrato);

  {Tipo de coleta da OS}
  TOSType = (ostGeral, ostTerceiros, ostLorencini, ostTermo);

  TOSList = class;
  
  {Representa uma os}
  TOSClass = class(TPersistent)
  private
    FIdOS: string;
    fOnChange: TNotifyEvent;
    FOS: integer;
    fState: TDataSetState;
    FData: TDateTime;
    FIdCliente: Integer;
    FDescricao: String;
    FStatusData: TDateTime;
    FVlComissao: Double;
    FVlPrevisto: Double;
    FChamado: Integer;
    FIdServico: integer;
    FTipo: TOSType;
    FTelefone: string;
    FContato: string;
    fOwner: TOSList;
    FEmpresa: String;
    FVendedor: string;
    FStatus: TOSStatus;
    fAfterPost: TNotifyEvent;

    procedure SetIdOS(const Value: string);
    procedure SetOS(const Value: integer);
    function GetState: TDataSetState;
    procedure SetData(const Value: TDateTime);
    procedure SetIdCliente(const Value: Integer);
    procedure SetChamado(const Value: Integer);
    procedure SetDescricao(const Value: String);
    procedure SetIdServico(const Value: integer);
    procedure SetStatus(const Value: TOSStatus);
    procedure SetStatusData(const Value: TDateTime);
    procedure SetTipo(const Value: TOSType);
    procedure SetVlComissao(const Value: Double);
    procedure SetVlPrevisto(const Value: Double);
    procedure SetTelefone(const Value: string);
    procedure SetContato(const Value: string);
    function GetIndex: Integer;
  protected
    procedure DoChange; Virtual;
  public
    constructor Create(OSList: TOSList);
    destructor Destroy; override;

    {Métodos}
    procedure Cancel; // Recarrega informações do banco
    procedure Post; // Grava OS
    function Stmt: String; // Retorna instrução SQL para gravação da OS
    function StatusByName: String;

    {Propriedades}
    property Chamado: Integer read FChamado write SetChamado;
    property Contato: string read FContato write SetContato;
    property Data: TDateTime read FData write SetData;
    property Descricao: String read FDescricao write SetDescricao;
    property Empresa: String read FEmpresa;
    property IdCliente: Integer read FIdCliente write SetIdCliente;
    property IdOS: string read FIdOS write SetIdOS;
    property IdServico: integer read FIdServico write SetIdServico;
    property Index: Integer read GetIndex;
    property OS: integer read FOS;
    property Owner: TOSList read fOwner;
    property Status: TOSStatus read FStatus write SetStatus;
    property StatusData: TDateTime read FStatusData write SetStatusData;
    property State: TDataSetState read GetState;
    property Telefone: string read FTelefone write SetTelefone;
    property Tipo: TOSType read FTipo write SetTipo;
    property Vendedor: string read FVendedor write FVendedor;
    property VlPrevisto: Double read FVlPrevisto write SetVlPrevisto;
    property VlComissao: Double read FVlComissao write SetVlComissao;

    {Eventos}
    property OnChange: TNotifyEvent read fOnChange write fOnChange;
    property OnAfterPost: TNotifyEvent read fAfterPost write fAfterPost; 
  end;

  {Representa a lista os}
  TOSList = class(TList)
  private
    fOS: TOSClass;
    fIdOS: string;
    fOS_Index: integer;
    FBasicStmt: string;
    FActiveOS: TOSClass;
    FOnActiveOS: TActiveOSEvent;
    function GetOs(FieldSeach: TFieldSearch): TOSClass;
    function GetActiveOS: TOSClass;
    procedure SetActiveOS(const Value: TOSClass);
  public
    constructor Create;
    destructor Destroy; override;
    procedure ClearList;
    procedure LoadList(osOrder: string = ''; osFilter: string = ''); {Carrega OS's a partir de uma origem aberta}
    function New: TOSClass;
    function OsByIdOS(IdOS: String): TOSClass; overload;
    function OsByIndex(Index: Integer): TOSClass; overload;
    function OsByOs(OS: Integer): TOSClass; overload;

    property ActiveOS: TOSClass read GetActiveOS write SetActiveOS;
    property BasicStmt: string read FBasicStmt;
    property OnActiveOS: TActiveOSEvent read FOnActiveOS write FOnActiveOS;
  end;

var
  OSList: TOSList;

implementation

uses mcUtils;

{ TOS }

procedure TOSClass.Cancel;
begin
  try
    if fState = dsEdit then
      with U.Query do
      try
        SQL.Text:= fOwner.BasicStmt + ' where os = '+IntToStr(FOS);

        Open;

        if IsEmpty then
          raise Exception.CreateFmt('OS %d não encontrada no banco de dados.', [FOS]);


        FChamado:= FieldByName('chamado').AsInteger;
        FContato:= FieldByName('contato').AsString;
        FData:= FieldByName('data').AsDateTime;
        FDescricao:= FieldByName('descricao').AsString;
        FIdCliente:= FieldByName('idcliente').AsInteger;
        FIdOS:= FieldByName('idos').AsString;
        FIdServico:= FieldByName('IdServico').AsInteger;
        FStatusData:= FieldByName('status_data').AsDateTime;
        FTelefone:= FieldByName('telefone').AsString;
        FVlPrevisto:= FieldByName('VlPrevisto').AsFloat;
        FVlComissao:= FieldByName('VlComissao').AsFloat;
        FTipo:= TOSType(FieldByName('tipo').AsInteger);
        FStatus:= TOSStatus(FieldByName('status').AsInteger);
      finally
        Close;
      end;

    fState:= dsBrowse;
  except
    raise;
  end;
end;

constructor TOSClass.Create(OSList: TOSList);
begin
  inherited Create;

  if not Assigned(OSList) then
    raise exception.Create('Lista de Ordens de Serviço (OS) não instanciada.');

  fOwner:= OSList;
  fOnChange := nil;
  fAfterPost := nil;
end;

destructor TOSClass.Destroy;
begin
  fOwner := nil;
  fOnChange := nil;
  fAfterPost := nil;
  inherited;
end;

procedure TOSClass.DoChange;
begin
  try
    if fState <> dsInsert then
      fState:= dsEdit;

    {Dispara Evento}
    if Assigned(fOnChange) then
      fOnChange(Self);
  except
  end;
end;

function TOSClass.GetIndex: Integer;
begin
  Result:= fOwner.IndexOf(Self);  
end;

function TOSClass.GetState: TDataSetState;
begin
  Result:= fState;
end;

procedure TOSClass.Post;
begin
  U.Data.StartTransaction;
  try
    U.ExecuteSQL(Stmt);
    U.Data.Commit;

    {Atualiza OS com informações geradas pelo banco de dados}
    if fState = dsInsert then
      with U.Query do
      try
        SQL.Text:=
        'select idos, os '+
          'from tb_orcamentos '+
         'where recno = (select max(recno) from tb_orcamentos); ';

        Open;

        FIdOS:= FieldByName('idos').AsString;
        FOS:= FieldByName('os').AsInteger;
      finally
        Close;
      end;

      fState:= dsBrowse;

      // Executa evento pós gravação
      if Assigned(fAfterPost) then
        fAfterPost(Self);
  except
    on E:Exception do
    begin
      U.Data.Rollback;
      U.Out.ShowErro('Não foi possível gravar a OS: %d.'#13#10'Erro %s.',[OS, E.Message]);
    end;
  end;
end;

procedure TOSClass.SetChamado(const Value: Integer);
begin
  FChamado := Value;
  DoChange;
end;

procedure TOSClass.SetContato(const Value: string);
begin
  FContato := Value;
  DoChange;
end;

procedure TOSClass.SetData(const Value: TDateTime);
begin
  FData := Value;
  DoChange;
end;

procedure TOSClass.SetDescricao(const Value: String);
begin
  FDescricao := Value;
  DoChange;
end;

procedure TOSClass.SetIdCliente(const Value: Integer);
begin
  FIdCliente := Value;
  DoChange;
end;

procedure TOSClass.SetIdOS(const Value: string);
begin
  FIdOS := Value;
  DoChange;
end;

procedure TOSClass.SetIdServico(const Value: integer);
begin
  FIdServico := Value;
  DoChange;
end;

procedure TOSClass.SetOS(const Value: integer);
begin
  FOS := Value;
  DoChange;
end;

procedure TOSClass.SetStatus(const Value: TOSStatus);
begin
  FStatus := Value;
  DoChange;
end;

procedure TOSClass.SetStatusData(const Value: TDateTime);
begin
  FStatusData := Value;
  DoChange;
end;

procedure TOSClass.SetTelefone(const Value: string);
begin
  FTelefone := Value;
  DoChange;
end;

procedure TOSClass.SetTipo(const Value: TOSType);
begin
  FTipo := Value;
  DoChange;
end;

procedure TOSClass.SetVlComissao(const Value: Double);
begin
  FVlComissao := Value;
  DoChange;
end;

procedure TOSClass.SetVlPrevisto(const Value: Double);
begin
  FVlPrevisto := Value;
  DoChange;
end;

function TOSClass.StatusByName: String;
begin
  case FStatus of
    ossEmEstudo: Result:= 'Em Estudo';
    ossPendente: Result:= 'Pendente';
    ossAprovado: Result:= 'Aprovado';
    ossExecutado: Result:= 'Executado';
    ossFaturado: Result:= 'Faturado';
    ossPerdido: Result:= 'Perdido';
  end;
end;

function TOSClass.Stmt: String;
var
  fano: string;
  fosStatus: string;
  fosTipo: string;
begin
  Result:= '';
  {Ano da OS}
  fano:= FormatDateTime('yyyy', FData);
  case FStatus of
    ossEmEstudo: fosStatus:= 'EM ESTUDO';
    ossPendente: fosStatus:= 'PENDENTE';
    ossAprovado: fosStatus:= 'APROVADO';
    ossExecutado: fosStatus:= 'EXECUTADO';
    ossFaturado: fosStatus:= 'FATURADO';
    ossPerdido: fosStatus:= 'PERDIDO';
    ossContrato: fosStatus:= 'CONTRATO';
  end;
  case FTipo of
    ostGeral: fosTipo:= 'GERAL';
    ostTerceiros: fosTipo:= 'LABORATÓRIO COLETA TERCEIRO';
    ostLorencini: fosTipo:= 'LABORATÓRIO COLETA LORENCINI';
    ostTermo: fosTipo:= 'TERMOGRAFIA';
  end;
  case fState of
    dsInsert:
      Result:= 'insert into tb_orcamentos (Ano, Chamado, Data, Descricao, IdCliente, '+
        'IdOS, Id_Servico, OS, Status, Status_Data, Tipo, VlrPrevisto, '+
        'VlrComissao, Contato, Telefone ) values ('+fano+','+
        U.SqlIsNull(fChamado)+','+U.SqlIsNull(fData)+','+
        U.SqlIsNull(fDescricao)+','+U.SqlIsNull(fIdCliente)+','+U.SqlIsNull(fIdOS)+','+
        U.SqlIsNull(fIdServico)+','+U.SqlIsNull(fOS)+','+
        U.SqlIsNull(fosStatus)+','+U.SqlIsNull(fStatusData)+','+U.SqlIsNull(fosTipo)+','+
        G.Float2StrSQL(fVlPrevisto)+','+G.Float2StrSQL(fVlComissao)+','+
        U.SqlIsNull(fContato)+','+U.SqlIsNull(fTelefone)+');';
    dsEdit:
      Result:= 'update tb_orcamentos set Ano = '+fano+', Chamado = '+
        U.SqlIsNull(Chamado)+', Data = '+U.SqlIsNull(Data)+', Descricao = '+
        U.SqlIsNull(Descricao)+', IdCliente = '+U.SqlIsNull(IdCliente)+
        ', Id_Servico = '+U.SqlIsNull(IdServico)+', Status = '+U.SqlIsNull(fosStatus)+
        ', Status_Data = '+U.SqlIsNull(StatusData)+', Tipo = '+
        U.SqlIsNull(fosTipo)+', VlrPrevisto = '+G.Float2StrSQL(VlPrevisto)+', '+
        'VlrComissao = '+G.Float2StrSQL(VlComissao)+', contato = '+
        U.SqlIsNull(fContato)+', telefone = '+U.SqlIsNull(fTelefone)+
        ' where idcliente = '+IntToStr(IdCliente)+' '+
           'and os = '+IntToStr(OS);
  end;

end;

{ TOSList }

procedure TOSList.ClearList;
var
  i: Integer;
begin
  for i := Count - 1 downto 0 do
  begin
    TOSClass(items[i]).Free;
    Items[i]:= nil
  end;
  Clear;
end;

constructor TOSList.Create;
begin
  inherited Create;
  FBasicStmt:=
  'select a.idos, a.data, a.ano, a.idcliente, a.vlrprevisto, '+
           'a.vlrcomissao, a.id_servico, a.descricao, a.status_data, a.telefone, '+
           'a.contato, a.os, a.chamado, b.nome_chave, c.nome, '+
           'case status '+
                'when ''EM ESTUDO'' then 0 '+
                'when ''PENDENTE'' then 1 '+
                'when ''APROVADO'' then 2 '+
                'when ''EXECUTADO'' then 3 '+
                'when ''FATURADO'' then 4 '+
                'when ''PERDIDO'' then 5 '+
                'when ''CONTRATO'' then 6 '+
           'end as status, '+
           'case tipo '+
                'when ''GERAL'' then 0 '+
                'when ''LABORATÓRIO COLETA TERCEIRO'' then 1 '+
                'when ''LABORATÓRIO COLETA LORENCINI'' then 2 '+
           'end as tipo '+
      'from tb_orcamentos a '+
           'join tbclientes b '+
             'on b.codigo = a.idcliente '+
           'left join tb_vendedores c '+
             'on c.idvendedor = b.id_vendedor';
end;

destructor TOSList.Destroy;
begin
  ClearList;
  inherited;
end;

function TOSList.GetActiveOS: TOSClass;
begin
  Result:= nil;

  if Count <= 0 then
    Exit;

  if not Assigned(FActiveOS) then
    FActiveOS:= TOSClass(items[0]);

  Result:= FActiveOS;
end;

function TOSList.GetOs(FieldSeach: TFieldSearch): TOSClass;
var
  i: Integer;
  fOk: Boolean;
begin
  Result:= nil;

  {Localiza a ordem de serviço conforme o tipo de pequisa desejada}
  for i := 0 to Count - 1 do
  begin
    fOS:= inherited Items[i];
    case FieldSeach of
      fsOS: fOk:= fOS.OS = fOS_Index;
      fsIdOS: fOk:= fOS.IdOS = fIdOS;
      fsIndex: fOk:= fOS.Index = fOS_Index;
    end;
    if fOk then
    begin
      Result:= fOS;
      Break;
    end;
  end;
end;

procedure TOSList.LoadList(osOrder, osFilter: string);
begin
  {Limpa lista}
  ClearList;

  if mcEmpty(osOrder) then
    osOrder:= ' os desc';

  with U.Query do
  try
    SQL.Text:= FBasicStmt;
    if not mcEmpty(osFilter) then
      SQL.Text:= SQL.Text + ' where ' + Trim(osFilter);

    {Aplica filtro por vendedor}
//    if U.Info.IsVendor then
//    begin
//      if not mcEmpty(osFilter) then
//        SQL.Text:= SQL.Text + ' and '
//      else
//        SQL.Text:= SQL.Text + ' where ';
//
//      SQL.Text:= SQL.Text + ' c.idvendedor = ' + IntToStr(U.Info.IdVendor);
//
//    end;

    SQL.Text:= SQL.Text + ' order by ' + Trim(osOrder);

    open;

    while not EOF do
    begin
      {Cria ordem de serviço na memória}
      fOS:= TOSClass.Create(Self);
      fOS.FOS:= FieldByName('os').AsInteger;
      fOS.FChamado:= FieldByName('chamado').AsInteger;
      fOS.FContato:= FieldByName('contato').AsString;
      fOS.FData:= FieldByName('data').AsDateTime;
      fOS.FDescricao:= FieldByName('descricao').AsString;
      fOS.FIdCliente:= FieldByName('idcliente').AsInteger;
      fOS.FIdOS:= FieldByName('idos').AsString;
      fOS.FIdServico:= FieldByName('Id_Servico').AsInteger;
      fOS.FStatus:= TOSStatus(FieldByName('status').AsInteger);
      fOS.FStatusData:= FieldByName('status_data').AsDateTime;
      fOS.FTelefone:= FieldByName('telefone').AsString;
      fOS.FTipo:= TOSType(FieldByName('tipo').AsInteger);
      fOS.FVlPrevisto:= FieldByName('VlrPrevisto').AsFloat;
      fOS.FVlComissao:= FieldByName('VlrComissao').AsFloat;
      fOS.FVendedor:= FieldByName('nome').AsString;
      fOS.FEmpresa:= FieldByName('nome_chave').AsString;

      {Adiciona OS a lista}
      Add(fOS);

      Next;
    end;
  finally
    Close;
  end;

end;

function TOSList.New: TOSClass;
begin
  Result:= TOSClass.Create(Self);
  Result.fState:= dsInsert;
  Result.FData:= U.Data.CurrentDate;
  FActiveOS:= Result;
end;

function TOSList.OsByIdOS(IdOS: String): TOSClass;
begin
  fIdOS:= IdOS;
  Result:= GetOs(fsIdOS);	
end;

function TOSList.OsByIndex(Index: Integer): TOSClass;
begin
  fOS_Index:= Index;
  Result:= GetOs(fsIndex);
end;

function TOSList.OsByOs(OS: Integer): TOSClass;
begin
  fOS_Index:= OS;
  Result:= GetOs(fsOS);
end;

procedure TOSList.SetActiveOS(const Value: TOSClass);
begin
  FActiveOS:= Value;
  
  {Dispara evento}
  if Assigned(FOnActiveOS) then
    FOnActiveOS(Self, FActiveOS);
end;

initialization
  OSList:= TOSList.Create;

finalization
  FreeAndNil(OSList);

end.
