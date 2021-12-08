unit uPrnTag;

interface

uses
  Classes, SysUtils, db;

type

  TBeforePrnTagEvent = procedure(Sender: TObject; var Row: string; DataSet: TDataSet) of object;

  EPrnTag = Exception;

  TPrnTag = class
  private
    FOnBeforePrint: TBeforePrnTagEvent;
    FPrintPort: string;
    FFileTemplate: TFileName;
    procedure SetFileTemplate(const Value: TFileName);
    procedure SetPrintPort(const Value: string);
  public
    constructor Create; overload;
    constructor Create(const AFileTemplate: TFileName); overload;
    constructor Create(const AFileTemplate: TFileName; const APrintPort: string); overload;
    constructor Create(const AFileTemplate: TFileName; const APrintPort: string;
      BeforePrintEvent: TBeforePrnTagEvent); overload;

    function Print(DataSet: TDataSet): Boolean;

    property FileTemplate: TFileName read FFileTemplate write SetFileTemplate;
    property PrintPort: string read FPrintPort write SetPrintPort;
    property OnBeforePrint: TBeforePrnTagEvent read FOnBeforePrint write FOnBeforePrint;
  end;

implementation

{ TPrnTag }

constructor TPrnTag.Create(const AFileTemplate: TFileName);
begin
  Create(AFileTemplate, EmptyStr, FOnBeforePrint);
end;

constructor TPrnTag.Create;
begin
  Create(EmptyStr, EmptyStr, FOnBeforePrint);
end;

constructor TPrnTag.Create(const AFileTemplate: TFileName;
  const APrintPort: string; BeforePrintEvent: TBeforePrnTagEvent);
begin
  inherited Create;
  FFileTemplate := AFileTemplate;
  FPrintPort := APrintPort;
  FOnBeforePrint := BeforePrintEvent;
end;

function TPrnTag.Print(DataSet: TDataSet): Boolean;
var
  r: string;
  CMD: AnsiString;
  sFile: String;
  iResCode: Integer;
begin
  Result := False;
  
  CMD := EmptyStr;

  AssignFile(Input, FFileTemplate);
  {$I-}
  Reset(Input);
  {$I+}

  iResCode := IOResult;

  if iResCode <> 0 then
    raise EPrnTag.CreateFmt('Não foi possível abrir o arquivo template "%s". Ocorreu o erro %d.',
      [FFileTemplate, iResCode]);

  // Processa o arquivo modelo tracando os dados
  try
    while not Eof(Input) do
    begin
      Readln(Input, r);

      if Assigned(FOnBeforePrint) then
        FOnBeforePrint(Self, r, DataSet);

      if CMD <> EmptyStr then
        CMD := CMD + #13#10;

      CMD := CMD + r;
    end;
  finally
    CloseFile(Input);
  end;

  // Imprime a etiqueta
  AssignFile(Output, FPrintPort);
  {$I-}
  Rewrite(Output);
  {$I+}

  iResCode := IOResult;

  if iResCode <> 0 then
    raise EPrnTag.CreateFmt('Não foi possível imprimir na porta "%s". Ocorreu o erro %d.',
      [FPrintPort, iResCode]);
  try
    Writeln(Output, CMD);
  finally
    CloseFile(Output);
  end;

  Result := True;
end;

procedure TPrnTag.SetFileTemplate(const Value: TFileName);
begin
  FFileTemplate := Value;
end;

procedure TPrnTag.SetPrintPort(const Value: string);
begin
  FPrintPort := Value;
end;

constructor TPrnTag.Create(const AFileTemplate: TFileName;
  const APrintPort: string);
begin
  Create(AFileTemplate, APrintPort, FOnBeforePrint);
end;

end.
