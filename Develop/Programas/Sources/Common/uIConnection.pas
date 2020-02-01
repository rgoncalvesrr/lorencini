unit uIConnection;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIForm, ActnList, StdCtrls, uIUtils, IniFiles, Buttons, ExtCtrls;

type
  TIConnection = class(TIForm)
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edProtocol: TEdit;
    Label2: TLabel;
    edHost: TEdit;
    edPort: TEdit;
    Label3: TLabel;
    edDataBase: TEdit;
    Label4: TLabel;
    edUser: TEdit;
    Label5: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
  private
    { Private declarations }
    FConnsFile: TIniFile;
    FConnections: TStrings;
    FDataInfo: TDataInfo;
  public
    { Public declarations }
  end;

var
  IConnection: TIConnection;

implementation

{$R *.dfm}

procedure TIConnection.actCancelExecute(Sender: TObject);
begin
  inherited;
  FDataInfo := nil;
end;

procedure TIConnection.actOkExecute(Sender: TObject);
begin
  inherited;
  FConnsFile.WriteString('LastConn', 'Section', ComboBox1.Text);
  U.Data.DataInfo.Assign(FDataInfo);
  U.Data.RefreshConnParams;
  Close;
end;

procedure TIConnection.ComboBox1Change(Sender: TObject);
begin
  inherited;

  FDataInfo := TDataInfo(ComboBox1.Items.Objects[ComboBox1.ItemIndex]);

  with FDataInfo do
  begin
    edProtocol.Text := Protocol;
    edHost.Text := HostName;
    edPort.Text := IntToStr(Port);
    edDataBase.Text := Database;
    edUser.Text := User;
  end;
end;

procedure TIConnection.FormCreate(Sender: TObject);
var
  i: Integer;
  s: string;
begin
  inherited;
  FConnections := TStringList.Create;

  FConnsFile := TIniFile.Create(U.Path.System + 'Config.txt');
  FConnsFile.ReadSections(FConnections);

  for s in FConnections do
  begin
    if s = 'LastConn' then
      Continue;

    FDataInfo := TDataInfo.Create;
    with FDataInfo, FConnsFile do
    begin
      Protocol:= ReadString(s, 'Protocol', 'postgresql-8.1');
      Database:= ReadString(s, 'Database', 'lorencini');
      HostName:= ReadString(s, 'HostName', 'localhost');
      User:= ReadString(s, 'User_Name', 'postgres');
      Password:= ReadString(s, 'Password', '');
      Port:= ReadInteger(s, 'Port', 0);

      ComboBox1.Items.AddObject(s, FDataInfo);

      if s = ReadString('LastConn', 'Section', '') then
        ComboBox1.ItemIndex := ComboBox1.Items.Count - 1;

    end;
  end;

  if ComboBox1.ItemIndex = -1 then
    ComboBox1.ItemIndex := 0;

  ComboBox1Change(ComboBox1);
  ComboBox1.Enabled := ComboBox1.Items.Count > 1;
end;

procedure TIConnection.FormDestroy(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to ComboBox1.Items.Count - 1 do
    TDataInfo(ComboBox1.Items.Objects[i]).Free;

  ComboBox1.Clear;

  FreeAndNil(FConnections);
  FreeAndNil(FConnsFile);
  inherited;
end;

end.
