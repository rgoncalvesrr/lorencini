unit uLabCalcMVar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  Buttons, StdCtrls, Mask, DBCtrls;

type
  TLabCalcMVar = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Bevel6: TBevel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    SpeedButton2: TSpeedButton;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    actFindEns: TAction;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    procedure DBEdit6Exit(Sender: TObject);
    procedure actFindEnsExecute(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  LabCalcMVar: TLabCalcMVar;

implementation

uses uLabCalc, uIUtils, DB, mcUtils, uLabEnsaios;

{$R *.dfm}

procedure TLabCalcMVar.actFindEnsExecute(Sender: TObject);
begin
  inherited;
  LabEnsaios := TLabEnsaios.Create(nil);
  try
    LabEnsaios.DisplayMode := dmQuery;
    LabEnsaios.ShowModal;
    if (LabEnsaios.Execute) then
    begin
      DataSet.FieldByName('ensaio_recno').AsInteger :=
        LabEnsaios.IBrwSrcrecno.AsInteger;
      DBEdit6Exit(DBEdit6);
    end;
  finally
    FreeAndNil(LabEnsaios);
  end;
end;

procedure TLabCalcMVar.DBEdit6Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit6.Text) or not (DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('nome');
    fLkp.Add('unidade');
    fLkp.Add('metodo');

    if U.Data.CheckFK('vensaios', 'recno', DBEdit6.Text, fLkp) then
    begin
      DataSet.FieldByName('nome').AsString := fLkp[0];
      DataSet.FieldByName('unidade').AsString := fLkp[1];
      DataSet.FieldByName('metodo').AsString := fLkp[2];
    end
    else
    begin
      U.Out.ShowErro('Ensaio não cadastrado.');
      DBEdit6.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TLabCalcMVar.RefreshControls;
begin
  inherited;
  actFindEns.Enabled := Assigned(DataSet) and
    (DataSet.State in [dsEdit, dsInsert]);
end;

end.
