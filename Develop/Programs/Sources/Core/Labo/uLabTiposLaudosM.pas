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
    Label3: TLabel;
    DBEdit3: TDBEdit;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    DBEdit4: TDBEdit;
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
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Label6: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    procedure DBEdit3Exit(Sender: TObject);
    procedure actFindServExecute(Sender: TObject);
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

procedure TLabTiposLaudosM.actFindServExecute(Sender: TObject);
begin
  try
    Application.CreateForm(TServicos, Servicos);
    Servicos.DisplayMode := dmQuery;
    Servicos.ShowModal;
    if (Servicos.Execute) then
    begin
      DataSet.FieldByName('codserv').AsInteger := DM.qNatucodserv.AsInteger;
      DBEdit3Exit(DBEdit3);
    end;
  finally
    FreeAndNil(Servicos);
  end;
end;

procedure TLabTiposLaudosM.DBEdit3Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit3.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('descri');

    if U.Data.CheckFK('servicos', 'codserv', DBEdit3.Text, fLkp) then
      DataSet.FieldByName('descri_1').AsString := fLkp[0]
    else
    begin
      U.Out.ShowErro('Serviços não cadastrado.');
      DBEdit3.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

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
