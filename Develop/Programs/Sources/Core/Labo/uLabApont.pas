unit uLabApont;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, JvExStdCtrls, uIUtils, uLabLaudoCl, JvExMask,
  JvToolEdit, JvBaseEdits;

type
  TLabApont = class(TIDefBrowse)
    Label1: TLabel;
    cbTpLaudo: TComboBox;
    Label18: TLabel;
    cbCli: TComboBox;
    IBrwSrccodigo: TIntegerField;
    IBrwSrcumidade: TIntegerField;
    IBrwSrcequip_recno: TIntegerField;
    IBrwSrcentrada: TDateTimeField;
    IBrwSrccoleta: TDateField;
    IBrwSrctpamostra_recno: TIntegerField;
    IBrwSrccoletor: TStringField;
    IBrwSrctamb: TIntegerField;
    IBrwSrctoleo: TIntegerField;
    IBrwSrclabsubest_recno: TIntegerField;
    IBrwSrctensao: TFloatField;
    IBrwSrcestado: TIntegerField;
    IBrwSrcorigem: TIntegerField;
    IBrwSrctag: TStringField;
    IBrwSrclocal: TStringField;
    IBrwSrcnome_chave: TStringField;
    IBrwSrccnpj: TStringField;
    IBrwSrccpf: TStringField;
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
    IBrwSrcdescri_1: TStringField;
    IBrwSrcinf_te: TBooleanField;
    IBrwSrcsigla: TStringField;
    IBrwSrcnome: TStringField;
    IBrwSrcregional: TIntegerField;
    IBrwSrcreg_nome: TStringField;
    IBrwSrcstatus: TIntegerField;
    IBrwSrcrelato_recno: TIntegerField;
    IBrwSrclaudo_de: TStringField;
    IBrwSrcdestinatario: TStringField;
    IBrwSrctelefone: TStringField;
    IBrwSrcrecno: TIntegerField;
    Label4: TLabel;
    edPedido: TJvCalcEdit;
    IBrwSrcpedido: TIntegerField;
    IBrwSrctensao_un: TStringField;
    IBrwSrcpotencia_un: TStringField;
    IBrwSrcamostra: TIntegerField;
    Label3: TLabel;
    edLaudo: TJvCalcEdit;
    Label5: TLabel;
    edAmostra: TJvCalcEdit;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Label7: TLabel;
    edEtiqueta: TJvCalcEdit;
    Panel9: TPanel;
    IBrwSrccomodato: TIntegerField;
    Panel6: TPanel;
    Label6: TLabel;
    edOS: TJvCalcEdit;
    IBrwSrcos: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure cbTpLaudoChange(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure IBrwSrcAfterPost(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure cbCliChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
    procedure IBrwSrcstatusGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBrwSrcstatusSetText(Sender: TField; const Text: string);
    procedure edPedidoChange(Sender: TObject);
  private
    { Private declarations }
    FCBClientes: TComboList;
    FLaudo: TLaudo;
    procedure RefazGuias;
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  LabApont: TLabApont;

implementation

uses uDM, uLabApontM;

{$R *.dfm}

{ TLabApont }

procedure TLabApont.actQueryProcessExecute(Sender: TObject);
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
    if Assigned(FCBClientes.Selected) and (FCBClientes.Selected.Value > 0) then
      swhere := swhere + ' and a.codigo = :codigo';

    {Aplica filtro por cliente}
    if cbTpLaudo.ItemIndex <> 0 then
      swhere := swhere + 'and r.relato_recno = :tipolaudo ';

    if Trim(edPedido.Text) <> EmptyStr then
      swhere := swhere + ' and a.pedido = :pedido';

    if Trim(edAmostra.Text) <> EmptyStr then
      swhere := swhere + ' and r.amostra = :amostra';

    if Trim(edEtiqueta.Text) <> EmptyStr then
      swhere := swhere + ' and a.comodato = :etiqueta';

    if Trim(edOS.Text) <> EmptyStr then
      swhere := swhere + ' and r.os = :os';

    if Trim(edLaudo.Text) <> EmptyStr then
      swhere := swhere + ' and r.recno = :laudo';

    if swhere <> '' then
      SQL.Add(swhere);

    if Assigned(Params.FindParam('tipolaudo')) then
      Params.ParamByName('tipolaudo').AsInteger := PageControl1.Pages[cbTpLaudo.ItemIndex].Tag;

    if Assigned(Params.FindParam('codigo')) then
      Params.ParamByName('codigo').AsInteger := FCBClientes.Selected.Value;

    if Assigned(Params.FindParam('pedido')) then
      Params.ParamByName('pedido').AsInteger := Round(edPedido.Value);

    if Assigned(Params.FindParam('amostra')) then
      Params.ParamByName('amostra').AsInteger := Round(edAmostra.Value);

    if Assigned(Params.FindParam('os')) then
      Params.ParamByName('os').AsInteger := Round(edOS.Value);

    if Assigned(Params.FindParam('laudo')) then
      Params.ParamByName('laudo').AsInteger := Round(edLaudo.Value);

    if Assigned(Params.FindParam('etiqueta')) then
      Params.ParamByName('etiqueta').AsInteger := Round(edEtiqueta.Value);

    G.RefreshDataSet(IBrwSrc);
    RefreshCtrl;
  end;
end;

procedure TLabApont.cbCliChange(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQuery);
end;

procedure TLabApont.cbTpLaudoChange(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQuery);

  if PageControl1.ActivePageIndex <> cbTpLaudo.ItemIndex then
  begin
    PageControl1.ActivePageIndex := cbTpLaudo.ItemIndex;
    inherited PageControl1Change(PageControl1);
  end;
end;

procedure TLabApont.edPedidoChange(Sender: TObject);
begin
  inherited;
  actQueryProcess.Enabled := True;
end;

procedure TLabApont.FormCreate(Sender: TObject);
begin
  inherited;
  FLaudo := nil;
  
  FCBClientes := TComboList.Create(cbCli, 'tbclientes', 'codigo', 'nome_chave');

  cbCli.Items.Insert(0, '(Todos)');
  cbCli.ItemIndex := 0;

  RefreshCtrl;
  RefazGuias;
end;

procedure TLabApont.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FCBClientes);

  if Assigned(FLaudo) then
    FreeAndNil(FLaudo);

  inherited;
end;

procedure TLabApont.FormShow(Sender: TObject);
begin
  inherited;
  AllowInsert := False;
  AllowDelete := False;
end;

procedure TLabApont.IBrwSrcAfterPost(DataSet: TDataSet);
begin
  inherited;
  RefazGuias;
end;

procedure TLabApont.IBrwSrcAfterScroll(DataSet: TDataSet);
begin
  if Assigned(LabApontM) then
  begin
    if not Assigned(FLaudo) then
      FLaudo := TLaudo.Create(nil);

    FLaudo.BuildLaudo(IBrwSrcamostra.AsInteger, IBrwSrcrecno.AsInteger,
      IBrwSrcrelato_recno.AsInteger);
    LabApontM.Laudo := FLaudo;
  end;
end;

procedure TLabApont.IBrwSrcstatusGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Digitação';
    2: Text := 'Encerrado';
  end;
end;

procedure TLabApont.IBrwSrcstatusSetText(Sender: TField; const Text: string);
begin
  inherited;
  if (Text = EmptyStr) or not (DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  case Text[1] of
    'D': Sender.AsInteger := 1;
    'E': Sender.AsInteger := 2;
  end;

end;

procedure TLabApont.OnEdit;
begin
  LabApontM := TLabApontM.Create(nil);
  try
    LabApontM.AllowInsert := False;
    LabApontM.AllowDelete := False;
    LabApontM.DataSet := IBrwSrc;
    LabApontM.ShowModal;
  finally
    FreeAndNil(LabApontM);
  end;

end;

procedure TLabApont.PageControl1Change(Sender: TObject);
begin
  inherited;
  cbTpLaudo.ItemIndex := PageControl1.ActivePageIndex;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TLabApont.RefazGuias;
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
                        'and a.estado = 50 '+
                 'where r.status = 1 '+
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
  RegisterClass(TLabApont);

finalization
  UnRegisterClass(TLabApont);

end.
