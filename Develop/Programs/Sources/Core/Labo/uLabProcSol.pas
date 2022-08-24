unit uLabProcSol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, uIUtils, JvExStdCtrls, JvRichEdit,
  JvDBRichEdit, JvExComCtrls, JvToolBar;

type
  TLabProcSol = class(TIDefBrowse)
    IBrwSrcsituacao: TIntegerField;
    IBrwSrcrecno: TIntegerField;
    IBrwSrcatualizacao: TDateTimeField;
    IBrwSrcemissao: TDateTimeField;
    IBrwSrcfrascos: TIntegerField;
    IBrwSrcseringas: TIntegerField;
    IBrwSrccodigo: TIntegerField;
    IBrwSrcempresa: TStringField;
    IBrwSrcnome_chave: TStringField;
    IBrwSrcdescri: TStringField;
    IBrwSrccnpj: TStringField;
    IBrwSrccpf: TStringField;
    IBrwSrccoleta: TIntegerField;
    Label18: TLabel;
    ComboBox1: TComboBox;
    IBrwSrcfrete: TFloatField;
    IBrwSrccorreio: TIntegerField;
    IBrwSrccep: TStringField;
    IBrwSrcenvio: TIntegerField;
    IBrwSrccotacao: TIntegerField;
    IBrwSrcpedido: TIntegerField;
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
    procedure IBrwSrccodigoChange(Sender: TField);
    procedure ComboBox1Change(Sender: TObject);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure IBrwSrcenvioChange(Sender: TField);
    procedure IBrwSrcenvioGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBrwSrcenvioSetText(Sender: TField; const Text: string);
  private
    { Private declarations }
    FCBClientes: TComboList;
    procedure OnEdit; override;
    procedure SetDataSet(const Value: TZQuery); override;
    procedure OnLoad; override;
  public
    { Public declarations }
  end;

var
  LabProcSol: TLabProcSol;

implementation

uses uDM, uLabProcSolM;

{$R *.dfm}


{ TLabProcSol }

procedure TLabProcSol.actQueryProcessExecute(Sender: TObject);
var
  swhere: string;
begin
  inherited;
  swhere := '';

  with IBrwSrc do
  begin
    {Aplica filtro por cliente}
    if Assigned(FCBClientes.Selected) and  (FCBClientes.Selected.Value > 0) then
      swhere := swhere + ' and r.codigo = :codigo';

    if swhere <> '' then
      SQL.Add(swhere);

    if Assigned(Params.FindParam('codigo')) then
      Params.ParamByName('codigo').AsInteger := FCBClientes.Selected.Value;
  end;

  G.RefreshDataSet(IBrwSrc);

  RefreshCtrl;
end;

procedure TLabProcSol.ComboBox1Change(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQuery);
end;

procedure TLabProcSol.FormCreate(Sender: TObject);
begin
  inherited;
  FCBClientes := TComboList.Create(ComboBox1, 'tbclientes', 'codigo', 'nome_chave');

  ComboBox1.Items.Insert(0, '(Todos)');
  ComboBox1.ItemIndex := 0;
end;

procedure TLabProcSol.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FCBClientes);
  inherited;
end;

procedure TLabProcSol.IBrwSrcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  IBrwSrccoleta.AsInteger := 0; // coleta por conta do cliente
  IBrwSrcenvio.AsInteger := 1; // SEDEX
end;

procedure TLabProcSol.IBrwSrccodigoChange(Sender: TField);
begin
  inherited;

  if Assigned(Sender) and (Sender.DataSet.State = dsInsert) and (not Sender.IsNull) then
    with U.Data.Query do
    try
      SQL.Text :=
      'select coleta, frascos, seringas '+
        'from labproc '+
       'where codigo = :cliente '+
       'order by recno desc limit 1';

      ParamByName('cliente').AsInteger := Sender.AsInteger;

      Open;

      IBrwSrccoleta.AsInteger := 0;
      IBrwSrcfrascos.SetData(nil);
      IBrwSrcseringas.SetData(nil);

      if not IsEmpty then
      begin
        IBrwSrccoleta.AsInteger := Fields[0].AsInteger;
        IBrwSrcfrascos.AsInteger := Fields[1].AsInteger;
        IBrwSrcseringas.AsInteger := Fields[2].AsInteger;
      end;
    finally
      Close;
    end;

end;

procedure TLabProcSol.IBrwSrcenvioChange(Sender: TField);
begin
  inherited;
  if not (Sender.DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  if Sender.AsInteger = 3 then
    IBrwSrcfrete.AsFloat := 0;
end;

procedure TLabProcSol.IBrwSrcenvioGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Sedex';
    2: Text := 'Transportadora';
    3: Text := 'Cliente Retira';
  end;
end;

procedure TLabProcSol.IBrwSrcenvioSetText(Sender: TField; const Text: string);
begin
  inherited;
  if not (Sender.DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  case Text[1] of
    'S': Sender.AsInteger := 1;
    'T': Sender.AsInteger := 2;
    'C': Sender.AsInteger := 3;
  end;
end;

procedure TLabProcSol.OnEdit;
begin
  LabProcSolM := TLabProcSolM.Create(Application);
  try
    LabProcSolM.DataSet := IBrwSrc;
    LabProcSolM.ShowModal;
    if LabProcSolM.Execute then
      RefreshCtrl;
  finally
    FreeAndNil(LabProcSolM);
  end;
end;

procedure TLabProcSol.OnLoad;
begin
  inherited;
  ReadOnly := True;
end;

procedure TLabProcSol.SetDataSet(const Value: TZQuery);
begin
  inherited;
  if Value = IBrwSrc then
    actQueryProcessExecute(actQueryProcess);
end;

initialization
  RegisterClass(TLabProcSol);

finalization
  UnRegisterClass(TLabProcSol);

end.
