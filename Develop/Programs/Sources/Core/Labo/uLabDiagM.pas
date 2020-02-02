unit uLabDiagM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, DBCtrls, Mask, Buttons;

type
  TLabDiagM = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBMemo1: TDBMemo;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    SpeedButton2: TSpeedButton;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    actFindGrupo: TAction;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    procedure DBEdit4Exit(Sender: TObject);
    procedure actFindGrupoExecute(Sender: TObject);
  private
    { Private declarations }
    procedure OnEdit; override;
  public
    { Public declarations }
    procedure RefreshControls; override;
  end;

var
  LabDiagM: TLabDiagM;

implementation

uses uLabDiag, mcUtils, uIUtils, DB, uLabDiagGrupo, uLabDiagMRel, uLabDiagMRec;

{$R *.dfm}

procedure TLabDiagM.actFindGrupoExecute(Sender: TObject);
begin
  try
    LabDiagGrupo := TLabDiagGrupo.Create(nil);
    LabDiagGrupo.DisplayMode := dmQuery;
    LabDiagGrupo.ShowModal;
    if (LabDiagGrupo.Execute) then
    begin
      DataSet.FieldByName('labdiag_gp_recno').AsInteger :=
        LabDiagGrupo.IBrwSrcrecno.AsInteger;
      DBEdit4Exit(DBEdit4);
    end;
  finally
    FreeAndNil(LabDiagGrupo);
  end;
end;

procedure TLabDiagM.DBEdit4Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit4.Text) or not (DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('descri');

    if U.Data.CheckFK('labdiag_gp', 'recno', DBEdit4.Text, fLkp) then
      DataSet.FieldByName('grupo').AsString := fLkp[0]
    else
    begin
      U.Out.ShowErro('Grupo de diagnósticos não cadastrado.');
      DBEdit4.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TLabDiagM.OnEdit;
var
  xForm: TIDefBrowseEdit;
begin
  case ChildDataSet.Tag of
    1: xForm := TLabDiagMRel.Create(nil);
    2: xForm := TLabDiagMRec.Create(nil);
  end;

  try
    xForm.DataSet := ChildDataSet;
    xForm.ShowModal;
  finally
    FreeAndNil(xForm);
  end;
end;

procedure TLabDiagM.RefreshControls;
begin
  inherited;

  if not Assigned(DataSet) then
    Exit;

  actFindGrupo.Enabled := DataSet.State in [dsEdit, dsInsert];
end;

end.
