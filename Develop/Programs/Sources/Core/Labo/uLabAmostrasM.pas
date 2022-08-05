unit uLabAmostrasM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls, Buttons, JvExMask, JvToolEdit, JvDBControls,
  uIFrameCliente, DB, JvExStdCtrls, JvCombobox, JvDBCombobox;

type
  TLabAmostrasM = class(TIDefBrowseEdit)
    Label2: TLabel;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    SpeedButton1: TSpeedButton;
    Label11: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label12: TLabel;
    GroupBox2: TGroupBox;
    Label24: TLabel;
    DBEdit23: TDBEdit;
    SpeedButton2: TSpeedButton;
    Label25: TLabel;
    DBEdit24: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    GroupBox3: TGroupBox;
    JvDBDateEdit1: TJvDBDateEdit;
    Label29: TLabel;
    Label30: TLabel;
    DBEdit28: TDBEdit;
    Label31: TLabel;
    DBEdit29: TDBEdit;
    Label32: TLabel;
    DBEdit30: TDBEdit;
    Label33: TLabel;
    DBEdit31: TDBEdit;
    Label34: TLabel;
    DBEdit32: TDBEdit;
    actFindTipo: TAction;
    actFindProd: TAction;
    Label26: TLabel;
    DBEdit25: TDBEdit;
    SpeedButton3: TSpeedButton;
    DBEdit26: TDBEdit;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit27: TDBEdit;
    DBEdit33: TDBEdit;
    Label35: TLabel;
    DBEdit34: TDBEdit;
    Label36: TLabel;
    actFindSubEst: TAction;
    Label38: TLabel;
    Label39: TLabel;
    DBEdit37: TDBEdit;
    actFindCliCont: TAction;
    Label42: TLabel;
    DBEdit38: TDBEdit;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel12: TPanel;
    DBEdit2: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    Panel13: TPanel;
    Panel16: TPanel;
    Panel27: TPanel;
    Panel28: TPanel;
    Panel29: TPanel;
    Panel30: TPanel;
    Panel31: TPanel;
    Panel32: TPanel;
    Panel33: TPanel;
    Panel34: TPanel;
    Panel35: TPanel;
    Panel36: TPanel;
    Panel37: TPanel;
    Panel38: TPanel;
    Panel39: TPanel;
    Panel40: TPanel;
    Panel41: TPanel;
    Panel42: TPanel;
    Panel43: TPanel;
    Panel44: TPanel;
    Panel45: TPanel;
    DBEdit10: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit11: TDBEdit;
    Panel46: TPanel;
    Panel47: TPanel;
    Label20: TLabel;
    DBEdit19: TDBEdit;
    Panel48: TPanel;
    Panel49: TPanel;
    Panel50: TPanel;
    Panel51: TPanel;
    Panel52: TPanel;
    Panel53: TPanel;
    Panel54: TPanel;
    Panel55: TPanel;
    Label21: TLabel;
    DBEdit20: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    Label23: TLabel;
    DBEdit22: TDBEdit;
    Label17: TLabel;
    DBEdit16: TDBEdit;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    Panel56: TPanel;
    Label37: TLabel;
    DBEdit35: TDBEdit;
    Label22: TLabel;
    DBEdit21: TDBEdit;
    Panel57: TPanel;
    DBEdit40: TDBEdit;
    Panel58: TPanel;
    DBEdit41: TDBEdit;
    Panel59: TPanel;
    Panel60: TPanel;
    Panel61: TPanel;
    Panel62: TPanel;
    Panel63: TPanel;
    Panel64: TPanel;
    Panel65: TPanel;
    Panel66: TPanel;
    Panel67: TPanel;
    DBEdit42: TDBEdit;
    Panel73: TPanel;
    Label55: TLabel;
    DBEdit56: TDBEdit;
    Panel74: TPanel;
    Panel78: TPanel;
    Label59: TLabel;
    DBEdit60: TDBEdit;
    Panel80: TPanel;
    Label61: TLabel;
    DBEdit62: TDBEdit;
    GroupBox4: TGroupBox;
    Bevel2: TBevel;
    Panel5: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    TabSheet2: TTabSheet;
    FrameCliente1: TFrameCliente;
    GroupBox5: TGroupBox;
    Panel11: TPanel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Panel14: TPanel;
    Panel15: TPanel;
    Label40: TLabel;
    DBEdit39: TDBEdit;
    Panel17: TPanel;
    Label41: TLabel;
    DBEdit43: TDBEdit;
    Panel19: TPanel;
    Label44: TLabel;
    DBEdit44: TDBEdit;
    Panel20: TPanel;
    Label45: TLabel;
    DBEdit45: TDBEdit;
    dsAmostra: TDataSource;
    JvDBComboBox1: TJvDBComboBox;
    Panel18: TPanel;
    Label43: TLabel;
    DBEdit46: TDBEdit;
    procedure DBEdit23Exit(Sender: TObject);
    procedure actFindTipoExecute(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure actFindProdExecute(Sender: TObject);
    procedure DBEdit25Exit(Sender: TObject);
    procedure actFindSubEstExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FrameCliente1actFindCliExecute(Sender: TObject);
    procedure FrameCliente1DBEdit8Exit(Sender: TObject);
    procedure FrameCliente1SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshLookupFilter;
    procedure RefreshControls; override;
    procedure OnLoad; override;
    procedure OnDataSet; override;
  public
    { Public declarations }
  end;

var
  LabAmostrasM: TLabAmostrasM;

implementation

uses uLabAmostras, uIUtils, mcUtils, uLabTipo, uLabEquip, uLabRegionais, uDM, iTypes, uContatoF;

{$R *.dfm}

procedure TLabAmostrasM.actFindProdExecute(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TLabEquip, LabEquip);
    LabEquip.DisplayMode := dmQuery;
    LabEquip.ShowModal;
    if (LabEquip.Execute) then
    begin
      DataSet.FieldByName('equip_recno').AsInteger :=
        LabEquip.IBrwSrcrecno.AsInteger;
      DBEdit9Exit(DBEdit9);
    end;
  finally
    FreeAndNil(LabEquip);
  end;
end;

procedure TLabAmostrasM.actFindSubEstExecute(Sender: TObject);
begin
  try
    LabRegionais := TLabRegionais.Create(nil);
    LabRegionais.DisplayMode := dmQuery;
    LabRegionais.Cliente := DataSet.FieldByName('codigo').AsInteger;
    
    if not DataSet.FieldByName('regional').IsNull then
    begin
      LabRegionais.IBrwSrc.Locate('recno', DataSet.FieldByName('regional').AsInteger, []);
      LabRegionais.qSubEst.Locate('recno', DataSet.FieldByName('labsubest_recno').AsInteger, []);
    end;

    LabRegionais.ShowModal;
    if (LabRegionais.Execute) then
    begin
      DataSet.FieldByName('labsubest_recno').AsInteger :=
        LabRegionais.qSubEstrecno.AsInteger;
      DBEdit25Exit(DBEdit25);
    end;
  finally
    FreeAndNil(LabRegionais);
  end;
end;

procedure TLabAmostrasM.actFindTipoExecute(Sender: TObject);
begin
  inherited;
  try
    LabTipo := TLabTipo.Create(nil);
    LabTipo.DisplayMode := dmQuery;
    LabTipo.ShowModal;
    if (LabTipo.Execute) then
    begin
      DataSet.FieldByName('tpamostra_recno').AsInteger :=
        LabTipo.IBrwSrcrecno.AsInteger;
      DBEdit23Exit(DBEdit23);
    end;
  finally
    FreeAndNil(LabTipo);
  end;
end;

procedure TLabAmostrasM.DBEdit23Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  if mcEmpty(DBEdit23.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('descri');

    if U.Data.CheckFK('labtipo', 'recno', DBEdit23.Text, fLkp) then
      DataSet.FieldByName('descri_1').AsString := fLkp[0]
    else
    begin
      U.Out.ShowErro('Tipo de amostra não cadastrado.');
      DBEdit23.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TLabAmostrasM.DBEdit25Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit25.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('sigla');
    fLkp.Add('nome');
    fLkp.Add('regional');
    fLkp.Add('reg_nome');

    if U.Data.CheckFK('vsubest', 'recno', DBEdit25.Text, fLkp,
      Format('codigo = %d', [DataSet.FieldByName('codigo').AsInteger])) then
    begin
      DataSet.FieldByName('sigla').AsString := fLkp[0];
      DataSet.FieldByName('nome').AsString := fLkp[1];
      DataSet.FieldByName('regional').AsString := fLkp[2];
      DataSet.FieldByName('reg_nome').AsString := fLkp[3];
    end
    else
    begin
      U.Out.ShowErro('Subestação não cadastrada.');
      DBEdit25.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TLabAmostrasM.DBEdit9Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit9.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
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
    fLkp.Add('isolante');
    fLkp.Add('volume');
    fLkp.Add('drenos');
    fLkp.Add('familia');
    fLkp.Add('tensao_un');
    fLkp.Add('potencia_un');

    if U.Data.CheckFK('vequip', 'recno', DBEdit9.Text, fLkp) then
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
      DataSet.FieldByName('tensao_1').AsString := fLkp[9];
      DataSet.FieldByName('isolante').AsString := fLkp[10];
      DataSet.FieldByName('volume').AsString := fLkp[11];
      DataSet.FieldByName('drenos').AsString := fLkp[12];
      DataSet.FieldByName('familia').AsString := fLkp[13];
      DataSet.FieldByName('tensao_un').AsString := fLkp[14];
      DataSet.FieldByName('potencia_un').AsString := fLkp[15];
    end
    else
    begin
      U.Out.ShowErro('Equipamento não cadastrado.');
      DBEdit9.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TLabAmostrasM.FormCreate(Sender: TObject);
begin
  inherited;
  AllowInsert := False;
  AllowDelete := False;
end;

procedure TLabAmostrasM.FrameCliente1actFindCliExecute(Sender: TObject);
begin
  inherited;
  RefreshLookupFilter;  
end;

procedure TLabAmostrasM.FrameCliente1DBEdit8Exit(Sender: TObject);
begin
  inherited;
  RefreshLookupFilter;
end;

procedure TLabAmostrasM.FrameCliente1SpeedButton1Click(Sender: TObject);
begin
  inherited;
  FrameCliente1.actFindCliExecute(Sender);

end;

procedure TLabAmostrasM.OnDataSet;
begin
  inherited;
  dsAmostra.DataSet := DataSet;
  FrameCliente1.dsCliente.DataSet := DataSet;
end;

procedure TLabAmostrasM.OnLoad;
begin
  inherited;
  WindowState := wsMaximized;
end;

procedure TLabAmostrasM.RefreshControls;
begin
  inherited;
  if not Assigned(DataSet) then
    Exit;

  actFindTipo.Enabled := DataSet.State in [dsEdit, dsInsert];
  actFindProd.Enabled := DataSet.State in [dsEdit, dsInsert];
  actFindSubEst.Enabled := DataSet.State in [dsEdit, dsInsert];
  actFindCliCont.Enabled := DataSet.State in [dsEdit, dsInsert];
  FrameCliente1.actFindCli.Enabled := DataSet.State in [dsEdit, dsInsert];
end;

procedure TLabAmostrasM.RefreshLookupFilter;
var
  sin: string;
begin
  inherited;

  { TODO -oRicardo -cLaboratório : Revisar relacionamento entre a amostra e o cadastro de clientes }
//  with DM.qClientesFinais do
//  try
//    DisableControls;
//    ParamByName('codigo').AsInteger := DataSet.FieldByName('codigo').AsInteger;
//    G.RefreshDataSet(DM.qClientesFinais);
//
//    First;
//    while not Eof do
//    begin
//      sin := sin + FieldByName('cliente').AsString;
//
//      Next;
//
//      if not Eof then
//        sin := sin + ',';
//    end;
//  finally
//    EnableControls;
//  end;
end;

end.
