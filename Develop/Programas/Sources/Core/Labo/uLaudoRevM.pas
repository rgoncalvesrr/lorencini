unit uLaudoRevM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids,
  StdCtrls, DBCtrls, Buttons, Mask, JvExExtCtrls, JvExtComponent, JvDBRadioPanel,
  DBCGrids, db;

type
  TLaudoRevM = class(TIDefBrowseEdit)
    Panel5: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel18: TPanel;
    Label40: TLabel;
    DBEdit39: TDBEdit;
    Panel69: TPanel;
    Label44: TLabel;
    DBEdit51: TDBEdit;
    Panel68: TPanel;
    Label43: TLabel;
    DBEdit54: TDBEdit;
    Panel72: TPanel;
    Label54: TLabel;
    DBEdit55: TDBEdit;
    Panel75: TPanel;
    Label56: TLabel;
    DBEdit57: TDBEdit;
    Panel4: TPanel;
    Panel15: TPanel;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Panel17: TPanel;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Panel6: TPanel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Panel7: TPanel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label15: TLabel;
    DBMemo1: TDBMemo;
    actFindLaudo: TAction;
    Panel13: TPanel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Panel14: TPanel;
    Label9: TLabel;
    DBComboBox1: TDBComboBox;
    Panel16: TPanel;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Panel8: TPanel;
    Label5: TLabel;
    DBLookupListBox1: TDBLookupListBox;
  private
    { Private declarations }
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  LaudoRevM: TLaudoRevM;

implementation

uses
  uLaudoRev, uLabTiposLaudos, iTypes, uIUtils, mcUtils;
  
{$R *.dfm}

procedure TLaudoRevM.RefreshControls;
begin
  inherited;
    if not Assigned(DataSet) then
      Exit;

  actFindLaudo.Enabled := DataSet.State in [dsEdit, dsInsert];
end;

end.
