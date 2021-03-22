unit uContatosMClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, uIFrameCliente, StdCtrls, JvExStdCtrls,
  JvCombobox, JvDBCombobox, Mask, DBCtrls;

type
  TContatosMClientes = class(TIDefBrowseEdit)
    FrameCliente1: TFrameCliente;
    Panel2: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel5: TPanel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Panel6: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel11: TPanel;
    Label4: TLabel;
    JvDBComboBox1: TJvDBComboBox;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Panel7: TPanel;
    Panel8: TPanel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Panel12: TPanel;
    Label8: TLabel;
    JvDBComboBox2: TJvDBComboBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    Panel9: TPanel;
    ControlBar3: TControlBar;
    ToolBar2: TToolBar;
    ToolButton5: TToolButton;
    ToolButton15: TToolButton;
    actCheck: TAction;
    actUnCheck: TAction;
    Panel10: TPanel;
    Panel13: TPanel;
    DBCheckBox9: TDBCheckBox;
    Panel14: TPanel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBMemo1: TDBMemo;
    DBCheckBox10: TDBCheckBox;
    procedure FrameCliente1SpeedButton1Click(Sender: TObject);
    procedure actCheckExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  ContatosMClientes: TContatosMClientes;

implementation

{$R *.dfm}

uses
  uContatos, db, mcUtils;

procedure TContatosMClientes.actCheckExecute(Sender: TObject);
var
  bMark: Boolean;
begin
  inherited;
  bMark := TAction(Sender).Tag = 1;

  with Contatos do
  begin
    qContClipadrao.AsBoolean := bMark;
    qContClienviar_cotacao_venda.AsBoolean := bMark;
    qContClienviar_pedido_venda.AsBoolean := bMark;
    qContClienviar_laudo_atencao.AsBoolean := bMark;
    qContClienviar_laudo_critico.AsBoolean := bMark;
    qContClienviar_laudo_normal.AsBoolean := bMark;
    qContClienviar_os.AsBoolean := bMark;
  end;
end;

procedure TContatosMClientes.FormCreate(Sender: TObject);
begin
  inherited;
  FrameCliente1.LookupFieldKey := 'codigo';
end;

procedure TContatosMClientes.FrameCliente1SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FrameCliente1.actFindCliExecute(Sender);
end;

procedure TContatosMClientes.RefreshControls;
begin
  inherited;

  FrameCliente1.DBEdit8.ReadOnly := Assigned(DataSet) and (DataSet.State <> dsInsert);
  FrameCliente1.actFindCli.Enabled := Assigned(DataSet) and (DataSet.State = dsInsert);
  actCheck.Enabled := Assigned(DataSet) and (DataSet.State in [dsInsert, dsEdit]);
  actUnCheck.Enabled := Assigned(DataSet) and (DataSet.State in [dsInsert, dsEdit]);

  RefreshControlsStyle(FrameCliente1);
end;

end.
