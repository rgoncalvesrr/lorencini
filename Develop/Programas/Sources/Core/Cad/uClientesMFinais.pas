unit uClientesMFinais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids,
  StdCtrls, Mask, DBCtrls, Buttons, uFrameImage, uIFrameCliente;

type
  TClientesMFinais = class(TIDefBrowseEdit)
    Panel27: TPanel;
    Panel28: TPanel;
    Label47: TLabel;
    DBEdit49: TDBEdit;
    Panel29: TPanel;
    Label54: TLabel;
    DBEdit50: TDBEdit;
    Panel30: TPanel;
    Label55: TLabel;
    DBEdit51: TDBEdit;
    Bevel1: TBevel;
    FrameImage1: TFrameImage;
    GroupBox1: TGroupBox;
    FrameCliente1: TFrameCliente;
    procedure FormCreate(Sender: TObject);
    procedure FrameCliente1SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  ClientesMFinais: TClientesMFinais;

implementation

uses uDM, uClientesF, mcUtils, uIUtils, DB, uClientes;

{$R *.dfm}

procedure TClientesMFinais.FormCreate(Sender: TObject);
begin
  inherited;
  FrameCliente1.LookupAllowEdit := False;
end;

procedure TClientesMFinais.FrameCliente1SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FrameCliente1.actFindCliExecute(Sender);
end;

procedure TClientesMFinais.RefreshControls;
begin
  inherited;
  if not Assigned(DataSet) then
    Exit;

  FrameCliente1.actFindCli.Enabled := DataSet.State in [dsEdit, dsInsert];
end;

end.
