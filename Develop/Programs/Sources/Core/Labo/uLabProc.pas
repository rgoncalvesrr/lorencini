unit uLabProc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, ZSequence, uIUtils, uFrameData, JvExMask, JvToolEdit, JvBaseEdits;

type
  TLabProc = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrcdescri: TStringField;
    IBrwSrccriacao: TDateTimeField;
    IBrwSrcemissao: TDateTimeField;
    IBrwSrcremessa: TDateTimeField;
    IBrwSrcretorno: TDateTimeField;
    IBrwSrcsituacao: TIntegerField;
    IBrwSrcos: TIntegerField;
    IBrwSrccodigo: TIntegerField;
    IBrwSrcnome_chave: TStringField;
    IBrwSrccnpj: TStringField;
    ZSequence1: TZSequence;
    IBrwSrctelefone: TStringField;
    qPItens: TZQuery;
    uPItens: TZUpdateSQL;
    sPItens: TZSequence;
    qPItensrecno: TIntegerField;
    qPItenstipo: TIntegerField;
    qPItenslabproc_recno: TIntegerField;
    dsPItens: TDataSource;
    qPItensetiq_proc: TStringField;
    qPItensvalidade: TDateField;
    IBrwSrcestado: TStringField;
    ComboBox1: TComboBox;
    Label18: TLabel;
    actPrnEtiq: TAction;
    Etiquetas1: TMenuItem;
    qPItensetiq_tipo: TStringField;
    qPItensdataprog: TDateField;
    IBrwSrcfrascos: TIntegerField;
    IBrwSrcseringas: TIntegerField;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label1: TLabel;
    cbStatus: TComboBox;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    DBGrid3: TDBGrid;
    IBrwSrcenvio: TIntegerField;
    IBrwSrccorreio: TIntegerField;
    IBrwSrcfrete: TFloatField;
    IBrwSrccotacao: TIntegerField;
    IBrwSrcpedido: TIntegerField;
    IBrwSrcobs: TMemoField;
    IBrwSrcobs_remessa: TMemoField;
    qPItensamostra: TIntegerField;
    edPedido: TJvCalcEdit;
    Label4: TLabel;
    Label5: TLabel;
    edCotacao: TJvCalcEdit;
    qPItenscomodato: TIntegerField;
    procedure IBrwSrcsituacaoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBrwSrcsituacaoSetText(Sender: TField; const Text: string);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
    procedure qPItenstipoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qPItenstipoSetText(Sender: TField; const Text: string);
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
    procedure qPItensAfterInsert(DataSet: TDataSet);
    procedure qPItensCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actPrnEtiqExecute(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cbStatusChange(Sender: TObject);
    procedure IBrwSrcenvioGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure edPedidoChange(Sender: TObject);
    procedure IBrwSrcAfterPost(DataSet: TDataSet);
  private
    FCBClientes: TComboList;
    procedure OnEdit; override;
    procedure RefreshCtrl; override;
    procedure SetDataSet(const Value: TZQuery); override;
    procedure OnLoad; override;
    procedure FormataEtiqueta(Sender: TObject; var Row: string);
  public
    { Public declarations }
    procedure ImprimirEtiqueta;
  end;

var
  LabProc: TLabProc;

implementation

uses uDM, uLabProcM, iTypes, mcutils, maskutils, uReport, uResources,
  ccalendardiff, uPrnTag;

{$R *.dfm}

procedure TLabProc.actPrnEtiqExecute(Sender: TObject);
begin
  inherited;

  if not qPItens.Active then
    qPItens.Open;

  qPItens.SortType := stDescending;
  qPItens.First;

  while not qPItens.Eof do
  begin
    ImprimirEtiqueta;

    qPItens.Next;
  end;

  qPItens.SortType := stAscending;
  G.RefreshDataSet(IBrwSrc);
end;

procedure TLabProc.actQueryProcessExecute(Sender: TObject);
var
  swhere: string;
begin
  inherited;

  swhere := '';

  with IBrwSrc do
  begin
    case cbStatus.ItemIndex of
       0: swhere := 'p.situacao in (0, 1)';
       1: swhere := 'p.situacao = 0';
       2: swhere := 'p.situacao = 1';
    end;

    {Aplica filtro por cliente}
    if Assigned(FCBClientes.Selected) and  (FCBClientes.Selected.Value > 0) then
      swhere := swhere + ' and p.codigo = :codigo';

    if edPedido.Text <> EmptyStr then
      swhere := swhere + ' and p.pedido = :pedido';

    if edCotacao.Text <> EmptyStr then
      swhere := swhere + ' and p.cotacao = :cotacao';

    if swhere <> '' then
      SQL.Add('where ' + swhere);

    if Assigned(Params.FindParam('codigo')) then
      Params.ParamByName('codigo').AsInteger := FCBClientes.Selected.Value;

    if Assigned(Params.FindParam('pedido')) then
      Params.ParamByName('pedido').AsInteger := Round(edPedido.Value);

    if Assigned(Params.FindParam('cotacao')) then
      Params.ParamByName('cotacao').AsInteger := Round(edCotacao.Value);
  end;

  G.RefreshDataSet(IBrwSrc);

  RefreshCtrl;

  // Habilita impressão se o processo não estiver remetido ou encerrado
  actPrnEtiq.Enabled := (IBrwSrcsituacao.AsInteger < 2) and not IBrwSrc.IsEmpty;
end;

procedure TLabProc.cbStatusChange(Sender: TObject);
begin
  inherited;
  actQueryProcess.Enabled := True;
  DBGrid1.SetFocus;
  with PageControl1 do
  begin
    ActivePageIndex := cbStatus.ItemIndex;
    inherited PageControl1Change(PageControl1);
  end;

  actQueryProcessExecute(actQueryProcess);
end;

procedure TLabProc.ComboBox1Change(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQuery);
end;

procedure TLabProc.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
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
        case IBrwSrcsituacao.AsInteger of
          0: small_n.GetBitmap(213, fBitMap); //Aguando Ação
          1: small_n.GetBitmap(210, fBitMap); //Remessa em Processamento
        end;
                                                
      if Column.Width <> fBitMap.Width + 2 then
        Column.Width:= fBitMap.Width + 2;

      {Desenha o status da remessa}
      Canvas.Draw(Rect.Left + 1, Rect.Top + 1, fBitMap);
    finally
      fBitMap.Free;
    end;
end;

procedure TLabProc.edPedidoChange(Sender: TObject);
begin
  inherited;
  actQueryProcess.Enabled := True;
end;

procedure TLabProc.FormataEtiqueta(Sender: TObject; var Row: string);
var
  sTag: string;
begin
  sTag := EmptyStr;

  Row := mcStuff('000000000000', Row, qPItensetiq_proc.AsString);
  Row := mcStuff('000.000.000.000', Row, qPItensetiq_proc.DisplayText);
  Row := mcStuff('@1', Row, Format('Origem: %d Destino: %d', [IBrwSrcrecno.AsInteger, IBrwSrccodigo.AsInteger]));
  Row := mcStuff('@2', Row, EmptyStr);
  Row := mcStuff('@3', Row, qPItensvalidade.DisplayText);
  Row := mcStuff('@4', Row, Format('Tipo: %s%s', [qPItenstipo.DisplayText, sTag]));
end;

procedure TLabProc.FormCreate(Sender: TObject);
begin
  inherited;
  LabProc := Self;
  FCBClientes := TComboList.Create(ComboBox1, 'tbclientes', 'codigo', 'nome_chave');

  ComboBox1.Items.Insert(0, '(Todos)');
  ComboBox1.ItemIndex := 0;

  ReadOnly := True;
end;

procedure TLabProc.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FCBClientes);
  inherited;
  LabProc := nil;
end;

procedure TLabProc.FormShow(Sender: TObject);
begin
  inherited;
  DataSet := IBrwSrc;
  actQueryProcessExecute(actQuery);
end;

procedure TLabProc.IBrwSrcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  IBrwSrcsituacao.AsInteger := 1;
end;

procedure TLabProc.IBrwSrcAfterPost(DataSet: TDataSet);
begin
  inherited;
  qPItens.ParamByName('proc').AsInteger := IBrwSrcrecno.AsInteger;
  G.RefreshDataSet(qPItens);
end;

procedure TLabProc.IBrwSrcAfterScroll(DataSet: TDataSet);
var
  Rpt: TReport;
begin
  inherited;
  // Habilita impressão se o processo não estiver remetido ou encerrado
  actPrnEtiq.Enabled := (IBrwSrcsituacao.AsInteger < 3) and not IBrwSrc.IsEmpty;

  qPItens.ParamByName('proc').AsInteger := IBrwSrcrecno.AsInteger;

  G.RefreshDataSet(qPItens);
end;

procedure TLabProc.IBrwSrcenvioGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Sedex';
    2: Text := 'Transportadora';
    3: Text := 'Cliente Retira';
  end;
end;

procedure TLabProc.IBrwSrcsituacaoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Aguardando Ação';
    2: Text := 'Em Processamento';
  end;
end;

procedure TLabProc.IBrwSrcsituacaoSetText(Sender: TField; const Text: string);
begin
  inherited;
  if Text = 'Aguardando Ação' then
    Sender.AsInteger := 1;

  if Text = 'Em Processamento' then
    Sender.AsInteger := 2;
end;

procedure TLabProc.ImprimirEtiqueta;
var
  sFile, printer: String;
  oPrn: TPrnTag;
begin
  if not qPItens.Active then
  begin
    U.Out.ShowErro('Etiquetas não podem ser impressas porque a tabela de etiquetas não está ativa.');
    Exit;
  end;

  sFile := U.Path.ReportTemplates + 'Etiqueta_6x3cm.prn';

  if not FileExists(sFile) then
  begin
    U.Out.ShowErro('Etiquetas não podem ser impressas porque o arquivo de modelo %s não foi localizado.',
      [sFile]);
    Exit;
  end;

  with U.Data.Query do
  try
    SQL.Text := 'select sys_paramv(''prn_etiquetas'')';
    Open;
    printer := Fields[0].AsString;
  finally
    close;
  end;

  oPrn := TPrnTag.Create(sFile, printer, FormataEtiqueta);
  try
    if oPrn.Print then
    begin
      // Marca a etiqueta como impressa
      // Inicia transação
      U.Data.StartTransaction;
      try
        // Atualiza a data e hora de impressão da etiqueta
        U.Data.ExecSQL(Format(
          'update labamostras '+
             'set estado = 20 '+
           'where recno = %d '+
             'and estado < 20', [qPItensamostra.AsInteger]));

        U.Data.Commit;
      except
        U.Data.Rollback;
      end;
    end;
  finally
    FreeAndNil(oPrn);
  end;
end;

procedure TLabProc.OnEdit;
begin
  LabProcM := TLabProcM.Create(Application);
  try    
    LabProcM.DataSet := IBrwSrc;
    LabProcM.ScreenType := stMasterDetail;
    LabProcM.ShowModal;
  finally
    FreeAndNil(LabProcM);
  end;
end;

procedure TLabProc.OnLoad;
begin
  inherited;
  cbStatus.ItemIndex := 1;
  cbStatusChange(cbStatus);
end;

procedure TLabProc.PageControl1Change(Sender: TObject);
begin
  inherited;
  if cbStatus.ItemIndex <> PageControl1.ActivePageIndex then
  begin
    cbStatus.ItemIndex := PageControl1.ActivePageIndex;
    cbStatusChange(cbStatus);
  end;
end;

procedure TLabProc.qPItensAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qPItenslabproc_recno.AsInteger := IBrwSrcrecno.AsInteger;
  qPItenstipo.AsInteger := 1;
end;

procedure TLabProc.qPItensCalcFields(DataSet: TDataSet);
begin
  inherited;
  qPItensetiq_proc.AsString := mcRight(StringOfChar('0', 12) +
    qPItenscomodato.AsString, 12);

  qPItensetiq_tipo.AsString := UpperCase(mcRight(StringOfChar(' ', 15) +
    qPItenstipo.DisplayText, 15));
end;

procedure TLabProc.qPItenstipoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Frasco';
    2: Text := 'Seringa';
  end;
end;

procedure TLabProc.qPItenstipoSetText(Sender: TField; const Text: string);
begin
  inherited;
  if not (qPItens.State in [dsEdit, dsInsert]) then
    Exit;

  case Text[1] of
    'F': Sender.AsInteger := 1;
    'S': Sender.AsInteger := 2;
  end;

end;

procedure TLabProc.RefreshCtrl;
begin
  inherited;

  actPrnEtiq.Enabled := Assigned(IBrwSrc) and IBrwSrc.Active and
    not IBrwSrc.IsEmpty;
end;

procedure TLabProc.SetDataSet(const Value: TZQuery);
begin
  inherited;

  if Value = IBrwSrc then
    actQueryProcessExecute(actQueryProcess);
end;

initialization
  RegisterClass(TLabProc);

finalization
  UnRegisterClass(TLabProc);

end.
