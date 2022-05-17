unit uLabAmostraAss;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, uIUtils, uLabLaudoCl, ZSequence, uFrameData,
  JvExMask, JvToolEdit, JvBaseEdits, uFrameCheckBar;

type
  TLabAmostraAss = class(TIDefBrowse)
    IBrwSrcrelato_recno: TIntegerField;
    IBrwSrcstatus: TIntegerField;
    IBrwSrcrecno: TIntegerField;
    IBrwSrclabcrit_recno: TIntegerField;
    IBrwSrclabdiag_recno: TIntegerField;
    IBrwSrcdiagnostico: TMemoField;
    IBrwSrcrecomendacao: TMemoField;
    IBrwSrcos: TIntegerField;
    IBrwSrcentrada: TDateTimeField;
    IBrwSrccoleta: TDateField;
    IBrwSrclaudodesc: TStringField;
    IBrwSrctamb: TIntegerField;
    IBrwSrctoleo: TIntegerField;
    IBrwSrcumidade: TIntegerField;
    IBrwSrctensao: TFloatField;
    IBrwSrccodigo: TIntegerField;
    IBrwSrcempresa: TStringField;
    IBrwSrcnome_chave: TStringField;
    IBrwSrccnpj: TStringField;
    IBrwSrccpf: TStringField;
    IBrwSrctelefone: TStringField;
    IBrwSrctpamostra_recno: TIntegerField;
    IBrwSrcatipo: TStringField;
    IBrwSrcequip_recno: TIntegerField;
    IBrwSrcfabricante: TStringField;
    IBrwSrcserie: TStringField;
    IBrwSrctipo: TStringField;
    IBrwSrcdescri: TStringField;
    IBrwSrcpotencia: TFloatField;
    IBrwSrcimped: TFloatField;
    IBrwSrctensao_1: TFloatField;
    IBrwSrcfases: TIntegerField;
    IBrwSrcano: TIntegerField;
    IBrwSrclote: TStringField;
    IBrwSrcisolante: TStringField;
    IBrwSrcvolume: TIntegerField;
    IBrwSrcdrenos: TStringField;
    IBrwSrcfamilia: TStringField;
    IBrwSrctag: TStringField;
    Label18: TLabel;
    cbCli: TComboBox;
    IBrwSrcsigla: TStringField;
    IBrwSrcnome: TStringField;
    IBrwSrcregional: TIntegerField;
    IBrwSrcreg_nome: TStringField;
    IBrwSrclabsubest_recno: TIntegerField;
    IBrwSrclocal: TStringField;
    IBrwSrccrit: TStringField;
    IBrwSrcdiag_descri: TStringField;
    IBrwSrcdiag_diag: TMemoField;
    IBrwSrcdiag_dias: TIntegerField;
    IBrwSrclabrec_recno: TIntegerField;
    IBrwSrcrec_descri: TStringField;
    IBrwSrcrecomenda: TMemoField;
    qDiag: TZQuery;
    dsDiag: TDataSource;
    qDiagrelato_recno: TIntegerField;
    qDiagdescri: TStringField;
    qDiagdiag: TMemoField;
    qDiagdias: TIntegerField;
    qDiagrecno: TIntegerField;
    ZSequence1: TZSequence;
    IBrwSrcpcoleta: TDateField;
    qCrit: TZQuery;
    dsCrit: TDataSource;
    qCritrelato_recno: TIntegerField;
    qCritdescri: TStringField;
    qCritrecno: TIntegerField;
    IBrwSrclaudo: TStringField;
    dsRec: TDataSource;
    qRec: TZQuery;
    qRecrelato_recno: TIntegerField;
    qReclabdiag_recno: TIntegerField;
    qRecdescri: TStringField;
    qRecrecomenda: TMemoField;
    qRecrecno: TIntegerField;
    IBrwSrcobs: TMemoField;
    qResponsavel: TZQuery;
    dsResponsavel: TDataSource;
    qResponsavelidcodigo: TIntegerField;
    qResponsavelnome: TStringField;
    IBrwSrcidcodigo: TIntegerField;
    IBrwSrcnome_1: TStringField;
    IBrwSrccrq: TStringField;
    FrameData1: TFrameData;
    Label3: TLabel;
    Label1: TLabel;
    IBrwSrcdestinatario: TStringField;
    IBrwSrcpedido: TIntegerField;
    IBrwSrcrevisao: TIntegerField;
    IBrwSrctensao_un: TStringField;
    IBrwSrcpotencia_un: TStringField;
    IBrwSrcamostra: TIntegerField;
    IBrwSrcamostrador: TStringField;
    Label4: TLabel;
    edLaudo: TJvCalcEdit;
    Label5: TLabel;
    edPedido: TJvCalcEdit;
    Label6: TLabel;
    edAmostra: TJvCalcEdit;
    Label7: TLabel;
    edOS: TJvCalcEdit;
    Registro2: TMenuItem;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label8: TLabel;
    edEtiqueta: TJvCalcEdit;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    IBrwSrccomodato: TIntegerField;
    qAnalista: TZQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    dsAnalista: TDataSource;
    IBrwSrcanalista: TIntegerField;
    FrameCheckBar1: TFrameCheckBar;
    IBrwSrcmark: TBooleanField;
    actSign: TAction;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    IBrwSrcanalise_automatica: TBooleanField;
    TabSheet2: TTabSheet;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
    procedure IBrwSrclabdiag_recnoChange(Sender: TField);
    procedure qDiagAfterScroll(DataSet: TDataSet);
    procedure IBrwSrclabrec_recnoChange(Sender: TField);
    procedure FormActivate(Sender: TObject);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure edLaudoChange(Sender: TObject);
    procedure actRegExecute(Sender: TObject);
    procedure DBGridKeyPress(Sender: TObject; var Key: Char);
    procedure actSignExecute(Sender: TObject);
    procedure IBrwSrcBeforePost(DataSet: TDataSet);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure PageControl1Change(Sender: TObject);
    procedure FrameCheckBar1ToolButton17Click(Sender: TObject);
  private
    { Private declarations }
    FLaudo: TLaudo;
    FCBClientes: TComboList;
    procedure RefreshCtrl; override;
    procedure OnEdit; override;
    procedure OnMark(Sender: TObject);
    procedure OnLog(var TableName: string; var Recno: Integer); override;
  public
    { Public declarations }
  end;

var
  LabAmostraAss: TLabAmostraAss;

implementation

uses uDM, uLabAmostraAssM, ccalendardiff, uResources, uLaudoService, 
  uLabAmostraAssBloq;

{$R *.dfm}

procedure TLabAmostraAss.actQueryProcessExecute(Sender: TObject);
var
  swhere: string;
  ACal : TCCalendarDiff;
begin
  inherited;

  if not Assigned(DataSet) then
    Exit;

  ACal := FrameData1.CCalendarDiff1;
  
  swhere := '';

  with IBrwSrc do
  begin
    {Aplica filtro por cliente}
    if Assigned(FCBClientes.Selected) and (FCBClientes.Selected.Value > 0) then
      swhere := swhere + 'and a.codigo = :codigo ';

    if ACal.Interval <> diNone then
      swhere := swhere + 'and h.ocorrencia between :entra_de and :entra_ate ';

    if Trim(edPedido.Text) <> EmptyStr then
      swhere := swhere + 'and r.pedido = :pedido ';

    if Trim(edAmostra.Text) <> EmptyStr then
      swhere := swhere + 'and r.amostra = :amostra ';

    if Trim(edEtiqueta.Text) <> EmptyStr then
      swhere := swhere + 'and a.comodato = :etiqueta ';

    if Trim(edOS.Text) <> EmptyStr then
      swhere := swhere + 'and r.os = :os ';

    if Trim(edLaudo.Text) <> EmptyStr then
      swhere := swhere + 'and r.recno = :laudo ';

    if swhere <> '' then
      SQL.Add(swhere);

    if Assigned(Params.FindParam('entra_de')) then
    begin
      Params.ParamByName('entra_de').AsDate := ACal.BeginDate;
      Params.ParamByName('entra_ate').AsDate := ACal.EndDate;
    end;

    if Assigned(Params.FindParam('codigo')) then
      Params.ParamByName('codigo').AsInteger := FCBClientes.Selected.Value;

    if Assigned(Params.FindParam('pedido')) then
      Params.ParamByName('pedido').AsInteger := Round(edPedido.Value);

    if Assigned(Params.FindParam('amostra')) then
      Params.ParamByName('amostra').AsInteger := Round(edAmostra.Value);

    if Assigned(Params.FindParam('etiqueta')) then
      Params.ParamByName('etiqueta').AsInteger := Round(edEtiqueta.Value);

    if Assigned(Params.FindParam('os')) then
      Params.ParamByName('os').AsInteger := Round(edOS.Value);

    if Assigned(Params.FindParam('laudo')) then
      Params.ParamByName('laudo').AsInteger := Round(edLaudo.Value);

    Params.ParamByName('analise_automatica').AsBoolean := (PageControl1.ActivePageIndex = 0);

    G.RefreshDataSet(IBrwSrc);
    RefreshCtrl;
  end;
end;

procedure TLabAmostraAss.actRegExecute(Sender: TObject);
begin
  inherited;
  if not U.Out.ConfWarn('Tem certeza que deseja revisar laudo?') then
    Exit;

  U.Out.ShowInfo('Revis�o gerada com o n�mero %d', [Random(3500)]);
end;

procedure TLabAmostraAss.actSignExecute(Sender: TObject);
var
  pos: TBookmark;
begin
  if not U.Out.ConfQues('Assinar laudos selecionados?') then
    Exit;

  pos := IBrwSrc.GetBookmark;
  IBrwSrc.DisableControls;
  with IBrwSrc do
  try
    First;

    while not Eof do
    begin
      if FieldByName('mark').AsBoolean and  not FieldByName('labcrit_recno').IsNull and
         not FieldByName('labdiag_recno').IsNull and not FieldByName('labrec_recno').IsNull and
         not FieldByName('idcodigo').IsNull and not FieldByName('analista').IsNull then
      begin
        Edit;
        FieldByName('status').AsInteger := 3;
        FieldByName('mark').AsBoolean := False;
        try
          Post;
        except
          on e:Exception do
            Cancel;
        end;
      end;

      Next;
    end;
  finally
    GotoBookmark(pos);
    FreeBookmark(pos);
    EnableControls;
  end;

  G.RefreshDataSet(IBrwSrc);
  RefreshCtrl;

  TLaudoService.ShowReportsWithIssue;
end;

procedure TLabAmostraAss.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  fBitMap: TBitmap;
begin
  if (Column.Index <> 1) then
    inherited DBGridDrawColumnCell(Sender, Rect, DataCol, Column, State)
  else
  begin
    fBitMap:= TBitmap.Create;
    with TDBGrid(Sender) do
    try

      fBitMap.Transparent:= True;

      with Resources do
        if IBrwSrcanalise_automatica.AsBoolean then
          small_n.GetBitmap(208, fBitMap) //Executado
        else
          small_n.GetBitmap(213, fBitMap); //Em Digita��o

      if Column.Width <> fBitMap.Width + 2 then
        Column.Width:= fBitMap.Width + 2;

      {Desenha o status da remessa}
      Canvas.Draw(Rect.Left + 1, Rect.Top + 1, fBitMap);
    finally
      fBitMap.Free;
    end;
  end;
end;

procedure TLabAmostraAss.DBGridKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #32) and (IBrwSrc.State = dsBrowse) then
    FrameCheckBar1.actProcessMarkExecute(actInverse);

  inherited;
end;

procedure TLabAmostraAss.edLaudoChange(Sender: TObject);
begin
  inherited;
  actQueryProcess.Enabled := True;
end;

procedure TLabAmostraAss.FormActivate(Sender: TObject);
begin
  inherited;
  G.RefreshDataSet(qResponsavel);
  G.RefreshDataSet(qAnalista);
end;

procedure TLabAmostraAss.FormCreate(Sender: TObject);
begin
  inherited;
  LabAmostraAss := Self;
  FCBClientes := TComboList.Create(cbCli, 'tbclientes', 'codigo', 'nome_chave');

  cbCli.Items.Insert(0, '(Todos)');
  cbCli.ItemIndex := 0;

  FrameCheckBar1.Table := 'labamostras_rel';
  FrameCheckBar1.OnChange := OnMark;
end;

procedure TLabAmostraAss.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FCBClientes);

  if Assigned(FLaudo) then
    FreeAndNil(FLaudo);

  inherited;
end;

procedure TLabAmostraAss.FrameCheckBar1ToolButton17Click(Sender: TObject);
begin
  inherited;
  FrameCheckBar1.actProcessMarkExecute(Sender);

end;

procedure TLabAmostraAss.IBrwSrcAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if Assigned(LabAmostraAssM) then
  begin
    if not Assigned(FLaudo) then
      FLaudo := TLaudo.Create(nil);

    FLaudo.BuildLaudo(IBrwSrcamostra.AsInteger, IBrwSrcrecno.AsInteger,
      IBrwSrcrelato_recno.AsInteger);
    LabAmostraAssM.Laudo := FLaudo;

    qDiag.ParamByName('tipolaudo').AsInteger := IBrwSrcrelato_recno.AsInteger;
    qCrit.ParamByName('tipolaudo').AsInteger := IBrwSrcrelato_recno.AsInteger;
    G.RefreshDataSet(qDiag);
    G.RefreshDataSet(qCrit);

    LabAmostraAssM.JvDBComboBox1.UpdateDropDownItems;
    LabAmostraAssM.JvDBComboBox2.UpdateDropDownItems;
  end;
end;

procedure TLabAmostraAss.IBrwSrcBeforePost(DataSet: TDataSet);
begin
  inherited;
  IBrwSrcmark.AsBoolean := (IBrwSrcstatus.AsInteger = 2) and not IBrwSrclabcrit_recno.IsNull and
    not IBrwSrclabdiag_recno.IsNull and not IBrwSrclabrec_recno.IsNull and
    not IBrwSrcidcodigo.IsNull and not IBrwSrcanalista.IsNull;
end;

procedure TLabAmostraAss.IBrwSrclabdiag_recnoChange(Sender: TField);
begin
  inherited;
  if not (IBrwSrc.State in [dsEdit, dsInsert]) then
    Exit;

  IBrwSrcdiag_descri.SetData(nil);
  IBrwSrcdiag_diag.SetData(nil);
  IBrwSrcdiag_dias.SetData(nil);
  IBrwSrcdiagnostico.SetData(nil);
  IBrwSrcrecomendacao.SetData(nil);
  IBrwSrcrecomenda.SetData(nil);
  IBrwSrclabrec_recno.SetData(nil);
  IBrwSrcpcoleta.SetData(nil);

  if Sender.IsNull or not qDiag.Locate('recno', Sender.AsInteger, []) then
    Exit;

  IBrwSrcdiag_descri.AsString := qDiagdescri.AsString;
  IBrwSrcdiag_diag.AsString := qDiagdiag.AsString;
  IBrwSrcdiag_dias.AsInteger := qDiagdias.AsInteger;
  IBrwSrcdiagnostico.AsString := qDiagdiag.AsString;
  IBrwSrcpcoleta.AsDateTime := IBrwSrccoleta.AsDateTime +
    IBrwSrcdiag_dias.AsInteger;
end;

procedure TLabAmostraAss.IBrwSrclabrec_recnoChange(Sender: TField);
begin
  inherited;
  if not (IBrwSrc.State in [dsEdit, dsInsert]) then
    Exit;

  IBrwSrcrecomendacao.SetData(nil);
  IBrwSrcrecomenda.SetData(nil);

  if Sender.IsNull or not qRec.Locate('recno', Sender.AsInteger, []) then
    Exit;

  IBrwSrcrecomendacao.AsString := qRecrecomenda.AsString;
  IBrwSrcrecomenda.AsString := qRecrecomenda.AsString;
end;

procedure TLabAmostraAss.OnEdit;
begin
  LabAmostraAssM := TLabAmostraAssM.Create(nil);
  try
    IBrwSrcAfterScroll(IBrwSrc);
    LabAmostraAssM.DataSet := IBrwSrc;
    LabAmostraAssM.ShowModal;
  finally
    FreeAndNil(LabAmostraAssM);
  end;

end;

procedure TLabAmostraAss.OnLog(var TableName: string; var Recno: Integer);
begin
  inherited;
  TableName := 'labamostras_rel';
  Recno := IBrwSrcrecno.AsInteger;
end;

procedure TLabAmostraAss.OnMark(Sender: TObject);
var
  pos: TBookmark;
begin
  actSign.Enabled := False;

  if (FrameCheckBar1.CheckedCount = 0) or IBrwSrc.IsEmpty then
    Exit;

  pos := IBrwSrc.GetBookmark;
  IBrwSrc.DisableControls;
  with IBrwSrc do
  try
    First;

    while not Eof do
    begin
      if FieldByName('mark').AsBoolean and not FieldByName('labcrit_recno').IsNull and
         not FieldByName('labdiag_recno').IsNull and not FieldByName('labrec_recno').IsNull and
         not FieldByName('idcodigo').IsNull and not FieldByName('analista').IsNull then
      begin
        actSign.Enabled := True;
        Break;
      end;

      Next;
    end;
  finally
    GotoBookmark(pos);
    FreeBookmark(pos);
    EnableControls;
  end;
end;

procedure TLabAmostraAss.PageControl1Change(Sender: TObject);
begin
  inherited;
  FrameCheckBar1.Parent := PageControl1.ActivePage;
  DBGrid1.Parent := PageControl1.ActivePage;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TLabAmostraAss.qDiagAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if Assigned(LabAmostraAssM) then
  begin
    qRec.ParamByName('tipolaudo').AsInteger := IBrwSrcrelato_recno.AsInteger;
    qRec.ParamByName('diag').AsInteger := IBrwSrclabdiag_recno.AsInteger;

    G.RefreshDataSet(qRec);

    LabAmostraAssM.JvDBComboBox3.UpdateDropDownItems;
  end;
end;

procedure TLabAmostraAss.RefreshCtrl;
begin
  inherited;
  actLog.Enabled := not IBrwSrc.IsEmpty and (IBrwSrc.State = dsBrowse);
end;

initialization
  RegisterClass(TLabAmostraAss);

finalization
  UnRegisterClass(TLabAmostraAss);

end.
