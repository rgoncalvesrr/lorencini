unit uPrecosM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids,
  JvExMask, JvToolEdit, JvBaseEdits, JvDBControls, StdCtrls, DBCtrls, Mask;

type
  TPrecosM = class(TIDefBrowseEdit)
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBComboBox1: TDBComboBox;
    Label4: TLabel;
    JvDBCalcEdit1: TJvDBCalcEdit;
    procedure FormShow(Sender: TObject);
    procedure Panel1Resize(Sender: TObject);
  private
    { Private declarations }
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  PrecosM: TPrecosM;

implementation

uses uPrecos, uPrecosMLaudosCli, iTypes;

{$R *.dfm}

procedure TPrecosM.FormShow(Sender: TObject);
begin
  inherited;
  WindowState := wsMaximized;
end;

procedure TPrecosM.OnEdit;
begin
  PrecosMLaudosCli := TPrecosMLaudosCli.Create(nil);
  with PrecosMLaudosCli do
  try
    DataSet := Precos.qLaudos;
    ChildDataSet := Precos.qLaudosCli;
    ScreenType := stMasterDetail;
    ShowModal;
  finally
    FreeAndNil(PrecosMLaudosCli);
  end;

end;

procedure TPrecosM.Panel1Resize(Sender: TObject);
begin
  inherited;
  Panel3.Height := Panel1.ClientHeight - 83 - PageControl1.Margins.Top -
    PageControl1.Margins.Bottom; 
end;

end.
