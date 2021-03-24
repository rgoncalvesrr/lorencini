unit uReceberM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls,Buttons, JvBaseEdits, JvDBControls, JvExMask,
  JvToolEdit, JvExStdCtrls, JvCombobox, JvDBCombobox, ZDataSet,
  uParcelamento;

type
  TReceberM = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    findNatu: TAction;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label18: TLabel;
    DBMemo1: TDBMemo;
    findCli: TAction;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label19: TLabel;
    DBComboBox1: TDBComboBox;
    JvDBDateEdit1: TJvDBDateEdit;
    JvDBDateEdit2: TJvDBDateEdit;
    JvDBDateEdit3: TJvDBDateEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label16: TLabel;
    JvDBCalcEdit1: TJvDBCalcEdit;
    Label15: TLabel;
    JvDBCalcEdit2: TJvDBCalcEdit;
    Label21: TLabel;
    JvDBCalcEdit3: TJvDBCalcEdit;
    Label22: TLabel;
    JvDBCalcEdit4: TJvDBCalcEdit;
    Label23: TLabel;
    JvDBCalcEdit5: TJvDBCalcEdit;
    Label17: TLabel;
    deBaixa: TJvDBDateEdit;
    Label24: TLabel;
    ceBaixa: TJvDBCalcEdit;
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
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel27: TPanel;
    Panel28: TPanel;
    Panel29: TPanel;
    Panel30: TPanel;
    Panel31: TPanel;
    Panel32: TPanel;
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure findNatuExecute(Sender: TObject);
    procedure findCliExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    FParcelamento: TParcelamento;
    procedure OnBeforeDataSet; override;
    procedure AfterPost(Sender: TObject; DataSet: TZQuery);
    procedure OnLoad; override;
  public
    { Public declarations }
    procedure RefreshControls; override;
  end;

var
  ReceberM: TReceberM;

implementation

uses uIUtils, mcUtils, uFinNaturezas, DB, uReceber, uDM, ZSqlProcessor, uClientes;

{$R *.dfm}

procedure TReceberM.DBEdit4Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit4.Text) or not (DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('descri');
    fLkp.Add('tipo');

    if U.Data.CheckFK('fin_naturezas', 'natureza', QuotedStr(DBEdit4.Text), fLkp) then
    begin
      DataSet.FieldByName('descri').AsString := fLkp[0];
      DataSet.FieldByName('tipo').AsString := fLkp[1];
    end
    else
    begin
      U.Out.ShowErro('Natureza não cadastrada.');
      DBEdit4.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TReceberM.DBEdit7Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit7.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  fLkp:= TStringList.Create;
  try
    fLkp.Add('nome_chave');
    fLkp.Add('cnpj');
    fLkp.Add('telefone');

    if U.Data.CheckFK('tbclientes', 'codigo', QuotedStr(DBEdit7.Text), fLkp) then
    begin
      DataSet.FieldByName('nome_chave').AsString := fLkp[0];
      DataSet.FieldByName('cnpj').AsString := fLkp[1];
      DataSet.FieldByName('telefone').AsString := fLkp[2];
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

procedure TReceberM.findCliExecute(Sender: TObject);
begin
  Clientes := TClientes.Create(nil);
  try
    Clientes.DisplayMode := dmQuery;
    Clientes.ShowModal;
    if (Clientes.Execute) then
    begin
      DataSet.FieldByName('id_cli').AsInteger := Clientes.IBrwSrccodigo.AsInteger;
      DBEdit7Exit(DBEdit7);
    end;
  finally
    FreeAndNil(Clientes);
  end;
end;

procedure TReceberM.findNatuExecute(Sender: TObject);
begin
  try
    Application.CreateForm(TFinNaturezas, FinNaturezas);
    FinNaturezas.DisplayMode := dmQuery;
    FinNaturezas.ShowModal;
    if (FinNaturezas.Execute) then
    begin
      DataSet.FieldByName('natureza').AsInteger := FinNaturezas.IBrwSrcnatureza.AsInteger;
      DBEdit4Exit(DBEdit4);
    end;
  finally
    FinNaturezas.Release;
  end;
end;

procedure TReceberM.FormResize(Sender: TObject);
begin
  inherited;
  Panel3.Height := ClientHeight - (PageControl1.Top + 450); 
end;

procedure TReceberM.AfterPost(Sender: TObject; DataSet: TZQuery);
var
  ExecQuery: TZSQLProcessor;
begin
  if not Assigned(FParcelamento) then
    Exit;

  DM.ActiveSQLMonitor := True;

  // Apaga parcelamento anterior
  U.ExecuteSQL('delete from fin_receber_bxs where titulo = ' + DataSet.FieldByName('recno').AsString);

  ExecQuery := DM.SQLProcessor;

  ExecQuery.Clear;
  ExecQuery.Script.Add(
    'insert into fin_receber_bxs(titulo, historico, cc, vencto, valor) '+
                         'values (:titulo, :historico, :cc, :vencto, :valor);');

  // Gera o parcelamento
  try

    ExecQuery.ParamByName('titulo').AsInteger := DataSet.FieldByName('recno').AsInteger;
    ExecQuery.ParamByName('historico').AsString := DataSet.FieldByName('historico').AsString;
    if not DataSet.FieldByName('cc').IsNull then
      ExecQuery.ParamByName('cc').AsString := DataSet.FieldByName('cc').AsString;

    // Posiciona no primeiro registro
    FParcelamento.Parcelas.First;

    // Gera novo parcelamento
    with FParcelamento do
      while not Parcelas.Eof do
      begin
        ExecQuery.ParamByName('vencto').AsDate := Parcelasvencimento.AsDateTime;
        ExecQuery.ParamByName('valor').AsFloat := Parcelasvalor.AsFloat;
        ExecQuery.Execute;

        Parcelas.Next;
      end;
  finally
    DM.ActiveSQLMonitor := False;
  end;

  FreeAndNil(FParcelamento);
end;

procedure TReceberM.OnBeforeDataSet;
begin
  U.FillDBComboBox(DBComboBox1, 'cc', 'cc');
end;

procedure TReceberM.OnLoad;
begin
  inherited;
  WindowState := wsMaximized;
end;

procedure TReceberM.RefreshControls;
begin
  inherited;

  if not Assigned(DataSet) then
    Exit;

  findNatu.Enabled := DataSet.State in [dsEdit, dsInsert];
  findCli.Enabled := DataSet.State in [dsEdit, dsInsert];
  deBaixa.Enabled := DataSet.State = dsEdit;
  ceBaixa.Enabled := DataSet.State = dsEdit;
end;

end.
