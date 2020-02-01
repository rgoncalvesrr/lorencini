unit uLabEquipCliM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  Buttons, StdCtrls, Mask, DBCtrls, JvExMask, JvToolEdit, JvDBControls;

type
  TLabEquipCliM = class(TIDefBrowseEdit)
    actFindCli: TAction;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    SpeedButton3: TSpeedButton;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    actFindEquip: TAction;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    JvDBDateEdit1: TJvDBDateEdit;
    Label14: TLabel;
    Label15: TLabel;
    dbcbSituacao: TDBComboBox;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    Label17: TLabel;
    DBEdit15: TDBEdit;
    Label19: TLabel;
    DBEdit17: TDBEdit;
    Label20: TLabel;
    DBEdit18: TDBEdit;
    SpeedButton2: TSpeedButton;
    Label21: TLabel;
    DBEdit19: TDBEdit;
    Label22: TLabel;
    DBEdit20: TDBEdit;
    Label23: TLabel;
    DBEdit21: TDBEdit;
    actFindSubest: TAction;
    DBEdit16: TDBEdit;
    Label18: TLabel;
    Label24: TLabel;
    DBEdit22: TDBEdit;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    GroupBox1: TGroupBox;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel8: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel19: TPanel;
    Panel27: TPanel;
    GroupBox2: TGroupBox;
    Panel28: TPanel;
    Panel29: TPanel;
    Panel30: TPanel;
    Panel31: TPanel;
    Panel32: TPanel;
    Panel33: TPanel;
    Panel34: TPanel;
    Panel35: TPanel;
    DBEdit23: TDBEdit;
    Panel36: TPanel;
    DBEdit24: TDBEdit;
    procedure actFindCliExecute(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure actFindEquipExecute(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit18Exit(Sender: TObject);
    procedure actFindSubestExecute(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  LabEquipCliM: TLabEquipCliM;

implementation

uses uDM, uLabEquipCli, uClientes, iTypes, uIUtils, mcUtils, DB, uLabEquip,
  uLabRegionais;

{$R *.dfm}

{ TLabEquipCliM }

procedure TLabEquipCliM.actFindCliExecute(Sender: TObject);
begin
  with DM do
  try
    Application.CreateForm(TClientes, Clientes);
    Clientes.DisplayMode := dmQuery;
    Clientes.ShowModal;
    if (Clientes.Execute) then
    begin
      DataSet.FieldByName('codigo').AsInteger := qClientescodigo.AsInteger;
      DBEdit7Exit(DBEdit7);
    end;
  finally
    FreeAndNil(Clientes);
  end;
end;

procedure TLabEquipCliM.actFindEquipExecute(Sender: TObject);
begin
  try
    Application.CreateForm(TLabEquip, LabEquip);
    LabEquip.DisplayMode := dmQuery;
    LabEquip.ShowModal;
    if (LabEquip.Execute) then
    begin
      DataSet.FieldByName('equip').AsInteger := LabEquip.IBrwSrcrecno.AsInteger;
      DBEdit1Exit(DBEdit1);
    end;
  finally
    FreeAndNil(LabEquip);
  end;
end;

procedure TLabEquipCliM.actFindSubestExecute(Sender: TObject);
begin
  try
    LabRegionais := TLabRegionais.Create(nil);
    LabRegionais.DisplayMode := dmQuery;
    LabRegionais.ShowModal;
    if (LabRegionais.Execute) then
    begin
      DataSet.FieldByName('subest').AsInteger := LabRegionais.qSubEstrecno.AsInteger;
      DBEdit18Exit(DBEdit18);
    end;
  finally
    FreeAndNil(LabRegionais);
  end;
end;

procedure TLabEquipCliM.DBEdit18Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit18.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('sigla');
    fLkp.Add('nome');
    fLkp.Add('regional');
    fLkp.Add('reg_nome');

    if U.Data.CheckFK('vsubest', 'recno', QuotedStr(DBEdit18.Text), fLkp,
      Format('codigo = %d', [DataSet.FieldByName('codigo').AsInteger])) then
    begin
      DataSet.FieldByName('sigla').AsString := fLkp[0];
      DataSet.FieldByName('subest_nome').AsString := fLkp[1];
      DataSet.FieldByName('regional').AsString := fLkp[2];
      DataSet.FieldByName('reg_nome').AsString := fLkp[3];
    end
    else
    begin
      U.Out.ShowErro('Subestação não cadastrada.');
      DBEdit18.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TLabEquipCliM.DBEdit1Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit1.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('tipo');
    fLkp.Add('fabricante');
    fLkp.Add('lote');
    fLkp.Add('ano');
    fLkp.Add('serie');
    fLkp.Add('descri');
    fLkp.Add('potencia');
    fLkp.Add('fases');
    fLkp.Add('imped');
    fLkp.Add('tensao_a');
    fLkp.Add('corr');
    fLkp.Add('isolante');
    fLkp.Add('volume');
    fLkp.Add('drenos');
    fLkp.Add('tensao_un');
    fLkp.Add('potencia_un');

    if U.Data.CheckFK('vequip', 'recno', QuotedStr(DBEdit1.Text), fLkp) then
    begin
      DataSet.FieldByName('tipo').AsString := fLkp[0];
      DataSet.FieldByName('fabricante').AsString := fLkp[1];
      DataSet.FieldByName('lote').AsString := fLkp[2];
      DataSet.FieldByName('ano').AsString := fLkp[3];
      DataSet.FieldByName('serie').AsString := fLkp[4];
      DataSet.FieldByName('descri').AsString := fLkp[5];
      DataSet.FieldByName('potencia').AsString := fLkp[6];
      DataSet.FieldByName('fases').AsString := fLkp[7];
      DataSet.FieldByName('imped').AsString := fLkp[8];
      DataSet.FieldByName('tensao').AsString := fLkp[9];
      DataSet.FieldByName('corr').AsString := fLkp[10];
      DataSet.FieldByName('isolante').AsString := fLkp[11];
      DataSet.FieldByName('volume').AsString := fLkp[12];
      DataSet.FieldByName('drenos').AsString := fLkp[13];
      DataSet.FieldByName('tensao_un').AsString := fLkp[14];
      DataSet.FieldByName('potencia_un').AsString := fLkp[15];
    end
    else
    begin
      U.Out.ShowErro('Equipamento não cadastrado.');
      DBEdit1.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TLabEquipCliM.DBEdit7Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  try
    if mcEmpty(DBEdit7.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
      Exit;

    fLkp:= TStringList.Create;
    fLkp.Add('nome_chave');
    fLkp.Add('cnpj');

    if U.Data.CheckFK('tbclientes', 'codigo', QuotedStr(DBEdit7.Text), fLkp) then
    begin
      DataSet.FieldByName('nome_chave').AsString := fLkp[0];
      DataSet.FieldByName('cnpj').AsString := fLkp[1];
    end
    else
    begin
      U.Out.ShowErro('Cliente não cadastrado.');
      DBEdit7.SetFocus;
    end;
  finally
    if Assigned(fLkp) then
      FreeAndNil(fLkp);

    if (DataSet.State in [dsEdit, dsInsert]) then
      RefreshControls;
  end;
end;

procedure TLabEquipCliM.RefreshControls;
begin
  inherited;
  DBEdit18.Enabled := False;
  
  if not Assigned(DataSet) then
    Exit;
    
  actFindCli.Enabled := DataSet.State in [dsEdit, dsInsert];
  actFindEquip.Enabled := DataSet.State in [dsEdit, dsInsert];
  actFindSubest.Enabled := (DataSet.State in [dsEdit, dsInsert])
    and not DataSet.FieldByName('codigo').IsNull;

  DBEdit18.Enabled := not DataSet.FieldByName('codigo').IsNull;

  dbcbSituacao.Enabled := DataSet.State = dsEdit;
end;

end.
