unit uLabLaudoBloq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ActnList, ComCtrls, ToolWin,
  ExtCtrls, Grids, DBGrids, StdCtrls, Mask, Buttons, uFrameData, JvExMask, JvToolEdit, JvBaseEdits, DBCtrls;

type
  TLabLaudoBloq = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrcpedido: TIntegerField;
    IBrwSrcamostra: TIntegerField;
    IBrwSrcos: TIntegerField;
    IBrwSrccomodato: TIntegerField;
    IBrwSrcentrada: TDateTimeField;
    IBrwSrcemissao: TDateTimeField;
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
    IBrwSrcpendencia: TMemoField;
    Panel3: TPanel;
    Label6: TLabel;
    edLaudo: TJvCalcEdit;
    Panel4: TPanel;
    Label5: TLabel;
    edPedido: TJvCalcEdit;
    Panel5: TPanel;
    Label7: TLabel;
    edAmostra: TJvCalcEdit;
    Panel6: TPanel;
    Label12: TLabel;
    edEtiqueta: TJvCalcEdit;
    Panel7: TPanel;
    Label4: TLabel;
    edOS: TJvCalcEdit;
    Panel8: TPanel;
    Label10: TLabel;
    Label11: TLabel;
    FrameData2: TFrameData;
    Panel9: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    FrameData1: TFrameData;
    Panel12: TPanel;
    Label13: TLabel;
    edEmpresa: TEdit;
    Panel13: TPanel;
    Label14: TLabel;
    edRazao: TEdit;
    Panel11: TPanel;
    Label9: TLabel;
    edEquipTag: TEdit;
    Panel10: TPanel;
    Label8: TLabel;
    edEquipSerie: TEdit;
    DBMemo1: TDBMemo;
    qContatos: TZQuery;
    qContatoslaudo: TIntegerField;
    qContatoscontato: TIntegerField;
    qContatoscliente: TIntegerField;
    qContatospadrao: TBooleanField;
    qContatosnome: TStringField;
    qContatoscelular: TStringField;
    qContatostelefone: TStringField;
    qContatosramal: TStringField;
    qContatosemail: TStringField;
    qContatosrecno: TIntegerField;
    dsContatos: TDataSource;
    Panel14: TPanel;
    ControlBar2: TControlBar;
    ToolBar3: TToolBar;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    tbRefazGrid: TToolButton;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    actRefreshContatos: TAction;
    TabSheet3: TTabSheet;
    procedure actQueryProcessExecute(Sender: TObject);
    procedure IBrwSrcBeforeOpen(DataSet: TDataSet);
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
    procedure actRefreshContatosExecute(Sender: TObject);
  private
    FRefresh: Boolean;
  public
    { Public declarations }
  end;

var
  LabLaudoBloq: TLabLaudoBloq;

implementation

{$R *.dfm}

uses
  uDM, ccalendardiff, uIUtils, uResources;

procedure TLabLaudoBloq.actQueryProcessExecute(Sender: TObject);
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
  if not Assigned(DataSet) then
    Exit;

  ACal := FrameData1.CCalendarDiff1;

  swhere := EmptyStr;

  with IBrwSrc do
  begin
    if Length(edEmpresa.Text) > 0 then
      sWhere := sWhere + 'and c.nome_chave ilike :empresa ';

    if Length(edRazao.Text) > 0 then
      sWhere := sWhere + 'and c.empresa ilike :razao ';

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
      SQL.Add(swhere);

    SetParams(IBrwSrc);

    if FRefresh then
      G.RefreshDataSet(IBrwSrc);

    RefreshCtrl;
  end;

end;

procedure TLabLaudoBloq.actRefreshContatosExecute(Sender: TObject);
begin
  inherited;
  G.RefreshDataSet(qContatos);
end;

procedure TLabLaudoBloq.IBrwSrcAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qContatos.ParamByName('laudo').AsInteger := IBrwSrcrecno.AsInteger;
  G.RefreshDataSet(qContatos);
end;

procedure TLabLaudoBloq.IBrwSrcBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  FRefresh := False;
  try
    actQueryProcessExecute(actQuery);
  finally
    FRefresh := True;
  end;
end;

initialization
  RegisterClass(TLabLaudoBloq);

finalization
  UnRegisterClass(TLabLaudoBloq);

end.
