unit uLabRefM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  Buttons, StdCtrls, Mask, DBCtrls, JvExMask, JvToolEdit, JvBaseEdits,
  JvDBControls;

type
  TLabRefM = class(TIDefBrowseEdit)
    actFindTipos: TAction;
    actFindEnsaios: TAction;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    SpeedButton2: TSpeedButton;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    JvDBCalcEdit1: TJvDBCalcEdit;
    DBComboBox1: TDBComboBox;
    Label7: TLabel;
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure actFindTiposExecute(Sender: TObject);
    procedure actFindEnsaiosExecute(Sender: TObject);
  private
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  LabRefM: TLabRefM;

implementation

uses uLabRef, uIUtils, DB, mcUtils, uLabTipo, uLabEnsaios;

{$R *.dfm}

procedure TLabRefM.actFindEnsaiosExecute(Sender: TObject);
begin
  LabEnsaios := TLabEnsaios.Create(nil);
  try
    LabEnsaios.DisplayMode := dmQuery;
    LabEnsaios.ShowModal;
    if (LabEnsaios.Execute) then
    begin
      DataSet.FieldByName('ensaio_recno').AsInteger :=
        LabEnsaios.IBrwSrcrecno.AsInteger;
      DBEdit1Exit(DBEdit1);
    end;
  finally
    FreeAndNil(LabEnsaios);
  end;
end;

procedure TLabRefM.actFindTiposExecute(Sender: TObject);
begin
  try
    LabTipo := TLabTipo.Create(nil);
    LabTipo.DisplayMode := dmQuery;
    LabTipo.ShowModal;
    if (LabTipo.Execute) then
    begin
      DataSet.FieldByName('tipo_recno').AsInteger :=
        LabTipo.IBrwSrcrecno.AsInteger;
      DBEdit3Exit(DBEdit3);
    end;
  finally
    FreeAndNil(LabTipo);
  end;
end;

procedure TLabRefM.DBEdit1Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  if mcEmpty(DBEdit1.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('nome');
    fLkp.Add('unidade');
    fLkp.Add('metodo');

    if U.Data.CheckFK('vensaios', 'recno', DBEdit1.Text, fLkp) then
    begin
      DataSet.FieldByName('nome').AsString := fLkp[0];
      DataSet.FieldByName('unidade').AsString := fLkp[1];
      DataSet.FieldByName('metodo').AsString := fLkp[2];
    end
    else
    begin
      U.Out.ShowErro('Ensaio não cadastrado.');
      DBEdit1.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TLabRefM.DBEdit3Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  if mcEmpty(DBEdit3.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('descri');

    if U.Data.CheckFK('labtipo', 'recno', DBEdit3.Text, fLkp) then
      DataSet.FieldByName('descri').AsString := fLkp[0]
    else
    begin
      U.Out.ShowErro('Tipo de amostra não cadastrada.');
      DBEdit3.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TLabRefM.RefreshControls;
begin
  inherited;
  if not Assigned(DataSet) then
    Exit;

  actFindTipos.Enabled := DataSet.State in [dsEdit, dsInsert];
  actFindEnsaios.Enabled := DataSet.State in [dsEdit, dsInsert];
end;

end.
