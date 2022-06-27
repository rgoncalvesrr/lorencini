unit uLabAmostraAssM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  JvExMask, JvToolEdit, JvDBControls, StdCtrls, DBCtrls, Buttons, Mask,
  uLabLaudoCl, JvExStdCtrls, JvCombobox, JvDBCombobox, DBCGrids, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, uLabLaudoUI, JvExDBGrids,
  JvDBGrid, TeEngine, Series, TeeProcs, Chart, DBChart, JvExControls, JvDBLookup;

type
  TLabAmostraAssM = class(TIDefBrowseEdit)
    GroupBox6: TGroupBox;
    actFindCrit: TAction;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    actSign: TAction;
    ToolButton5: TToolButton;
    ToolButton15: TToolButton;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Panel11: TPanel;
    Panel13: TPanel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    TabSheet3: TTabSheet;
    Panel15: TPanel;
    Label22: TLabel;
    JvDBComboBox2: TJvDBComboBox;
    Panel22: TPanel;
    Panel23: TPanel;
    Label46: TLabel;
    DBEdit47: TDBEdit;
    Label47: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    Panel25: TPanel;
    Label50: TLabel;
    GroupBox2: TGroupBox;
    qHist: TZQuery;
    qHistemissao: TDateTimeField;
    qHistvalor: TFloatField;
    dsHist: TDataSource;
    JvDBGrid1: TJvDBGrid;
    DBChart1: TDBChart;
    Splitter1: TSplitter;
    Panel12: TPanel;
    Panel19: TPanel;
    Label40: TLabel;
    DBEdit39: TDBEdit;
    Panel21: TPanel;
    Label25: TLabel;
    DBEdit24: TDBEdit;
    Panel20: TPanel;
    Label24: TLabel;
    DBEdit23: TDBEdit;
    Panel32: TPanel;
    Panel33: TPanel;
    Panel34: TPanel;
    Panel35: TPanel;
    Panel24: TPanel;
    Label45: TLabel;
    JvDBComboBox1: TJvDBComboBox;
    Panel16: TPanel;
    Label48: TLabel;
    JvDBComboBox3: TJvDBComboBox;
    Panel36: TPanel;
    Panel37: TPanel;
    Panel14: TPanel;
    Label8: TLabel;
    DBEdit21: TDBEdit;
    Splitter2: TSplitter;
    Panel27: TPanel;
    GroupBox1: TGroupBox;
    Panel28: TPanel;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Panel30: TPanel;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    GroupBox3: TGroupBox;
    Panel26: TPanel;
    Label29: TLabel;
    JvDBDateEdit2: TJvDBDateEdit;
    Panel29: TPanel;
    Label30: TLabel;
    DBEdit28: TDBEdit;
    Panel38: TPanel;
    Label31: TLabel;
    DBEdit29: TDBEdit;
    Panel39: TPanel;
    Label32: TLabel;
    DBEdit30: TDBEdit;
    Panel40: TPanel;
    Label33: TLabel;
    DBEdit31: TDBEdit;
    Panel41: TPanel;
    Label34: TLabel;
    Panel42: TPanel;
    DBEdit32: TDBEdit;
    DBEdit42: TDBEdit;
    GroupBox4: TGroupBox;
    Panel43: TPanel;
    Panel44: TPanel;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Panel45: TPanel;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Panel46: TPanel;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    Panel47: TPanel;
    Label19: TLabel;
    DBEdit17: TDBEdit;
    Panel48: TPanel;
    Label38: TLabel;
    DBEdit36: TDBEdit;
    Panel49: TPanel;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Panel50: TPanel;
    Panel51: TPanel;
    Label20: TLabel;
    DBEdit19: TDBEdit;
    Panel52: TPanel;
    Label21: TLabel;
    DBEdit20: TDBEdit;
    Panel53: TPanel;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    Panel54: TPanel;
    Label17: TLabel;
    Panel57: TPanel;
    DBEdit16: TDBEdit;
    DBEdit40: TDBEdit;
    Panel55: TPanel;
    Label18: TLabel;
    Panel58: TPanel;
    DBEdit18: TDBEdit;
    DBEdit41: TDBEdit;
    Panel56: TPanel;
    Label23: TLabel;
    DBEdit22: TDBEdit;
    Panel59: TPanel;
    Label26: TLabel;
    DBEdit25: TDBEdit;
    Panel60: TPanel;
    Label27: TLabel;
    DBEdit26: TDBEdit;
    Panel61: TPanel;
    Label37: TLabel;
    DBEdit35: TDBEdit;
    Panel62: TPanel;
    Label28: TLabel;
    DBEdit27: TDBEdit;
    Panel63: TPanel;
    Panel64: TPanel;
    Label35: TLabel;
    DBEdit33: TDBEdit;
    Panel65: TPanel;
    Label36: TLabel;
    DBEdit34: TDBEdit;
    Panel66: TPanel;
    Label39: TLabel;
    DBEdit37: TDBEdit;
    Panel67: TPanel;
    Label41: TLabel;
    DBEdit38: TDBEdit;
    Panel68: TPanel;
    Label42: TLabel;
    DBEdit45: TDBEdit;
    Panel69: TPanel;
    Label49: TLabel;
    DBEdit46: TDBEdit;
    Panel31: TPanel;
    Label51: TLabel;
    DBEdit48: TDBEdit;
    Panel6: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Series1: TLineSeries;
    Panel18: TPanel;
    Label43: TLabel;
    Panel17: TPanel;
    JvDBLookupCombo1: TJvDBLookupCombo;
    JvDBLookupCombo2: TJvDBLookupCombo;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBEdit39Exit(Sender: TObject);
    procedure actFindCliFExecute(Sender: TObject);
    procedure actSignExecute(Sender: TObject);
    procedure Panel32Resize(Sender: TObject);
    procedure TabSheet1Resize(Sender: TObject);
    procedure Panel17Resize(Sender: TObject);
  private
    FLaudo: TLaudo;
    FLastRow: Integer;
    procedure MarcarLaudo;
    procedure SetLaudo(const Value: TLaudo);
    procedure RefreshControls; override;
    procedure ChangeRow(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
    procedure RefreshHist;
    procedure OnLoad; override;
  public
    { Public declarations }
    property Laudo: TLaudo read FLaudo write SetLaudo;
  end;

var
  LabAmostraAssM: TLabAmostraAssM;

implementation

uses uLabAmostraAss, uIUtils, mcUtils, uDM, uClientes, uLaudoService;

{$R *.dfm}

procedure TLabAmostraAssM.actFindCliFExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TClientes, Clientes);
  try
    Clientes.DisplayMode := dmQuery;
    Clientes.ShowModal;
    if (Clientes.Execute) then
    begin
      DataSet.FieldByName('codigo_final').AsInteger := Clientes.IBrwSrccodigo.AsInteger;
      DBEdit39Exit(DBEdit39);
    end;
  finally
    FreeAndNil(Clientes);
  end;
end;

procedure TLabAmostraAssM.actSignExecute(Sender: TObject);
begin
  inherited;

  MarcarLaudo;

  if not (DataSet.State in [dsEdit, dsInsert]) then
    DataSet.Edit;

  DataSet.FieldByName('status').AsInteger := 3;
  DataSet.Post;

  G.RefreshDataSet(DataSet);
  RefreshControls;
  DataSet.First;

  TLaudoService.ShowReportsWithIssue;
end;

procedure TLabAmostraAssM.ChangeRow(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  if FLastRow <> ARow then
  begin
    FLastRow := ARow;
    RefreshHist;
  end;
end;

procedure TLabAmostraAssM.DBEdit39Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  try
    if mcEmpty(DBEdit39.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
      Exit;

    fLkp:= TStringList.Create;
    fLkp.Add('nome_chave');
    fLkp.Add('cnpj');
    fLkp.Add('cpf');
    fLkp.Add('telefone');

    if U.Data.CheckFK('tbclientes', 'codigo', DBEdit39.Text, fLkp) then
    begin
      DataSet.FieldByName('nome_chave_final').AsString := fLkp[0];
      DataSet.FieldByName('cnpj_final').AsString := fLkp[1];
      DataSet.FieldByName('cpf_final').AsString := fLkp[2];
      DataSet.FieldByName('telefone_final').AsString := fLkp[3];
    end
    else
    begin
      U.Out.ShowErro('Cliente Final não cadastrado.');
      DBEdit39.SetFocus;
    end;
  finally
    if Assigned(fLkp) then
      FreeAndNil(fLkp);
  end;
end;

procedure TLabAmostraAssM.FormCreate(Sender: TObject);
begin
  inherited;
  LabLaudoUI := TLabLaudoUI.Create(nil);
  LabLaudoUI.Parent := GroupBox6;
  LabLaudoUI.Visible := True;
end;

procedure TLabAmostraAssM.FormDestroy(Sender: TObject);
begin
  FreeAndNil(LabLaudoUI);
  inherited;
end;

procedure TLabAmostraAssM.MarcarLaudo;
begin
  with U.Query do
  try
    SQL.Text := 'select sys_flag_mark(:tabela, cast(:registro as integer))';

    ParamByName('tabela').AsString := 'labamostras_rel';
    ParamByName('registro').AsInteger := DataSet.FieldByName('recno').AsInteger;

    ExecSQL;
  finally
    Close;
  end;
end;

procedure TLabAmostraAssM.OnLoad;
begin
  inherited;
  WindowState := wsMaximized;
end;

procedure TLabAmostraAssM.Panel17Resize(Sender: TObject);
begin
  inherited;
  Panel18.ClientWidth := Panel17.ClientWidth div 2;
end;

procedure TLabAmostraAssM.Panel32Resize(Sender: TObject);
begin
  inherited;
  Panel33.ClientWidth := Round(Panel32.ClientWidth * 0.33);
  Panel35.ClientWidth := Round(Panel32.ClientWidth * 0.33);
end;

procedure TLabAmostraAssM.RefreshControls;
begin
  inherited;
  if not Assigned(DataSet) then
    Exit;

  with DataSet do
    actSign.Enabled := not FieldByName('labcrit_recno').IsNull and
      not FieldByName('labdiag_recno').IsNull and
      not FieldByName('labrec_recno').IsNull;
end;

procedure TLabAmostraAssM.RefreshHist;
var
  e: TEnsaio;
begin
  GroupBox2.Caption := 'Histórico';
  e := FLaudo.Ensaios[FLastRow - 1];
  qHist.Close;
  DBChart1.SeriesList[0].Clear;

  if Assigned(e) and Assigned(DataSet) then
  try
    qHist.DisableControls;
    qHist.ParamByName('equip').AsInteger := DataSet.FieldByName('equip_recno').AsInteger;
    qHist.ParamByName('ensaio').AsInteger := e.Ensaio;
    qHist.ParamByName('ensaio_recno').AsInteger := e.Recno;
    qHist.ParamByName('laudo').AsInteger := FLaudo.Laudo;
    G.RefreshDataSet(qHist);
    GroupBox2.Caption := Format('Histórico do ensaio: %s', [e.Nome]);
    qHist.First;
  finally
    qHist.EnableControls;
    DBChart1.RefreshData;
  end;
end;

procedure TLabAmostraAssM.SetLaudo(const Value: TLaudo);
begin
  FLaudo := Value;
  LabLaudoUI.Ensaios := FLaudo.Ensaios;
  LabLaudoUI.sGrid.OnSelectCell := ChangeRow;
  FLastRow := 1;
  RefreshHist;
end;

procedure TLabAmostraAssM.TabSheet1Resize(Sender: TObject);
begin
  inherited;
  GroupBox2.Height := Round(GroupBox2.Parent.ClientHeight * 0.3); 
end;

end.
