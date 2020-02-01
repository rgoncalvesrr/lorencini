unit uPagarM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, StdCtrls, DBCtrls, Buttons, Mask, ActnList, Grids,
  DBGrids, ComCtrls, ExtCtrls, ToolWin, JvExMask, JvToolEdit, JvDBControls,
  JvBaseEdits, JvExStdCtrls, JvCombobox, JvDBCombobox, ZDataSet,
  uParcelamento;

type
  TPagarM = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    SpeedButton2: TSpeedButton;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    SpeedButton3: TSpeedButton;
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
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBMemo1: TDBMemo;
    FindNatu: TAction;
    FindForn: TAction;
    Label3: TLabel;
    DBComboBox1: TDBComboBox;
    Label6: TLabel;
    JvDBDateEdit2: TJvDBDateEdit;
    JvDBDateEdit3: TJvDBDateEdit;
    deBaixa: TJvDBDateEdit;
    JvDBCalcEdit1: TJvDBCalcEdit;
    ceBaixa: TJvDBCalcEdit;
    JvDBDateEdit1: TJvDBDateEdit;
    Label19: TLabel;
    DBEdit3: TDBEdit;
    Label20: TLabel;
    JvDBCalcEdit2: TJvDBCalcEdit;
    Label21: TLabel;
    JvDBCalcEdit3: TJvDBCalcEdit;
    Label22: TLabel;
    JvDBCalcEdit4: TJvDBCalcEdit;
    Label23: TLabel;
    JvDBCalcEdit5: TJvDBCalcEdit;
    procedure DBEdit4Exit(Sender: TObject);
    procedure FindNatuExecute(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure FindFornExecute(Sender: TObject);
  private
    FParcelamento: TParcelamento;
    procedure AfterPost(Sender: TObject; DataSet: TZQuery);
    
    procedure OnBeforeDataSet; override;
  public
    { Public declarations }
    procedure RefreshControls; override;
  end;

var
  PagarM: TPagarM;

implementation

uses uPagar, DB, uIUtils, mcUtils, uFinNaturezas, uFornecedores, uDM,
  ZSqlProcessor;

{$R *.dfm}

{ TIDefBrowseEdit1 }

procedure TPagarM.AfterPost(Sender: TObject; DataSet: TZQuery);
var
  ExecQuery: TZSQLProcessor;
begin
  if not Assigned(FParcelamento) then
    Exit;

  DM.ActiveSQLMonitor := True;

  // Apaga parcelamento anterior
  U.ExecuteSQL('delete from fin_pagar_bxs where titulo = ' + DataSet.FieldByName('recno').AsString);

  ExecQuery := DM.SQLProcessor;

  ExecQuery.Clear;
  ExecQuery.Script.Add(
    'insert into fin_pagar_bxs(titulo, historico, cc, vencto, valor) '+
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

  FParcelamento := nil;

end;

procedure TPagarM.DBEdit4Exit(Sender: TObject);
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

procedure TPagarM.DBEdit7Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit7.Text) or not (DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('nome_chave');
    fLkp.Add('cnpj');
    fLkp.Add('telefone');

    if U.Data.CheckFK('fornecedores', 'codigo', QuotedStr(DBEdit7.Text), fLkp) then
    begin
      DataSet.FieldByName('nome_chave').AsString := fLkp[0];
      DataSet.FieldByName('cnpj').AsString := fLkp[1];
      DataSet.FieldByName('telefone').AsString := fLkp[2];
    end
    else
    begin
      U.Out.ShowErro('Fornecedor não cadastrado.');
      DBEdit7.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TPagarM.FindFornExecute(Sender: TObject);
begin
  try
    Application.CreateForm(TFornecedores, Fornecedores);
    Fornecedores.DisplayMode := dmQuery;
    Fornecedores.ShowModal;
    if (Fornecedores.Execute) then
    begin
      DataSet.FieldByName('id_forn').AsInteger := DM.qForncodigo.AsInteger;
      DBEdit7Exit(DBEdit7);
    end;
  finally
    Fornecedores.Release;
  end;

end;

procedure TPagarM.FindNatuExecute(Sender: TObject);
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

procedure TPagarM.OnBeforeDataSet;
begin
  U.FillDBComboBox(DBComboBox1, 'cc', 'cc');
end;

procedure TPagarM.RefreshControls;
begin
  inherited;

  if not Assigned(DataSet) then
    Exit;

  findNatu.Enabled := DataSet.State in [dsEdit, dsInsert];
  findForn.Enabled := DataSet.State in [dsEdit, dsInsert];
  deBaixa.Enabled := DataSet.State = dsEdit;
  ceBaixa.Enabled := DataSet.State = dsEdit;
end;

end.
