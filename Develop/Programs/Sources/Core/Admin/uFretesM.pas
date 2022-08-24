unit uFretesM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls;

type
  TFretesM = class(TIDefBrowseEdit)
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel7: TPanel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Panel8: TPanel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Panel9: TPanel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Panel10: TPanel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    JvDBCalcEdit1: TJvDBCalcEdit;
    Label6: TLabel;
    Label10: TLabel;
    DBEdit6: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FretesM: TFretesM;

implementation

uses uDM, uFretes;

{$R *.dfm}

end.
