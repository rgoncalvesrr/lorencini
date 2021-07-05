unit uRecebimentoLoteM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, StdCtrls, Mask, DBCtrls;

type
  TRecebimentoLoteM = class(TIDefBrowseEdit)
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Panel15: TPanel;
    Panel19: TPanel;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Panel20: TPanel;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label6: TLabel;
    DBComboBox1: TDBComboBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RecebimentoLoteM: TRecebimentoLoteM;

implementation

uses uRecebimentoLote;

{$R *.dfm}

procedure TRecebimentoLoteM.FormCreate(Sender: TObject);
begin
  inherited;
  AllowInsert := False;
end;

end.
