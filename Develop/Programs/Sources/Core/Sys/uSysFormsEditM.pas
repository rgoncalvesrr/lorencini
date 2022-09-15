unit uSysFormsEditM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls, Buttons;

type
  TSysFormsEditM = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    actFindRpt: TAction;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    procedure DBEdit6Exit(Sender: TObject);
    procedure actFindRptExecute(Sender: TObject);
  private
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  SysFormsEditM: TSysFormsEditM;

implementation

uses uSysForms, mcUtils, DB, uIUtils, uIDefReport;

{$R *.dfm}

procedure TSysFormsEditM.actFindRptExecute(Sender: TObject);
begin
  inherited;
  IDefReport := TIDefReport.Create(nil);
  try
    IDefReport.ShowModal;
    if IDefReport.Execute then
      DataSet.FieldByName('report').AsInteger := IDefReport.ReportActive.ID;
    
  finally
    FreeAndNil(IDefReport);
  end;
end;

procedure TSysFormsEditM.DBEdit6Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit6.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('descri');

    if U.Data.CheckFK('sys_reports', 'report', DBEdit6.Text, fLkp) then
    begin
      DataSet.FieldByName('descri').AsString := fLkp[0];
      DataSet.FieldByName('label').AsString := fLkp[0];
    end
    else
    begin
      U.Out.ShowErro('Relatório não cadastrado.');
      DBEdit6.SetFocus;
    end;
  finally
    fLkp.Free;
  end;

end;

procedure TSysFormsEditM.RefreshControls;
begin
  inherited;
  if not Assigned(DataSet) then
    Exit;

  actFindRpt.Enabled := DataSet.State in [dsEdit, dsInsert];
end;

end.
