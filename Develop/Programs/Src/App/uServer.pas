unit uServer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMain = class(TForm)
    ComboBox1: TComboBox;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

uses
  DataBaseIntf, DataBase;

{$R *.dfm}

procedure TMain.ComboBox1Change(Sender: TObject);
var
  connection: IRConnection;
begin
  connection := TRConnectionRepositoryFromFile.New.Find(ComboBox1.Text);
  Memo1.Clear;
  with Memo1.Lines do
  begin
    Add(connection.Protocol);
    Add(connection.Host);
    Add(IntToStr(connection.Port));
    Add(connection.DataBase);
    Add(connection.User);
    Add(connection.UserSession);
    Add(connection.Pass);
  end;
  
end;

procedure TMain.FormCreate(Sender: TObject);
var
  Connections: IRConnectionList;
  Connection: IRConnection;
  i: integer;
begin
  ComboBox1.Clear;
  Connections := TRConnectionRepositoryFromFile.New.FindAll;

  for i := 0 to Connections.Count - 1 do
  begin
    Connection := Connections[i];
    ComboBox1.Items.Add(Connection.Caption);
  end;
end;

end.
