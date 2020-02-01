unit uFichaFinM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  Buttons, StdCtrls, Mask, DBCtrls, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit, JvBaseEdits,
  JvDBControls;

type
  TFichaFinM = class(TIDefBrowseEdit)
    Panel2: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel5: TPanel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Panel7: TPanel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Panel8: TPanel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Panel9: TPanel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Panel6: TPanel;
    Panel10: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel11: TPanel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Panel13: TPanel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Panel14: TPanel;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Bevel6: TBevel;
    GroupBox1: TGroupBox;
    Panel12: TPanel;
    Panel16: TPanel;
    Panel15: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Label5: TLabel;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    JvDBCalcEdit1: TJvDBCalcEdit;
    Label14: TLabel;
    DBMemo1: TDBMemo;
    JvDBDateEdit1: TJvDBDateEdit;
    Panel19: TPanel;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    Panel20: TPanel;
    Label16: TLabel;
    DBEdit13: TDBEdit;
  private
    { Private declarations }
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  FichaFinM: TFichaFinM;

implementation

uses uFichaFin;

{$R *.dfm}

{ TFichaFinM }

procedure TFichaFinM.RefreshControls;
begin
  inherited;

  if not Assigned(DataSet) then
    Exit;

  actEditMaster.Enabled := DataSet.FieldByName('editavel').AsBoolean;
  actDelMaster.Enabled := DataSet.FieldByName('editavel').AsBoolean and
    DataSet.FieldByName('cobranca').IsNull;
end;

end.
