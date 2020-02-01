unit uPrecosMLaudosCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids,
  JvExMask, JvToolEdit, JvBaseEdits, JvDBControls, StdCtrls, DBCtrls, Mask;

type
  TPrecosMLaudosCli = class(TIDefBrowseEdit)
    Panel8: TPanel;
    Panel9: TPanel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Panel10: TPanel;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Panel12: TPanel;
    Label8: TLabel;
    JvDBCalcEdit2: TJvDBCalcEdit;
    Panel11: TPanel;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Panel2: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel5: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel6: TPanel;
    Label3: TLabel;
    DBComboBox1: TDBComboBox;
    Panel7: TPanel;
    Label4: TLabel;
    JvDBCalcEdit1: TJvDBCalcEdit;
    procedure Panel1Resize(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  PrecosMLaudosCli: TPrecosMLaudosCli;

implementation

uses uPrecos, uPrecosMLaudosCliM;

{$R *.dfm}

procedure TPrecosMLaudosCli.FormShow(Sender: TObject);
begin
  inherited;
  WindowState := wsMaximized;
end;

procedure TPrecosMLaudosCli.OnEdit;
begin
  PrecosMLaudosCliM := TPrecosMLaudosCliM.Create(nil);
  with PrecosMLaudosCliM do
  try
    DataSet := Precos.qLaudosCli;
    ShowModal;
  finally
    FreeAndNil(PrecosMLaudosCliM);
  end;
end;

procedure TPrecosMLaudosCli.Panel1Resize(Sender: TObject);
begin
  inherited;
  Panel3.Height := Panel1.ClientHeight - 138 -
    PageControl1.Margins.Top - PageControl1.Margins.Bottom;
end;

end.
