unit uLabDiagMRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, StdCtrls, DBCtrls, Buttons, Mask, ActnList, Grids,
  DBGrids, ComCtrls, ExtCtrls, ToolWin;

type
  TLabDiagMRel = class(TIDefBrowseEdit)
    Label3: TLabel;
    DBEdit3: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBCheckBox1: TDBCheckBox;
    Bevel6: TBevel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    actFindLaudo: TAction;
    procedure DBEdit3Exit(Sender: TObject);
    procedure actFindLaudoExecute(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  LabDiagMRel: TLabDiagMRel;

implementation

uses uLabDiag, uIUtils, mcUtils, DB, uLabTiposLaudos;

{$R *.dfm}

procedure TLabDiagMRel.actFindLaudoExecute(Sender: TObject);
begin
  inherited;
  try
    LabTiposLaudos := TLabTiposLaudos.Create(nil);
    LabTiposLaudos.DisplayMode := dmQuery;
    LabTiposLaudos.ShowModal;
    if (LabTiposLaudos.Execute) then
    begin
      DataSet.FieldByName('relato_recno').AsInteger := LabTiposLaudos.IBrwSrcrecno.AsInteger;
      DBEdit3Exit(DBEdit3);
    end;
  finally
    FreeAndNil(LabTiposLaudos);
  end;
end;

procedure TLabDiagMRel.DBEdit3Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit3.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('descri');
    fLkp.Add('ativo');

    if U.Data.CheckFK('labrel', 'recno', DBEdit3.Text, fLkp) then
    begin
      DataSet.FieldByName('descri').AsString := fLkp[0];
      DataSet.FieldByName('ativo').AsString := fLkp[1];
    end
    else
    begin
      U.Out.ShowErro('Tipo de laudo não cadastrado.');
      DBEdit3.SetFocus;
    end;
  finally
    FreeAndNil(fLkp);
  end;
end;

procedure TLabDiagMRel.RefreshControls;
begin
  inherited;
  if not Assigned(DataSet) then
    Exit;

  actFindLaudo.Enabled := DataSet.State in [dsEdit, dsInsert];
end;

end.
