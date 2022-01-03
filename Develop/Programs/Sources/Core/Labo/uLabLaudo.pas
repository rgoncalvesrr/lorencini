unit uLabLaudo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, uIUtils, uFrameData, JvExMask, JvToolEdit,
  JvBaseEdits, uReport;

type
  TLabLaudo = class(TIDefBrowse)
    FrameData1: TFrameData;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    edPedido: TJvCalcEdit;
    IBrwSrcrecno: TIntegerField;
    IBrwSrccrit: TStringField;
    IBrwSrcpcoleta: TDateField;
    IBrwSrcemissao: TDateTimeField;
    IBrwSrcos: TIntegerField;
    IBrwSrcentrada: TDateTimeField;
    IBrwSrclocal: TStringField;
    IBrwSrclabsubest_recno: TIntegerField;
    IBrwSrccodigo: TIntegerField;
    IBrwSrcempresa: TStringField;
    IBrwSrcnome_chave: TStringField;
    IBrwSrccnpj: TStringField;
    IBrwSrccpf: TStringField;
    IBrwSrctelefone: TStringField;
    IBrwSrccidade: TStringField;
    IBrwSrcestado: TStringField;
    IBrwSrcemail: TStringField;
    IBrwSrcserie: TStringField;
    IBrwSrctag: TStringField;
    Label6: TLabel;
    edLaudo: TJvCalcEdit;
    IBrwSrcpedido: TIntegerField;
    edAmostra: TJvCalcEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edEquipSerie: TEdit;
    edEquipTag: TEdit;
    IBrwSrcamostra: TIntegerField;
    IBrwSrctitulo: TStringField;
    Label4: TLabel;
    edOS: TJvCalcEdit;
    FrameData2: TFrameData;
    Label10: TLabel;
    Label11: TLabel;
    actExportToPDF: TAction;
    GerarLaudosemPDF1: TMenuItem;
    IBrwSrccomodato: TIntegerField;
    IBrwSrcrelato_recno: TIntegerField;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label12: TLabel;
    edEtiqueta: TJvCalcEdit;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Label13: TLabel;
    edEmpresa: TEdit;
    Panel13: TPanel;
    Label14: TLabel;
    edRazao: TEdit;
    IBrwSrcsigla: TStringField;
    qContatos: TZQuery;
    qContatoslaudo: TIntegerField;
    qContatoscontato: TIntegerField;
    qContatoscliente: TIntegerField;
    qContatosnome: TStringField;
    qContatoscelular: TStringField;
    qContatostelefone: TStringField;
    qContatosramal: TStringField;
    qContatosemail: TStringField;
    qContatospadrao: TBooleanField;
    qContatosrecno: TIntegerField;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    dsContatos: TDataSource;
    ControlBar2: TControlBar;
    ToolBar3: TToolBar;
    ToolButton12: TToolButton;
    ToolButton14: TToolButton;
    tbDivDet: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    tbRefazGrid: TToolButton;
    Panel14: TPanel;
    actAtuContatos: TAction;
    actDelContato: TAction;
    actRefreshContatos: TAction;
    uContatos: TZUpdateSQL;
    actAtuContatosTodos: TAction;
    AtualizarContatosdeTodososLaudos1: TMenuItem;
    actPublishRepors: TAction;
    PublicarLaudos1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure FrameData1ComboBox1Change(Sender: TObject);
    procedure IBrwSrcsituacaoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBrwSrcBeforeOpen(DataSet: TDataSet);
    procedure CriteriaChange(Sender: TObject);
    procedure actExportToPDFExecute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
    procedure actAtuContatosExecute(Sender: TObject);
    procedure actDelContatoExecute(Sender: TObject);
    procedure actRefreshContatosExecute(Sender: TObject);
    procedure actAtuContatosTodosExecute(Sender: TObject);
    procedure actPublishReporsExecute(Sender: TObject);
  private
    FRefresh: Boolean;
    FR00014SQL: string;
    FR00017SQL: string;
    procedure OnPrint(Sender: TReport; var Continue: Boolean); override;
    procedure RefreshCtrl; override;
  public
    { Public declarations }
  end;

var
  LabLaudo: TLabLaudo;

implementation

uses
  uDM, ccalendardiff, uDMReport, uIProgress, ShellAPI;

{$R *.dfm}

procedure TLabLaudo.actAtuContatosExecute(Sender: TObject);
begin
  inherited;
  with U.Data.Query do
  try
    SQL.Text := 'select atualiza_contatos_laudo(:laudo);';
    ParamByName('laudo').AsInteger := IBrwSrcrecno.AsInteger;
    ExecSQL;
  finally
    Close;
    G.RefreshDataSet(qContatos);
  end;
end;

procedure TLabLaudo.actAtuContatosTodosExecute(Sender: TObject);
var
  localBookMark: TBookmark;
begin
  inherited;
  IBrwSrc.DisableControls;
  localBookMark := IBrwSrc.GetBookmark;
  with U.Data.Query do
  try
    IBrwSrc.First;
    SQL.Text := 'select atualiza_contatos_laudo(:laudo);';

    while not IBrwSrc.Eof do
    begin
      ParamByName('laudo').AsInteger := IBrwSrcrecno.AsInteger;
      ExecSQL;
      IBrwSrc.Next;
    end;
  finally
    IBrwSrc.GotoBookmark(localBookMark);
    IBrwSrc.FreeBookmark(localBookMark);
    IBrwSrc.EnableControls;
    Close;
    G.RefreshDataSet(qContatos);
  end;
end;

procedure TLabLaudo.actDelContatoExecute(Sender: TObject);
begin
  inherited;
  qContatos.Delete;
end;

procedure TLabLaudo.actExportToPDFExecute(Sender: TObject);
var
  oLaudo: TReport;
  mark: TBookmark;
  currentCursor: TCursor;
  pathTarget: string;
  fileName: string;
  function ComposeFileName(Filename, Field, Value : string): string;
  begin
    Result := Filename;

    if Trim(Value) <> EmptyStr then
    begin
      if Result <> EmptyStr then
        Result := Result + ' - ';

      Result := Result + Field + ' [' + Value + ']';
    end;
  end;
begin
  inherited;

  IProgress := TIProgress.Create(nil);
  IProgress.ProgressBar1.Max := IBrwSrc.RecordCount;
  IProgress.Label3.Caption := EmptyStr;
  IProgress.Show;

  currentCursor := Screen.Cursor;
  mark := IBrwSrc.GetBookmark;
  IBrwSrc.DisableControls;
  actExportToPDF.Enabled := False;

  oLaudo := FindReport(14)
    .PrintToDevice(False)
    .PrintToPDF(True);

  DMReport.frxPDF.ShowProgress := False;

  pathTarget := Format('%s%s', [U.Path.Reports, Trim(IBrwSrcnome_chave.AsString)]);

  if not DirectoryExists(pathTarget) then
    CreateDir(pathTarget);

  try
    IBrwSrc.First;
    IProgress.Label3.Caption := 'Exportando Laudo ' + IBrwSrcrecno.AsString;

    while not IBrwSrc.Eof do
    begin

      DMReport.R00014.SQL.Text := FR00014SQL + ' and r.recno = :laudo';
      DMReport.R00014.ParamByName('laudo').AsInteger := IBrwSrcrecno.AsInteger;
      G.RefreshDataSet(DMReport.R00014);

      fileName := EmptyStr;
//      if not IBrwSrcpedido.IsNull then
//        fileName := Format('Pedido %s. ', [IBrwSrcpedido.AsString]);

      //Sigla_serie_<dsfdsfdsf>_tag_<dfsdfdsf>

      if not IBrwSrcsigla.IsNull then
        fileName := UpperCase(IBrwSrcsigla.AsString);

      fileName := ComposeFileName(fileName, 'Serie', IBrwSrcserie.AsString);
      fileName := ComposeFileName(fileName, 'TAG', IBrwSrctag.AsString);
      fileName := ComposeFileName(fileName, 'Local', IBrwSrclocal.AsString);
      fileName := ComposeFileName(fileName, 'Laudo', IBrwSrcrecno.AsString);

      fileName := StringReplace(fileName, '\', EmptyStr, [rfReplaceAll]);
      fileName := StringReplace(fileName, '/', EmptyStr, [rfReplaceAll]);
      fileName := StringReplace(fileName, ':', EmptyStr, [rfReplaceAll]);
      fileName := StringReplace(fileName, '*', EmptyStr, [rfReplaceAll]);
      fileName := StringReplace(fileName, '?', EmptyStr, [rfReplaceAll]);
      fileName := StringReplace(fileName, '"', EmptyStr, [rfReplaceAll]);
      fileName := StringReplace(fileName, '<', EmptyStr, [rfReplaceAll]);
      fileName := StringReplace(fileName, '>', EmptyStr, [rfReplaceAll]);
      fileName := StringReplace(fileName, '|', EmptyStr, [rfReplaceAll]);
            
//      fileName := Format('%sLaudo %s - %s', [fileName, IBrwSrcrecno.AsString, IBrwSrctitulo.AsString]);
      oLaudo.FileName(Format('%s\%s.pdf', [pathTarget, fileName]));
      IProgress.Label3.Caption := 'Exportando ' + oLaudo.FileName;
      Sleep(1);
      DoRpt(oLaudo);
      IBrwSrc.Next;
      IProgress.ProgressBar1.Position := IBrwSrc.RecNo;
      Sleep(1);
    end;
  finally
    Screen.Cursor := currentCursor;
    IBrwSrc.GotoBookmark(mark);
    IBrwSrc.FreeBookmark(mark);
    IBrwSrc.EnableControls;

    oLaudo.PrintToDevice(True)
      .PrintToPDF(False)
      .FileName(EmptyStr);

    FreeAndNil(IProgress);
    actExportToPDF.Enabled := True;
    DMReport.frxPDF.ShowProgress := True;
    DMReport.R00014.Close;
    DMReport.R00014.SQL.Text := FR00014SQL;

    ShellExecute(Application.Handle, PChar('open'), PChar('explorer.exe'), PChar(pathTarget), nil, SW_NORMAL);
  end;
end;

procedure TLabLaudo.Action1Execute(Sender: TObject);
begin
  inherited;
  if not U.Out.ConfWarn('Tem certeza que deseja revisar laudo?') then
    Exit;

  U.Out.ShowInfo('Revisão gerada com o número %d', [Random(3500)]);
end;

procedure TLabLaudo.actPublishReporsExecute(Sender: TObject);
var
  mark: TBookmark;
  currentCursor: TCursor;
  fileName: string;
  QSpool: TZReadOnlyQuery;

  function ComposeFileName(Filename, Field, Value : string): string;
  begin
    Result := Filename;

    if Trim(Value) <> EmptyStr then
    begin
      if Result <> EmptyStr then
        Result := Result + ' - ';

      Result := Result + Field + ' [' + Value + ']';
    end;
  end;
begin
  inherited;

  IProgress := TIProgress.Create(nil);
  IProgress.ProgressBar1.Max := IBrwSrc.RecordCount;
  IProgress.Label3.Caption := EmptyStr;
  IProgress.Show;

  currentCursor := Screen.Cursor;
  mark := IBrwSrc.GetBookmark;
  IBrwSrc.DisableControls;
  actPublishRepors.Enabled := False;

  QSpool := U.QueryPersistent;
  QSpool.SQL.Text := 'select laudo_gerar_pdf(:laudo)';

  try
    IBrwSrc.First;

    while not IBrwSrc.Eof do
    begin
      IProgress.Label3.Caption := 'Imprimindo ' + FileName;
      IProgress.Label3.Repaint;

      Sleep(1);
      QSpool.ParamByName('laudo').AsInteger := IBrwSrcrecno.AsInteger;
      QSpool.ExecSQL;

      IBrwSrc.Next;
      IProgress.ProgressBar1.Position := IBrwSrc.RecNo;
    end;
  finally
    Screen.Cursor := currentCursor;
    IBrwSrc.GotoBookmark(mark);
    IBrwSrc.FreeBookmark(mark);
    IBrwSrc.EnableControls;
    FreeAndNil(IProgress);
    FreeAndNil(QSpool);
    actPublishRepors.Enabled := True;
  end;
end;

procedure TLabLaudo.actQueryProcessExecute(Sender: TObject);
var
  swhere: string;
  ACal : TCCalendarDiff;

  procedure SetParams(ADataSet: TZQuery);
  begin
    with ADataSet do
    begin
      // Nenhum cliente informado 
      if Assigned(Params.FindParam('cliente')) then
        Params.ParamByName('cliente').Clear;

      if Assigned(Params.FindParam('empresa')) then
        ParamByName('empresa').AsString := '%' + edEmpresa.Text + '%';

      if Assigned(Params.FindParam('razao')) then
        ParamByName('razao').AsString := '%' + edRazao.Text + '%';

      if Assigned(Params.FindParam('emissao_de')) then
      begin
        Params.ParamByName('emissao_de').AsDate := ACal.BeginDate;
        Params.ParamByName('emissao_ate').AsDate := ACal.EndDate;
      end;

      if Assigned(Params.FindParam('entrada_de')) then
      begin
        ACal := FrameData2.CCalendarDiff1;
        Params.ParamByName('entrada_de').AsDate := ACal.BeginDate;
        Params.ParamByName('entrada_ate').AsDate := ACal.EndDate;
      end;

      if Assigned(Params.FindParam('amostra')) then
        Params.ParamByName('amostra').AsInteger := Round(edAmostra.Value);

      if Assigned(Params.FindParam('laudo')) then
        Params.ParamByName('laudo').AsInteger := Round(edLaudo.Value);

      if Assigned(Params.FindParam('pedido')) then
        Params.ParamByName('pedido').AsInteger := Round(edPedido.Value);

      if Assigned(Params.FindParam('os')) then
        Params.ParamByName('os').AsInteger := Round(edOS.Value);

      if Assigned(Params.FindParam('serie')) then
        Params.ParamByName('serie').AsString := edEquipSerie.Text;

      if Assigned(Params.FindParam('tag')) then
        Params.ParamByName('tag').AsString := edEquipTag.Text;

      if Assigned(Params.FindParam('etiqueta')) then
        Params.ParamByName('etiqueta').AsString := edEtiqueta.Text;
    end;
  end;
begin
  inherited;

  if not Assigned(DataSet) then
    Exit;

  ACal := FrameData1.CCalendarDiff1;

  swhere := EmptyStr;

  DMReport.R00014.SQL.Text := FR00014SQL;
  DMReport.R00017.SQL.Text := FR00017SQL;

  with IBrwSrc do
  begin
    if Length(edEmpresa.Text) > 0 then
      sWhere := sWhere + 'and c.nome_chave ilike :empresa ';

    if Length(edRazao.Text) > 0 then
      sWhere := sWhere + 'and c.empresa ilike :razao ';

    // Gambiarra - Cliente não informado
//    if (Length(edEmpresa.Text) = 0) and (Length(edRazao.Text) = 0) then
//      sWhere := sWhere + 'and c.codigo = :cliente ';

    if Trim(edAmostra.Text) <> EmptyStr then
      swhere := swhere + 'and r.amostra = :amostra ';

    if Trim(edLaudo.Text) <> EmptyStr then
      swhere := swhere + 'and r.recno = :laudo ';

    if Trim(edOS.Text) <> EmptyStr then
      swhere := swhere + 'and r.os = :os ';

    if Trim(edPedido.Text) <> EmptyStr then
      swhere := swhere + 'and r.pedido = :pedido ';

    if Trim(edEquipSerie.Text) <> EmptyStr then
      swhere := swhere + 'and e.serie = :serie ';

    if Trim(edEtiqueta.Text) <> EmptyStr then
      swhere := swhere + 'and a.comodato = :etiqueta ';

    if Trim(edEquipTag.Text) <> EmptyStr then
      swhere := swhere + 'and a.tag = :tag ';

    if FrameData1.CCalendarDiff1.Interval <> diNone then
      swhere := swhere + 'and cast(r.emissao as date) between :emissao_de and :emissao_ate ';

    if FrameData2.CCalendarDiff1.Interval <> diNone then
      swhere := swhere + 'and cast(h.ocorrencia as date) between :entrada_de and :entrada_ate ';

    if swhere <> EmptyStr then
    begin
      SQL.Add(swhere);
      DMReport.R00014.SQL.Add(swhere);
      DMReport.R00017.SQL.Add(swhere);
    end;

    SetParams(IBrwSrc);
    SetParams(DMReport.R00014);
    SetParams(DMReport.R00017);

    if FRefresh then
      G.RefreshDataSet(IBrwSrc);

    RefreshCtrl;
  end;
end;

procedure TLabLaudo.actRefreshContatosExecute(Sender: TObject);
begin
  inherited;
  G.RefreshDataSet(qContatos);
end;

procedure TLabLaudo.CriteriaChange(Sender: TObject);
begin
  inherited;
  actQueryProcess.Enabled := True;
end;

procedure TLabLaudo.FormCreate(Sender: TObject);
begin
  inherited;
  FR00014SQL := DMReport.R00014.SQL.Text;
  FR00017SQL := DMReport.R00017.SQL.Text;
  AllowInsert := False;
  AllowEdit := False;
  AllowDelete := False;
end;

procedure TLabLaudo.FrameData1ComboBox1Change(Sender: TObject);
begin
  inherited;
  FrameData1.ComboBox1Change(Sender);
end;

procedure TLabLaudo.IBrwSrcAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qContatos.ParamByName('laudo').AsInteger := IBrwSrcrecno.AsInteger;
  G.RefreshDataSet(qContatos);
end;

procedure TLabLaudo.IBrwSrcBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  FRefresh := False;
  try
    actQueryProcessExecute(actQuery);
  finally
    FRefresh := True;
  end;
end;

procedure TLabLaudo.IBrwSrcsituacaoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Ativo';
    2: Text := 'Baixado';
  end;
end;

procedure TLabLaudo.OnPrint(Sender: TReport; var Continue: Boolean);
begin
  inherited;
  if not actExportToPDF.Enabled then
    Exit;
    
  with DMReport do
    case Sender.ID of
      14: G.RefreshDataSet(R00014);
      17: G.RefreshDataSet(R00017);
    end;
end;

procedure TLabLaudo.RefreshCtrl;
begin
  inherited;
  actExportToPDF.Enabled := IBrwSrc.Active and not IBrwSrc.IsEmpty;
  actPublishRepors.Enabled := actExportToPDF.Enabled;
  actAtuContatos.Enabled := not IBrwSrc.IsEmpty;
  actDelContato.Enabled := not qContatos.IsEmpty;
  actRefreshContatos.Enabled := not IBrwSrc.IsEmpty;
  actAtuContatosTodos.Enabled := not IBrwSrc.IsEmpty;
end;

initialization
  RegisterClass(TLabLaudo);

finalization
  UnRegisterClass(TLabLaudo);

end.
