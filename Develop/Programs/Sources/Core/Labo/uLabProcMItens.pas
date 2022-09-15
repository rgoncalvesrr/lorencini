unit uLabProcMItens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls, Buttons, ACBrBarCode, JvExMask, JvToolEdit,
  JvDBControls, Menus;

type
  TLabProcMItens = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label10: TLabel;
    DBEdit5: TDBEdit;
    actFindEquip: TAction;
    DBComboBox1: TDBComboBox;
    JvDBDateEdit1: TJvDBDateEdit;
    Label24: TLabel;
    Label26: TLabel;
    JvDBDateEdit2: TJvDBDateEdit;
    PopupMenu1: TPopupMenu;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
  private
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  LabProcMItens: TLabProcMItens;

implementation

uses uLabProc, DB, uIUtils, mcUtils, uLabEquipCli;

{$R *.dfm}

{ TLabProcMItens }

procedure TLabProcMItens.RefreshControls;
begin
  inherited;

  if not Assigned(DataSet) then
    Exit;
end;

end.
