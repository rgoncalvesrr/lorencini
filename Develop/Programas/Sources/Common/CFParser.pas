unit CFParser;

interface

uses SysUtils, Classes;

Type

  ICFParseable = interface
  ['{6D7C77AD-B1EB-4EBF-92B6-2E64D7B0965F}']
    function DoParser(const AToken: string; const ACompany: String; const AUnity: string) : string;
  end;

  TCFParserHash = class
  private
    FHashKeys: TStrings;
    FHashValues: TStrings;
    FIgnoreCase: Boolean;
    procedure SetIgnoreCase(const Value: Boolean);
    function GetCount: Integer;
  protected
    function FindItem(Key: string): Integer;
  public
    constructor Create;
    destructor Destroy; override;

    procedure Clear;
    procedure Add(Key, Value: string);
    function HasKey(Key: string): Boolean;
    function Remove(Key: string): Boolean;
    function GetValue(Key: string): string;

    procedure SaveToFile(const FileName: TFileName);
    procedure LoadFromFile(const FileName: TFileName);

    property Count: Integer read GetCount;
    property IgnoreCase: Boolean read FIgnoreCase write SetIgnoreCase;
    property Keys: TStrings read FHashKeys;
    property Values: TStrings read FHashValues;
  end;

  ECFParser = Exception;

  TCFParser = class(TThread)
  private
    FCompany: string;
    FUnity: integer;
    FUnityStr: string;
    FCache: TCFParserHash;
    FOut: TStrings;
    FIn: TStrings;
    FProcList: TCFParserHash;
    FAliasList: TCFParserHash;
    FAliasFieldList: TCFParserHash;
    FElipsedTime: TDateTime;
    
    FCacheEnabled: Boolean;
    FOnParserField: ICFParseable;
    FOnParseTableName: ICFParseable;
    FOnParseProcName: ICFParseable;
    FErrorList: TStrings;

    procedure SetCompany(const Value: string);
    procedure SetUnity(const Value: integer);
    procedure SetParseTableName(const Value: ICFParseable);
    procedure SetParseProcName(const Value: ICFParseable);
    function GetCacheName: string;
    procedure LoadCache;
    procedure SaveCache;
    procedure SetCacheEnabled(const Value: Boolean);
    procedure SetOnParserField(const Value: ICFParseable);
  protected
    FKey: string;
    FValue: string;
    FPaserable: ICFParseable;
    procedure DoParseEvent;
    procedure Parse; overload;
    procedure Execute; override;
  public
    constructor Create(Company: string; Unity: Integer); overload;
    constructor Create(Company: string; Unity: Integer;
      const DoParserAlias: ICFParseable;
      const DoParserField: ICFParseable;
      const DoParserProc: ICFParseable); overload;
    destructor Destroy; override;

    procedure Parse(const AStmt: string); overload;

    property AliasList: TCFParserHash read FAliasList;
    property CacheEnabled: Boolean read FCacheEnabled write SetCacheEnabled;
    property Company: string read FCompany;
    property ElipsedTime: TDateTime read FElipsedTime;
    property ErrorList: TStrings read FErrorList;
    property Input: TStrings read FIn;
    property Ouput: TStrings read FOut;
    property Unity: integer read FUnity;
    property OnParserAlias: ICFParseable read FOnParseTableName write SetParseTableName;
    property OnParserField: ICFParseable read FOnParserField write SetOnParserField;
    property OnParserProc: ICFParseable read FOnParseProcName write SetParseProcName;
    property OnProcList: TCFParserHash read FProcList;
  end;


implementation

{ TParser }
constructor TCFParser.Create(Company: string; Unity: Integer);
begin
  inherited Create(True);
  SetCompany(Company);
  SetUnity(Unity);
  FCache := TCFParserHash.Create;
  FAliasList := TCFParserHash.Create;
  FProcList := TCFParserHash.Create;
  FAliasFieldList := TCFParserHash.Create;
  FIn := TStringList.Create;
  FOut := TStringList.Create;
  FErrorList := TStringList.Create;
  // Carrega cache se existir
  SetCacheEnabled(False);
  FreeOnTerminate := True;
end;

constructor TCFParser.Create(Company: string; Unity: Integer;
  const DoParserAlias, DoParserField, DoParserProc: ICFParseable);
begin
  Create(Company, Unity);
  SetParseTableName(DoParserAlias);
  SetParseProcName(DoParserProc);
  SetOnParserField(DoParserField);
end;

destructor TCFParser.Destroy;
begin
  if FCacheEnabled then
    SaveCache;
    
  FreeAndNil(FCache);
  FreeAndNil(FAliasList);
  FreeAndNil(FProcList);
  FreeAndNil(FAliasFieldList);
  FreeAndNil(FIn);
  FreeAndNil(FOut);
  FreeAndNil(FErrorList);
  inherited;
end;

procedure TCFParser.DoParseEvent;
begin
  FValue := FPaserable.DoParser(FCompany, FCompany, FUnityStr);
end;

procedure TCFParser.Execute;
begin
  inherited;
  FErrorList.Clear;
  try
    Parse;
  except
    on e:Exception do
    begin
      FErrorList.Add(e.Message);
      raise;
    end;
  end;  
end;

function TCFParser.GetCacheName: string;
begin
  Result := Format('X%s%s', [FCompany, FUnityStr]);
end;

procedure TCFParser.Parse;
var
  i, ignoreNChars: Integer;
  rin, rstmt, rout, token: string;
  ignoreBlock, cpLiteral: Boolean;
  oTokenList: TCFParserHash;
begin
  FOut.BeginUpdate;
  FIn.BeginUpdate;
  FAliasList.Clear;
  FProcList.Clear;
  FOut.Clear;
  FErrorList.Clear;
  FElipsedTime := Now;

  if FIn.Text = EmptyStr then
    raise EParserError.Create('Não há instruções para processamento');

  try
    // Processamento das linhas
    ignoreBlock := False;

    for rin in FIn do
    begin
      if Trim(rin) = EmptyStr then
        Continue;

      rstmt := rin;

      rstmt := rstmt + ' ';
      token := EmptyStr;
      rout := EmptyStr;
      ignoreNChars := 0;
      FPaserable := nil;
      oTokenList := nil;
      cpLiteral := False;

      // Processamento a linha do arquivo
      for i := 1 to Length(rstmt) do
      begin
        // Comentario em bloco
        if not cpLiteral and not ignoreBlock and (rstmt[i] = '/') and (rstmt[i + 1] = '*') then
          ignoreBlock := True;

        // Comentario em linha
        if not cpLiteral and (rstmt[i] = '-') and (rstmt[i + 1] = '-') then
          Break;

        // Verifica se é uma tabela
        if not ignoreBlock then
        begin
          if not assigned(FPaserable) and (rstmt[i] = '[') and (rstmt[i + 1] = '(') then
          begin
             FPaserable := FOnParseTableName;
             oTokenList := FAliasList;
             ignoreNChars := 2;
          end;

          // Verifica sé um campo com alias
          if not assigned(FPaserable) and (rstmt[i] = '(') and (rstmt[i + 1] = '[') then
          begin
             FPaserable := FOnParserField;
             oTokenList := FAliasFieldList;
             ignoreNChars := 2;
          end;

          if not assigned(FPaserable) and (rstmt[i] = '#') and (rstmt[i + 3] = '#') and
            (Trim(token) <> EmptyStr) then
          begin
            FPaserable := FOnParseProcName;
            oTokenList := FProcList;
            ignoreNChars := 7;
          end;
        end;

        if assigned(FPaserable) and (rstmt[i] = ')') and (rstmt[i + 1] = ']') then
           ignoreNChars := 2;

        if assigned(FPaserable) and (rstmt[i] = ']') and (rstmt[i + 1] = ')') then
           ignoreNChars := 2;

        // Verificando se acabou o comentário em bloco
        if ignoreBlock or (ignoreNChars > 0) then
        begin
          if (ignoreNChars > 0) then
            ignoreNChars := ignoreNChars - 1;

          if ignoreBlock and (rstmt[i] = '*') then
          begin
            ignoreBlock := (rstmt[i + 1] <> '/');
            ignoreNChars := 1;
          end;

          Continue;
        end
        else
        begin
          if not (rstmt[i] in [' ', '''', '.', ')', '(', '%', ';']) then
            token := token + rstmt[i];

          if token = '???' then
            token := FUnityStr;

          if token = '####' then
            token := QuotedStr(FCompany);

          if (rstmt[i] in [' ', '''', '.', ')', '(', '%', ';']) then
          begin
            if (token <> EmptyStr) then
            begin
              if assigned(FPaserable) then
              begin
                FKey := token;
                FValue := FKey;

                // Verifica se o nome da tabela está no cache. Se não estiver solicita parse externo
                if not FCache.HasKey(FKey) then
                begin
                  Synchronize(DoParseEvent);
                  FCache.Add(FKey, FValue);
                end
                else
                  FValue := FCache.GetValue(FKey);

                oTokenList.Add(FKey, FValue);
                token := FValue;
                FPaserable := nil;
                oTokenList := nil;
              end;

              rout := rout + token;
            end;

            if (rstmt[i] in [' ', '''', '.', ')', '(', '%', ';']) then
              rout := rout + rstmt[i];

            if (rstmt[i] = '''') then
              cpLiteral := not cpLiteral;

            token := EmptyStr;
          end;
        end;
      end;

      // Remove espaços da linha
      if Trim(rout) <> EmptyStr then
        FOut.Add(rout);
    end;
  finally
    FElipsedTime := Now - FElipsedTime;
    FOut.EndUpdate;
    FIn.EndUpdate;
  end;
end;

procedure TCFParser.LoadCache;
begin
  if FileExists(GetCacheName) then
    FCache.LoadFromFile(GetCacheName);
end;

procedure TCFParser.Parse(const AStmt: string);
begin
  FIn.Text := AStmt;
  Resume;
end;

procedure TCFParser.SaveCache;
begin
  FCache.SaveToFile(GetCacheName);
end;

procedure TCFParser.SetCacheEnabled(const Value: Boolean);
begin
  if (FCacheEnabled <> Value) and (Value) then
    LoadCache;
  
  FCacheEnabled := Value;
end;

procedure TCFParser.SetCompany(const Value: string);
begin
  FCompany := Value;
end;

procedure TCFParser.SetOnParserField(const Value: ICFParseable);
begin
  FOnParserField := Value;
end;

procedure TCFParser.SetParseProcName(const Value: ICFParseable);
begin
  FOnParseProcName := Value;
end;

procedure TCFParser.SetParseTableName(const Value: ICFParseable);
begin
  FOnParseTableName := Value;
end;

procedure TCFParser.SetUnity(const Value: integer);
begin
  FUnity := Value;

  FUnityStr := StringOfChar('0', 3) + IntToStr(Value);
  FUnityStr := Copy(FUnityStr, Length(FUnityStr) - 2, 3);
end;

{ TParserHash }

procedure TCFParserHash.Add(Key, Value: string);
var
  i: integer;
begin
  i := FindItem(Key);

  if ( i <> -1) then
    FHashValues[i] := Value
  else
  begin
    if FIgnoreCase then
       FHashKeys.Add(LowerCase(Key))
    else
      FHashKeys.Add(Key);
      
    FHashValues.Add(Value);
  end;
end;

procedure TCFParserHash.Clear;
begin
  FHashKeys.Clear;
  FHashValues.Clear;
end;

constructor TCFParserHash.Create;
begin
  FIgnoreCase := True;
  FHashKeys := TStringList.Create;
  FHashValues := TStringList.Create;
end;

destructor TCFParserHash.Destroy;
begin
  FreeAndNil(FHashKeys);
  FreeAndNil(FHashValues);
  inherited;
end;

function TCFParserHash.FindItem(Key: string): Integer;
begin
  if IgnoreCase then
    Result := FHashKeys.IndexOf(LowerCase(Key))
  else
    Result := FHashKeys.IndexOf(Key);
end;

function TCFParserHash.GetValue(Key: string): string;
var
  i: Integer;
begin
  i := FindItem(Key);
  Result := FHashValues[i];
end;

function TCFParserHash.GetCount: Integer;
begin
  Result := FHashKeys.Count;
end;

function TCFParserHash.HasKey(Key: string): Boolean;
begin
  Result := FindItem(Key) <> -1;
end;

procedure TCFParserHash.LoadFromFile(const FileName: TFileName);
var
  arq: TextFile;
  _key, _value, _row: string;
  i: Integer;
begin
  AssignFile(arq, FileName);
  Reset(arq);
  try
    while (not Eof(arq)) do
    begin
      Readln(arq, _row);
      i := Pos('|', _row);
      _key := Copy(_row, 1, i - 1);
      _value := Copy(_row, i + 1, length(_row) - i);
      Add(_key, _value);
    end;
  finally
    CloseFile(arq);
  end;

end;

function TCFParserHash.Remove(Key: string): Boolean;
var
  i: Integer;
begin
  i := FindItem(Key);
  Result := False;

  if i <> -1 then
  begin
    FHashKeys.Delete(i);
    FHashValues.Delete(i);
    Result := True;
  end;
end;

procedure TCFParserHash.SaveToFile(const FileName: TFileName);
var
  i: Integer;
begin
  AssignFile(Output, FileName);
  Rewrite(Output);
  try
    for I := 0 to FHashKeys.Count - 1 do
      Writeln(Output, FHashKeys[i], '|', FHashValues[i]);
  finally
    CloseFile(Output);
  end;
end;

procedure TCFParserHash.SetIgnoreCase(const Value: Boolean);
begin
  FIgnoreCase := Value;
end;

end.
