unit uLabEquipTipoMClasse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls, Buttons;

type
  TLabEquipTipoMClasse = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Bevel6: TBevel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    SpeedButton3: TSpeedButton;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    actFindClasse: TAction;
    procedure DBEdit7Exit(Sender: TObject);
    procedure actFindClasseExecute(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  LabEquipTipoMClasse: TLabEquipTipoMClasse;

implementation

uses uIUtils, mcUtils, DB, uLabTensao, uLabEquipTipo;

{$R *.dfm}

procedure TLabEquipTipoMClasse.actFindClasseExecute(Sender: TObject);
begin
  inherited;
  try
    LabTensao := TLabTensao.Create(nil);
    LabTensao.DisplayMode := dmQuery;
    LabTensao.ShowModal;
    if (LabTensao.Execute) then
    begin
      DataSet.FieldByName('classe').AsString :=
        LabTensao.IBrwSrcclasse.AsString;
      DBEdit7Exit(DBEdit7);
    end;
  finally
    FreeAndNil(LabTensao);
  end;
end;

procedure TLabEquipTipoMClasse.DBEdit7Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  if mcEmpty(DBEdit7.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('min');
    fLkp.Add('max');

    if U.Data.CheckFK('labtensao', 'classe', QuotedStr(DBEdit7.Text), fLkp) then
    begin
      DataSet.FieldByName('min').AsString := fLkp[0];
      DataSet.FieldByName('max').AsString := fLkp[1];
    end
    else
    begin
      U.Out.ShowErro('Classe de tensão não cadastrada.');
      DBEdit7.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TLabEquipTipoMClasse.RefreshControls;
begin
  inherited;
  if not Assigned(DataSet) then
    Exit;

  actFindClasse.Enabled := DataSet.State in [dsEdit, dsInsert];
end;

end.
