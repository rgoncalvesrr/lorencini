unit uReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ActnList, Grids, DBGrids, ComCtrls, StdCtrls, Buttons, Mask, ExtCtrls, ToolWin,
  ZSqlUpdate, uFrameData, uIUtils, ZSequence;

type
  TReceber = class(TIDefBrowse)
    IBrwSrcnatureza: TIntegerField;
    IBrwSrcdescri: TStringField;
    IBrwSrcid_cli: TIntegerField;
    IBrwSrcnome_chave: TStringField;
    IBrwSrccnpj: TStringField;
    IBrwSrctelefone: TStringField;
    IBrwSrcdocto: TStringField;
    IBrwSrccriacao: TDateTimeField;
    IBrwSrcemissao: TDateField;
    IBrwSrcvencimento: TDateField;
    IBrwSrcvencimento_real: TDateField;
    IBrwSrcbaixa: TDateField;
    IBrwSrcvalor: TFloatField;
    IBrwSrcvalor_baixado: TFloatField;
    IBrwSrcobs: TMemoField;
    ZUpdateSQL1: TZUpdateSQL;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    IBrwSrcrecno: TIntegerField;
    IBrwSrctipo: TStringField;
    IBrwSrccc: TStringField;
    FrameData1: TFrameData;
    cbStatus: TComboBox;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    IBrwSrcstatus: TIntegerField;
    Label18: TLabel;
    ComboBox1: TComboBox;
    IBrwSrchistorico: TStringField;
    ZSequence1: TZSequence;
    IBrwSrcjuros: TFloatField;
    IBrwSrcmulta: TFloatField;
    IBrwSrcdescto: TFloatField;
    IBrwSrctotal: TFloatField;
    dsContatos: TDataSource;
    qContatos: TZQuery;
    qContatoscliente: TIntegerField;
    qContatosnome: TStringField;
    qContatosfuncao: TStringField;
    qContatostelefone: TStringField;
    qContatoscelular: TStringField;
    qContatosemail: TStringField;
    qContatoscontato_nextel: TStringField;
    qContatoscontato_nextelcel: TStringField;
    qContatosrecno: TIntegerField;
    sContatos: TZSequence;
    zContatos: TZUpdateSQL;
    qContatositem: TIntegerField;
    qContatosempresa: TStringField;
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
    procedure IBrwSrctipoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBrwSrctipoSetText(Sender: TField; const Text: string);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure cbStatusChange(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure FrameData1CCalendarDiff1Change(Sender: TObject);
    procedure IBrwSrcCalcFields(DataSet: TDataSet);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure IBrwSrcbaixaChange(Sender: TField);
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
    procedure qContatosAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    FCBClientes: TComboList;
  public
    { Public declarations }
    procedure OnEdit; override;
    procedure OnLoad; override;
  end;

var
  Receber: TReceber;

implementation

{$R *.dfm}

uses uDM, uReceberM, ccalendardiff, iTypes, uResources;


{ TReceber }

procedure TReceber.actQueryProcessExecute(Sender: TObject);
var
  fWhere: String;
  ACal : TCCalendarDiff;
begin
  inherited;

  if not Assigned(DataSet) then
    Exit;

  ACal := FrameData1.CCalendarDiff1;

  with DataSet do
  begin
    ParamByName('ClienteDe').AsInteger:= 0;
    ParamByName('ClienteAte').AsInteger:= 999999;

    case cbStatus.ItemIndex of
      1: fWhere := 'a.vencimento_real >= :DataAtual and a.baixa is null'; // títulos em aberto
      2: fWhere := 'a.baixa is not null';  // títulos recebidos
      3: fWhere := 'a.vencimento_real < :DataAtual and a.baixa is null'; // títulos em atraso
    end;

    // Aplica intervalo de data
    if ACal.Interval <> diNone then
    begin
      if fWhere <> EmptyStr then
        fWhere := fWhere + ' and ';
        
      if (cbStatus.ItemIndex in [0,1,3]) then
        fWhere := fWhere + ' a.vencimento_real between '
      else
        fWhere := fWhere + ' a.baixa between ';

      fWhere := fWhere +
        ACal.FormatedDate('yyyy-mm-dd', fdDateBegin, True) + ' and ' +
        ACal.FormatedDate('yyyy-mm-dd', fdDateEnd, True);
    end;

    {Aplica filtro por cliente}
    if Assigned(FCBClientes.Selected) and (FCBClientes.Selected.Value > 0) then
    begin
      ParamByName('ClienteDe').AsInteger:= FCBClientes.Selected.Value;
      ParamByName('ClienteAte').AsInteger:= FCBClientes.Selected.Value;
    end;

    if fWhere <> EmptyStr then
    begin
      SQL.Add(' and ' + fWhere);
      if Assigned(Params.FindParam('DataAtual')) then
        Params.ParamByName('DataAtual').AsDate := Now();
    end;

    G.RefreshDataSet(DataSet);
  end;
end;

procedure TReceber.cbStatusChange(Sender: TObject);
begin
  inherited;
  actQueryProcess.Enabled := True;
  with PageControl1 do
    if (cbStatus.ItemIndex <> ActivePageIndex) and (ActivePageIndex > 0) then
    begin
      ActivePageIndex := cbStatus.ItemIndex;
      inherited PageControl1Change(PageControl1);
    end;

  Label3.Caption := 'Vencimento Real';

  if cbStatus.ItemIndex = 2 then
    Label3.Caption := 'Baixa';

  actQueryProcessExecute(actQueryProcess);
end;

procedure TReceber.ComboBox1Change(Sender: TObject);
begin
  inherited;
  actQueryProcess.Enabled:= trim(ComboBox1.Text) <> EmptyStr;
end;

procedure TReceber.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fBitMap: TBitmap;
begin
  if (Column.Index <> 0) then
    inherited
  else
    with TDBGrid(Sender), DM do
    try
      fBitMap:= TBitmap.Create;
      fBitMap.Transparent:= True;

      with Resources do
        case IBrwSrcstatus.AsInteger of
          1: small_n.GetBitmap(205, fBitMap); //Em Aberto
          2: small_n.GetBitmap(208, fBitMap); //Recebidos
          3: small_n.GetBitmap(213, fBitMap); //Em Atraso
        end;

      if Column.Width <> fBitMap.Width + 2 then
        Column.Width:= fBitMap.Width + 2;

      {Desenha o status da OS}
      Canvas.Draw(Rect.Left + 1, Rect.Top + 1, fBitMap);
    finally
      fBitMap.Free;
    end;
end;

procedure TReceber.FormCreate(Sender: TObject);
begin
  inherited;
  FCBClientes := TComboList.Create(ComboBox1, 'tbclientes', 'codigo', 'nome_chave');

  ComboBox1.Items.Insert(0, '(Todos)');
  ComboBox1.ItemIndex := 0;
end;

procedure TReceber.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FCBClientes);
  inherited;
end;

procedure TReceber.FrameData1CCalendarDiff1Change(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TReceber.IBrwSrcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  IBrwSrcemissao.AsDateTime := Now();
  IBrwSrcvencimento.AsDateTime := Now();
  IBrwSrcvencimento_real.AsDateTime := Now();
  IBrwSrcvalor_baixado.AsFloat := 0;
  IBrwSrcjuros.AsFloat := 0;
  IBrwSrcmulta.AsFloat := 0;
  IBrwSrcdescto.AsFloat := 0;
end;

procedure TReceber.IBrwSrcAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qContatos.Params.ParamByName('Cliente').AsInteger := IBrwSrcid_cli.AsInteger;
  G.RefreshDataSet(qContatos);
end;

procedure TReceber.IBrwSrcbaixaChange(Sender: TField);
begin
  inherited;
  if not (IBrwSrc.State in [dsEdit, dsInsert]) then
    Exit;

  if IBrwSrcbaixa.IsNull then
    IBrwSrcvalor_baixado.AsFloat := 0
  else
    IBrwSrcvalor_baixado.AsFloat := IBrwSrctotal.AsFloat;
end;

procedure TReceber.IBrwSrcCalcFields(DataSet: TDataSet);
var
  vencto, hoje: string;
begin
  inherited;
  vencto := FormatDateTime('yyyymmdd', IBrwSrcvencimento_real.AsDateTime);
  hoje := FormatDateTime('yyyymmdd', Now);

  IBrwSrcstatus.AsInteger := -1;

  if not IBrwSrcbaixa.IsNull then
    IBrwSrcstatus.AsInteger := 2
  else if vencto >= hoje then
    IBrwSrcstatus.AsInteger := 1
  else if vencto < hoje then
    IBrwSrcstatus.AsInteger := 3;

  IBrwSrctotal.AsFloat := IBrwSrcvalor.AsFloat +
    IBrwSrcjuros.AsFloat + IBrwSrcmulta.AsFloat -
    IBrwSrcdescto.AsFloat;

end;

procedure TReceber.IBrwSrctipoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if Sender.AsString = EmptyStr then
    Exit;

  case Sender.AsString[1] of
    'R': Text := 'Receita';
    'D': Text := 'Despesa';
  end;
end;

procedure TReceber.IBrwSrctipoSetText(Sender: TField; const Text: string);
begin
  Sender.AsString := Text[1];
end;

procedure TReceber.OnEdit;
begin
  Application.CreateForm(TReceberM, ReceberM);
  ReceberM.ScreenType := stMasterDetail;
  ReceberM.DataSet := IBrwSrc;
  ReceberM.ShowModal;
end;

procedure TReceber.OnLoad;
begin
  inherited;
  with FrameData1 do
  begin
    CCalendarDiff1.Date := Now();
    ComboBox1.ItemIndex := 2;
    ComboBox1Change(ComboBox1);
  end;
end;

procedure TReceber.PageControl1Change(Sender: TObject);
begin
  inherited;
  if cbStatus.ItemIndex <> PageControl1.ActivePageIndex then
  begin
    cbStatus.ItemIndex := PageControl1.ActivePageIndex;
    cbStatusChange(cbStatus);
  end;
end;

procedure TReceber.qContatosAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qContatoscliente.AsInteger := IBrwSrcid_cli.AsInteger;
  qContatosempresa.AsString := IBrwSrcnome_chave.AsString;
end;

initialization
  RegisterClass(TReceber);

finalization
  UnRegisterClass(TReceber);

end.
