unit uLabTiposLaudosMCrit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, DBCtrls, Mask, Buttons;

type
  TLabTiposLaudosMCrit = class(TIDefBrowseEdit)
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Bevel6: TBevel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    actFindCrit: TAction;
    procedure DBEdit1Exit(Sender: TObject);
    procedure actFindCritExecute(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  LabTiposLaudosMCrit: TLabTiposLaudosMCrit;

implementation

uses uLabTiposLaudos, uIUtils, mcUtils, DB, uLabCrit;

{$R *.dfm}

procedure TLabTiposLaudosMCrit.actFindCritExecute(Sender: TObject);
begin
  inherited;
  try
    LabCrit := TLabCrit.Create(nil);
    LabCrit.DisplayMode := dmQuery;
    LabCrit.ShowModal;
    if (LabCrit.Execute) then
    begin
      DataSet.FieldByName('labcrit_recno').AsInteger := LabCrit.IBrwSrcrecno.AsInteger;
      DBEdit1Exit(DBEdit1);
    end;
  finally
    FreeAndNil(LabCrit);
  end;
end;

procedure TLabTiposLaudosMCrit.DBEdit1Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit1.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('descri');

    if U.Data.CheckFK('labcrit', 'recno', DBEdit1.Text, fLkp) then
      DataSet.FieldByName('descri').AsString := fLkp[0]
    else
    begin
      U.Out.ShowErro('Criticidade não cadastrada.');
      DBEdit1.SetFocus;
    end;
  finally
    FreeAndNil(fLkp);
  end;
end;

procedure TLabTiposLaudosMCrit.RefreshControls;
begin
  inherited;
  if not Assigned(DataSet) then
    Exit;

  actFindCrit.Enabled := DataSet.State in [dsEdit, dsInsert];
end;

end.
