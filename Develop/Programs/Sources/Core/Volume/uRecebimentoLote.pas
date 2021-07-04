unit uRecebimentoLote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ActnList, ComCtrls, ToolWin,
  ExtCtrls, Grids, DBGrids, StdCtrls, Mask, Buttons, uFrameCheckBar, JvExMask, JvToolEdit, JvBaseEdits, ZSequence;

type
  TRecebimentoLote = class(TIDefBrowse)
    FrameCheckBar1: TFrameCheckBar;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Panel6: TPanel;
    Label1: TLabel;
    cbStatus: TComboBox;
    actGerarLotes: TAction;
    Panel3: TPanel;
    Label3: TLabel;
    edAmostra: TJvCalcEdit;
    Panel7: TPanel;
    Label7: TLabel;
    edEtiqueta: TJvCalcEdit;
    IBrwSrcmark: TBooleanField;
    IBrwSrcrecno: TIntegerField;
    IBrwSrcamostra: TIntegerField;
    IBrwSrccomodato: TIntegerField;
    IBrwSrcstatus: TIntegerField;
    IBrwSrcexpirado: TBooleanField;
    IBrwSrcqtd: TFloatField;
    IBrwSrcentrada: TDateTimeField;
    IBrwSrcempresa: TStringField;
    IBrwSrccnpj: TStringField;
    IBrwSrccidade: TStringField;
    IBrwSrcestado: TStringField;
    sIBrwSrc: TZSequence;
    Panel4: TPanel;
    Label4: TLabel;
    edCNPJ: TMaskEdit;
    Panel5: TPanel;
    Label5: TLabel;
    edCPF: TMaskEdit;
    Panel8: TPanel;
    Label6: TLabel;
    edEmpresa: TEdit;
    IBrwSrccpf: TStringField;
    ToolButton12: TToolButton;
    ToolBar2: TToolBar;
    dsLotes: TDataSource;
    qLotes: TZQuery;
    qLotescodigo: TIntegerField;
    qLotesnome_chave: TStringField;
    qLotesfrascos: TLargeintField;
    qLotesseringas: TLargeintField;
    qLotesconformes: TLargeintField;
    qLotesnaoconformes: TLargeintField;
    qLotesvazios: TLargeintField;
    qLotesquebrados: TLargeintField;
    qLotescnpj: TStringField;
    qLotescpf: TStringField;
    procedure cbStatusChange(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGridKeyPress(Sender: TObject; var Key: Char);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure edAmostraChange(Sender: TObject);
    procedure IBrwSrcstatusGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure actGerarLotesExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    procedure OnChangeMark(Sender: TObject);
    procedure OnLoad; override;
    procedure RefreshCtrl; override;
  public
    { Public declarations }
  end;

var
  RecebimentoLote: TRecebimentoLote;

implementation

uses uDM, uResources, ccalendardiff, uIUtils, uRecebimentoPortador;

{$R *.dfm}

procedure TRecebimentoLote.actGerarLotesExecute(Sender: TObject);
begin
  inherited;
  RecebimentoPortador := TRecebimentoPortador.Create(nil);
  try
    RecebimentoPortador.ShowModal;
  finally
    FreeAndNil(RecebimentoPortador);
    G.RefreshDataSet(qLotes);
    RefreshCtrl;
  end;
end;

procedure TRecebimentoLote.actQueryProcessExecute(Sender: TObject);
var
  sWhere : string;
begin
  inherited;

  with IBrwSrc do
  begin
    sWhere := EmptyStr;

    if (cbStatus.ItemIndex > 0) then
      swhere := swhere + 'and r.status = :status ';

    if edAmostra.Value > 0 then
      swhere := swhere + 'and r.amostra = :amostra ';

    if edEtiqueta.Value > 0 then
      swhere := swhere + 'and a.comodato = :etiqueta ';

    if Length(edCNPJ.Text) > 0 then
      sWhere := sWhere + 'and c.cnpj like :cnpj ';

    if Length(edCPF.Text) > 0 then
      sWhere := sWhere + 'and c.cpf like :cpf ';

    if Length(edEmpresa.Text) > 0 then
      sWhere := sWhere + 'and c.nome_chave ilike :empresa ';

    if sWhere <> EmptyStr then
      SQL.Add(sWhere);

    if Assigned(Params.FindParam('amostra')) then
      ParamByName('amostra').AsInteger := Round(edAmostra.Value);

    if Assigned(Params.FindParam('etiqueta')) then
      ParamByName('etiqueta').AsInteger := Round(edEtiqueta.Value);

    if Assigned(Params.FindParam('status')) then
      ParamByName('status').AsInteger := cbStatus.ItemIndex;

    if Assigned(Params.FindParam('cnpj')) then
      ParamByName('cnpj').AsString := edCNPJ.Text + '%';

    if Assigned(Params.FindParam('cpf')) then
      ParamByName('cpf').AsString := edCPF.Text + '%';

    if Assigned(Params.FindParam('empresa')) then
      ParamByName('empresa').AsString := '%' + edEmpresa.Text + '%';
  end;

  G.RefreshDataSet(IBrwSrc);
  RefreshCtrl;
end;

procedure TRecebimentoLote.cbStatusChange(Sender: TObject);
begin
  inherited;
  actQueryProcess.Enabled := True;
  with PageControl1 do
  begin
    DBGrid1.SetFocus;
    ActivePageIndex := cbStatus.ItemIndex;
    //FrameData1.ComboBox1.Enabled := (cbStatus.ItemIndex > 3);
    inherited PageControl1Change(PageControl1);
  end;

  actQueryProcessExecute(actQueryProcess);
end;

procedure TRecebimentoLote.DBGridKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #32) and (IBrwSrc.State = dsBrowse) then
  begin
    key := #0;
    FrameCheckBar1.actProcessMarkExecute(actInverse);
  end;

  inherited;
end;

procedure TRecebimentoLote.edAmostraChange(Sender: TObject);
begin
  inherited;
  actQueryProcess.Enabled := True;
end;

procedure TRecebimentoLote.FormCreate(Sender: TObject);
begin
  inherited;
  RecebimentoLote := Self;
  FrameCheckBar1.Table := 'labret';
  FrameCheckBar1.OnChange := OnChangeMark;
end;

procedure TRecebimentoLote.FormDestroy(Sender: TObject);
begin
  FrameCheckBar1.OnChange := nil;
  inherited;
end;

procedure TRecebimentoLote.IBrwSrcstatusGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Conforme';
    2: Text := 'Não Conforme';
    3: Text := 'Vazio';
    4: Text := 'Quebrado';
  end;
end;

procedure TRecebimentoLote.OnChangeMark(Sender: TObject);
begin
  try
    G.RefreshDataSet(qLotes);
  finally
    RefreshCtrl;
  end;
end;

procedure TRecebimentoLote.OnLoad;
begin
  inherited;
  AllowInsert := False;
  AllowDelete := False;
  FrameCheckBar1.OnChange := OnChangeMark;
  G.RefreshDataSet(qLotes);
end;

procedure TRecebimentoLote.PageControl1Change(Sender: TObject);
begin
  inherited;
  if cbStatus.ItemIndex <> PageControl1.ActivePageIndex then
  begin
    cbStatus.ItemIndex := PageControl1.ActivePageIndex;
    cbStatusChange(cbStatus);
    FrameCheckBar1.Parent := PageControl1.ActivePage;
  end;
end;

procedure TRecebimentoLote.RefreshCtrl;
begin
  inherited;
  actGerarLotes.Enabled := (IBrwSrc.State = dsBrowse) and not qLotes.IsEmpty;
end;

initialization
  RegisterClass(TRecebimentoLote);

finalization
  UnRegisterClass(TRecebimentoLote);

end.
