unit uSysSchedulerM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, StdCtrls, Mask, DBCtrls, Buttons, 
  uIUtils, JvExComCtrls, JvDateTimePicker, JvDBDateTimePicker, DB, JvExMask, JvToolEdit, JvDBControls;

type
  TSysSchedulerM = class(TIDefBrowseEdit)
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel8: TPanel;
    DBCheckBox1: TDBCheckBox;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel9: TPanel;
    Panel10: TPanel;
    Label3: TLabel;
    Panel11: TPanel;
    SpeedButton1: TSpeedButton;
    Panel12: TPanel;
    Label4: TLabel;
    DBEdit8: TDBEdit;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Panel13: TPanel;
    Label6: TLabel;
    Panel14: TPanel;
    Panel15: TPanel;
    Label7: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    JvDBDateEdit2: TJvDBDateEdit;
    procedure DBEdit8Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SysSchedulerM: TSysSchedulerM;

implementation

uses uSysScheduler, mcutils, DateUtils;

{$R *.dfm}

procedure TSysSchedulerM.DBEdit8Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit8.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  fLkp:= TStringList.Create;
  try
    fLkp.Add('descri');

    if U.Data.CheckFK('sys_fn', 'fn', QuotedStr(DBEdit8.Text), fLkp, 'tipo = 1') then
      DataSet.FieldByName('descri_1').AsString := fLkp[0]
    else
    begin
      U.Out.ShowErro('Rotina não localizada.');
      DBEdit8.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

end.
