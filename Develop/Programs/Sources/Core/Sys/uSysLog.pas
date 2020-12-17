unit uSysLog;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIForm, ActnList, Grids, DBGrids, DB, ZAbstractRODataset, ZDataset, ComCtrls, ToolWin, ExtCtrls, StdCtrls,
  Buttons, uFrameData, Mask, DBCtrls;

type
  TSysLog = class(TIForm)
    DBGrid1: TDBGrid;
    qLog: TZReadOnlyQuery;
    dsLog: TDataSource;
    ctrlBarTop: TControlBar;
    ToolBar1: TToolBar;
    ToolButton2: TToolButton;
    qLogrecno: TIntegerField;
    qLogdata: TDateTimeField;
    qLogdescri: TStringField;
    qLoghistorico: TMemoField;
    qLogusername: TStringField;
    qLogname: TStringField;
    qLogemail: TStringField;
    qLogtipo: TIntegerField;
    qLogrotacionar: TBooleanField;
    qLognivel: TIntegerField;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    actRefresh: TAction;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    pctlFind: TPageControl;
    tsQuery: TTabSheet;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    FrameData1: TFrameData;
    Label2: TLabel;
    actQuery: TAction;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Label3: TLabel;
    cbNivel: TComboBox;
    pnDetail: TPanel;
    pnBrowse: TPanel;
    Splitter1: TSplitter;
    GroupBox1: TGroupBox;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    GroupBox2: TGroupBox;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    DBMemo1: TDBMemo;
    GroupBox3: TGroupBox;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure qLogtipoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure FormShow(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actQueryExecute(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure cbNivelChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FSQL: string;
    FTableName: string;
    FOrigem: Integer;
    FRecno: Integer;
    procedure SetRecno(const Value: Integer);
    procedure SetTableName(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    property TableName: string read FTableName write SetTableName;
    property Recno: Integer read FRecno write SetRecno;
  end;

var
  SysLog: TSysLog;

implementation

uses
  uResources, uDM, uIUtils;

{$R *.dfm}

procedure TSysLog.actQueryExecute(Sender: TObject);
var
  sql : string;
begin
  inherited;

  sql := FSQL;
  try
    if cbNivel.ItemIndex > 0 then
      sql := sql + ' and l.nivel = :nivel';

  finally
    qLog.SQL.Clear;
    qLog.SQL.Add(sql);
    qLog.ParamByName('origem').AsInteger := FOrigem;
    qLog.ParamByName('recno').AsInteger := FRecno;

    if Assigned(qLog.Params.FindParam('nivel')) then
      qLog.ParamByName('nivel').AsInteger := cbNivel.ItemIndex;

    G.RefreshDataSet(qLog);
  end;
end;

procedure TSysLog.actRefreshExecute(Sender: TObject);
begin
  inherited;
  G.RefreshDataSet(qLog);
end;

procedure TSysLog.cbNivelChange(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePageIndex := cbNivel.ItemIndex;
  DBGrid1.Parent := PageControl1.ActivePage;
  actQueryExecute(actQuery);
end;

procedure TSysLog.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Bmp: TBitmap;
  x, y: integer;
begin
  with TDBGrid(Sender) do
  begin
    if not (gdFocused in State) and (DataSource.DataSet.State = dsBrowse) then
    begin
      Canvas.Brush.Color:= clWhite;

      if DataSource.DataSet.RecNo mod 2 = 0 then
        Canvas.Brush.Color:= $00D9EAD9
      else
        Canvas.Brush.Color:= clWhite;

      Canvas.FillRect(Rect);
    end;

    if (Column.Index <> 0) then
      DefaultDrawColumnCell(Rect, DataCol, Column, State)
    else
    begin
      Bmp:= TBitmap.Create;
      with TDBGrid(Sender) do
      try
        Bmp.Transparent:= True;

        with Resources do
          case qLognivel.AsInteger of
            1: small_n.GetBitmap(191, Bmp); //Informação
            2: small_n.GetBitmap(12, Bmp); //Atenção
            3: small_n.GetBitmap(121, Bmp); //Crítico
            4: small_n.GetBitmap(257, Bmp); //Debug
          end;

        if Column.Width <> Bmp.Width + 2 then
          Column.Width:= Bmp.Width + 2;

        {Desenha o status da remessa}
        Canvas.Draw(Rect.Left + 1, Rect.Top + 1, Bmp);
      finally
        Bmp.Free;
      end;
    end;

    if Column.Field is TBooleanField then
    begin
      Bmp:= TBitmap.Create;
      try
        if Column.Field.AsBoolean then
          Resources.small_n.GetBitmap(67, Bmp)
        else
          Resources.small_n.GetBitmap(69, Bmp);

        x:= Rect.Left + (Rect.Right - Rect.Left - Bmp.Width) div 2;
        y:= Rect.Top + (Rect.Bottom - Rect.Top - Bmp.Height) div 2;

        Canvas.FillRect(Rect);
        Canvas.Draw(x, y, Bmp);
      finally
        Bmp.Free;
      end;
    end;
  end;
end;

procedure TSysLog.FormCreate(Sender: TObject);
begin
  inherited;
  FSQL :=
  'select l.recno, l.data, l.descri, l.historico, l.username, u."name", u.email, l.tipo, l.rotacionar, l.nivel '+
    'from sys_log l '+
         'join sys_users u '+
           'on u.username = l.username '+
   'where l.origem = :origem '+
     'and l.origem_recno = :recno ';
end;

procedure TSysLog.FormShow(Sender: TObject);
begin
  inherited;
  qLog.Open;
end;

procedure TSysLog.PageControl1Change(Sender: TObject);
begin
  inherited;
  cbNivel.ItemIndex := PageControl1.ActivePageIndex;
  cbNivelChange(cbNivel);
end;

procedure TSysLog.qLogtipoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Criação';
    2: Text := 'Alteração';
    3: Text := 'Exclusão';
    4: Text := 'Outros';
  end;
end;

procedure TSysLog.SetRecno(const Value: Integer);
begin
  FRecno := Value;
  qLog.ParamByName('recno').AsInteger := Value;
end;

procedure TSysLog.SetTableName(const Value: string);
begin
  FTableName := Value;

  with U.Query do
  try
    SQL.Text := 'select sys_origem(:tablename);';
    ParamByName('tablename').AsString := Value;
    Open;

    FOrigem := Fields[0].AsInteger;
  finally
    Close;
  end;

  qLog.ParamByName('origem').AsInteger := FOrigem;
end;

end.
