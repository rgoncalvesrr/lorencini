unit uLaudoRev;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids,
  DBGrids, StdCtrls, Mask, Buttons, JvExMask, JvToolEdit, JvBaseEdits, uIUtils,
  ZSequence;

type
  TLaudoRev = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrcpedido: TIntegerField;
    IBrwSrcrelato_recno: TIntegerField;
    IBrwSrccodserv: TIntegerField;
    IBrwSrcempresa: TStringField;
    IBrwSrcnome_chave: TStringField;
    IBrwSrccnpj: TStringField;
    IBrwSrccpf: TStringField;
    IBrwSrctelefone: TStringField;
    IBrwSrcemail: TStringField;
    IBrwSrccidade: TStringField;
    IBrwSrcestado: TStringField;
    IBrwSrcdescri: TStringField;
    IBrwSrctitulo: TStringField;
    IBrwSrcservico: TStringField;
    Label4: TLabel;
    edPedido: TJvCalcEdit;
    sIRwSrc: TZSequence;
    Label1: TLabel;
    edLaudo: TJvCalcEdit;
    Label3: TLabel;
    edAmostra: TJvCalcEdit;
    IBrwSrcobs: TMemoField;
    IBrwSrccriacao: TDateTimeField;
    IBrwSrcentrada: TDateTimeField;
    Label5: TLabel;
    cbTpLaudo: TComboBox;
    IBrwSrcamostra: TIntegerField;
    Label6: TLabel;
    edOS: TJvCalcEdit;
    IBrwSrcos: TIntegerField;
    IBrwSrcidcodigo: TIntegerField;
    IBrwSrccliente: TIntegerField;
    IBrwSrcstatus: TIntegerField;
    IBrwSrccomodato: TIntegerField;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel9: TPanel;
    Label7: TLabel;
    edEtiqueta: TJvCalcEdit;
    qTipoLaudo: TZQuery;
    qTipoLaudorecno: TIntegerField;
    qTipoLaudodescri: TStringField;
    qTipoLaudotitulo: TStringField;
    dsQTipoLaudo: TDataSource;
    Panel8: TPanel;
    Label8: TLabel;
    edEmpresa: TEdit;
    Panel10: TPanel;
    Label9: TLabel;
    edRazao: TEdit;
    procedure actQueryProcessExecute(Sender: TObject);
    procedure edPedidoChange(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbTpLaudoChange(Sender: TObject);
    procedure IBrwSrcAfterPost(DataSet: TDataSet);
    procedure PageControl1Change(Sender: TObject);
    procedure IBrwSrcstatusGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBrwSrcstatusSetText(Sender: TField; const Text: string);
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
  private
    FLastServ: Integer;
    procedure OnEdit; override;
    procedure RefazGuias; 
  public
    { Public declarations }
  end;

var
  LaudoRev: TLaudoRev;

implementation

uses
  uDM, uLaudoRevM;
  
{$R *.dfm}


procedure TLaudoRev.actQueryProcessExecute(Sender: TObject);
var
  swhere: string;
begin
  inherited;
  if not Assigned(DataSet) then
    Exit;

  swhere := '';

  with IBrwSrc do
  begin
    {Aplica filtro por cliente}
    if cbTpLaudo.ItemIndex <> 0 then
      swhere := swhere + ' and l.relato_recno = :tipolaudo ';

    if Trim(edPedido.Text) <> EmptyStr then
      swhere := swhere + ' and l.pedido = :pedido';

    if Trim(edAmostra.Text) <> EmptyStr then
      swhere := swhere + ' and l.amostra = :amostra';

    if Trim(edEtiqueta.Text) <> EmptyStr then
      swhere := swhere + ' and a.comodato = :etiqueta';

    if Trim(edOS.Text) <> EmptyStr then
      swhere := swhere + ' and l.os = :os';

    if Trim(edLaudo.Text) <> EmptyStr then
      swhere := swhere + ' and l.recno = :laudo';

    if Length(edEmpresa.Text) > 0 then
      sWhere := sWhere + ' and c.nome_chave ilike :empresa ';

    if Length(edRazao.Text) > 0 then
      sWhere := sWhere + ' and c.empresa ilike :razao ';

    if swhere <> '' then
      SQL.Add(swhere);

    if Assigned(Params.FindParam('tipolaudo')) then
      Params.ParamByName('tipolaudo').AsInteger := PageControl1.Pages[cbTpLaudo.ItemIndex].Tag;

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

    if Assigned(Params.FindParam('empresa')) then
      ParamByName('empresa').AsString := '%' + edEmpresa.Text + '%';

    if Assigned(Params.FindParam('razao')) then
      ParamByName('razao').AsString := '%' + edRazao.Text + '%';

    G.RefreshDataSet(IBrwSrc);
    RefreshCtrl;
  end;
end;

procedure TLaudoRev.cbTpLaudoChange(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQuery);

  if PageControl1.ActivePageIndex <> cbTpLaudo.ItemIndex then
  begin
    PageControl1.ActivePageIndex := cbTpLaudo.ItemIndex;
    inherited PageControl1Change(PageControl1);
  end;
end;

procedure TLaudoRev.ComboBox1Change(Sender: TObject);
begin
  inherited;
  actQueryProcess.Enabled := True;
end;

procedure TLaudoRev.edPedidoChange(Sender: TObject);
begin
  inherited;
  actQueryProcess.Enabled := True;
end;

procedure TLaudoRev.FormCreate(Sender: TObject);
begin
  inherited;
  LaudoRev := Self;
  AllowInsert := False;
  AllowDelete := False;
  RefreshCtrl;
  RefazGuias;
end;

procedure TLaudoRev.IBrwSrcAfterPost(DataSet: TDataSet);
begin
  inherited;
  RefazGuias;
end;

procedure TLaudoRev.IBrwSrcAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if FLastServ <> IBrwSrccodserv.AsInteger then
  begin
    qTipoLaudo.ParamByName('servico').AsInteger := IBrwSrccodserv.AsInteger;
    G.RefreshDataSet(qTipoLaudo);
    FLastServ := IBrwSrccodserv.AsInteger;
  end;
end;

procedure TLaudoRev.IBrwSrcstatusGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0: Text := 'Digitando';
    1: Text := 'Apontamento';
  end;
end;

procedure TLaudoRev.IBrwSrcstatusSetText(Sender: TField; const Text: string);
begin
  inherited;
  if not (Sender.DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  case Text[1] of
    'D': Sender.AsInteger := 0;
    'A': Sender.AsInteger := 1;
  end;

end;

procedure TLaudoRev.OnEdit;
begin
  LaudoRevM := TLaudoRevM.Create(nil);
  try
    LaudoRevM.DataSet := IBrwSrc;
    LaudoRevM.AllowInsert := False;
    LaudoRevM.AllowDelete := False;
    LaudoRevM.ShowModal;
  finally
    FreeAndNil(LaudoRevM);
  end;

end;

procedure TLaudoRev.PageControl1Change(Sender: TObject);
begin
  inherited;
  cbTpLaudo.ItemIndex := PageControl1.ActivePageIndex;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TLaudoRev.RefazGuias;
var
  i: Integer;
  tb: TTabSheet;
begin
  with U.Data.Query, PageControl1 do
  try
    ActivePageIndex := 0;
    PageControl1Change(PageControl1);
    cbTpLaudo.Items.BeginUpdate;


    TabSheet1.Caption := 'Todos';
    cbTpLaudo.Clear;
    cbTpLaudo.Items.Add('Todos');

    for i := PageCount - 1 downto 1 do
      Pages[i].Free;

    // Select utilizada para criação das tabsheets por tipo de laudo
    SQL.Text :=
    'select recno, cast(recno||''.''||initcap(descri) as varchar(70)) as descri '+
      'from labrel r '+
           'join ( '+
                'select r.relato_recno '+
                  'from labamostras_rel r '+
                       'join labamostras a '+
                         'on a.recno = r.amostra '+
                       'join labamostras_hist h '+
                         'on h.amostra = r.amostra '+
                        'and h.estado = 50 '+
                 'where r.status = 0 '+
                 'group by r.relato_recno) ar '+
             'on ar.relato_recno = r.recno '+
     'order by descri; ';

    Open;

    while not EOF do
    begin
      tb := TTabSheet.Create(Self);
      tb.Caption := FieldByName('descri').AsString;
      tb.Tag := FieldByName('recno').AsInteger;
      tb.PageControl := PageControl1;

      cbTpLaudo.Items.Add(tb.Caption);

      Next;
    end;
  finally
    Close;
    cbTpLaudo.ItemIndex := 0;
    ActivePageIndex := 0;
    cbTpLaudo.Items.EndUpdate;
  end;

end;

initialization
  RegisterClass(TLaudoRev);

finalization
  UnRegisterClass(TLaudoRev);

end.
