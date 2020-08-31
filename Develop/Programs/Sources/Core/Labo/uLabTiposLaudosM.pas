unit uLabTiposLaudosM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, StdCtrls, DBCtrls, Mask, ActnList, Grids, DBGrids,
  ComCtrls, ExtCtrls, ToolWin, Buttons, JvExMask, JvToolEdit, JvDBControls;

type
  TLabTiposLaudosM = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    actFindServ: TAction;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel12: TPanel;
    Label6: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    Panel9: TPanel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
  private
    procedure OnEdit; override;
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  LabTiposLaudosM: TLabTiposLaudosM;

implementation

uses uLabTiposLaudos, uLabTiposLaudosMEnsaios, uIUtils, mcUtils, DB, uServicos,
  uDM, uLabTiposLaudosMCrit, uLabTiposLaudosMDiag;

{$R *.dfm}

{ TLabTiposLaudosM }

procedure TLabTiposLaudosM.OnEdit;
var
  refForm: TIDefBrowseEdit;
begin
  refForm := nil;

  case ChildDataSet.Tag of
    1: refForm := TLabTiposLaudosMEnsaios.Create(nil);
    2: refForm := TLabTiposLaudosMDiag.Create(nil);
    3: refForm := TLabTiposLaudosMCrit.Create(nil);
  else
    inherited;
    Exit;
  end;

  try
    refForm.DataSet := ChildDataSet;
    refForm.ShowModal;
  finally
    FreeAndNil(refForm);
  end;
end;

procedure TLabTiposLaudosM.RefreshControls;
begin
  inherited;
  if not Assigned(DataSet) then
    Exit;

  actFindServ.Enabled := DataSet.State in [dsEdit, dsInsert];
end;

end.
