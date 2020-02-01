unit uLabProcDespacho;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, ZSequence, uIUtils, uFrameData, JvExMask,
  JvToolEdit, JvBaseEdits;

type
  TLabProcDespacho = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrcdescri: TStringField;
    IBrwSrccriacao: TDateTimeField;
    IBrwSrcemissao: TDateTimeField;
    IBrwSrcremessa: TDateTimeField;
    IBrwSrcsituacao: TIntegerField;
    IBrwSrccodigo: TIntegerField;
    IBrwSrcnome_chave: TStringField;
    IBrwSrccnpj: TStringField;
    ZSequence1: TZSequence;
    IBrwSrctelefone: TStringField;
    IBrwSrcestado: TStringField;
    ComboBox1: TComboBox;
    Label18: TLabel;
    actRemessa: TAction;
    TabSheet6: TTabSheet;
    FrameData1: TFrameData;
    Label3: TLabel;
    Label4: TLabel;
    IBrwSrcfrascos: TIntegerField;
    IBrwSrcseringas: TIntegerField;
    Label1: TLabel;
    cbStatus: TComboBox;
    TabSheet2: TTabSheet;
    IBrwSrcvolumes: TIntegerField;
    actExpedir: TAction;
    qVolumes: TZQuery;
    dsVolumes: TDataSource;
    qVolumeslabproc_recno: TIntegerField;
    qVolumesvolume: TIntegerField;
    qVolumesfrascos: TIntegerField;
    qVolumesseringas: TIntegerField;
    qVolumesrastreio: TStringField;
    qVolumesrecno: TIntegerField;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    Splitter1: TSplitter;
    Panel3: TPanel;
    DBGrid2: TDBGrid;
    qVolumesetiqueta: TStringField;
    IBrwSrctipo: TIntegerField;
    IBrwSrccotacao: TIntegerField;
    Label5: TLabel;
    edPedido: TJvCalcEdit;
    edCota: TJvCalcEdit;
    Label6: TLabel;
    ControlBar1: TControlBar;
    ToolBar2: TToolBar;
    ToolButton31: TToolButton;
    ToolButton32: TToolButton;
    procedure IBrwSrcsituacaoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBrwSrcsituacaoSetText(Sender: TField; const Text: string);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actRemessaExecute(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbStatusChange(Sender: TObject);
    procedure actExpedirExecute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure qVolumesCalcFields(DataSet: TDataSet);
    procedure qVolumesAfterScroll(DataSet: TDataSet);
    procedure IBrwSrctipoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    FCBClientes: TComboList;
    procedure RefreshCtrl; override;
    procedure SetDataSet(const Value: TZQuery); override;
  public
    { Public declarations }
  end;

var
  LabProcDespacho: TLabProcDespacho;

implementation

uses uDM, uLabProcM, iTypes, mcutils, maskutils, uReport, uLabProcPort,
  uResources, ccalendardiff, uLabProc, uLabProcDespachoVol;

{$R *.dfm}

procedure TLabProcDespacho.actExpedirExecute(Sender: TObject);
begin
  LabProcDespachoVol := TLabProcDespachoVol.Create(nil);
  try
    LabProcDespachoVol.ShowModal;
  finally
    FreeAndNil(LabProcDespachoVol);
  end;

end;

procedure TLabProcDespacho.actQueryProcessExecute(Sender: TObject);
var
  swhere: string;
begin
  inherited;
  LabProcPort.qPort.ParamByName('proc').AsInteger := -1;

  swhere := EmptyStr;

  with IBrwSrc do
  begin
    if FrameData1.CCalendarDiff1.Interval <> diNone then
      swhere := 'p.atualizacao between :emde and :emate ';

    if swhere <> EmptyStr then
      swhere := swhere + ' and ';


    case cbStatus.ItemIndex of
      0: swhere := swhere + 'p.situacao = 3';
      1: swhere := swhere + 'p.situacao = 4';
      2: swhere := swhere + 'p.situacao between 3 and 4';
    end;    

    {Aplica filtro por cliente}
    if Assigned(FCBClientes.Selected) and  (FCBClientes.Selected.Value > 0) then
    begin
      if swhere <> EmptyStr then
        swhere := swhere + ' and ';

      swhere := swhere + 'p.codigo = :codigo';
    end;

    if Trim(edPedido.Text) <> EmptyStr then
    begin
      if swhere <> EmptyStr then
        swhere := swhere + 'and ';

      swhere := swhere + 'p.pedido = :pedido ';
    end;

    if Trim(edCota.Text) <> EmptyStr then
    begin
      if swhere <> EmptyStr then
        swhere := swhere + 'and ';

      swhere := swhere + 'p.cotacao = :cota ';
    end;

    if swhere <> '' then
      SQL.Add('where ' + swhere);

    if Assigned(Params.FindParam('codigo')) then
      Params.ParamByName('codigo').AsInteger := FCBClientes.Selected.Value;

    if Assigned(Params.FindParam('emde')) then
    begin
      ParamByName('emde').AsDateTime := FrameData1.CCalendarDiff1.BeginDate;
      ParamByName('emate').AsDateTime := FrameData1.CCalendarDiff1.EndDate;
    end;

    if Assigned(Params.FindParam('cotacao')) then
      Params.ParamByName('cotacao').AsInteger := Round(edCota.Value);

    if Assigned(Params.FindParam('pedido')) then
      Params.ParamByName('pedido').AsInteger := Round(edPedido.Value);
  end;

  G.RefreshDataSet(IBrwSrc);

  if not IBrwSrc.IsEmpty then
    LabProcPort.qPort.ParamByName('proc').AsInteger := IBrwSrcrecno.AsInteger;

  G.RefreshDataSet(LabProcPort.qPort);

  RefreshCtrl;
end;

procedure TLabProcDespacho.actRemessaExecute(Sender: TObject);
var
  proc: Integer;
begin
  inherited;
  LabProcPort.qPort.Insert;
  LabProcPort.ShowModal;

  if LabProcPort.Execute then
  begin
    proc := IBrwSrcrecno.AsInteger;
    IBrwSrc.Refresh;

    if IBrwSrc.Locate('recno', proc, []) and
      U.Out.ConfQues('Imprimir listagem de controle da remessa?') then
      DoRpt(FindReport(11));
  end;
end;

procedure TLabProcDespacho.cbStatusChange(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQuery);

  if PageControl1.ActivePageIndex <> cbStatus.ItemIndex then
  begin
    PageControl1.ActivePageIndex := cbStatus.ItemIndex;
    inherited PageControl1Change(PageControl1);
  end;
end;

procedure TLabProcDespacho.ComboBox1Change(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQuery);
end;

procedure TLabProcDespacho.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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
          3: small_n.GetBitmap(214, fBitMap); //Preparando Despacho
          4: small_n.GetBitmap(208, fBitMap); //Expedição
        end;

      if Column.Width <> fBitMap.Width + 2 then
        Column.Width:= fBitMap.Width + 2;

      {Desenha o status da remessa}
      Canvas.Draw(Rect.Left + 1, Rect.Top + 1, fBitMap);
    finally
      fBitMap.Free;
    end;
end;

procedure TLabProcDespacho.FormCreate(Sender: TObject);
begin
  inherited;
  LabProcDespacho := Self;
  TLabProcPort.Create(nil).Operacao := poRemessa;

  FCBClientes := TComboList.Create(ComboBox1, 'tbclientes', 'codigo', 'nome_chave');

  ComboBox1.Items.Insert(0, '(Todos)');
  ComboBox1.ItemIndex := 0;

  FrameData1.CCalendarDiff1.Interval := diNone;

  // Transformando formulário em somente leitura
  ReadOnly := True;
end;

procedure TLabProcDespacho.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FCBClientes);
  inherited;
  LabProcDespacho := nil;
  FreeAndNil(LabProcPort);
end;

procedure TLabProcDespacho.FormShow(Sender: TObject);
begin
  inherited;
  DataSet := IBrwSrc;
  actQueryProcessExecute(actQuery);
end;

procedure TLabProcDespacho.IBrwSrcAfterScroll(DataSet: TDataSet);
var
  Rpt: TReport;
begin
  inherited;
  actRemessa.Enabled := (IBrwSrcsituacao.AsInteger = 3) and not IBrwSrc.IsEmpty;
  actExpedir.Enabled := (IBrwSrcsituacao.AsInteger = 4) and not IBrwSrc.IsEmpty;

  LabProcPort.qPort.ParamByName('proc').AsInteger := IBrwSrcrecno.AsInteger;

  if LabProcPort.qPort.Active then
    LabProcPort.qPort.Refresh;

  qVolumes.Params[0].Clear;

  // Atualizando parâmetro de remessa
  if not IBrwSrc.IsEmpty then
    qVolumes.Params[0].AsInteger := IBrwSrcrecno.AsInteger;

  G.RefreshDataSet(qVolumes);


  Rpt := FindReport(11);
  if Assigned(Rpt) then
    Rpt.Enabled := not IBrwSrcremessa.IsNull;
end;

procedure TLabProcDespacho.IBrwSrcsituacaoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    3: Text := 'Preparar Despacho';
    4: Text := 'Liberado Expedição';
  end;
end;

procedure TLabProcDespacho.IBrwSrcsituacaoSetText(Sender: TField; const Text: string);
begin
  inherited;
  if Text = 'Preparar Despacho' then
    Sender.AsInteger := 3;

  if Text = 'Liberado Expedição' then
    Sender.AsInteger := 4;
end;

procedure TLabProcDespacho.IBrwSrctipoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  
  if not Sender.DataSet.Active then
    Exit;
    
  case Sender.AsInteger of
    1: Text := 'Transportadora';
    2: Text := 'Correios';
    3: Text := 'Lorencini';
    4: Text := 'Cliente';
    5: Text := 'Outros';
  end;
end;

procedure TLabProcDespacho.PageControl1Change(Sender: TObject);
begin
  inherited;
  cbStatus.ItemIndex := PageControl1.ActivePageIndex;
  ControlBar1.Parent := PageControl1.ActivePage;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TLabProcDespacho.qVolumesAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if Assigned(LabProcDespachoVol) then
    LabProcDespachoVol.DataSource1StateChange(LabProcDespachoVol.DataSource1);
end;

procedure TLabProcDespacho.qVolumesCalcFields(DataSet: TDataSet);
begin
  inherited;
  qVolumesetiqueta.AsString := mcRight(StringOfChar('0', 12) +
    qVolumesrecno.AsString, 12);
end;

procedure TLabProcDespacho.RefreshCtrl;
begin
  inherited;
  // Habilita impressão se o processo não estiver remetido ou encerrado
  actRemessa.Enabled := (IBrwSrcsituacao.AsInteger = 3) and not IBrwSrc.IsEmpty;
  actExpedir.Enabled := (IBrwSrcsituacao.AsInteger = 4) and not IBrwSrc.IsEmpty;
end;

procedure TLabProcDespacho.SetDataSet(const Value: TZQuery);
begin
  inherited;

  if Value = IBrwSrc then
  begin
    FrameData1.CCalendarDiff1.Interval := diNone;
    actQueryProcessExecute(actQueryProcess);
  end;
end;

initialization
  RegisterClass(TLabProcDespacho);

finalization
  UnRegisterClass(TLabProcDespacho);

end.
