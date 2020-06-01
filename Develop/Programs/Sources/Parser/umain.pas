unit umain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZSqlProcessor, ZConnection, StdCtrls, ComCtrls, DB,
  ZAbstractRODataset, ZDataset, SynEdit, SynEditHighlighter, SynHighlighterSQL,
  SynHighlighterGeneral, ZAbstractConnection;

type
  TMain = class(TForm)
    ZConnection1: TZConnection;
    ExecProc: TZReadOnlyQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Memo2: TMemo;
    TabSheet2: TTabSheet;
    GroupBox1: TGroupBox;
    ListView1: TListView;
    SynEdit1: TSynEdit;
    SynSQLSyn1: TSynSQLSyn;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    FTimeApp: TDateTime;
    procedure ParserFinish(Sender: TObject);
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

{$R *.dfm}

uses mcUtils, uHelpers, CFParser;

procedure TMain.FormCreate(Sender: TObject);
var
  Param: TListItem;
  i: Integer;
  IsValid: Boolean;
  shift: boolean;
  oParse: TCFParser;
begin
  shift := False;
  ZConnection1.LibraryLocation := TEnvironment.Lib + 'libpq.dll';

  with ListView1 do
  begin
    for i := 1 to ParamCount - 1 do
    begin
      IsValid := False;

      if shift then
      begin
        shift := False;
        Continue;
      end;

      if ParamStr(i) = '-h'  then
      begin
        IsValid := (i + 1) <= ParamCount;
        ZConnection1.HostName := ParamStr(i + 1);
      end;

      if ParamStr(i) = '-f'  then
      begin
        IsValid := (i + 1) <= ParamCount;
        if IsValid then
          if not FileExists(ParamStr(i + 1)) then
            raise Exception.CreateFmt('Arquivo %s inválido.', [ParamStr(i + 1)]);

        SynEdit1.Lines.LoadFromFile(ParamStr(i + 1));
      end;

      // porta da conexão
      if ParamStr(i) = '-p'  then
      begin
        IsValid := (i + 1) <= ParamCount;
        ZConnection1.Port := StrToInt(ParamStr(i + 1));
      end;

      if ParamStr(i) = '-P'  then
      begin
        IsValid := (i + 1) <= ParamCount;
        ZConnection1.Password := ParamStr(i + 1);
      end;

      if ParamStr(i) = '-db'  then
      begin
        IsValid := (i + 1) <= ParamCount;
        ZConnection1.Database := ParamStr(i + 1);
      end;

      if ParamStr(i) = '-U'  then
      begin
        IsValid := (i + 1) <= ParamCount;
        ZConnection1.User := ParamStr(i + 1);
      end;

      if not IsValid then
        raise Exception.CreateFmt('Parâmetro %s inválido.', [ParamStr(i)]);

      Param := Items.Add;
      Param.Caption := ParamStr(i);
      Param.SubItems.Add(ParamStr(i + 1));

      shift := True;
    end;

    Param := Items.Add;
    Param.Caption := 'PATH';
    Param.SubItems.Add(GetEnvironmentVariable('PATH'));
  end;

  ZConnection1.Connect;

  Memo2.Clear;
  Memo2.ParentFont := True;
  oParse := TCFParser.Create(EmptyStr, -1);
  Memo2.Lines.Add('Threading '+IntToStr(oParse.ThreadID));
  oParse.OnTerminate := ParserFinish;
  oParse.Parse(SynEdit1.Text);
  oParse.Resume;

  Application.ProcessMessages;
end;

procedure TMain.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
  begin
    Key := 0;
    Close;
  end;
end;

procedure TMain.ParserFinish(Sender: TObject);
var
  tApp: TDateTime;
begin
  with TCFParser(Sender) do
  try
    if ErrorList.Count = 0 then
    begin
      SynEdit1.Text := Ouput.Text;
      ExecProc.SQL.Text := SynEdit1.Text;
      tApp := Now;
      ExecProc.ExecSQL;
      tApp := Now - tApp;
      Memo2.Font.Color := clNavy;
      Memo2.Lines.Add('Rotina aplicada com sucesso.');
      Memo2.Lines.Add(EmptyStr);
      Memo2.Lines.Add('Tempo de conexão com o banco: ' +
      FormatDateTime('nn:zzz', tApp) + ' ms');
    end
    else
    begin
      Memo2.Font.Color := clRed;
      Memo2.Lines.Add('Erro na aplicação da rotina:'#13#10);
      Memo2.Lines.AddStrings(ErrorList);
      Memo2.Lines.Add(EmptyStr);
    end;
  finally
    Memo2.Lines.Add('Tempo de processamento: ' +
      FormatDateTime('ss:zzzz', ElipsedTime) + ' ms');
  end;
end;

end.
