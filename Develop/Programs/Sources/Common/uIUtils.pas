unit uIUtils;

interface

uses classes, windows, sysutils, zdataset, zconnection, inifiles, forms, db,
  dateutils, ZSqlProcessor, ZDbcIntfs, variants, grids, dbgrids, stdctrls,
  DBCtrls, controls, JvDBControls, JvDBCombobox, Contnrs, uDBLog;

type
  TDisplayMode = (dmNormal, dmQuery);

  {Grade}
  TGridWidth = class(TCustomGrid)
  public
    property ColCount;
    property ColWidths;
  end;

  {Ponteiro para eventos disparado na criação dos forms}
  TOutFormEvent = procedure (Sender: TObject; FormClass: TFormClass) of object;
  TOutBeforeFormEvent = procedure (Sender: TObject; FormClass: TFormClass;
    var AllowShow: Boolean) of object;

  TOut = Class(TPersistent)
  private
    fBeforeShowForm: TOutBeforeFormEvent;
    fAfterShowForm: TOutFormEvent;

  public
    constructor Create;
    destructor Destroy; Override;
    procedure ShowInfo(const Msg: string); overload;
    procedure ShowWarn(const Msg: string); overload;
    procedure ShowErro(const Msg: string); overload;
    procedure ShowInfo(const Msg: string; const Args: array of const); overload;
    procedure ShowWarn(const Msg: string; const Args: array of const); overload;
    procedure ShowErro(const Msg: string; const Args: array of const); overload;
    function ConfErro(const Msg: string): boolean; overload;
    function ConfWarn(const Msg: string): boolean; overload;
    function ConfQues(const Msg: string): boolean; overload;
    function ConfErro(const Msg: string; const Args: array of const): boolean; overload;
    function ConfWarn(const Msg: string; const Args: array of const): boolean; overload;
    function ConfQues(const Msg: string; const Args: array of const): boolean; overload;
    function ShowForm(const FormName: string; AParent: TWinControl = nil): TForm;
    function TranslateMSG(Msg: string): string;
    property OnBeforeShowForm: TOutBeforeFormEvent read fBeforeShowForm write fBeforeShowForm;
    property OnAfterShowForm: TOutFormEvent read fAfterShowForm write fAfterShowForm;
  end;

  TPath = Class(TPersistent)
  private
    function GetBudget: String;
    function GetDocs: String;
    function GetRoot: String;
    function GetSkin: String;
    function GetSystem: String;
    function GetReportTemplates: String;
    function GetReports: String;
    function GetTemplates: String;
    function GetTemp: string;
    function GetImages: string;
    function GetData: string;
    function GetOrders: String;
  public
    property Data: string read GetData;
    property Docs: String read GetDocs;
    property Images: string read GetImages;
    property Templates: String read GetTemplates;
    property Budgets: String read GetBudget;
    property Orders: String read GetOrders;
    property Reports: String read GetReports;
    property ReportTemplates: String read GetReportTemplates;
    property Root: String read GetRoot;
    property Skin: String read GetSkin;
    property System: String read GetSystem;
    property Temp: string read GetTemp;
  end;

  TAccount = Longint;

  TInfo = Class(TPersistent)
  private
    fPassWord: string;
    FConnected: boolean;
    fUserId: Integer;
    fIsAdmin: Boolean;
    FName: String;
    FEmployeeID: Integer;
    FEmployeeName: String;
    FLoadedEmployeeData: Boolean;
    FIdVendor: Integer;
    FRole: Integer;
    FSession: string;
    FAccount: TAccount;
    FUser: string;
    procedure SetName(const Value: String);
    function GetEmployeeID: integer;
    function GetEmployeeIDSQL: String;
    procedure FillEmployeeData;
    function GetEmployeeName: String;
    procedure SetSession(const Value: string);
    procedure SetAccount(const Value: TAccount);
  public
    constructor Create;

    procedure RefreshSessionFromDB(Account: Integer);

    property Connected: boolean read FConnected write FConnected;
    property EmployeeID: integer read GetEmployeeID;
    property EmployeeIDSQL: String read GetEmployeeIDSQL;
    property EmployeeName: String read GetEmployeeName;
    property Name: String read FName write SetName;
    property Role: Integer read FRole;
    property Session: string read FSession;
    property Account: TAccount read FAccount;
    property User: string read FUser;
  end;

  {Classe com informações de conexão com o banco de dados}
  TDataInfo = class(TPersistent)
  private
    FUser: String;
    FProtocol: String;
    FPort: Integer;
    FDatabase: String;
    FPassword: String;
    FHostName: String;
    procedure SetUser(const Value: String);
    procedure SetDatabase(const Value: String);
    procedure SetHostName(const Value: String);
    procedure SetPassword(const Value: String);
    procedure SetPort(const Value: Integer);
    procedure SetProtocol(const Value: String);
  public
    procedure Assign(Sender: TPersistent); override;
  published
    property Protocol: String read FProtocol write SetProtocol;
    property Database: String read FDatabase write SetDatabase;
    property HostName: String read FHostName write SetHostName;
    property User: String read FUser write SetUser;
    property Password: String read FPassword write SetPassword;
    property Port: Integer read FPort write SetPort;
  end;

  TData = Class(TZConnection)
  private
    fQueryPool: TList;
    fStmtPool: TList;
    FProc: TZSQLProcessor;
    FQuery: TZReadOnlyQuery;
    FDataInfo: TDataInfo;
    function GetCurrentDate: TDateTime;
    function GetCurrentDateTime: TDateTime;
    function GetCurrentTime: TDateTime;
    function GetStmt: TZSQLProcessor;
    function GetStmtPersistent: TZSQLProcessor;
    procedure SetDataInfo(const Value: TDataInfo);
  public
    constructor Create;
    Destructor Destroy; override;

    procedure CloneFields(Source: TDataSet; var Target: TDataSet);

    procedure BeforeOpen(DataSet: TDataSet);
    function ExecSQL(const Stmt: string): Integer; overload;
    function ExecSQL(const Stmt: string; const Args: array of const): Integer; overload;
    function ParserSQL(Stmt: String): String;
    function CheckFK(Table, Field, Value: String; ResultList: TStrings = nil;
        Where: String = ''): Boolean;
    function Lookup(Table, Field, Value: String; FieldLookupList: TStringList;
        Where: String = ''): Boolean;

    function GetQuery: TZReadOnlyQuery; overload;
    function GetQuery(const Stmt: string): TZReadOnlyQuery; overload;
    function GetQuery(const Stmt: string; const Args: array of const): TZReadOnlyQuery; overload;
    function GetQueryPersistent: TZReadOnlyQuery;

    {Controle Transacional}
    function Commit: boolean;
    function IsNull(Str:String):String; overload;
    function IsNull(Int:Integer):String; overload;
    function IsNull(Date:TDateTime; IsTimeStamp: boolean = false):String; overload;
    procedure RollBack; override;
    procedure StartTransaction; override;

    function TableIdFromName(const TableName: string): Integer;
    procedure RefreshConnParams;
    procedure WriteLog(DbLog: TDbLog);

    {Retorna o horário do servidor}
    property CurrentDate: TDateTime read GetCurrentDate;
    property CurrentTime: TDateTime read GetCurrentTime;
    property CurrentTimeStamp: TDateTime read GetCurrentDateTime;

    property DataInfo: TDataInfo read FDataInfo write SetDataInfo;

    property LastStmt: TZSQLProcessor read FProc;
    property LastQuery: TZReadOnlyQuery read FQuery;
    property Query: TZReadOnlyQuery read GetQuery;
    property QueryPersistent: TZReadOnlyQuery read GetQueryPersistent;
    property Stmt: TZSQLProcessor read GetStmt;
    property StmtPersistent: TZSQLProcessor read GetStmtPersistent;
  end;

  {$REGION 'Gerenciamento de parâmetros'}
  EIParam = Exception;
  
  TIParam = class
  private
    FName: string;
    FText: string;
    FDefault: string;
    FParamType: TFieldType;
    procedure SetName(const Value: string);
    procedure SetDefault(const Value: string);
    procedure DoError(const NameMethod: string);
  protected
    constructor PrivateCreate(const AParamType: TFieldType);
    procedure SetText(const Value: string); virtual; abstract;
    function GetText: string; virtual; abstract;
  public
    constructor Create; virtual;
    function AsString: string;
    function AsInteger: Integer;
    function AsDate: TDate;
    function AsDateTime: TDateTime;
    function AsFloat: Double;
    function AsBoolean: Boolean;
  published
    property Default: string read FDefault write SetDefault;
    property Name: string read FName write SetName;
    property ParamType: TFieldType read FParamType;
    property Text: string read GetText write SetText;
  end;

  TIParamStr = class(TIParam)
  private
    FText: string;
    procedure SetText(const Value: string); override;
    function GetText: string; override;
  public
    constructor Create; override;
    function AsString: String;
  end;

  TIParamInt = class(TIParam)
  private
    FValue: Integer;
    procedure SetText(const Value: string); override;
    function GetText: string; override;
    procedure SetValue(const Value: Integer);
  public
    constructor Create; override;
    function AsFloat: Double;
    function AsBoolean: Boolean;
    function AsInteger: Integer;
    function AsString: String;

    property Value: Integer read FValue write SetValue;
  end;

  TIParamFloat = class(TIParam)
  private
    FValue: Double;
    procedure SetText(const Value: string); override;
    function GetText: string; override;
    procedure SetValue(const Value: Double);
  public
    constructor Create; override;
    function AsFloat: Double;
    function AsInteger: Integer;
    function AsString: String;

    property Value: Double read FValue write SetValue;
  end;

  TIParamDate = class(TIParam)
  private
    FValue: TDate;
    procedure SetText(const Value: string); override;
    function GetText: string; override;
    procedure SetValue(const Value: TDate);
  public
    constructor Create; override;
    function AsDate: TDate;
    function AsDateTime: TDateTime;
    function AsFloat: Double;
    function AsString: String;

    property Value: TDate read FValue write SetValue;
  end;

  TIParamDateTime = class(TIParam)
  private
    FValue: TDateTime;
    procedure SetText(const Value: string); override;
    function GetText: string; override;
    procedure SetValue(const Value: TDateTime);
  public
    constructor Create; override;
    function AsDate: TDate;
    function AsDateTime: TDateTime;
    function AsFloat: Double;
    function AsString: String;

    property Value: TDateTime read FValue write SetValue;
  end;

  TIParamBoolean = class(TIParam)
  private
    FValue: Boolean;
    procedure SetText(const Value: string); override;
    function GetText: string; override;
    procedure SetValue(const Value: Boolean);
  public
    constructor Create; override;
    function AsString: String;
    function AsBoolean: Boolean;

    property Value: Boolean read FValue write SetValue;
  end;

  TParamsEnumerator = class(TListEnumerator)
  public
    function GetCurrent: TIParam;
    property Current: TIParam read GetCurrent;
  end;

  TParams = class(TObjectList)
  private
    function LoadFromDb(const Value: string): TParam;
    function GetItem(Index: Integer): TIParam;
    procedure SetItem(Index: Integer; AParam: TIParam);
  public
    function Add(AParam: TIParam): Integer;
    function Extract(Item: TIParam): TIParam;
    function Remove(AParam: TIParam): Integer;
    function IndexOf(AParam: TIParam): Integer;
    procedure Insert(Index: Integer; AParam: TIParam);
    function First: TIParam;
    function Last: TIParam;
    function GetEnumerator: TParamsEnumerator;

    function Find(const ParamName: string): TIParam; overload;
    function Find(const ParamName: string; const ParamType: TFieldType): TIParam; overload;
    function Persist: Boolean;


    property Items[Index: Integer]: TIParam read GetItem write SetItem; default;
  end;
  {$ENDREGION}

  {Classe com funcionalidades específicas do programa}
  TIUtils = Class
  private
    fOut: TOut;
    fPath: TPath;
    fInfo: TInfo;
    fData: TData;
    fDEFFileName: String;
    FParams: TParams;
    function GetQuery: TZReadOnlyQuery;
    function GetSession: String;
    function GetSessionSQL: String;
    function GetQueryPersistent: TZReadOnlyQuery;
    function GetData: TData;
    function ComponentToString(Component: TComponent): string;
    function StringToComponent(Value: string): TComponent;
    function GetStmt: TZSQLProcessor;
    function GetStmtPersistent: TZSQLProcessor;
    function GetLastQuery: TZReadOnlyQuery;
    function GetLastStmt: TZSQLProcessor;
  public
    constructor Create;
    destructor Destroy; Override;
    procedure ExecuteSQL(const Stmt: String); overload;
    procedure ExecuteSQL(const Stmt: String; const Args: array of const); overload;
    function Commit: boolean;
    function GetNext(Table, MaxFields: String; Where: String = ''): integer;
    procedure RestoreGridWidts(AFile: String; ADBGrid: TDBGrid);
    procedure RollBack;
    function SqlIsNull(Str: String): String; overload;
    function SqlIsNull(Int:Integer):String; overload;
    function SqlIsNull(Date:TDateTime; IsTimeStamp: boolean = false):String; overload;
    procedure StartTransaction;
    procedure SaveGridWidts(AFile: String; ADBGrid: TDBGrid);

    function ShowForm(const FormName: string; AParent: TWinControl = nil):TForm;
    procedure FillDBComboBox(DBComboBox: TDBComboBox; ATable: String; AField: String); overload;
    procedure FillDBComboBox(DBComboBox: TJvDBComboBox; ATable, AKey, AField: String); overload;

    property Data: TData read GetData;
    property Info: TInfo read fInfo;

    property LastQuery: TZReadOnlyQuery read GetLastQuery;
    property LastStmt: TZSQLProcessor read GetLastStmt;

    property Out: TOut read fOut;
    property Params: TParams read FParams;
    property Path: TPath read fPath;
    property Query: TZReadOnlyQuery read GetQuery;
    property QueryPersistent: TZReadOnlyQuery read GetQueryPersistent;
    property Session: String read GetSession;
    property SessionSQL: String read GetSessionSQL;
    property Stmt: TZSQLProcessor read GetStmt;
    property StmtPersistent: TZSQLProcessor read GetStmtPersistent;
  end;

  {Classe com funcionalidades globais}
  TIGUtils = class
  private
    fOut: TOut;
  public
    constructor Create;
    destructor Destroy; Override;

    function GetNumberOfProcessors: Integer;
    function Float2StrSQL(Valor: Double): string;
    function Str2Curr(const valor: string): Currency;
    function Str2Float(const valor: string): Double;
    function Str2Int(const valor: string): Integer;
    function DivZero(Dividendo, Divisor:Double): Double;
    function GetDateSQL(Data: string):string; overload;
    function GetDateSQL(Data: TDateTime ):string; overload;
    procedure FillConstants(Text: String; var Tokens: TStringList; Token: Char = '"');
    function RefreshDataSet(DataSet: TDataSet): Boolean; overload;
    function RefreshDataSet(DataSet: TDataSet; Resync: Boolean): Boolean; overload;
    function Crypt(const Value: string): string;
    function Encripta(const Value: string): string;
    function MD5(const Value: string): string; overload;
    function MD5File(const AFileName: string): string;

    property Out: TOut read fOut;
  end;


  {**
    Classe que cria objetos que representam um item do combo
  }
  TComboListItem = class
  private
    FCaption: String;
    FValue: Variant;
    function GetValue: Variant;
    procedure SetValue(const Value: Variant);
    function GetCaption: String;
    procedure SetCaption(const Value: String);
  public
    class function IsNull: Boolean;
    property Caption: String read GetCaption write SetCaption;
    property Value: Variant read GetValue write SetValue;
  end;

  {**
    Classe que cria lista para popular combobox
  }
  TComboList = class
  private
    FTableName: String;
    FKeyField: String;
    FCaptionField: String;
    FCombo: TCustomComboBox;
    FCriteria: TStrings;
    FOrderField: string;
    function GetItems(Index: Integer): TComboListItem;
    function GetSelected: TComboListItem;
    procedure SetCriteria(const Value: TStrings);
    function GetCount: Integer;
    procedure SetOrderField(const Value: string);
    procedure SetItemIndex(const Value: Integer);
    function GetItemIndex: Integer;
  public
    Constructor Create(AOnwer: TCustomComboBox; const TableName, KeyField,
      CaptionField: String; const Active: Boolean = True);
    Destructor Destroy; override;

    procedure Clear;
    procedure UpdateList;
    function IndexOf(Caption: String): Integer;
    function IndexOfObject(ComboListItem: TComboListItem): Integer;

    property CaptionField: String read FCaptionField;
    property Criteria: TStrings read FCriteria write SetCriteria;
    property Selected: TComboListItem read GetSelected;
    property Count: Integer read GetCount;
    property Items[Index: Integer]: TComboListItem read GetItems; Default;
    property ItemIndex: Integer read GetItemIndex write SetItemIndex;
    property KeyField: String read FKeyField;
    property TableName: String read FTableName;
    property OrderField: string read FOrderField write SetOrderField;
  end;


Var
  U: TIUtils;
  G: TIGUtils;

Const
  LF: string = #13#10;

implementation

uses ZAbstractRODataset, mcUtils, NetWorks, uIConnection, uHelpers, IdHashMessageDigest;

{ TIUtils }

function TIUtils.Commit: boolean;
begin
  result:= fData.Commit;
end;

function TIUtils.ComponentToString(Component: TComponent): string;
var
  BinStream:TMemoryStream;
  StrStream: TStringStream;
  s: string;
begin
  BinStream := TMemoryStream.Create;
  try
    StrStream := TStringStream.Create(s);
    try
      BinStream.WriteComponent(Component);
      BinStream.Seek(0, soFromBeginning);
      ObjectBinaryToText(BinStream, StrStream);
      StrStream.Seek(0, soFromBeginning);
      Result:= StrStream.DataString;
    finally
      StrStream.Free;

    end;
  finally
    BinStream.Free
  end;
end;

constructor TIUtils.Create;
begin
  {$IFDEF SERVICE}
  fData:= TData.Create;
  {$ELSE}
  fData:= nil;
  {$ENDIF}
  
  fPath:= TPath.Create;
  fOut:= G.Out;
  fInfo:= TInfo.Create;
  FParams := TParams.Create;
end;

destructor TIUtils.Destroy;
begin
  FreeAndNil(fPath);
  FreeAndNil(fInfo);
  FreeAndNil(FParams);

  if Assigned(fData) then
    FreeAndNil(fData);

  if Assigned(IConnection) then
    FreeAndNil(IConnection);

  inherited;
end;

procedure TIUtils.ExecuteSQL(const Stmt: String; const Args: array of const);
begin
  ExecuteSQL(Format(Stmt, Args));
end;

procedure TIUtils.ExecuteSQL(const Stmt: String);
begin
  fData.ExecSQL(Stmt);
end;

procedure TIUtils.FillDBComboBox(DBComboBox: TJvDBComboBox; ATable,
  AKey, AField: String);
begin
  with DBComboBox, Data.Query do
  try
    Items.BeginUpdate;
    Values.BeginUpdate;
    Items.Clear;
    Values.Clear;

    SQL.Text :=
      'select ' + AField + ', ' + AKey + ' ' +
        'from ' + ATable + ' '+
       'order by 1';

    Open;

    while not EOF do
    begin
      Items.Add(Fields.Fields[0].AsString);
      Values.Add(Fields.Fields[1].AsString);
      Next;
    end;
  finally
    Close;
    Items.EndUpdate;
    Values.EndUpdate;
  end;

  {Posiciona no item correto}
  with DBComboBox do
    if Assigned(DataSource) and  Assigned(DataSource.DataSet) then
      ItemIndex := Values.IndexOf(Field.Text);
end;

procedure TIUtils.FillDBComboBox(DBComboBox: TDBComboBox; ATable, AField: String);
begin
  with DBComboBox, Data.Query do
  try
    Items.BeginUpdate;
    Clear;

    SQL.Text :=
      'select ' + AField + ' '+
        'from ' + ATable + ' '+
       'order by 1';

    Open;

    while not EOF do
    begin
      Items.Add(Fields.Fields[0].AsString);
      Next;
    end;
  finally
    Close;
    Items.EndUpdate;
  end;

  {Posiciona no item correto}
  with DBComboBox do
    if Assigned(DataSource) and  Assigned(DataSource.DataSet) then
      ItemIndex := Items.IndexOf(Field.DisplayText);
end;

function TIUtils.GetData: TData;
begin
  if not assigned(fData) then
  begin
    fData:= TData.Create;

    IConnection := TIConnection.Create(nil);
    try
      if IConnection.ComboBox1.Items.Count > 1 then
        IConnection.ShowModal
      else
        IConnection.actOkExecute(IConnection.actOk);

      if not IConnection.Execute then
        Halt;
    finally
      FreeAndNil(IConnection);
    end;

    {Tenta conectar-se ao banco de dados}
    fData.Connect;
  end;

  Result := fData;
end;

function TIUtils.GetLastQuery: TZReadOnlyQuery;
begin
  Result := fData.LastQuery;
end;

function TIUtils.GetLastStmt: TZSQLProcessor;
begin
  Result := fData.LastStmt;
end;

function TIUtils.GetNext(Table, MaxFields, Where: String): integer;
begin
  Result:= 1;
  
  with U.Query do
  try
    SQL.Text:=
    'Select coalesce(max('+MaxFields+'), 1) + 1 '+
      'from ' + Table;

    if not mcEmpty(Where) then
      SQL.Text:= SQL.Text + Where;

    Open;

    Result:= Fields.Fields[0].AsInteger;
  finally
    Close;
  end;
end;

function TIUtils.GetQuery: TZReadOnlyQuery;
begin
  Result:= fData.Query;
end;

function TIUtils.GetQueryPersistent: TZReadOnlyQuery;
begin
  Result:= fData.QueryPersistent; 
end;

function TIUtils.GetSession: String;
begin
  with U.Query do
  try
    SQL.Text := 'select sys_session()';
    Open;
    Result := Fields.Fields[0].AsString;
  finally
    close;
  end;
end;

function TIUtils.GetSessionSQL: String;
begin
  Result:= QuotedStr(GetSession);
end;

function TIUtils.GetStmt: TZSQLProcessor;
begin
  Result := fData.Stmt;
end;

function TIUtils.GetStmtPersistent: TZSQLProcessor;
begin
  Result := fData.StmtPersistent;
end;

procedure TIUtils.RestoreGridWidts(AFile: String; ADBGrid: TDBGrid);
var
  deffile: string;
begin
  deffile := LowerCase(LowerCase(U.Path.Temp + GetHostNameByIP(GetIPAdress) +
    '_' + AFile + '.def'));

  if not FileExists(deffile) then
  begin
    ADBGrid.Columns.Clear;
    ADBGrid.Columns.RestoreDefaults;
    Exit;
  end;

  ADBGrid.Columns.LoadFromFile(deffile);
end;

procedure TIUtils.RollBack;
begin
  fData.Rollback;
end;

procedure TIUtils.SaveGridWidts(AFile: String; ADBGrid: TDBGrid);
var
  gdSaveFile: String;
  column: TColumn;
  i: integer;
begin
  gdSaveFile := LowerCase(U.Path.Temp + GetHostNameByIP(GetIPAdress) + '_' + AFile + '.def');
  ADBGrid.Columns.SaveToFile(gdSaveFile);
end;

function TIUtils.ShowForm(const FormName: string; AParent: TWinControl = nil):TForm;
begin
  Result:= Self.Out.ShowForm(FormName, AParent);
end;

function TIUtils.SqlIsNull(Int: Integer): String;
begin
  Result:= Data.IsNull(Int);
end;

function TIUtils.SqlIsNull(Date: TDateTime; IsTimeStamp: boolean): String;
begin
  Result:= Data.IsNull(Date, IsTimeStamp);
end;

procedure TIUtils.StartTransaction;
begin
  fData.StartTransaction;
end;

function TIUtils.StringToComponent(Value: string): TComponent;
var
  StrStream:TStringStream;
  BinStream: TMemoryStream;
begin
  StrStream := TStringStream.Create(Value);
  try
    BinStream := TMemoryStream.Create;
    try
      ObjectTextToBinary(StrStream, BinStream);
      BinStream.Seek(0, soFromBeginning);
      Result := BinStream.ReadComponent(nil);
    finally
      BinStream.Free;
    end;
  finally
    StrStream.Free;
  end;
end;

function TIUtils.SqlIsNull(Str: String): String;
begin
  Result:= Data.IsNull(Str);
end;

{ TOut }

function TOut.ConfErro(const Msg: string;
  const Args: array of const): boolean;
begin
  Result:= MessageBox(0, PChar(Format(Msg, Args)), 'Confirmar', 20) = 6;
end;

function TOut.ConfErro(const Msg: string): boolean;
begin
  Result:= ConfErro(Msg, []);
end;

function TOut.ConfQues(const Msg: string;
  const Args: array of const): boolean;
begin
  Result:= MessageBox(0, PChar(Format(Msg, Args)), 'Confirmar', 36) = 6;
end;

function TOut.ConfQues(const Msg: string): boolean;
begin
  Result:= ConfQues(Msg, []);
end;

function TOut.ConfWarn(const Msg: string;
  const Args: array of const): boolean;
begin
  Result:= MessageBox(0, PChar(Format(Msg, Args)), 'Confirmar', 52) = 6;
end;

constructor TOut.Create;
begin
  inherited;
  fBeforeShowForm:= nil;
  fAfterShowForm:= nil;
end;

destructor TOut.Destroy;
begin
  fBeforeShowForm:= nil;
  fAfterShowForm:= nil;
  inherited;
end;

function TOut.ConfWarn(const Msg: string): boolean;
begin
  Result:= ConfWarn(Msg, []);
end;

procedure TOut.ShowErro(const Msg: string; const Args: array of const);
begin
  MessageBox(0, PChar(TranslateMSG(Format(Msg, Args))), 'Não-conformidade', 16);
end;

function TOut.ShowForm(const FormName: string; AParent: TWinControl = nil): TForm;
var
  fForm: TFormClass;
  fAllowShow: Boolean;
begin
  {Localiza o registro do formulário na aplicação}
  fForm:= TFormClass(FindClass(FormName));
  fAllowShow:= True;

  if not Assigned(fForm) then
  begin
    U.Out.ShowErro('Formulário "' + FormName + '" não registrado."');
    Exit;
  end;

  {Cria e exibe o formulário}
  Result:= fForm.Create(Application);
  
  {Cria o formulário dentro de um controle passado como parâmetro}
  if Assigned(AParent) then
  begin
    Result.BorderIcons := [];
    Result.Align := alClient;
    Result.BorderStyle := bsNone;
    Result.Parent := AParent;
  end;

  {Dispara evento antes de exibi o form}
  if Assigned(fBeforeShowForm) then
    fBeforeShowForm(Result, fForm, fAllowShow);

  {Interrompe a execução}
  if not fAllowShow then
  begin
    Result.Free;
    Result:= nil;
    Exit;
  end;

  Result.Show;

  {Dispara evento após de exibi o form}
  if Assigned(fAfterShowForm) then
    fAfterShowForm(Result, fForm);
end;

procedure TOut.ShowErro(const Msg: string);
begin
  ShowErro(Msg, []);
end;

procedure TOut.ShowInfo(const Msg: string; const Args: array of const);
begin
  MessageBox(0, PChar(TranslateMSG(Format(Msg, Args))), 'Informação', 64);
end;

procedure TOut.ShowInfo(const Msg: string);
begin
  ShowInfo(Msg, []);
end;

procedure TOut.ShowWarn(const Msg: string; const Args: array of const);
begin
  MessageBox(0, PChar(TranslateMSG(Format(Msg, Args))), 'Informação', 48);
end;

function TOut.TranslateMSG(Msg: string): string;
var
  i: integer;
  flsMsgs: TStringList;
  fWhere: String;
begin
  if U.Data.InTransaction then
    U.Data.Rollback;

  Result:= Msg;

  {Traduz mensagens geradas em stored procedures}
  i:= pos('[[', Result);

  if i > 0 then
  begin
    Result:= mcRight(Result, length(Result) - i - 1);

    i:= pos(']]', Result);

    if i > 0 then
      Result:= mcLeft(Result, i - 1);

    exit;
  end;

  Result:= Msg;

  with U.Query do
  try
    flsMsgs:= nil;
    G.FillConstants(Msg, flsMsgs);
    fWhere:= '';

    {Monta instrução sql}
    if flsMsgs.Count > 0 then
    begin
      fWhere:= 'where constraint_ in (';

      for i := 0 to flsMsgs.Count - 1 do
      begin
        if i > 0 then
          fWhere:= fWhere + ',';

        fWhere:= fWhere + QuotedStr(flsMsgs[i]);
      end;

      fWhere:= fWhere + ')';

      if not mcEmpty(fWhere) then
        SQL.Text:=
        'select descri, solucao '+
          'from sys_errors ' + fWhere;

        Open;

        if not IsEmpty then
          Result:= FieldByName('descri' ).AsString
    end;
  finally
    flsMsgs.Free;
    Close;
  end;
end;

procedure TOut.ShowWarn(const Msg: string);
begin
  ShowWarn(Msg, []);
end;

{ TPath }
function TPath.GetData: string;
begin
  Result := Root + 'Data\';
end;

function TPath.GetDocs: String;
begin
  Result:= GetRoot + 'Docs\';

  if not DirectoryExists(Result) then
    CreateDir(Result);
end;

function TPath.GetImages: string;
begin
  Result := GetSystem + 'img\';
end;

function TPath.GetOrders: String;
begin
  Result := Self.Data + 'Orders\';
  
  {Verifica se a pasta de orçamentos existe}
  if not DirectoryExists(Result) then
    CreateDir(Result);
end;

function TPath.GetTemplates: String;
begin
  Result := GetSystem + 'Templates\';
end;

function TPath.GetBudget: String;
var
  ano: word;
  fDir: string;
  i: Integer;
begin
  {Cria a pasta que armazenará os orçamentos}
  Result:= Self.Data + 'Budgets\';

  {Verifica se a pasta de orçamentos existe}
  if not DirectoryExists(Result) then
    CreateDir(Result);

  fDir:= Result + IntToStr(YearOf(Now)) + '\';

  {Checa se a pasta do ano atual existe}
  if not DirectoryExists(fDir) then
    CreateDir(fDir);

  {Checa se a pasta dos meses existe}
  for i := 1 to 12 do
    if not DirectoryExists(fDir + IntToStr(i)+ ' ' + mcMonthExt(i)) then
      CreateDir(fDir + IntToStr(i)+ ' ' + mcMonthExt(i));
end;

function TPath.GetReports: String;
begin
  Result:= Self.Data + 'Reports\';

  if not DirectoryExists(Result) then
    CreateDir(Result);
end;

function TPath.GetReportTemplates: String;
begin
  Result:= GetSystem + 'Reports\';

  if not DirectoryExists(Result) then
    CreateDir(Result);
end;

function TPath.GetRoot: String;
var
  i : integer;
begin
  Result:=  ExtractFileDir(ParamStr(0));
  for i := Length(Result) downto 0 do
    if (Result[i] = '\') then
    begin
      Result := Copy(Result, 1, i);
      Break;
    end;
end;

function TPath.GetSkin: String;
begin
  Result:= GetRoot + 'Skin\';
end;

function TPath.GetSystem: String;
begin
  Result:= GetRoot + 'System\';
end;

function TPath.GetTemp: string;
begin
  Result := Self.Data + 'Temp\';

  if not DirectoryExists(Result) then
    CreateDir(Result);
end;

{ TInfo }

constructor TInfo.Create;
begin
  inherited;
  FConnected:= False;
end;

procedure TInfo.FillEmployeeData;
begin
  if FLoadedEmployeeData then
    Exit;

  with U.Query do
  try
    SQL.Text:=
    'select idcodigo, nome '+
      'from tbfuncionarios '+
     'where account = :account ';

    ParamByName('account').AsInteger := Account;

    Open;

    if IsEmpty then
      Exit;

    {Preenche variaveis com os dados do colaborador}
    FEmployeeID:= FieldByName('idcodigo').AsInteger;
    FEmployeeName:= FieldByName('nome').AsString;
    FLoadedEmployeeData:= true;
  finally
    Close;
  end;
end;

function TInfo.GetEmployeeID: integer;
begin
  FillEmployeeData;
  Result:= FEmployeeID;
end;

function TInfo.GetEmployeeIDSQL: String;
begin
  FillEmployeeData;
  Result:= IntToStr(FEmployeeID);
end;

function TInfo.GetEmployeeName: String;
begin
  FillEmployeeData;
  Result:= FEmployeeName;
end;

procedure TInfo.RefreshSessionFromDB(Account: Integer);
begin
  with U.Data.Query do
  try
    SQL.Text :=
    'select username, role, account, session '+
      'from vsessions '+
     'where account = :account;';

    ParamByName('account').AsInteger := Account;

    Open;

    FSession := FieldByName('session').AsString;
    FUser := FieldByName('username').AsString;
    FAccount := FieldByName('account').AsInteger;
    FRole := FieldByName('role').AsInteger;
  finally
    Close;
  end;
end;

procedure TInfo.SetAccount(const Value: TAccount);
begin
  FAccount := Value;
end;

procedure TInfo.SetName(const Value: String);
begin
  FName := Value;
end;

procedure TInfo.SetSession(const Value: string);
begin
  FSession := Value;
end;

{ TData }

procedure TData.BeforeOpen(DataSet: TDataSet);
begin
  with TZReadOnlyQuery(DataSet) do
    SQL.Text:= ParserSQL(SQL.Text);
end;

function TData.CheckFK(Table, Field, Value: String; ResultList: TStrings;
  Where: String): Boolean;
var
  fFieldList: TStrings;
  i: integer;
begin
  Result:= False;

  if mcEmpty(Value) then
  begin
    Result:= True;

    if Assigned(ResultList) then
      for i:= 0 to TStringList(ResultList).Count - 1 do
        TStringList(ResultList)[i]:= '';

    Exit;
  end;

  fFieldList:= ResultList;

  if not Assigned(ResultList) then
    fFieldList:= TStringList.Create;

  with Query do
  try
    if not Assigned(fFieldList) or (fFieldList.Count = 0) then
      SQL.Text:= 'Select 1'
    else
      for i:= 0 to fFieldList.Count - 1 do
      begin
        if i = 0 then
          SQL.Text:= 'select '
        else
          SQL.Text:= SQL.Text + ', ';

        SQL.Text:= SQL.Text + fFieldList[i];
      end;

    SQL.Text:= SQL.Text + ' ' +
      'from ' + Table + ' '+
     'Where ' + Field + ' = ' + Value;

    if not mcEmpty(Where) then
      SQL.Text:= SQL.Text + 'and ' + Where;

    Open;

    Result:= not IsEmpty;

    {Preenche a lista com o resultado da select}
    if Result and Assigned(ResultList) then
      for i:= 0 to ResultList.Count - 1 do
        ResultList[i]:= Fields.Fields[i].AsString;
  finally
    Close;
    if not Assigned(ResultList) then
      FreeAndNil(fFieldList);
  end;
end;

procedure TData.CloneFields(Source: TDataSet; var Target: TDataSet);
var
  SrcField, TrgField: TField;
begin
  for SrcField in Source.Fields do
  begin
    case SrcField.DataType of
      ftString:
          TrgField := TStringField.Create(nil);

      ftInteger:
        TrgField := TIntegerField.Create(nil);

      ftBlob:
        TrgField := TBlobField.Create(nil);

      ftBoolean:
        TrgField := TBooleanField.Create(nil);

      ftFloat:
        begin
          TrgField := TFloatField.Create(nil);
          TFloatField(TrgField).DisplayFormat := TFloatField(SrcField).DisplayFormat;
          TFloatField(TrgField).Precision := TFloatField(SrcField).Precision;
        end;

      ftDate:
        begin
          TrgField := TDateField.Create(nil);
          TDateField(TrgField).DisplayFormat := TDateField(SrcField).DisplayFormat;
        end;

      ftDateTime, ftTimeStamp:
        begin
          TrgField := TDateTimeField.Create(nil);
          TDateTimeField(TrgField).DisplayFormat := TDateTimeField(SrcField).DisplayFormat;
        end;

      ftMemo:
        TrgField := TMemoField.Create(nil);
    else
      DatabaseError('Tipo de dado não tratado!');
    end;

    TrgField.FieldKind := SrcField.FieldKind;
    TrgField.FieldName := SrcField.FieldName;
    TrgField.EditMask := SrcField.EditMask;
    TrgField.DisplayLabel := SrcField.DisplayLabel;
    TrgField.DisplayWidth := SrcField.DisplayWidth;
    TrgField.Size := SrcField.Size;
    TrgField.DataSet := Target;

    Target.Fields.Add(TrgField);
  end;

  Target.FieldDefs.Update;
end;

function TData.Commit: boolean;
begin
  { Verifica se Existe transação pendente para executar Commit }
  Result:= True;
  If Not InTransaction Then
    Exit;

  try
    inherited Commit;
  except
    Rollback;
    Result:= False;
  end;
  
  inherited TransactIsolationLevel:= tiNone;
end;

constructor TData.Create;
var
  appname: string;
  appimage: string;
begin
  appname := ParamStr(0);
  appimage := ExtractFileName(appname);
  
  inherited Create(nil);
  inherited TransactIsolationLevel:= tiNone;
  inherited Properties.Add('codepage=latin1');
  inherited Properties.Add(Format('application_name=Lorencini: %s %s',
    [StringReplace(appimage, ExtractFileExt(appimage), EmptyStr, [rfReplaceAll, rfIgnoreCase]) ,
     GetBuildInfo(appname)]));
  inherited ReadOnly := False;
  inherited UseMetadata := False;
  inherited LibraryLocation := TEnvironment.Lib + 'libpq.dll';


  fQueryPool := TList.Create;
  fStmtPool := TList.Create;
  FDataInfo := TDataInfo.Create;
end;

destructor TData.Destroy;
var
  i: integer;
begin
  if Connected then
    Self.Commit;
  
  {Destroi arquivos temporários}
  for i:= 0 to fQueryPool.Count - 1 do
  begin
    TZReadOnlyQuery(fQueryPool[i]).Free;
    fQueryPool[i]:= nil;
  end;

  fQueryPool.Clear;
  FreeAndNil(fQueryPool);
  FreeAndNil(fStmtPool);
  FreeAndNil(FDataInfo);

  inherited;
end;

function TData.ExecSQL(const Stmt: string; const Args: array of const): Integer;
begin
  Result := ExecSQL(Format(Stmt, Args));
end;

function TData.ExecSQL(const Stmt: string): Integer;
var
  fExec: TZReadOnlyQuery;
begin
  fExec:= TZReadOnlyQuery.Create(nil);

  with fExec do
  try
    try
      Connection:= Self;
      ParamCheck:= False;
      Options:= [];
      SQL.Text:= ParserSQL(Stmt);
      ExecSQL;
      Result := RowsAffected;
    except
      raise;
    end;
  finally
    FreeAndNil(fExec);
  end;
end;

function TData.GetCurrentDate: TDateTime;
begin
  with GetQuery do
  try
    SQL.Text:= 'select current_date';
    Open;

    Result:= Fields.Fields[0].AsDateTime;

  finally
    Close;
  end;
end;

function TData.GetCurrentDateTime: TDateTime;
begin
  with GetQuery do
  try
    SQL.Text:= 'select localtimestamp';
    Open;

    Result:= Fields.Fields[0].AsDateTime;

  finally
    Close;
  end;
end;

function TData.GetCurrentTime: TDateTime;
begin
  with GetQuery do
  try
    SQL.Text:= 'select current_timestamp';
    Open;

    Result:= Fields.Fields[0].AsDateTime;
  finally
    Close;
  end;
end;

function TData.GetQuery: TZReadOnlyQuery;
var
  i: integer;
begin
  Result := nil;
  try
    for I := 0 to fQueryPool.Count - 1 do
      if not TZReadOnlyQuery(fQueryPool[i]).Active then
      begin
        Result := fQueryPool[i];
        Result.SQL.Clear;
        Result.ParamCheck := True;
        Break;
      end;

    if Assigned(Result) then
      Exit;

    Result:= GetQueryPersistent;
    fQueryPool.Add(Result);
  finally
    FQuery := Result;
  end;
end;

function TData.GetQuery(const Stmt: string): TZReadOnlyQuery;
begin
  Result := GetQuery;
  Result.SQL.Add(Stmt);
end;

function TData.GetQueryPersistent: TZReadOnlyQuery;
begin
  Result:= TZReadOnlyQuery.Create(nil);
  Result.Connection:= Self;
  Result.Options := [];
  Result.ParamCheck := True;
  Result.BeforeOpen:= BeforeOpen;
end;

function TData.GetStmt: TZSQLProcessor;
var
  i: integer;
begin
  Result := nil;

  if fStmtPool.Count = 4 then
    fStmtPool.Move(0, 9)
  else
    fStmtPool.Add(GetStmtPersistent);

  Result := TZSQLProcessor(fStmtPool[fStmtPool.Count -1]);
  FProc := Result;
end;

function TData.GetStmtPersistent: TZSQLProcessor;
begin
  Result:= TZSQLProcessor.Create(nil);
  Result.Connection:= Self;
end;

function TData.TableIdFromName(const TableName: string): Integer;
begin
  Result := -1;
  with GetQuery('select sys_origem(:tablename);') do
  try
    ParamByName('tablename').AsString := LowerCase(TableName);
    Open;

    if not IsEmpty then
      Result := Fields[0].AsInteger;
  finally
    Close;
  end;
end;

procedure TData.WriteLog(DbLog: TDbLog);
begin
  if DbLog.Description = EmptyStr then
    DbLog.Description := DbLog.History.Text;

  if Trim(DbLog.History.Text) = EmptyStr then
    DbLog.History.Text := DbLog.Description;

  with GetQuery(
    'select log(:title, :detail, sys_origem(:source_table), :source_recno, true, :level);') do
  begin
    ParamByName('title').AsString := DbLog.Description;
    ParamByName('detail').AsString := DbLog.History.Text;
    ParamByName('source_table').AsString := DbLog.SourceTable;
    ParamByName('source_recno').AsInteger := DbLog.SourceRecno;
    ParamByName('level').AsString := DbLog.LevelToText;
    ExecSQL;
  end;
end;

function TData.IsNull(Date: TDateTime; IsTimeStamp: boolean = false): String;
var
  fFormatDate: string;
begin
  Result:= 'null';

  fFormatDate:= 'yyyy-mm-dd';

  if IsTimeStamp then
    fFormatDate:= fFormatDate + ' hh:nn:ss';


  if Date > StrToDateTime('01/01/1900') then
    Result:= QuotedStr(FormatDateTime(fFormatDate, Date));
end;

function TData.Lookup(Table, Field, Value: String; FieldLookupList: TStringList;
  Where: String): Boolean;
var
  fFieldList: TStringList;
  i: integer;
begin
  fFieldList := TStringList.Create;
  try
    for I := 0 to FieldLookupList.Count - 1 do
      fFieldList.Add(FieldLookupList.Values[FieldLookupList.Names[i]]);

    Result := CheckFK(Table, Field, Value, fFieldList, Where);

    // Preenche a lista com os valores obtidos
    for I := FieldLookupList.Count - 1 downto 0 do
      FieldLookupList.ValueFromIndex[i] := fFieldList[i];
  finally
    FreeAndNil(fFieldList);
  end;
end;

function TData.IsNull(Int: Integer): String;
begin
  Result:= 'null';

  if Int > 0 then
    Result:= IntToStr(Int);
end;

function TData.IsNull(Str: String): String;
begin
  Result:= 'null';

  if not mcEmpty(Str) then
    Result:= QuotedStr(Str);
end;

function TData.ParserSQL(Stmt: String): String;
const
  CONST_ID: string = 'cxt#%$';
var
  i, ipos, itipo, iBeg: integer;
  fTable: string;
  fConstList: TStringList;
  fConstCopy: Boolean;
  fConst: String;
begin
  Result:= mcStuff('"', Stmt, '''');

  fConstList:= TStringList.Create;
  try
    iBeg:= 1;

    {Removendo as constantes da instrução}
    while iBeg <> 0 do
    begin
      for i:= iBeg to Length(Result) do
      begin
        if (Result[i] = Chr(39)) and fConstCopy then
        begin
          fConstList.Add(fConst);
          Result:= mcStuff('''' + fConst + '''', Result, CONST_ID + IntToStr(fConstList.Count - 1), 1);
          fConstCopy:= False;
          Break;
        end;

        if fConstCopy then
          fConst:= fConst + Result[i];

        if (Result[i] = '''') and not fConstCopy then
        begin
          fConstCopy:= True;
          fConst:= '';
          iBeg:= i + length(CONST_ID);
        end;
      end;

      if (i - 1) = Length(Result) then
        iBeg:= 0;
    end;

    itipo:= 1;
    ipos:= 0;

    if pos('insert', LowerCase(Stmt)) > 0 then
    begin
      ipos:= pos(' into ', LowerCase(Stmt));
      ipos:= ipos + 6;
    end
    else if pos('update', LowerCase(Stmt)) > 0 then
    begin
      ipos:= pos('update ', LowerCase(Stmt));
      ipos:= ipos + 7;
    end
    else if pos('delete ', LowerCase(Stmt)) > 0 then
    begin
      ipos:= pos(' from ', LowerCase(Stmt));
      ipos:= ipos + 6;
    end
    else if pos('select ', LowerCase(Stmt)) > 0 then
    begin
      ipos:= pos(' from ', LowerCase(Stmt));
      ipos:= ipos + 6;
      itipo:= 0;
    end;

    if ipos <= 0 then
      Exit;

    for i:= ipos to Length(Result) do
      if ((Result[i] = ' ') and not mcEmpty(fTable)) or (i > Length(Result)) then
      begin
        if (trim(LowerCase(fTable)) = 'where') or (trim(LowerCase(fTable)) = 'order') then
          Break;

        if pos(',', fTable) <= 0 then
          Result:= mcStuff(fTable, Result, LowerCase(fTable));

        fTable:= '';

        if itipo = 1 then
          Break;
      end else
        fTable:= fTable + Result[i];

    if not mcEmpty(fTable) then
      Result:= mcStuff(fTable, Result, LowerCase(fTable));

    {Re-insere constantes retiradas da instrução antes de sofrer tradução}
    for i:= 0 to fConstList.Count - 1 do
      Result:= mcStuff(CONST_ID+IntToStr(i), Result, '''' + fConstList[i] + '''', 1);
  finally
    FreeAndNil(fConstList);
  end;
end;

procedure TData.RefreshConnParams;
begin
  Protocol := FDataInfo.Protocol;
  HostName := FDataInfo.HostName;
  Database := FDataInfo.Database;
  User := FDataInfo.User;
  Password := FDataInfo.Password;
  Port := FDataInfo.Port;
end;

procedure TData.RollBack;
begin
  { Verifica se Existe transação pendente para executar RollBack }
  If Not InTransaction Then
    Exit;

  inherited RollBack;
  inherited TransactIsolationLevel:= tiNone;
end;

procedure TData.SetDataInfo(const Value: TDataInfo);
begin
  FDataInfo := Value;
end;

procedure TData.StartTransaction;
begin
  If InTransaction Then
    Exit;
    
  inherited TransactIsolationLevel:= tiReadCommitted;
  inherited StartTransaction;
end;

function TData.GetQuery(const Stmt: string;
  const Args: array of const): TZReadOnlyQuery;
begin
  Result := GetQuery(Format(Stmt, Args));
end;

{ TIGUtils }

constructor TIGUtils.Create;
begin
  fOut:= TOut.Create;
end;

function TIGUtils.Crypt(const Value: string): string;
var
  c: char;
begin
  Result := '';
  for c in Value do
    Result := AnsiChar(ord(c) xor 33) + Result;
end;

destructor TIGUtils.Destroy;
begin
  FreeAndNil(fOut);
  inherited;
end;

function TIGUtils.DivZero(Dividendo, Divisor: Double): Double;
begin
  Result:= 0;

  if Dividendo > 0 then
    Result:= Dividendo / Divisor;
end;

function TIGUtils.Encripta(const Value: string): string;
var
  c: char;
begin
  Result := '';

  for c in Value do
    Result := Result + char(ord(c) xor _NUM_ENCRIPTA);
end;

function TIGUtils.Float2StrSQL(Valor: Double): string;
var
  i: integer;
  fConv: String;
begin
  Result:= '';
  fConv:= FloatToStr(Valor);

  for i:= 1 to length(fConv) do
    if fConv[i] <> '.' then
      if fConv[i] = ',' then
        Result:= Result + '.'
      else
        Result:= Result + fConv[i];

end;

function TIGUtils.GetDateSQL(Data: string): string;
begin
  Result:= mcStuff('/', Data, '');
  if mcEmpty(Result) then
  begin
    Result:= 'null';
    Exit;
  end;

  try
    Result:= FormatDateTime('yyyy-mm-dd', StrToDate(Data));
  except
    Result:= 'null';
  end;
end;

procedure TIGUtils.FillConstants(Text: String; var Tokens: TStringList;
  Token: Char);
var
  i: Integer;
  fCp: Boolean;
  fToken: string;
begin
  if mcEmpty(Text) then
    raise Exception.Create('Não é possível obter constantes de um texto vazio');

  {Cria a lista de retorno}
  if not Assigned(Tokens) then
    Tokens:= TStringList.Create;

  Tokens.Clear;
  fToken:= '';
  fCp:= False;

  for i := 1 to Length(Text) do
    if (Text[i] = Token) then
    begin
      if fCp and not mcEmpty(fToken) then
        Tokens.Add(fToken);

      fToken:= '';
      fCp:= not fCp;
    end
    else if fCp then
      fToken:= fToken + Text[i];
end;

function TIGUtils.GetDateSQL(Data: TDateTime): string;
begin
  Result:= QuotedStr(mcDateSql(Data));
end;


function TIGUtils.GetNumberOfProcessors: Integer;
var
   si: TSystemInfo; //Windows.pas
begin
   GetSystemInfo({var}si);
   Result := si.dwNumberOfProcessors;
end;

function TIGUtils.MD5(const Value: string): string;
var
  idmd5: TIdHashMessageDigest5;
begin
  idmd5 := TIdHashMessageDigest5.Create;
  try
    Result := LowerCase(idmd5.HashStringAsHex(Value));
  finally
    FreeAndNil(idmd5);
  end;
end;

function TIGUtils.MD5File(const AFileName: string): string;
var
  xMD5: TIdHashMessageDigest5;
  xArquivo: TFileStream;
begin
  xMD5 := TIdHashMessageDigest5.Create;
  xArquivo := TFileStream.Create(AFileName, fmOpenRead OR fmShareDenyWrite);

  try
    Result := xMD5.HashStreamAsHex(xArquivo);
  finally
    xArquivo.Free;
    xMD5.Free;
  end;
end;

function TIGUtils.RefreshDataSet(DataSet: TDataSet; Resync: Boolean): Boolean;
var
  iRecno: Integer;
begin
  Result := False;
  
  if not Assigned(DataSet) then
    Exit;
    
  iRecno := -1;
  Result := True;
    
  try
    DataSet.DisableControls;
    
    if DataSet.Active then
    begin
      // Obtem conteúdo para tentar a sincronização
      if Resync and Assigned(DataSet.FindField('recno')) then
        iRecno := DataSet.FieldByName('recno').AsInteger;

      DataSet.Refresh;

      // Reposiciona dataset
      if Resync and (iRecno <> -1) then
        Result := DataSet.Locate('recno', iRecno, []);
    end
    else
      DataSet.Open;
  finally
    DataSet.EnableControls;
  end;
end;

function TIGUtils.RefreshDataSet(DataSet: TDataSet): Boolean;
begin
  Result := RefreshDataSet(DataSet, False);
end;

function TIGUtils.Str2Curr(const valor: string): Currency;
begin
  Result:= Str2Float(valor);
end;

function TIGUtils.Str2Float(const valor: string): Double;
var
   i: Integer;
   tmpStr: String;
begin
  tmpStr:= EmptyStr;

  try
    for i:= 1 to Length(valor) do
      if (valor[i] in ['0'..'9', ',']) or ((i = 1) and (valor[i] in ['+', '-'])
        and (Length(valor) > 1)) then
        tmpStr:= tmpStr + Valor[i];
  finally
    if tmpStr = EmptyStr then
      Result:= 0
    else
      Result:= StrToFloat(tmpStr);
  end;
end;

function TIGUtils.Str2Int(const valor: string): Integer;
var
   i: Integer;
   tmpStr: String;
begin
  tmpStr:= EmptyStr;

  try
    for i:= 1 to Length(valor) do
      if not (valor[i] in ['0'..'9', '-', '+']) then
        Continue
      else
        tmpStr:= tmpStr + Valor[i];
  finally
    if tmpStr = EmptyStr then
      Result:= 0
    else
      Result:= StrToInt(tmpStr);
  end;
end;

procedure TComboList.Clear;
var
  I: Integer;
begin
  with FCombo do
    for I := 0 to Items.Count - 1 do
    begin
      if Assigned(Items.Objects[i]) then
        TComboListItem(Items.Objects[i]).Free;
        
      Items.Objects[i]:= nil;
    end;

  {** Limpa combobox associado *}
  if Assigned(FCombo) then
    FCombo.Clear;
end;

constructor TComboList.Create(AOnwer: TCustomComboBox; const TableName, KeyField,
  CaptionField: String; const Active: Boolean = True);
begin
  // Preenche atributos privados
  FTableName := TableName;
  FKeyField := KeyField;
  FCaptionField := CaptionField;
  FCombo := AOnwer;
  FCriteria := TStringList.Create;

  // Cria lista de objetos
  if Active then
    UpdateList;
end;

destructor TComboList.Destroy;
begin
  Clear;
  FreeAndNil(FCriteria);

  inherited;
end;

function TComboList.GetCount: Integer;
begin
  Result := FCombo.Items.Count;
end;

function TComboList.GetItemIndex: Integer;
begin
  Result := FCombo.ItemIndex;
end;

function TComboList.GetItems(Index: Integer): TComboListItem;
begin
  Result := nil;
  
  if (Index >= 0) and (Index < Count) then
    Result := TComboListItem(FCombo.Items.Objects[index]);
end;

function TComboList.GetSelected: TComboListItem;
begin
  Result := nil;

  if (FCombo.ItemIndex >= 0) and (FCombo.ItemIndex <= FCombo.Items.Count) then
    Result := Items[FCombo.ItemIndex];
end;

function TComboList.IndexOf(Caption: String): Integer;
begin
  Result := FCombo.Items.IndexOf(Caption);
end;

function TComboList.IndexOfObject(ComboListItem: TComboListItem): Integer;
begin
  Result := FCombo.Items.IndexOfObject(ComboListItem);
end;

procedure TComboList.SetCriteria(const Value: TStrings);
begin
  FCriteria := Value;
end;

procedure TComboList.SetItemIndex(const Value: Integer);
begin
  FCombo.ItemIndex := Value;
end;

procedure TComboList.SetOrderField(const Value: string);
begin
  FOrderField := Value;
end;

procedure TComboList.UpdateList;
var
  FItem: TComboListItem;
  i: Integer;
begin
  // Limpa lista
  Clear;

  with U.Query do
  try
    FCombo.Items.BeginUpdate;

    SQL.Text:=
    'select ' + KeyField + ', ' + CaptionField + ' '+
      'from ' + TableName + ' ';

    // Adiciona os critérios
    for i := 0 to FCriteria.Count - 1 do
    begin
      if i = 0 then
        SQL.Text:= SQL.Text + 'where '
      else
        SQL.Text:= SQL.Text + 'and ';

      SQL.Text:= SQL.Text + FCriteria[i] + ' ';
    end;

    if FOrderField <> EmptyStr then
      SQL.Text:= SQL.Text + 'order by ' + FOrderField
    else
      SQL.Text:= SQL.Text + 'order by ' + CaptionField;

    Open;

    while not eof do
    begin
      if mcEmpty(FieldByName(CaptionField).AsString) then
      begin
        Next;
        Continue;
      end;

      FItem := TComboListItem.Create;
      FItem.Caption := FieldByName(CaptionField).AsString;
      FItem.Value := FieldByName(KeyField).Value;

      FCombo.Items.AddObject(FItem.Caption, FItem);

      Next;
    end;
  finally
    Close;
    FCombo.Items.EndUpdate;
    FCombo.ItemIndex := 0;
  end;
end;

{ TComboListItem }

function TComboListItem.GetCaption: String;
begin
  Result := FCaption;
end;

function TComboListItem.GetValue: Variant;
begin
  Result := FValue;  
end;

class function TComboListItem.IsNull: Boolean;
begin
  Result := not Assigned(Self);
end;

procedure TComboListItem.SetCaption(const Value: String);
begin
  FCaption := Value;
end;

procedure TComboListItem.SetValue(const Value: Variant);
begin
  FValue := Value;
end;

{ TDataInfo }

procedure TDataInfo.Assign(Sender: TPersistent);
var
  s: TDataInfo;
begin
  if Sender is TDataInfo then
  begin
    s := TDataInfo(Sender);
    FProtocol := s.Protocol;
    FDatabase := s.Database;
    FHostName := s.HostName;
    FUser := s.User;
    FPassword := s.Password;
    FPort := s.Port;

    Exit;
  end;

  inherited;
end;

procedure TDataInfo.SetDatabase(const Value: String);
begin
  FDatabase := Value;
end;

procedure TDataInfo.SetHostName(const Value: String);
begin
  FHostName := Value;
end;

procedure TDataInfo.SetPassword(const Value: String);
begin
  FPassword := Value;
end;

procedure TDataInfo.SetPort(const Value: Integer);
begin
  FPort := Value;
end;

procedure TDataInfo.SetProtocol(const Value: String);
begin
  FProtocol := Value;
end;

procedure TDataInfo.SetUser(const Value: String);
begin
  FUser := Value;
end;


{ TIParam }

function TIParam.AsBoolean: Boolean;
begin
  DoError('AsBoolean');  
end;

function TIParam.AsDate: TDate;
begin
  DoError('AsDate');
end;

function TIParam.AsDateTime: TDateTime;
begin
  DoError('AsDateTime');
end;

function TIParam.AsFloat: Double;
begin
  DoError('AsDateDouble');
end;

function TIParam.AsInteger: Integer;
begin
  DoError('AsInteger');
end;

function TIParam.AsString: string;
begin
  Result := FText;
end;

constructor TIParam.Create;
begin
  inherited;
  Raise EIParam.CreateFmt('A classe %s não deve ser instanciada', [ClassName]);
end;

procedure TIParam.DoError(const NameMethod: string);
begin
  raise EIParam.CreateFmt('Método %s não implementado', [NameMethod]);
end;

constructor TIParam.PrivateCreate(const AParamType: TFieldType);
begin
  inherited Create;
  FParamType := AParamType;
end;

procedure TIParam.SetDefault(const Value: string);
begin
  FDefault := Value;
end;

procedure TIParam.SetName(const Value: string);
begin
  FName := Value;
end;

{ TIParamInt }

function TIParamInt.AsBoolean: Boolean;
begin
  Result := FValue <> 0;
end;

function TIParamInt.AsFloat: Double;
begin
  Result := FValue;
end;

function TIParamInt.AsInteger: Integer;
begin
  Result := FValue;
end;

function TIParamInt.AsString: String;
begin
  Result := GetText;
end;

constructor TIParamInt.Create;
begin
  PrivateCreate(ftInteger);
  FValue := 0;
end;

function TIParamInt.GetText: string;
begin
  Result := IntToStr(FValue);
end;

procedure TIParamInt.SetText(const Value: string);
begin
  try
    SetValue(StrToInt(Value));
  except
    begin
      SetValue(0);
    end;
  end;
end;

procedure TIParamInt.SetValue(const Value: Integer);
begin
  FValue := Value;
end;

{ TIParamDate }

function TIParamDate.AsDate: TDate;
begin
  Result := FValue;
end;

function TIParamDate.AsDateTime: TDateTime;
begin
  Result := FValue;
end;

function TIParamDate.AsFloat: Double;
begin
  Result := FValue;
end;

function TIParamDate.AsString: String;
begin
  Result := GetText;
end;

constructor TIParamDate.Create;
begin
  inherited;
  PrivateCreate(ftDate);
end;

function TIParamDate.GetText: string;
begin
  Result := DateToStr(FValue); 
end;

procedure TIParamDate.SetText(const Value: string);
begin
  try
    SetValue(StrToDate(Value));
  except
    raise EIParam.CreateFmt('Data %s é inválida', [Value]);
  end;
end;

procedure TIParamDate.SetValue(const Value: TDate);
begin
  FValue := Value;
end;

{ TParams }

function TParams.Add(AParam: TIParam): Integer;
begin
  Result := inherited Add(AParam);
end;

function TParams.Extract(Item: TIParam): TIParam;
begin
  Result := inherited Extract(Item) as TIParam;
end;

function TParams.Find(const ParamName: string): TIParam;
var
  oPar: TIParam;
begin
  for oPar in Self do
    if oPar.Name = LowerCase(ParamName) then
      Result := oPar;
end;

function TParams.Find(const ParamName: string;
  const ParamType: TFieldType): TIParam;
begin
  Result := Find(ParamName);
  if not Assigned(Result) then
  begin
    case ParamType of
      ftString:
        Result := TIParamStr.Create;
      ftInteger:
        Result := TIParamInt.Create;
      ftBoolean:
        Result := TIParamBoolean.Create;
      ftFloat:
        Result := TIParamFloat.Create;
      ftDate:
        Result := TIParamDate.Create;
      ftDateTime:
        Result := TIParamDateTime.Create;
    end;

    Result.Name := ParamName;
  end;

end;

function TParams.First: TIParam;
begin
  Result := inherited First as TIParam;
end;

function TParams.GetEnumerator: TParamsEnumerator;
begin
  Result := TParamsEnumerator.Create(Self);
end;

function TParams.GetItem(Index: Integer): TIParam;
begin
  Result := inherited GetItem(Index) as TIParam;
end;

function TParams.IndexOf(AParam: TIParam): Integer;
begin
  Result := inherited IndexOf(AParam);
end;

procedure TParams.Insert(Index: Integer; AParam: TIParam);
begin
  inherited Insert(Index, AParam);
end;

function TParams.Last: TIParam;
begin
  Result := inherited Last as TIParam;
end;

function TParams.LoadFromDb(const Value: string): TParam;
begin

end;

function TParams.Persist: Boolean;
begin

end;

function TParams.Remove(AParam: TIParam): Integer;
begin
  Result := inherited Remove(AParam);
end;

procedure TParams.SetItem(Index: Integer; AParam: TIParam);
begin
  inherited SetItem(Index, AParam);
end;

{ TIParamStr }

function TIParamStr.AsString: String;
begin
  Result := FText;
end;

constructor TIParamStr.Create;
begin
  PrivateCreate(ftString);
  FText := EmptyStr;
end;

function TIParamStr.GetText: string;
begin
  Result := FText;  
end;

procedure TIParamStr.SetText(const Value: string);
begin
  FText := Value;
end;

{ TIParamDateTime }

function TIParamDateTime.AsDate: TDate;
begin
  Result := FValue;
end;

function TIParamDateTime.AsDateTime: TDateTime;
begin
  Result := FValue;
end;

function TIParamDateTime.AsFloat: Double;
begin
  Result := FValue;
end;

function TIParamDateTime.AsString: String;
begin
  Result := GetText;
end;

constructor TIParamDateTime.Create;
begin
  PrivateCreate(ftDateTime);
end;

function TIParamDateTime.GetText: string;
begin
  Result := DateTimeToStr(FValue);
end;

procedure TIParamDateTime.SetText(const Value: string);
begin
  try
    SetValue(StrToDateTime(Value));
  except
    raise EIParam.CreateFmt('O valor %s não é válido como data e hora.', [Value]);
  end;
end;

procedure TIParamDateTime.SetValue(const Value: TDateTime);
begin
  FValue := Value;
end;

{ TIParamFloat }

function TIParamFloat.AsFloat: Double;
begin
  Result := FValue;
end;

function TIParamFloat.AsInteger: Integer;
begin
  Result := Round(FValue);
end;

function TIParamFloat.AsString: String;
begin
  Result := GetText;
end;

constructor TIParamFloat.Create;
begin
  PrivateCreate(ftFloat);
  FValue := 0;
end;

function TIParamFloat.GetText: string;
begin
  Result := FloatToStr(FValue);
end;

procedure TIParamFloat.SetText(const Value: string);
begin
  try
    SetValue(StrToFloat(Value));
  except
    raise EIParam.CreateFmt('A string %s não é um número válido!', [Value]);
  end;
end;

procedure TIParamFloat.SetValue(const Value: Double);
begin
  FValue := Value;
end;

{ TIParamBoolean }

function TIParamBoolean.AsBoolean: Boolean;
begin
  Result := FValue;
end;

function TIParamBoolean.AsString: String;
begin
  Result := GetText;
end;

constructor TIParamBoolean.Create;
begin
  PrivateCreate(ftBoolean);
  FValue := False;
end;

function TIParamBoolean.GetText: string;
begin
  Result := BoolToStr(FValue);
end;

procedure TIParamBoolean.SetText(const Value: string);
begin
  try
    SetValue(StrToBool(Value));
  except
    raise EIParam.CreateFmt('A string %s não é um valor lógico', [Value]);
  end;
end;

procedure TIParamBoolean.SetValue(const Value: Boolean);
begin
  FValue := Value;
end;

{ TParamsEnumerator }

function TParamsEnumerator.GetCurrent: TIParam;
begin
  Result := TIParam(inherited GetCurrent);
end;

initialization
  G:= TIGUtils.Create;
  U:= TIUtils.Create;

finalization
  FreeAndNil(U);
  FreeAndNil(G);

end.
