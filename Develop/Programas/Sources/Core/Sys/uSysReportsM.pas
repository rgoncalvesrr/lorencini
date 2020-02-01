unit uSysReportsM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls, Buttons;

type
  TSysReportsM = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    SpeedButton1: TSpeedButton;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    actFindForm: TAction;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure DBEdit6Exit(Sender: TObject);
    procedure actFindFormExecute(Sender: TObject);
  private
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  SysReportsM: TSysReportsM;

implementation

uses uDM, uIUtils, uSysForms, mcUtils, DB;

{$R *.dfm}

procedure TSysReportsM.actFindFormExecute(Sender: TObject);
begin
  try
    SysForms := TSysForms.Create(nil);
    SysForms.DisplayMode := dmQuery;
    SysForms.ShowModal;
    if (SysForms.Execute) then
    begin
      DataSet.FieldByName('form').AsString :=
        SysForms.IBrwSrcform.AsString;
      DBEdit6Exit(DBEdit6);
    end;
  finally
    FreeAndNil(SysForms);
  end;

end;

procedure TSysReportsM.DBEdit6Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit6.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('descri');

    if U.Data.CheckFK('sys_forms', 'form', QuotedStr(DBEdit6.Text), fLkp) then
      DataSet.FieldByName('descri').AsString := fLkp[0]
    else
    begin
      U.Out.ShowErro('Formulário não cadastrado.');
      DBEdit6.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TSysReportsM.RefreshControls;
begin
  inherited;
  if not Assigned(DataSet) then
    Exit;

  actFindForm.Enabled := DataSet.State in [dsEdit, dsInsert];
end;

end.
