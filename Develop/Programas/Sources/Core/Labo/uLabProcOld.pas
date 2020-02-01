unit uLabProcOld;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, ZSequence, uIUtils, uFrameData;

type
  TLabProcOld = class(TIDefBrowse)
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
    Label1: TLabel;
    cbSituacao: TComboBox;
    IBrwSrctelefone: TStringField;
    qPItens: TZQuery;
    uPItens: TZUpdateSQL;
    sPItens: TZSequence;
    qPItensrecno: TIntegerField;
    qPItenscodigo: TIntegerField;
    qPItenstipo: TIntegerField;
    qPItensequip_recno: TIntegerField;
    qPItenstag: TStringField;
    qPItensserie: TStringField;
    qPItenslabproc_recno: TIntegerField;
    qPItenscomodato_recno: TIntegerField;
    qPItenssituacao: TIntegerField;
    qPItensean39: TStringField;
    dsPItens: TDataSource;
    qPItenstipo_e: TStringField;
    qPItensfases: TIntegerField;
    qPItenslote: TStringField;
    qPItensreg_nome: TStringField;
    qPItenssigla: TStringField;
    qPItensnome: TStringField;
    qPItensfabricante: TStringField;
    qPItensano: TIntegerField;
    qPItensisolante: TStringField;
    qPItensvolume: TIntegerField;
    qPItensdrenos: TStringField;
    qPItensetiq_local: TStringField;
    qPItensetiq_proc: TStringField;
    qPItenspotencia: TFloatField;
    qPItenstensao: TFloatField;
    qPItensimped: TFloatField;
    qPItensvalidade: TDateField;
    IBrwSrcestado: TStringField;
    ComboBox1: TComboBox;
    Label18: TLabel;
    actPrnEtiq: TAction;
    qPItensetiq_tag: TStringField;
    Etiquetas1: TMenuItem;
    qPItensetiq_tipo: TStringField;
    qPItensdataprog: TDateField;
    ToolButton12: TToolButton;
    actRemessa: TAction;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    PageControl2: TPageControl;
    TabSheet7: TTabSheet;
    DBGrid2: TDBGrid;
    Splitter1: TSplitter;
    FrameData1: TFrameData;
    Label3: TLabel;
    Label4: TLabel;
    IBrwSrcfrascos: TIntegerField;
    IBrwSrcseringas: TIntegerField;
    procedure IBrwSrcsituacaoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBrwSrcsituacaoSetText(Sender: TField; const Text: string);
    procedure cbSituacaoChange(Sender: TObject);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
    procedure qPItenstipoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qPItenstipoSetText(Sender: TField; const Text: string);
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
    procedure qPItensAfterInsert(DataSet: TDataSet);
    procedure qPItensCalcFields(DataSet: TDataSet);
    procedure qPItensequip_recnoChange(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actPrnEtiqExecute(Sender: TObject);
    procedure actRemessaExecute(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FCBClientes: TComboList;
    procedure OnEdit; override;
    procedure RefreshCtrl; override;
    procedure SetDataSet(const Value: TZQuery); override;
  public
    { Public declarations }
    procedure ImprimirEtiqueta;
  end;

var
  LabProcOld: TLabProcOld;

implementation

uses uDM, uLabProcM, iTypes, mcutils, maskutils, uReport, uLabProcPort,
  uResources, ccalendardiff, uLabProc;

{$R *.dfm}

procedure TLabProcOld.actPrnEtiqExecute(Sender: TObject);
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

procedure TLabProcOld.actQueryProcessExecute(Sender: TObject);
var
  swhere: string;
begin
  inherited;
  LabProcPort.qPort.ParamByName('proc').AsInteger := -1;

  swhere := '';

  with IBrwSrc do
  begin
    if FrameData1.CCalendarDiff1.Interval <> diNone then
      swhere := 'p.emissao between :emde and :emate ';

    if cbSituacao.ItemIndex <> 5 then
    begin
      if swhere <> EmptyStr then
        swhere := swhere + ' and ';

      if cbSituacao.ItemIndex = 4 then
        swhere := swhere +
        'exists( '+
          'select e.labproc_recno '+
            'from comodato c '+
                 'join labprocxequip e '+
                   'on e.comodato_recno = c.recno '+
                 'join labproc l '+
                   'on l.recno = e.labproc_recno '+
                  'and l.situacao = 2 '+
           'where c.validade < current_date '+
             'and l.recno = p.recno '+
           'group by labproc_recno) '
      else
        swhere := swhere + 'p.situacao = :situacao';
    end;

    {Aplica filtro por cliente}
    if Assigned(FCBClientes.Selected) and  (FCBClientes.Selected.Value > 0) then
    begin
      if swhere <> EmptyStr then
        swhere := swhere + ' and ';

      swhere := swhere + 'p.codigo = :codigo';
    end;

    if swhere <> '' then
      SQL.Add('where ' + swhere);

    if Assigned(Params.FindParam('situacao')) then
      Params.ParamByName('situacao').AsInteger := cbSituacao.ItemIndex;

    if Assigned(Params.FindParam('codigo')) then
      Params.ParamByName('codigo').AsInteger := FCBClientes.Selected.Value;

    if Assigned(Params.FindParam('emde')) then
    begin
      ParamByName('emde').AsDateTime := FrameData1.CCalendarDiff1.BeginDate;
      ParamByName('emate').AsDateTime := FrameData1.CCalendarDiff1.EndDate;
    end;
  end;

  G.RefreshDataSet(IBrwSrc);

  if not IBrwSrc.IsEmpty then
    LabProcPort.qPort.ParamByName('proc').AsInteger := IBrwSrcrecno.AsInteger;

  G.RefreshDataSet(LabProcPort.qPort);

  RefreshCtrl;

  // Habilita impressão se o processo não estiver remetido ou encerrado
  actPrnEtiq.Enabled := (IBrwSrcsituacao.AsInteger < 3) and not IBrwSrc.IsEmpty;
  actRemessa.Enabled := (IBrwSrcsituacao.AsInteger = 2) and not IBrwSrc.IsEmpty;
end;

procedure TLabProcOld.actRemessaExecute(Sender: TObject);
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

procedure TLabProcOld.cbSituacaoChange(Sender: TObject);
begin
  actQueryProcessExecute(actQuery);

  if PageControl1.ActivePageIndex <> cbSituacao.ItemIndex then
  begin
    PageControl1.ActivePageIndex := cbSituacao.ItemIndex;
    inherited PageControl1Change(PageControl1);
  end;
end;

procedure TLabProcOld.ComboBox1Change(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQuery);
end;

procedure TLabProcOld.FormCreate(Sender: TObject);
begin
  inherited;
  LabProcOld := Self;
  TLabProcPort.Create(nil).Operacao := poRemessa;

  FCBClientes := TComboList.Create(ComboBox1, 'tbclientes', 'codigo', 'nome_chave');

  ComboBox1.Items.Insert(0, '(Todos)');
  ComboBox1.ItemIndex := 0;

  FrameData1.CCalendarDiff1.Interval := diMonthly;
end;

procedure TLabProcOld.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FCBClientes);
  inherited;
  LabProcOld := nil;
  FreeAndNil(LabProcPort);
end;

procedure TLabProcOld.FormShow(Sender: TObject);
begin
  inherited;
  DataSet := IBrwSrc;
  actQueryProcessExecute(actQuery);
end;

procedure TLabProcOld.IBrwSrcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  IBrwSrcsituacao.AsInteger := 1;
end;

procedure TLabProcOld.IBrwSrcAfterScroll(DataSet: TDataSet);
var
  Rpt: TReport;
begin
  inherited;
  // Habilita impressão se o processo não estiver remetido ou encerrado
  actPrnEtiq.Enabled := (IBrwSrcsituacao.AsInteger < 3) and not IBrwSrc.IsEmpty;
  actRemessa.Enabled := (IBrwSrcsituacao.AsInteger = 2) and not IBrwSrc.IsEmpty;

  qPItens.ParamByName('proc').AsInteger := IBrwSrcrecno.AsInteger;
  LabProcPort.qPort.ParamByName('proc').AsInteger := IBrwSrcrecno.AsInteger;

  if qPItens.Active then
    qPItens.Refresh;

  if LabProcPort.qPort.Active then
    LabProcPort.qPort.Refresh;

  Rpt := FindReport(11);
  if Assigned(Rpt) then
    Rpt.Enabled := not IBrwSrcremessa.IsNull;
end;

procedure TLabProcOld.IBrwSrcsituacaoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Em Digitação';
    2: Text := 'Emitido';
    3: Text := 'Remetido';
    4: Text := 'Encerrado';
  end;
end;

procedure TLabProcOld.IBrwSrcsituacaoSetText(Sender: TField; const Text: string);
begin
  inherited;
  if Text = 'Em Digitação' then
    Sender.AsInteger := 1;

  if Text = 'Emitido' then
    Sender.AsInteger := 2;

  if Text = 'Remetido' then
    Sender.AsInteger := 3;

  if Text = 'Encerrado' then
    Sender.AsInteger := 4;
end;

procedure TLabProcOld.ImprimirEtiqueta;
var
  r: string;
  CMD: AnsiString;
  sFile: String;
begin
  if not qPItens.Active then
  begin
    U.Out.ShowErro('Etiquetas não podem ser impressas porque a tabela de etiquetas não está ativa.');
    Exit;
  end;

  sFile := U.Path.Reports + 'Etiqueta_6x3cm.prn';

  if not FileExists(sFile) then
  begin
    U.Out.ShowErro('Etiquetas não podem ser impressas porque o arquivo de modelo %s não foi localizado.',
      [sFile]);
    Exit;
  end;

  AssignFile(Input, sFile);

  CMD := '';

  Reset(Input);
  // Processa o arquivo modelo tracando os dados
  try
    while not Eof(Input) do
    begin
      Readln(Input, r);

      r := mcStuff('000000000000', r, qPItensetiq_proc.AsString);
      r := mcStuff('000.000.000.000', r, qPItensetiq_proc.DisplayText);
      r := mcStuff('@1', r, IBrwSrcnome_chave.AsString);
      r := mcStuff('@2', r, qPItensetiq_local.AsString);
      r := mcStuff('@3', r, qPItensvalidade.DisplayText);
      r := mcStuff('@4', r, qPItensetiq_tag.AsString);
      r := mcStuff('@5', r, qPItensetiq_tipo.AsString);

      if CMD <> EmptyStr then
        CMD := CMD + #13#10;

      CMD := CMD + r;
    end;
  finally
    CloseFile(Input);
  end;

  // Imprime a etiqueta
  AssignFile(Output, '\\HLXJ9P1\tlp2844');
  Rewrite(Output);
  Writeln(Output, CMD);
  CloseFile(Output);

  // Marca a etiqueta como impressa
  // Inicia transação
  U.Data.StartTransaction;
  try
    // Atualiza a data e hora de impressão da etiqueta
    U.Data.ExecSQL(Format(
      'update comodato '+
         'set imp_dh = localtimestamp '+
       'where recno = %d '+
         'and imp_dh is null', [qPItenscomodato_recno.AsInteger]));

    U.Data.Commit;
  except
    U.Data.Rollback;
  end;
end;

procedure TLabProcOld.OnEdit;
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

procedure TLabProcOld.PageControl1Change(Sender: TObject);
begin
  inherited;
  cbSituacao.ItemIndex := PageControl1.ActivePageIndex;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TLabProcOld.qPItensAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qPItenscodigo.AsInteger := IBrwSrccodigo.AsInteger;
  qPItenslabproc_recno.AsInteger := IBrwSrcrecno.AsInteger;
  qPItenstipo.AsInteger := 1;
end;

procedure TLabProcOld.qPItensCalcFields(DataSet: TDataSet);
var
  sLocal: String;
begin
  inherited;
  sLocal := qPItenssigla.AsString;

  if not qPItensnome.IsNull then
  begin
    if sLocal <> EmptyStr then
      sLocal := sLocal + ' - ';

    sLocal := sLocal + qPItensnome.AsString;
  end;

  if not qPItensreg_nome.IsNull then
  begin
    if sLocal <> EmptyStr then
      sLocal := sLocal + ' - ';

    sLocal := sLocal + qPItensreg_nome.AsString;
  end;

  qPItensetiq_local.AsString := UpperCase(sLocal);

  qPItensetiq_proc.AsString := mcRight(StringOfChar('0', 12) +
    qPItenscomodato_recno.AsString, 12);

  if not qPItenstag.IsNull then
    qPItensetiq_tag.AsString := qPItenstag.AsString
  else
    qPItensetiq_tag.AsString := qPItensserie.AsString;

  qPItensetiq_tipo.AsString := UpperCase(mcRight(StringOfChar(' ', 15) +
    qPItenstipo.DisplayText, 15));
  

end;

procedure TLabProcOld.qPItensequip_recnoChange(Sender: TField);
begin
  inherited;
  if not (qPItens.State in [dsEdit, dsInsert]) then
    Exit;

  qPItensfabricante.SetData(nil);
  qPItensano.SetData(nil);
  qPItenslote.SetData(nil);
  qPItensserie.SetData(nil);
  qPItenspotencia.SetData(nil);
  qPItensfases.SetData(nil);
  qPItensimped.SetData(nil);
  qPItenstensao.SetData(nil);
  qPItensisolante.SetData(nil);
  qPItensvolume.SetData(nil);
  qPItensdrenos.SetData(nil);
  qPItenstag.SetData(nil);
  qPItenstipo_e.SetData(nil);
  qPItensreg_nome.SetData(nil);
  qPItenssigla.SetData(nil);
  qPItensnome.SetData(nil);
end;

procedure TLabProcOld.qPItenstipoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Frasco';
    2: Text := 'Seringa';
  end;
end;

procedure TLabProcOld.qPItenstipoSetText(Sender: TField; const Text: string);
begin
  inherited;
  if not (qPItens.State in [dsEdit, dsInsert]) then
    Exit;

  case Text[1] of
    'F': Sender.AsInteger := 1;
    'S': Sender.AsInteger := 2;
  end;

end;

procedure TLabProcOld.RefreshCtrl;
begin
  inherited;

  actPrnEtiq.Enabled := Assigned(IBrwSrc) and IBrwSrc.Active and
    not IBrwSrc.IsEmpty;
end;

procedure TLabProcOld.SetDataSet(const Value: TZQuery);
begin
  inherited;

  if Value = IBrwSrc then
    actQueryProcessExecute(actQueryProcess);
end;

initialization
  RegisterClass(TLabProcOld);

finalization
  UnRegisterClass(TLabProcOld);

end.
