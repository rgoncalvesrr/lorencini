unit uLabProcMonitor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, uIUtils, JvExExtCtrls, JvImage, JvExMask,
  JvToolEdit, JvBaseEdits;

type
  TLabProcMonitor = class(TIDefBrowse)
    tsAcao: TTabSheet;
    tsProc: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    IBrwSrcsituacao: TIntegerField;
    IBrwSrcrecno: TIntegerField;
    IBrwSrcatualizacao: TDateTimeField;
    IBrwSrcemissao: TDateTimeField;
    IBrwSrcfrascos: TIntegerField;
    IBrwSrcseringas: TIntegerField;
    IBrwSrcvolumes: TIntegerField;
    IBrwSrccodigo: TIntegerField;
    IBrwSrcempresa: TStringField;
    IBrwSrcnome_chave: TStringField;
    IBrwSrcdescri: TStringField;
    IBrwSrccnpj: TStringField;
    IBrwSrccpf: TStringField;
    Label1: TLabel;
    cbStatus: TComboBox;
    PageControl2: TPageControl;
    tsVolumes: TTabSheet;
    Splitter1: TSplitter;
    zVolumes: TZQuery;
    dsVolumes: TDataSource;
    zVolumesvolume: TIntegerField;
    zVolumescriacao: TDateTimeField;
    zVolumesrastreio: TStringField;
    DBGrid2: TDBGrid;
    tsEtiquetas: TTabSheet;
    dsEtiquetas: TDataSource;
    zEtiquetas: TZQuery;
    zVolumesname: TStringField;
    DBGrid3: TDBGrid;
    zEtiquetasrecno: TIntegerField;
    zEtiquetascodigo: TIntegerField;
    zEtiquetastipo: TIntegerField;
    zEtiquetasvalidade: TDateField;
    zEtiquetasdataprog: TDateField;
    zEtiquetasetiq_proc: TStringField;
    zEtiquetasemi_dh: TDateTimeField;
    zEtiquetasname: TStringField;
    zEtiquetasimp_dh: TDateTimeField;
    zEtiquetasname_1: TStringField;
    zEtiquetasrem_dh: TDateTimeField;
    zEtiquetasname_2: TStringField;
    Label18: TLabel;
    ComboBox1: TComboBox;
    zVolumesrecno: TIntegerField;
    zVolumesfrascos: TIntegerField;
    zVolumesseringas: TIntegerField;
    zVolumesvol_etiq: TStringField;
    zEtiquetasequip_recno: TIntegerField;
    zEtiquetaslabproc_recno: TIntegerField;
    zEtiquetastag: TStringField;
    zEtiquetasserie: TStringField;
    zEtiquetasvolume: TIntegerField;
    zEtiquetastipo_e: TStringField;
    zEtiquetasreg_nome: TStringField;
    zEtiquetassigla: TStringField;
    zEtiquetasnome: TStringField;
    zEtiquetasetiq_local: TStringField;
    zEtiquetasetiq_tag: TStringField;
    actPrnEtiqVidr: TAction;
    EtiquetasdeVidraria1: TMenuItem;
    actPrnEtiqVidrSel: TAction;
    EtiquetadeVidrariaSelecionada1: TMenuItem;
    zVolumesstatus: TIntegerField;
    Panel4: TPanel;
    JvImage1: TJvImage;
    lbLeg1: TLabel;
    JvImage2: TJvImage;
    lbLeg2: TLabel;
    lbLeg3: TLabel;
    JvImage3: TJvImage;
    zVolumesexp_dh: TDateTimeField;
    Label3: TLabel;
    edRemessa: TJvCalcEdit;
    IBrwSrcenvio: TIntegerField;
    IBrwSrccorreio: TIntegerField;
    IBrwSrcfrete: TFloatField;
    Label4: TLabel;
    edCota: TJvCalcEdit;
    IBrwSrccotacao: TIntegerField;
    zEtiquetasamostra: TIntegerField;
    TabSheet7: TTabSheet;
    zEtiquetascomodato: TIntegerField;
    procedure cbStatusChange(Sender: TObject);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure PageControl2Change(Sender: TObject);
    procedure zEtiquetastipoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure zEtiquetasCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure zVolumesCalcFields(DataSet: TDataSet);
    procedure actPrnEtiqVidrExecute(Sender: TObject);
    procedure actPrnEtiqVidrSelExecute(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure IBrwSrcenvioGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
    FCBClientes: TComboList;
    FActiveChildTab: TTabSheet;
    procedure RefreshChilds;
    procedure OnLoad; override;
    procedure RefreshCtrl; override;
    procedure FormataEtiqueta(Sender: TObject; var Row: string; DataSet: TDataSet);
  public
    { Public declarations }
    procedure ImprimirEtiqueta(DataSet: TDataSet);
  end;

var
  LabProcMonitor: TLabProcMonitor;

implementation

uses uResources, uDM, mcutils, uPrnTag;

{$R *.dfm}

procedure TLabProcMonitor.actPrnEtiqVidrExecute(Sender: TObject);
begin
  inherited;
  if not zEtiquetas.Active then
    zEtiquetas.Open;

  zEtiquetas.SortType := stDescending;
  zEtiquetas.First;

  while not zEtiquetas.Eof do
  begin
    ImprimirEtiqueta(zEtiquetas);

    zEtiquetas.Next;
  end;

  zEtiquetas.SortType := stAscending;
  G.RefreshDataSet(zEtiquetas);
end;

procedure TLabProcMonitor.actPrnEtiqVidrSelExecute(Sender: TObject);
begin
  inherited;
  ImprimirEtiqueta(zEtiquetas);
end;

procedure TLabProcMonitor.actQueryProcessExecute(Sender: TObject);
var
  sWhere : string;
begin
  inherited;
  if not Assigned(DataSet) or (DataSet <> IBrwSrc) then
    Exit;

  with DataSet do
  begin
    if cbStatus.ItemIndex > 0 then
      sWhere := 'r.situacao = :situacao ';

    {Aplica filtro por cliente}
    if Assigned(FCBClientes.Selected) and  (FCBClientes.Selected.Value > 0) then
    begin
      if swhere <> EmptyStr then
        swhere := swhere + 'and ';

      swhere := swhere + 'r.codigo = :codigo ';
    end;

    if Trim(edRemessa.Text) <> EmptyStr then
    begin
      if swhere <> EmptyStr then
        swhere := swhere + 'and ';
        
      swhere := swhere + 'r.recno = :remessa ';
    end;

    if Trim(edCota.Text) <> EmptyStr then
    begin
      if swhere <> EmptyStr then
        swhere := swhere + 'and ';

      swhere := swhere + 'r.cotacao = :cotacao ';
    end;

    if sWhere <> EmptyStr then
      SQL.Add('where ' + sWhere);

    if Assigned(Params.FindParam('remessa')) then
      Params.ParamByName('remessa').AsInteger := Round(edRemessa.Value);

    if Assigned(Params.FindParam('cotacao')) then
      Params.ParamByName('cotacao').AsInteger := Round(edCota.Value);
      
    if Assigned(Params.FindParam('situacao')) then
      ParamByName('situacao').AsInteger := cbStatus.ItemIndex - 1;

    if Assigned(Params.FindParam('codigo')) then
      Params.ParamByName('codigo').AsInteger := FCBClientes.Selected.Value;
  end;

  G.RefreshDataSet(DataSet);
  RefreshChilds;
end;

procedure TLabProcMonitor.cbStatusChange(Sender: TObject);
begin
  actQueryProcess.Enabled := True;
  with PageControl1 do
  begin
    DBGrid1.SetFocus;
    ActivePageIndex := cbStatus.ItemIndex;
    inherited PageControl1Change(PageControl1);
  end;
  
  if PageControl1.ActivePageIndex > 1 then
  begin
    tsVolumes.TabVisible := PageControl1.ActivePageIndex > 2;
    
    if tsVolumes.TabVisible then
      PageControl2.ActivePage := FActiveChildTab
    else
      PageControl2.ActivePage := tsEtiquetas;
      
    PageControl2.Parent := PageControl1.ActivePage;
    Splitter1.Parent := PageControl1.ActivePage;
  end;

  actQueryProcessExecute(actQueryProcess);
end;

procedure TLabProcMonitor.ComboBox1Change(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQuery);
end;

procedure TLabProcMonitor.DBGrid1DrawColumnCell(Sender: TObject;
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
          0: small_n.GetBitmap(213, fBitMap); //Digitado
          1: small_n.GetBitmap(210, fBitMap); //Estimado
          2: small_n.GetBitmap(205, fBitMap); //Montagem de Volume
          3: small_n.GetBitmap(214, fBitMap); //Preparando Despacho
          4: small_n.GetBitmap(208, fBitMap); //Expedição
          5: small_n.GetBitmap(209, fBitMap); //Aguardando Rastreio
          6: small_n.GetBitmap(211, fBitMap); //Enviado
          7: small_n.GetBitmap(204, fBitMap); //Enviado
        end;

      if Column.Width <> fBitMap.Width + 2 then
        Column.Width:= fBitMap.Width + 2;

      {Desenha o status da remessa}
      Canvas.Draw(Rect.Left + 1, Rect.Top + 1, fBitMap);
    finally
      fBitMap.Free;
    end;
end;

procedure TLabProcMonitor.DBGrid2DrawColumnCell(Sender: TObject;
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
        case zVolumesstatus.AsInteger of
          0: small_n.GetBitmap(213, fBitMap); // Volume Aberto
          1: small_n.GetBitmap(205, fBitMap); // Volume Fechado
          2: small_n.GetBitmap(208, fBitMap); // Volume Rastreado
        end;

      if Column.Width <> fBitMap.Width + 2 then
        Column.Width:= fBitMap.Width + 2;

      {Desenha o status da remessa}
      Canvas.Draw(Rect.Left + 1, Rect.Top + 1, fBitMap);
    finally
      fBitMap.Free;
    end;
end;

procedure TLabProcMonitor.FormataEtiqueta(Sender: TObject; var Row: string; DataSet: TDataSet);
var
  sTag: string;
begin
  sTag := EmptyStr;

  if DataSet.FieldByName('etiq_tag').AsString <> EmptyStr then
    sTag := ' Tag: ' + DataSet.FieldByName('etiq_tag').AsString;

  Row := mcStuff('000000000000', Row, DataSet.FieldByName('etiq_proc').AsString);
  Row := mcStuff('000.000.000.000', Row, DataSet.FieldByName('etiq_proc').DisplayText);
  Row := mcStuff('@1', Row, Format('Origem: %d Destino: %d', [IBrwSrcrecno.AsInteger, IBrwSrccodigo.AsInteger]));
  Row := mcStuff('@2', Row, DataSet.FieldByName('etiq_local').AsString);
  Row := mcStuff('@3', Row, DataSet.FieldByName('validade').DisplayText);
  Row := mcStuff('@4', Row, Format('Tipo: %s%s', [DataSet.FieldByName('tipo').DisplayText, sTag]));
end;

procedure TLabProcMonitor.FormCreate(Sender: TObject);
begin
  inherited;
  FActiveChildTab := tsVolumes;
  FCBClientes := TComboList.Create(ComboBox1, 'tbclientes', 'codigo', 'nome_chave');

  ComboBox1.Items.Insert(0, '(Todos)');
  ComboBox1.ItemIndex := 0;
end;

procedure TLabProcMonitor.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FCBClientes);
  inherited;
end;

procedure TLabProcMonitor.FormShow(Sender: TObject);
begin
  inherited;
  ReadOnly := True;
end;

procedure TLabProcMonitor.IBrwSrcAfterScroll(DataSet: TDataSet);
begin
  inherited;

  RefreshChilds;
end;

procedure TLabProcMonitor.IBrwSrcenvioGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Sedex';
    2: Text := 'Transportadora';
    3: Text := 'Cliente Retira';
  end;
end;

procedure TLabProcMonitor.ImprimirEtiqueta(DataSet: TDataSet);
var
  sFile, printer: String;
  oPrn: TPrnTag;
begin
  if not DataSet.Active then
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
    oPrn.Print(DataSet);
  finally
    FreeAndNil(oPrn);
  end;
end;

procedure TLabProcMonitor.OnLoad;
begin
  inherited;
  cbStatus.ItemIndex := 1;
  cbStatusChange(cbStatus);
end;

procedure TLabProcMonitor.PageControl1Change(Sender: TObject);
begin
  inherited;
  if cbStatus.ItemIndex <> PageControl1.ActivePageIndex then
  begin
    cbStatus.ItemIndex := PageControl1.ActivePageIndex;
    cbStatusChange(cbStatus);
  end;
end;

procedure TLabProcMonitor.PageControl2Change(Sender: TObject);
begin
  inherited;
  case PageControl2.ActivePageIndex of
    0: G.RefreshDataSet(zVolumes);
    1: G.RefreshDataSet(zEtiquetas);
  end;

  FActiveChildTab := PageControl2.ActivePage;
end;

procedure TLabProcMonitor.RefreshChilds;
begin
  zEtiquetas.ParamByName('remessa').AsInteger := -1;
  zVolumes.ParamByName('remessa').AsInteger := -1;

  if not DataSet.IsEmpty then
  begin
    zEtiquetas.ParamByName('remessa').AsInteger := IBrwSrcrecno.AsInteger;
    zVolumes.ParamByName('remessa').AsInteger := IBrwSrcrecno.AsInteger;
  end;

  //if (PageControl1.ActivePageIndex > 2) and  (tsVolumes.TabVisible) and (PageControl2.ActivePageIndex = 0) then
    G.RefreshDataSet(zVolumes);

  //if (PageControl1.ActivePageIndex > 1) and
  //  ((tsVolumes.TabVisible) and (PageControl2.ActivePageIndex = 1) or
   // not tsVolumes.TabVisible) then
    G.RefreshDataSet(zEtiquetas);
end;

procedure TLabProcMonitor.RefreshCtrl;
begin
  inherited;
  actPrnEtiqVidr.Enabled := IBrwSrc.Active and not IBrwSrc.IsEmpty;
  actPrnEtiqVidrSel.Enabled := IBrwSrc.Active and not IBrwSrc.IsEmpty and
    zEtiquetas.Active and not zEtiquetas.IsEmpty;
end;

procedure TLabProcMonitor.zEtiquetasCalcFields(DataSet: TDataSet);
var
  sLocal: String;
begin
  inherited;
  sLocal := zEtiquetassigla.AsString;

  if not zEtiquetasnome.IsNull then
  begin
    if sLocal <> EmptyStr then
      sLocal := sLocal + ' - ';

    sLocal := sLocal + zEtiquetasnome.AsString;
  end;

  if not zEtiquetasreg_nome.IsNull then
  begin
    if sLocal <> EmptyStr then
      sLocal := sLocal + ' - ';

    sLocal := sLocal + zEtiquetasreg_nome.AsString;
  end;

  zEtiquetasetiq_local.AsString := UpperCase(sLocal);

  zEtiquetasetiq_proc.AsString := mcRight(StringOfChar('0', 12) +
    zEtiquetascomodato.AsString, 12);

  if not zEtiquetastag.IsNull then
    zEtiquetasetiq_tag.AsString := zEtiquetastag.AsString
  else
    zEtiquetasetiq_tag.AsString := zEtiquetasserie.AsString;
end;

procedure TLabProcMonitor.zEtiquetastipoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Frasco';
    2: Text := 'Seringa';
  end;
end;

procedure TLabProcMonitor.zVolumesCalcFields(DataSet: TDataSet);
begin
  inherited;
  zVolumesvol_etiq.AsString := mcRight(StringOfChar('0', 12) +
    zVolumesrecno.AsString, 12);
end;

initialization
  RegisterClass(TLabProcMonitor);

finalization
  UnRegisterClass(TLabProcMonitor);

end.
