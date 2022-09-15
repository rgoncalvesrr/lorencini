unit uGestaoEntradasDocs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIForm, ActnList, ExtCtrls, ComCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, StdCtrls, Mask, DBCtrls;

type
  TGestaoEntradasDocs = class(TIForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Splitter1: TSplitter;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    JvDBGrid1: TJvDBGrid;
    ScrollBox1: TScrollBox;
    GroupBox1: TGroupBox;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    GroupBox2: TGroupBox;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    GroupBox3: TGroupBox;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    GroupBox4: TGroupBox;
    Panel21: TPanel;
    Panel22: TPanel;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Panel23: TPanel;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    Panel24: TPanel;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    Panel25: TPanel;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    Panel26: TPanel;
    Label20: TLabel;
    DBEdit20: TDBEdit;
    Panel27: TPanel;
    Label21: TLabel;
    DBEdit21: TDBEdit;
    GroupBox5: TGroupBox;
    Panel28: TPanel;
    Panel29: TPanel;
    Label22: TLabel;
    DBEdit22: TDBEdit;
    Panel30: TPanel;
    Label23: TLabel;
    DBEdit23: TDBEdit;
    Panel31: TPanel;
    Label24: TLabel;
    DBEdit24: TDBEdit;
    Panel32: TPanel;
    Label25: TLabel;
    DBEdit25: TDBEdit;
    Panel33: TPanel;
    Label26: TLabel;
    DBEdit26: TDBEdit;
    Panel34: TPanel;
    Label27: TLabel;
    DBEdit27: TDBEdit;
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  GestaoEntradasDocs: TGestaoEntradasDocs;

implementation

{$R *.dfm}

uses uGestaoEntradas;

procedure TGestaoEntradasDocs.FormResize(Sender: TObject);
begin
  inherited;
  Panel1.Width := Round(ClientWidth * 0.4);
end;

end.
