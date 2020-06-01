unit uNFSM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit, StdCtrls, Mask, DBCtrls, Buttons, DB, ZDataSet,
  JvExStdCtrls, JvCombobox, JvDBCombobox;

type
  TNFSM = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label7: TLabel;
    DBEdit3: TDBEdit;
    SpeedButton2: TSpeedButton;
    DBEdit5: TDBEdit;
    JvDBDatePickerEdit2: TJvDBDatePickerEdit;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    JvDBDatePickerEdit1: TJvDBDatePickerEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit7: TDBEdit;
    SpeedButton3: TSpeedButton;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label18: TLabel;
    DBEdit17: TDBEdit;
    Label19: TLabel;
    DBEdit18: TDBEdit;
    GroupBox1: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit6: TDBEdit;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    Label20: TLabel;
    DBComboBox1: TDBComboBox;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    actLocSerie: TAction;
    actLocCliente: TAction;
    actlocNatureza: TAction;
    DBEdit19: TDBEdit;
    Label21: TLabel;
    Label22: TLabel;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    Label23: TLabel;
    Label24: TLabel;
    DBMemo1: TDBMemo;
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actLocSerieExecute(Sender: TObject);
    procedure actLocClienteExecute(Sender: TObject);
    procedure actlocNaturezaExecute(Sender: TObject);
  private
    procedure AfterInsert(Sender: TObject; DataSet: TZQuery);
    procedure RefreshControls; override;
    procedure RefreshNFCab(Sender: TObject; ADataSet: TZQuery);
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  NFSM: TNFSM;

implementation

uses uNFS, uIUtils, mcUtils, uFinNaturezas, uNFSSerie, uClientes, uDM,
  uNFSMItens;

{$R *.dfm}

procedure TNFSM.actLocClienteExecute(Sender: TObject);
begin
  inherited;
  Clientes := TClientes.Create(Application);
  try
    Clientes.DisplayMode := dmQuery;
    Clientes.ShowModal;
    if (Clientes.Execute) then
    begin
      DataSet.FieldByName('codigo').AsInteger := Clientes.IBrwSrccodigo.AsInteger;
      DBEdit7Exit(DBEdit7);
    end;
  finally
    Clientes.Release;
  end;
end;

procedure TNFSM.actlocNaturezaExecute(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFinNaturezas, FinNaturezas);
    FinNaturezas.DisplayMode := dmQuery;
    FinNaturezas.ShowModal;
    if (FinNaturezas.Execute) then
    begin
      DataSet.FieldByName('natureza').AsInteger := FinNaturezas.IBrwSrcnatureza.AsInteger;
      DBEdit3Exit(DBEdit3);
    end;
  finally
    FinNaturezas.Release;
  end;
end;

procedure TNFSM.actLocSerieExecute(Sender: TObject);
begin
  inherited;
  try
    NFSSerie := TNFSSerie.Create(Application);
    NFSSerie.DisplayMode := dmQuery;
    NFSSerie.ShowModal;
    if (NFSSerie.Execute) then
    begin
      DataSet.FieldByName('serie').AsInteger := NFSSerie.IBrwSrcserie.AsInteger;
      DBEdit1Exit(DBEdit1);
    end;
  finally
    NFSSerie.Release;
  end;
end;

procedure TNFSM.AfterInsert(Sender: TObject; DataSet: TZQuery);
begin
  DataSet.Last;
end;

procedure TNFSM.DBEdit1Exit(Sender: TObject);
var
  fLkp: TStringList;
  DBEdit: TDBEdit;
begin
  inherited;
  DBEdit := TDBEdit(Sender);
  if mcEmpty(DBEdit.Text) or not (DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('tipo');

    if U.Data.CheckFK('nf_serie', 'serie', QuotedStr(DBEdit.Text), fLkp) then
      DataSet.FieldByName('tipo').AsString := fLkp[0]
    else
    begin
      U.Out.ShowErro('Série não cadastrada.');
      DBEdit.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TNFSM.DBEdit3Exit(Sender: TObject);
var
  fLkp: TStringList;
  DBEdit: TDBEdit;
begin
  inherited;
  DBEdit := TDBEdit(Sender);
  if mcEmpty(DBEdit.Text) or not (DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('descri');

    if U.Data.CheckFK('fin_naturezas', 'natureza', QuotedStr(DBEdit.Text), fLkp) then
      DataSet.FieldByName('descri').AsString := fLkp[0]
    else
    begin
      U.Out.ShowErro('Natureza não cadastrada.');
      DBEdit.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TNFSM.DBEdit7Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit7.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('nome_chave');
    fLkp.Add('cnpj');
    fLkp.Add('observacao');

    if U.Data.CheckFK('tbclientes', 'codigo', QuotedStr(DBEdit7.Text), fLkp) then
    begin
      DataSet.FieldByName('nome_chave').AsString := fLkp[0];
      DataSet.FieldByName('cnpj').AsString := fLkp[1];
      DataSet.FieldByName('observacao').AsString := fLkp[2];
    end
    else
    begin
      U.Out.ShowErro('Cliente não cadastrado.');
      DBEdit7.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TNFSM.FormCreate(Sender: TObject);
begin
  inherited;
  OnAfterMasterInsert := AfterInsert;
end;

procedure TNFSM.OnEdit;
begin
  if ChildDataSet.Tag = 1 then
  begin
    NFSMItens := TNFSMItens.Create(Application);
    NFSMItens.DataSet := ChildDataSet;
    NFSMItens.OnCommit := RefreshNFCab;
    with NFSMItens.qOSDispFat do
    begin
      ParamByName('nf').AsInteger := NFS.IBrwSrcrecno.AsInteger;
      ParamByName('codigo').AsInteger := NFS.IBrwSrccodigo.AsInteger;
    end;

    G.RefreshDataSet(NFSMItens.qOSDispFat);

    NFSMItens.ShowModal;
    FreeAndNil(NFSMItens);
  end
  else
    inherited;
end;

procedure TNFSM.RefreshControls;
begin
  inherited;
  actLocSerie.Enabled := Assigned(DataSet) and (DataSet.State in [dsEdit, dsInsert]);
  actLocCliente.Enabled := Assigned(DataSet) and (DataSet.State in [dsEdit, dsInsert]);
  actlocNatureza.Enabled := Assigned(DataSet) and (DataSet.State in [dsEdit, dsInsert]);
  DBComboBox1.Enabled := Assigned(DataSet) and (DataSet.State = dsEdit);
end;

procedure TNFSM.RefreshNFCab(Sender: TObject; ADataSet: TZQuery);
var
  iRecno : Integer;
begin
  iRecno := DataSet.RecNo;
  G.RefreshDataSet(DataSet);
  DataSet.RecNo := iRecno;
end;

end.
