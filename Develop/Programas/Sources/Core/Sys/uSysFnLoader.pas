unit uSysFnLoader;

interface

uses
  SysUtils, uIUtils, Classes;

type
  TSYSFNLoader = class
  private
    FIsTrigger: Boolean;
    FErrors: TStrings;
    procedure ScanFiles(Diretory: string);
    procedure PersistFileToDB(Directory: string; SearchRec: TSearchRec);
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
  db, uHelpers;

const
  _EXTPROC: string = '.spg';
  _PROC : Integer = 1;
  _TRIGGER : Integer = 2;
  _SRC_FUNCTION : string = 'Sources\Workspace\Functions\';
  _SRC_TRIGGER : string = 'Sources\Workspace\Triggers\';

{ TSYSFNLoader }

procedure TSYSFNLoader.PersistFileToDB(Directory: string; SearchRec: TSearchRec);
var
  procType: Integer;
begin
  if FIsTrigger then
    procType := _TRIGGER
  else
    procType := _PROC;

  with U.Data.GetQuery(
    'select sys_fn(:fn, :descri, :tipo, :modification, :stmt, :remove)') do
  try
    ParamByName('fn').AsString := StringReplace(SearchRec.Name, ExtractFileExt(SearchRec.Name), EmptyStr, []);
    ParamByName('descri').AsString := StringReplace(SearchRec.Name, ExtractFileExt(SearchRec.Name), EmptyStr, []);
    ParamByName('tipo').AsInteger := procType;
    ParamByName('modification').AsDateTime := FileDateToDateTime(SearchRec.Time);
    ParamByName('stmt').LoadFromFile(Directory + SearchRec.Name, ftMemo);
    ParamByName('remove').AsBoolean := False;

    try
      ExecSQL;
    except
      on E: Exception do
        FErrors.Add(E.Message);
    end;
  finally
    Close;
  end;
end;

constructor TSYSFNLoader.Create;
begin
  FErrors := TStringList.Create;
end;

destructor TSYSFNLoader.Destroy;
begin
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
