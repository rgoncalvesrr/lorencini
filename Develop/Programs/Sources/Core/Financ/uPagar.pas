unit uPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, DB, Menus, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons, ComCtrls, ExtCtrls, ToolWin,
  ZSqlUpdate, uFrameData, uIUtils, ZSequence;

type
  TPagar = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrcnatureza: TIntegerField;
    IBrwSrcdescri: TStringField;
    IBrwSrctipo: TStringField;
    IBrwSrcid_forn: TIntegerField;
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
    IBrwSrccc: TStringField;
    FrameData1: TFrameData;
    cbStatus: TComboBox;
    Label1: TLabel;
    Label3: TLabel;
    Label18: TLabel;
    ComboBox1: TComboBox;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Label4: TLabel;
    IBrwSrcstatus: TIntegerField;
    IBrwSrchistorico: TStringField;
    ZSequence1: TZSequence;
    IBrwSrcjuros: TFloatField;
    IBrwSrcmulta: TFloatField;
    IBrwSrcdescto: TFloatField;
    IBrwSrctotal: TFloatField;
    procedure IBrwSrctipoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBrwSrctipoSetText(Sender: TField; const Text: string);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure cbStatusChange(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure IBrwSrcCalcFields(DataSet: TDataSet);
    procedure FrameData1CCalendarDiff1Change(Sender: TObject);
    procedure IBrwSrcbaixaChange(Sender: TField);
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FCBForn: TComboList;
    procedure OnEdit; override;
    procedure OnLoad; override;
  public
    { Public declarations }
  end;

var
  Pagar: TPagar;

implementation

uses uDM, uPagarM, ccalendardiff, iTypes, uResources;

{$R *.dfm}

{ TPagar }

procedure TPagar.actQueryProcessExecute(Sender: TObject);
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
    ParamByName('FornDe').AsInteger:= 0;
    ParamByName('FornAte').AsInteger:= 99999999999;

    case cbStatus.ItemIndex of
      1: fWhere := 'a.vencimento_real >= :DataAtual and a.baixa is null'; // t�tulos em aberto
      2: fWhere := 'a.baixa is not null';  // t�tulos recebidos
      3: fWhere := 'a.vencimento_real < :DataAtual and a.baixa is null'; // t�tulos em atraso
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
    if Assigned(FCBForn.Selected) and (FCBForn.Selected.Value > 0) then
    begin
      ParamByName('FornDe').AsInteger:= FCBForn.Selected.Value;
      ParamByName('FornAte').AsInteger:= FCBForn.Selected.Value;
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

procedure TPagar.cbStatusChange(Sender: TObject);
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

procedure TPagar.ComboBox1Change(Sender: TObject);
begin
  inherited;
  actQueryProcess.Enabled:= trim(ComboBox1.Text) <> EmptyStr;
end;

procedure TPagar.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
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
          2: small_n.GetBitmap(208, fBitMap); //Pagos
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

procedure TPagar.FormCreate(Sender: TObject);
begin
  inherited;
  FCBForn := TComboList.Create(ComboBox1, 'fornecedores', 'codigo', 'nome_chave');

  ComboBox1.Items.Insert(0, '(Todos)');
  ComboBox1.ItemIndex := 0;
end;

procedure TPagar.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FCBForn);
  inherited;
end;

procedure TPagar.FrameData1CCalendarDiff1Change(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TPagar.IBrwSrcAfterInsert(DataSet: TDataSet);
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

procedure TPagar.IBrwSrcbaixaChange(Sender: TField);
begin
  inherited;
  if not (IBrwSrc.State in [dsEdit, dsInsert]) then
    Exit;

  if IBrwSrcbaixa.IsNull then
    IBrwSrcvalor_baixado.AsFloat := 0
  else
    IBrwSrcvalor_baixado.AsFloat := IBrwSrctotal.AsFloat;
end;

procedure TPagar.IBrwSrcCalcFields(DataSet: TDataSet);
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

  // Calculando o total a pagar
  IBrwSrctotal.AsFloat := IBrwSrcvalor.AsFloat +
    IBrwSrcjuros.AsFloat + IBrwSrcmulta.AsFloat -
    IBrwSrcdescto.AsFloat;
end;

procedure TPagar.IBrwSrctipoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if Sender.AsString = EmptyStr then
    Exit;

  case Sender.AsString[1] of
    'R': Text := 'Receita';
    'D': Text := 'Despesa';
  end;
end;

procedure TPagar.IBrwSrctipoSetText(Sender: TField; const Text: string);
begin
  Sender.AsString := Text[1];
end;

procedure TPagar.OnEdit;
begin
  try
    PagarM := TPagarM.Create(Application);
    PagarM.DataSet := DataSet;
    PagarM.ShowModal;
  finally
    PagarM.Free
  end;
end;

procedure TPagar.OnLoad;
begin
  inherited;
  with FrameData1 do
  begin
    CCalendarDiff1.Date := Now();
    ComboBox1.ItemIndex := 2;
    ComboBox1Change(ComboBox1);
  end;
end;

procedure TPagar.PageControl1Change(Sender: TObject);
begin
  inherited;
  if cbStatus.ItemIndex <> PageControl1.ActivePageIndex then
  begin
    cbStatus.ItemIndex := PageControl1.ActivePageIndex;
    cbStatusChange(cbStatus);
  end;
end;

initialization
  RegisterClass(TPagar);

finalization
  UnRegisterClass(TPagar);

end.
