unit uLabProcSol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, uIUtils, JvExStdCtrls, JvRichEdit,
  JvDBRichEdit, JvExComCtrls, JvToolBar, ZSequence, JvExMask, JvToolEdit, JvBaseEdits;

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
    IBrwSrcfrete: TFloatField;
    IBrwSrccorreio: TIntegerField;
    IBrwSrccep: TStringField;
    IBrwSrcenvio: TIntegerField;
    IBrwSrccotacao: TIntegerField;
    IBrwSrcpedido: TIntegerField;
    sIBrwSrc: TZSequence;
    Panel5: TPanel;
    Label4: TLabel;
    edCodigo: TJvCalcEdit;
    Panel6: TPanel;
    Label1: TLabel;
    edCNPJ: TMaskEdit;
    Panel7: TPanel;
    Label3: TLabel;
    edCPF: TMaskEdit;
    Panel8: TPanel;
    Label6: TLabel;
    edEmpresa: TEdit;
    Panel9: TPanel;
    Label7: TLabel;
    edRazao: TEdit;
    IBrwSrcsaldo_frascos: TLargeintField;
    IBrwSrcsaldo_seringas: TLargeintField;
    IBrwSrcsaldo_recipientes: TLargeintField;
    qSaldo: TZQuery;
    dsSaldo: TDataSource;
    qSaldosaldo_frascos: TLargeintField;
    qSaldosaldo_seringas: TLargeintField;
    qSaldosaldo_recipientes: TLargeintField;
    IBrwSrcstatus: TIntegerField;
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
    procedure IBrwSrccodigoChange(Sender: TField);
    procedure ComboBox1Change(Sender: TObject);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure IBrwSrcenvioChange(Sender: TField);
    procedure IBrwSrcenvioGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBrwSrcenvioSetText(Sender: TField; const Text: string);
    procedure edCodigoChange(Sender: TObject);
    procedure IBrwSrcCalcFields(DataSet: TDataSet);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure IBrwSrcsaldo_recipientesChange(Sender: TField);
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
  private
    procedure OnEdit; override;
    procedure SetDataSet(const Value: TZQuery); override;
  public
  end;

var
  LabProcSol: TLabProcSol;

implementation

uses uDM, uLabProcSolM, uResources;

{$R *.dfm}

{ TLabProcSol }

procedure TLabProcSol.actQueryProcessExecute(Sender: TObject);
var
  swhere: string;
begin
  inherited;
  swhere := '';

  if not Assigned(DataSet) then
    Exit;

  sWhere := EmptyStr;

  if edCodigo.Value > 0 then
    sWhere := 'and c.codigo = :codigo ';

  if Length(edCNPJ.Text) > 0 then
    sWhere := sWhere + 'and c.cnpj like :cnpj ';

  if Length(edCPF.Text) > 0 then
    sWhere := sWhere + 'and c.cpf like :cpf ';

  if Length(edEmpresa.Text) > 0 then
    sWhere := sWhere + 'and c.nome_chave ilike :empresa ';

  if Length(edRazao.Text) > 0 then
    sWhere := sWhere + 'and c.empresa ilike :razao ';

  if sWhere <> EmptyStr then
    DataSet.SQL.Add(' ' + sWhere);

  if Assigned(DataSet.Params.FindParam('codigo')) then
    DataSet.ParamByName('codigo').AsInteger := Round(edCodigo.Value);

  if Assigned(DataSet.Params.FindParam('cnpj')) then
    DataSet.ParamByName('cnpj').AsString := edCNPJ.Text + '%';

  if Assigned(DataSet.Params.FindParam('cpf')) then
    DataSet.ParamByName('cpf').AsString := edCPF.Text + '%';

  if Assigned(DataSet.Params.FindParam('empresa')) then
    DataSet.ParamByName('empresa').AsString := '%' + edEmpresa.Text + '%';

  if Assigned(DataSet.Params.FindParam('razao')) then
    DataSet.ParamByName('razao').AsString := '%' + edRazao.Text + '%';

  try
    G.RefreshDataSet(DataSet);
  finally
    RefreshCtrl;
  end;
end;

procedure TLabProcSol.ComboBox1Change(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQuery);
end;

procedure TLabProcSol.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  fBitMap: TBitmap;
begin
  if (Column.Index <> 0) then
    inherited DBGridDrawColumnCell(Sender, Rect, DataCol, Column, State)
  else
    with TDBGrid(Sender) do
    try
      fBitMap:= TBitmap.Create;
      fBitMap.Transparent:= True;

      with Resources do
        if not IBrwSrcstatus.IsNull then
           small_n.GetBitmap(IBrwSrcstatus.AsInteger, fBitMap)
        else
          small_n.GetBitmap(204, fBitMap);

      if Column.Width <> fBitMap.Width + 2 then
        Column.Width:= fBitMap.Width + 2;

      {Desenha o status da remessa}
      Canvas.Draw(Rect.Left + 1, Rect.Top + 1, fBitMap);
    finally
      fBitMap.Free;
    end;
end;

procedure TLabProcSol.edCodigoChange(Sender: TObject);
begin
  inherited;
   actQueryProcess.Enabled := True;
end;

procedure TLabProcSol.IBrwSrcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  IBrwSrccoleta.AsInteger := 0; // coleta por conta do cliente
  IBrwSrcenvio.AsInteger := 1; // SEDEX
end;

procedure TLabProcSol.IBrwSrcAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if Assigned(LabProcSolM) then
    LabProcSolM.Panel20.ParentBackground := IBrwSrcsaldo_recipientes.AsInteger = 0;
end;

procedure TLabProcSol.IBrwSrcCalcFields(DataSet: TDataSet);
begin
  inherited;
  if IBrwSrcsaldo_recipientes.AsInteger > 0 then
    IBrwSrcstatus.AsInteger := 213
  else
    IBrwSrcstatus.AsInteger := 208;

end;

procedure TLabProcSol.IBrwSrccodigoChange(Sender: TField);
begin
  inherited;

  if Assigned(Sender) and (not Sender.IsNull) then
  begin
    if (Sender.DataSet.State in [dsInsert, dsEdit]) then
    begin
      qSaldo.ParamByName('cliente').AsInteger := Sender.AsInteger;
      G.RefreshDataSet(qSaldo);

      IBrwSrcsaldo_frascos.AsInteger :=  qSaldosaldo_frascos.AsInteger;
      IBrwSrcsaldo_seringas.AsInteger :=  qSaldosaldo_seringas.AsInteger;
      IBrwSrcsaldo_recipientes.AsInteger :=  qSaldosaldo_recipientes.AsInteger;
    end;

    if (Sender.DataSet.State = dsInsert) then
    begin
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

procedure TLabProcSol.IBrwSrcsaldo_recipientesChange(Sender: TField);
begin
  inherited;
  if Assigned(LabProcSolM) then
    LabProcSolM.Panel20.ParentBackground := Sender.AsInteger = 0;
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
