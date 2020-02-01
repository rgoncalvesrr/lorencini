unit uLabSol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, uIUtils, JvExMask, JvToolEdit, JvBaseEdits,
  ZSequence;

type
  TLabSol = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrctipo: TIntegerField;
    IBrwSrccodigo: TIntegerField;
    IBrwSrcempresa: TStringField;
    IBrwSrccnpj: TStringField;
    IBrwSrclotefor: TStringField;
    IBrwSrcvalidade: TDateField;
    IBrwSrcqtd: TFloatField;
    IBrwSrcsaldo: TFloatField;
    IBrwSrcdescri: TStringField;
    cbTipo: TComboBox;
    Label1: TLabel;
    Label3: TLabel;
    cbFornecedor: TComboBox;
    Label4: TLabel;
    edSol: TJvCalcEdit;
    IBrwSrcnome_chave: TStringField;
    ZSequence1: TZSequence;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label5: TLabel;
    cbSaldo: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cbTipoChange(Sender: TObject);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure IBrwSrcqtdChange(Sender: TField);
    procedure PageControl1Change(Sender: TObject);
    procedure cbSaldoChange(Sender: TObject);
    procedure edSolChange(Sender: TObject);
  private
    { Private declarations }
    FCBTipo: TComboList;
    FCBFornecedor: TComboList;
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  LabSol: TLabSol;

implementation

uses uDM, uLabSolM, uResources;

{$R *.dfm}

procedure TLabSol.actQueryProcessExecute(Sender: TObject);
var
  sWhere : string;
begin
  inherited;
  with DataSet do
  begin
    {Aplica filtro por tipo}
    if Assigned(FCBTipo.Selected) and  (FCBTipo.Selected.Value > 0) then
    begin
      if swhere <> EmptyStr then
        swhere := swhere + 'and ';

      swhere := swhere + 's.tipo = :tipo ';
    end;

    {Aplica filtro por tipo}
    if Assigned(FCBFornecedor.Selected) and  (FCBFornecedor.Selected.Value > 0) then
    begin
      if swhere <> EmptyStr then
        swhere := swhere + 'and ';

      swhere := swhere + 'f.codigo = :forn ';
    end;

    if Trim(edSol.Text) <> EmptyStr then
    begin
      if swhere <> EmptyStr then
        swhere := swhere + 'and ';

      swhere := swhere + 's.recno = :solucao ';
    end;

    if cbSaldo.ItemIndex > 0 then
    begin
      if swhere <> EmptyStr then
        swhere := swhere + 'and ';

      case cbSaldo.ItemIndex of
        1: swhere := swhere + 's.saldo > 0 ';
        2: swhere := swhere + 's.saldo <= 0 ';
      end;
    end;

    if sWhere <> EmptyStr then
      SQL.Add('where ' + sWhere);

    if Assigned(Params.FindParam('tipo')) then
      Params.ParamByName('tipo').AsInteger := FCBTipo.Selected.Value;

    if Assigned(Params.FindParam('forn')) then
      Params.ParamByName('forn').AsInteger := FCBFornecedor.Selected.Value;

    if Assigned(Params.FindParam('solucao')) then
      Params.ParamByName('solucao').AsInteger := Round(edSol.Value);
  end;

  G.RefreshDataSet(DataSet);
end;

procedure TLabSol.cbSaldoChange(Sender: TObject);
begin
  actQueryProcess.Enabled := True;
  with PageControl1 do
  begin
    DBGrid1.SetFocus;
    ActivePageIndex := cbSaldo.ItemIndex;
    inherited PageControl1Change(PageControl1);
  end;

  actQueryProcessExecute(actQueryProcess);
end;

procedure TLabSol.cbTipoChange(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQuery);
end;

procedure TLabSol.edSolChange(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TLabSol.FormCreate(Sender: TObject);
begin
  inherited;
  FCBTipo := TComboList.Create(cbTipo, 'labsoltipo', 'recno', 'descri');
  cbTipo.Items.Insert(0, '(Todos)');
  cbTipo.ItemIndex := 0;

  FCBFornecedor := TComboList.Create(cbFornecedor, 'fornecedores', 'codigo', 'empresa');
  cbFornecedor.Items.Insert(0, '(Todos)');
  cbFornecedor.ItemIndex := 0;
end;

procedure TLabSol.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FCBTipo);
  FreeAndNil(FCBFornecedor);

  inherited;
end;

procedure TLabSol.IBrwSrcqtdChange(Sender: TField);
begin
  inherited;
  if (Sender.DataSet.State = dsInsert) then
    IBrwSrcsaldo.AsFloat := Sender.AsFloat;
end;

procedure TLabSol.OnEdit;
begin
  LabSolM := TLabSolM.Create(nil);
  try
    LabSolM.DataSet := DataSet;
    LabSolM.ShowModal;
  finally
    FreeAndNil(LabSolM);
  end;
end;

procedure TLabSol.PageControl1Change(Sender: TObject);
begin
  inherited;
  if cbSaldo.ItemIndex <> PageControl1.ActivePageIndex then
  begin
    cbSaldo.ItemIndex := PageControl1.ActivePageIndex;
    cbSaldoChange(cbSaldo);
  end;
end;

Initialization
  RegisterClass(TLabSol);

Finalization
  UnRegisterClass(TLabSol);


end.
