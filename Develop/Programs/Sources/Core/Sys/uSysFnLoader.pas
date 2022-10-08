unit uSysFnLoader;

interface

uses
  SysUtils, uIUtils, Classes;

type
  TMarkeds = array of integer;

  TSYSFNLoader = class
  private
    FIsTrigger: Boolean;
    FErrors: TStrings;
    FIndex: Integer;
    FMarkeds: TMarkeds;
    procedure ScanFiles(Diretory: string);
    procedure PersistFileToDB(Directory: string; SearchRec: TSearchRec);
    procedure Clear;
  public
    constructor Create; reintroduce;
    destructor Destroy; override;

    procedure LoadTriggers;
    procedure LoadProcedures;
    procedure LoadAll;

    property Errors: TStrings read FErrors;
  end;

implementation

uses
  db, uHelpers, ZDataset;

const
  _EXTPROC: string = '.spg';
  _PROC : Integer = 1;
  _TRIGGER : Integer = 2;
  _SRC_FUNCTION : string = 'Develop\Procedures\Workspace\Functions\';
  _SRC_TRIGGER : string = 'Develop\Procedures\Workspace\Triggers\';

{ TSYSFNLoader }

procedure TSYSFNLoader.PersistFileToDB(Directory: string; SearchRec: TSearchRec);
var
  procType, i: Integer;
  procName: string;
  schemaName: string;
begin
  if FIsTrigger then
    procType := _TRIGGER
  else
    procType := _PROC;

  with U.Data.GetQuery(
    'select sys_fn(:schema, :fn, :descri, :tipo, :modification, :stmt, :remove)') do
  try
    procName := StringReplace(SearchRec.Name, ExtractFileExt(SearchRec.Name), EmptyStr, []);
    schemaName := 'public';
    i := Pos('.', procName);
    if i > 0 then
      schemaName := Copy(procName, 1, i - 1);

    procName := Copy(procName, i + 1, length(procName));

    ParamByName('schema').AsString := schemaName;
    ParamByName('fn').AsString :=  procName;
    ParamByName('descri').AsString := StringReplace(SearchRec.Name, ExtractFileExt(SearchRec.Name), EmptyStr, []);
    ParamByName('tipo').AsInteger := procType;
    ParamByName('modification').AsDateTime := FileDateToDateTime(SearchRec.Time);
    ParamByName('stmt').LoadFromFile(Directory + SearchRec.Name, ftMemo);
    ParamByName('remove').AsBoolean := False;

    try
      Open;

      if not IsEmpty and (Fields[0].AsInteger <> -1) then
      begin
        if Length(FMarkeds) - 1 < FIndex then
          SetLength(FMarkeds, Length(FMarkeds) * 2 + 1);

        FMarkeds[FIndex] := Fields[0].AsInteger;

        SQL.Text :=
        'select sys_flag_mark(214, :recno);';

        ParamByName('recno').AsInteger := FMarkeds[FIndex];

        ExecSQL;
        
        Inc(FIndex);
      end;
    except
      on E: Exception do
        FErrors.Add(E.Message);
    end;
  finally
    Close;
  end;
end;

procedure TSYSFNLoader.Clear;
var
  i: Integer;
  qry: TZReadOnlyQuery;
begin
  qry := U.Query;
  qry.SQL.Text := 'select sys_flag_del(214, :recno)';

  for i := Low(FMarkeds) to High(FMarkeds) do
  begin
    qry.ParamByName('recno').AsInteger := FMarkeds[i];
    qry.ExecSQL;
  end;
end;

constructor TSYSFNLoader.Create;
begin
  FErrors := TStringList.Create;
end;

destructor TSYSFNLoader.Destroy;
begin
  Clear;
  FreeAndNil(FErrors);
  inherited;
end;

procedure TSYSFNLoader.ScanFiles(Diretory: string);
var
  SearchRec: TSearchRec;
begin
  try
    if FindFirst(Diretory + '*.*', faAnyFile, SearchRec) = 0 then
    repeat
      if (SearchRec.Attr and faArchive = faArchive) and (ExtractFileExt(SearchRec.Name) = _EXTPROC) then
        try
          PersistFileToDB(Diretory, SearchRec);
        except
          on E:Exception do
            FErrors.Add(E.Message);
        end;

      if (SearchRec.Attr and faDirectory = faDirectory) and (SearchRec.Name <> '.') and (SearchRec.Name <> '..') then
        ScanFiles(Diretory + SearchRec.Name + '\');
    until FindNext(SearchRec) <> 0;
  finally
    FindClose(SearchRec);
  end;
end;

procedure TSYSFNLoader.LoadAll;
begin
  LoadProcedures;
  LoadTriggers;
end;

procedure TSYSFNLoader.LoadProcedures;
begin
  // Marca todas as rotinas e gatilho para deleção
  U.Data.ExecSQL('update sys_fn set remove = true where tipo = 1');

  // Lendo funções
  FIsTrigger := False;
  ScanFiles(TEnvironment.Root + _SRC_FUNCTION);
end;

procedure TSYSFNLoader.LoadTriggers;
begin
  // Marca todas as rotinas e gatilho para deleção
  U.Data.ExecSQL('update sys_fn set remove = true where tipo = 2');
  FIsTrigger := True;
  ScanFiles(TEnvironment.Root + _SRC_TRIGGER);
end;

end.
