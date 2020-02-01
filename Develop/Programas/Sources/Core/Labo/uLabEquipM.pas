unit uLabEquipM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls, Buttons, JvExStdCtrls, JvCombobox, JvDBCombobox,
  uIUtils, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls;

type
  TLabEquipM = class(TIDefBrowseEdit)
    Label4: TLabel;
    DBEdit4: TDBEdit;
    SpeedButton2: TSpeedButton;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    actFindFabri: TAction;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    SpeedButton1: TSpeedButton;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    actFindIso: TAction;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    DBEdit13: TDBEdit;
    Label2: TLabel;
    SpeedButton3: TSpeedButton;
    DBEdit17: TDBEdit;
    Label14: TLabel;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    actFindTipo: TAction;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    SpeedButton4: TSpeedButton;
    DBEdit20: TDBEdit;
    Label20: TLabel;
    actFindFam: TAction;
    GroupBox1: TGroupBox;
    Label13: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    JvDBCalcEdit1: TJvDBCalcEdit;
    JvDBCalcEdit2: TJvDBCalcEdit;
    JvDBCalcEdit3: TJvDBCalcEdit;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label17: TLabel;
    JvDBCalcEdit4: TJvDBCalcEdit;
    JvDBCalcEdit5: TJvDBCalcEdit;
    JvDBCalcEdit6: TJvDBCalcEdit;
    GroupBox3: TGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    JvDBCalcEdit7: TJvDBCalcEdit;
    JvDBCalcEdit8: TJvDBCalcEdit;
    JvDBCalcEdit9: TJvDBCalcEdit;
    GroupBox4: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    JvDBCalcEdit10: TJvDBCalcEdit;
    JvDBCalcEdit11: TJvDBCalcEdit;
    JvDBCalcEdit12: TJvDBCalcEdit;
    Label29: TLabel;
    DBEdit10: TDBEdit;
    Label30: TLabel;
    DBEdit11: TDBEdit;
    procedure actFindFabriExecute(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure actFindIsoExecute(Sender: TObject);
    procedure JvDBComboBox1Change(Sender: TObject);
    procedure DBEdit17Exit(Sender: TObject);
    procedure actFindTipoExecute(Sender: TObject);
    procedure DBEdit19Exit(Sender: TObject);
    procedure actFindFamExecute(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  LabEquipM: TLabEquipM;

implementation

uses uLabEquip, uLabFabricantes, mcUtils, DB, uLabIsolantes, uLabEquipTipo,
  uLabEquipFam, uResources;

{$R *.dfm}

procedure TLabEquipM.actFindFabriExecute(Sender: TObject);
begin
  try
    LabFabricantes := TLabFabricantes.Create(Application);
    LabFabricantes.DisplayMode := dmQuery;
    LabFabricantes.ShowModal;
    if (LabFabricantes.Execute) then
    begin
      DataSet.FieldByName('fabricante').AsInteger := LabFabricantes.IBrwSrcrecno.AsInteger;
      DBEdit4Exit(DBEdit4);
    end;
  finally
    FreeAndNil(LabFabricantes);
  end;

end;

procedure TLabEquipM.actFindFamExecute(Sender: TObject);
begin
  try
    LabEquipFam := TLabEquipFam.Create(nil);
    LabEquipFam.DisplayMode := dmQuery;
    LabEquipFam.ShowModal;
    if (LabEquipFam.Execute) then
    begin
      DataSet.FieldByName('familia').AsInteger := LabEquipFam.IBrwSrcrecno.AsInteger;
      DBEdit19Exit(DBEdit19);
    end;
  finally
    FreeAndNil(LabEquipFam);
  end;
end;

procedure TLabEquipM.actFindIsoExecute(Sender: TObject);
begin
  try
    LabIsolantes := TLabIsolantes.Create(Application);
    LabIsolantes.DisplayMode := dmQuery;
    LabIsolantes.ShowModal;
    if (LabIsolantes.Execute) then
    begin
      DataSet.FieldByName('isolante').AsInteger := LabIsolantes.IBrwSrcrecno.AsInteger;
      DBEdit2Exit(DBEdit2);
    end;
  finally
    FreeAndNil(LabIsolantes);
  end;
end;

procedure TLabEquipM.actFindTipoExecute(Sender: TObject);
begin
  try
    LabEquipTipo := TLabEquipTipo.Create(nil);
    LabEquipTipo.DisplayMode := dmQuery;
    LabEquipTipo.ShowModal;
    if (LabEquipTipo.Execute) then
    begin
      DataSet.FieldByName('tipo').AsInteger := LabEquipTipo.IBrwSrctipo.AsInteger;
      DBEdit17Exit(DBEdit17);
    end;
  finally
    FreeAndNil(LabEquipTipo);
  end;

end;

procedure TLabEquipM.DBEdit17Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit17.Text) or not (DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('descri');
    fLkp.Add('sigla');

    if U.Data.CheckFK('labequip_tipo', 'tipo', DBEdit17.Text, fLkp) then
    begin
      DataSet.FieldByName('descri_1').AsString := fLkp[0];
      DataSet.FieldByName('sigla').AsString := fLkp[1];
    end
    else
    begin
      U.Out.ShowErro('Tipo de equipamento não cadastrado.');
      DBEdit17.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TLabEquipM.DBEdit19Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit19.Text) or not (DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('descri');

    if U.Data.CheckFK('labfamilia', 'recno', DBEdit19.Text, fLkp) then
      DataSet.FieldByName('familia_desc').AsString := fLkp[0]
    else
    begin
      U.Out.ShowErro('Família de equipamentos não cadastrada.');
      DBEdit19.SetFocus;
    end;
  finally
    fLkp.Free;
  end;end;

procedure TLabEquipM.DBEdit2Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit2.Text) or not (DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('nome');

    if U.Data.CheckFK('labisolante', 'recno', DBEdit2.Text, fLkp) then
      DataSet.FieldByName('isolante_1').AsString := fLkp[0]
    else
    begin
      U.Out.ShowErro('Isolante não cadastrado.');
      DBEdit2.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TLabEquipM.DBEdit4Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit4.Text) or not (DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('nome');

    if U.Data.CheckFK('labfabri', 'recno', DBEdit4.Text, fLkp) then
      DataSet.FieldByName('fabricante_1').AsString := fLkp[0]
    else
    begin
      U.Out.ShowErro('Fabricante não cadastrado.');
      DBEdit4.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TLabEquipM.JvDBComboBox1Change(Sender: TObject);
begin
  inherited;
  DBEdit7.Enabled := DataSet.FieldByName('tipo').AsInteger <> 4; // Lote de Fabricação
  DBEdit15.Enabled := DataSet.FieldByName('tipo').AsInteger <> 5; // Fases
end;

procedure TLabEquipM.RefreshControls;
begin
  inherited;
  if not Assigned(DataSet) then
    Exit;
    
  actFindFabri.Enabled := DataSet.State in [dsEdit, dsInsert];
  actFindIso.Enabled := DataSet.State in [dsEdit, dsInsert];
  actFindTipo.Enabled := DataSet.State in [dsEdit, dsInsert];
  actFindFam.Enabled := DataSet.State in [dsEdit, dsInsert];
end;

end.
