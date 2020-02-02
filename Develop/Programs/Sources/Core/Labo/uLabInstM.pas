unit uLabInstM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls, Buttons;

type
  TLabInstM = class(TIDefBrowseEdit)
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
    SpeedButton2: TSpeedButton;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    actFindGrupo: TAction;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    procedure DBEdit5Exit(Sender: TObject);
    procedure actFindGrupoExecute(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshControls; override;
    procedure OnDataSet; override;
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  LabInstM: TLabInstM;

implementation

uses uLabInst, uIUtils, DB, mcUtils, uLabDiagGrupo, uLabInstMCert, uLabInstMEns;

{$R *.dfm}

procedure TLabInstM.actFindGrupoExecute(Sender: TObject);
begin
  inherited;
  try
    LabDiagGrupo := TLabDiagGrupo.Create(nil);
    LabDiagGrupo.DisplayMode := dmQuery;
    LabDiagGrupo.ShowModal;
    if (LabDiagGrupo.Execute) then
    begin
      DataSet.FieldByName('labdiag_gp_recno').AsInteger :=
        LabDiagGrupo.IBrwSrcrecno.AsInteger;
      DBEdit5Exit(DBEdit5);
    end;
  finally
    FreeAndNil(LabDiagGrupo);
  end;
end;

procedure TLabInstM.DBEdit5Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit5.Text) or not (DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('descri');

    if U.Data.CheckFK('labdiag_gp', 'recno', DBEdit5.Text, fLkp) then
      DataSet.FieldByName('grupo').AsString := fLkp[0]
    else
    begin
      U.Out.ShowErro('Grupo não cadastrado.');
      DBEdit5.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TLabInstM.OnDataSet;
begin
  inherited;
  if Assigned(DataSet) and (DataSet.State in [dsEdit, dsInsert]) then
    DBEdit5Exit(DBEdit5);
    
end;

procedure TLabInstM.OnEdit;
var
  EF: TIDefBrowseEdit;
begin
  case ChildDataSet.Tag of
    1: EF := TLabInstMCert.Create(nil);
    2: EF := TLabInstMEns.Create(nil);
  else
    inherited;
    Exit;
  end;

  try
    EF.DataSet := ChildDataSet;
    EF.ShowModal;
  finally
    FreeAndNil(EF);
  end;
end;

procedure TLabInstM.RefreshControls;
begin
  inherited;
  if not Assigned(DataSet) then
    Exit;

  actFindGrupo.Enabled := DataSet.State in [dsEdit, dsInsert];
end;

end.
