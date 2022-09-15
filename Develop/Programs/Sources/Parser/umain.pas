unit umain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZSqlProcessor, ZConnection, StdCtrls, ComCtrls, DB,
  ZAbstractRODataset, ZDataset, SynEdit, SynEditHighlighter, SynHighlighterSQL,
  SynHighlighterGeneral, ZAbstractConnection, ExtCtrls;

type
  TMain = class(TForm)
    ZConnection1: TZConnection;
    ExecProc: TZReadOnlyQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    GroupBox3: TGroupBox;
    Memo2: TMemo;
    SynEdit1: TSynEdit;
    SynSQLSyn1: TSynSQLSyn;
    GroupBox1: TGroupBox;
    ListView1: TListView;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    StatusBar1: TStatusBar;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private
    { Private declarations }
    FTimeApp: TDateTime;
    FStmt: TStrings;
    FStmtSanitized: TStrings;
    FStmtApplied: TStrings;
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

{$R *.dfm}

uses mcUtils, uHelpers;

procedure TMain.FormCreate(Sender: TObject);
var
  Param: TListItem;
  i: Integer;
  IsValid: Boolean;
  shift: boolean;
  tApp: TDateTime;
  stmt: string;
begin
  FStmt := TStringList.Create;
  FStmtSanitized := TStringList.Create;
  FStmtApplied := TStringList.Create;

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

  FStmt.Text := SynEdit1.Text;
  
  Memo2.Clear;
  Memo2.ParentFont := True;
  ExecProc.ParamCheck := True;
  ExecProc.SQL.Clear;
  ExecProc.SQL.Add('select sys_parse(:stmt, false);');
  ExecProc.ParamByName('stmt').AsString := FStmt.Text;
  tApp := Now;
  try
    ExecProc.Open;
    FStmtSanitized.Text := ExecProc.Fields[0].AsString;

    ExecProc.SQL.Clear;
    ExecProc.SQL.Add('select sys_parse(:stmt);');
    ExecProc.ParamByName('stmt').AsString := FStmtSanitized.Text;
    ExecProc.Open;
    FStmtApplied.Text := ExecProc.Fields[0].AsString;

    ExecProc.ParamCheck := False;
    ExecProc.SQL.Clear;
    ExecProc.SQL.Add(FStmtApplied.Text);
    ExecProc.ExecSQL;

    tApp := Now - tApp;
    Memo2.Font.Color := clNavy;
    Memo2.Lines.Add('Rotina aplicada com sucesso.');

    StatusBar1.Panels[9].Text := FormatDateTime('nn:zzz', tApp) + ' ms';
  except
    on E:Exception do
    begin
      Memo2.Font.Color := clRed;
      Memo2.Lines.Add('Erro na aplicação da rotina:'#13#10);
      Memo2.Lines.Add(E.Message);
    end;
  end;


//  oParse := TCFParser.Create(EmptyStr, -1);
//  Memo2.Lines.Add('Threading '+IntToStr(oParse.ThreadID));
//  oParse.OnTerminate := ParserFinish;
//  oParse.Parse(SynEdit1.Text);
//  oParse.Resume;

  Application.ProcessMessages;
  PageControl1Change(PageControl2);
end;

procedure TMain.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FStmt);
  FreeAndNil(FStmtSanitized);
  FreeAndNil(FStmtApplied);
end;

procedure TMain.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = 13 then
  begin
    Key := 0;
    Close;
  end;
end;

procedure TMain.PageControl1Change(Sender: TObject);
var
  CompressRate: Double;
  Stmt: TStrings;
begin
  case PageControl1.ActivePageIndex of
    0: Stmt := FStmt;
    1: Stmt := FStmtSanitized;
    2: Stmt := FStmtApplied;
  end;

  SynEdit1.Lines.EndUpdate;
  try
    SynEdit1.WordWrap := PageControl1.ActivePageIndex = 3;
    SynEdit1.WantReturns := PageControl1.ActivePageIndex = 3;

    SynEdit1.Text := Stmt.Text;
    SynEdit1.Parent := PageControl1.ActivePage;
  finally
    SynEdit1.Lines.EndUpdate;
  end;

  if (StatusBar1.Panels[1].Text = EmptyStr) then
  begin
    CompressRate := 100 * (1 - Length(FStmtApplied.Text) / Length(FStmt.Text));

    StatusBar1.Panels[1].Text := Format('%d Bytes', [Length(FStmt.Text)]);
    StatusBar1.Panels[3].Text := Format('%d Bytes', [Length(FStmtSanitized.Text)]);
    StatusBar1.Panels[5].Text := Format('%d Bytes', [Length(FStmtApplied.Text)]);
    StatusBar1.Panels[7].Text := Format('%f%%', [CompressRate]);
  end;
end;

end.
