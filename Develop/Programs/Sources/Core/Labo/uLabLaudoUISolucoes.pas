unit uLabLaudoUISolucoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIGrid, ActnList, Grids, JvExGrids, JvStringGrid, JvExStdCtrls,
  JvEdit, StdCtrls, ExtCtrls, uLabLaudoCl, ComCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Buttons, Mask, JvExMask, JvToolEdit, JvBaseEdits;

type
  TLabLaudoUISolucoes = class(TIGrid)
    GroupBox1: TGroupBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    edEnsaio: TEdit;
    Panel3: TPanel;
    Label3: TLabel;
    edValor: TJvEdit;
    Panel4: TPanel;
    Label2: TLabel;
    edNome: TEdit;
    PageControl1: TPageControl;
    qSolucoes: TZQuery;
    qSolucoesrecno: TIntegerField;
    qSolucoescodigo: TIntegerField;
    qSolucoeslotefor: TStringField;
    qSolucoesvalidade: TDateField;
    qSolucoesqtd: TFloatField;
    qSolucoessaldo: TFloatField;
    qSolucoesuso: TFloatField;
    qSolucoesnome_chave: TStringField;
    qSolucoescnpj: TStringField;
    qTipo: TZQuery;
    qTiporecno: TIntegerField;
    qTipodescri: TStringField;
    Panel6: TPanel;
    BitBtn1: TBitBtn;
    JvCalcEdit1: TJvCalcEdit;
    qSolucoesempresa: TStringField;
    qSolucoescriar: TBooleanField;
    procedure PageControl1Change(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure sGridDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure sGridDblClick(Sender: TObject);
    procedure sGridKeyPress(Sender: TObject; var Key: Char);
    procedure JvCalcEdit1Exit(Sender: TObject);
    procedure JvCalcEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure sGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    FExcluir: Boolean;
    FEnsaio: TEnsaio;
    procedure ResetTitles;
    procedure SetEnsaio(const Value: TEnsaio);
    procedure LoadTabs;
    procedure LoadSolucoes;
    procedure SalvarSolucao;
    procedure ExcluirSolucao;
  public
    procedure RealignGrid;

    property Ensaio: TEnsaio read FEnsaio write SetEnsaio;
  end;

var
  LabLaudoUISolucoes: TLabLaudoUISolucoes;

implementation

uses uDM, uIUtils;

{$R *.dfm}

{ TLabLaudoUISolucoes }

procedure TLabLaudoUISolucoes.actOkExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TLabLaudoUISolucoes.ExcluirSolucao;
begin
  // Posicionando dataset
  qSolucoes.RecNo := sGrid.Row;

  U.Data.ExecSQL(
      'delete from labamostras_res_sol '+
       'where laudo = %d '+
         'and relato_recno = %d '+
         'and ensaio_recno = %d '+
         'and solucao = %d ',
        [Ensaio.Laudo.Laudo, Ensaio.Laudo.TipoLaudo, Ensaio.Ensaio,
          qSolucoesrecno.AsInteger]);

  qSolucoes.Refresh;
  qSolucoes.RecNo := sGrid.Row;
end;

procedure TLabLaudoUISolucoes.FormResize(Sender: TObject);
begin
  inherited;
  RealignGrid;
end;

procedure TLabLaudoUISolucoes.FormShow(Sender: TObject);
begin
  inherited;
  PageControl1Change(PageControl1);
end;

procedure TLabLaudoUISolucoes.JvCalcEdit1Exit(Sender: TObject);
begin
  inherited;
  TWinControl(Sender).Visible := False;
end;

procedure TLabLaudoUISolucoes.JvCalcEdit1KeyPress(Sender: TObject;
  var Key: Char);
var
  cText: String;
begin
  if Key = #13 then
  begin
    if JvCalcEdit1.Value = 0 then
      ExcluirSolucao
    else
      SalvarSolucao;
      
    cText := qSolucoesuso.DisplayText;
  end;

  if Key = #27 then
    with sGrid do
      cText := Cells[Col, Row];

  if Key in [#13, #27] then
    with sGrid do
    begin
      Cells[Col, Row] := cText;
      if Sender is TJvCalcEdit then
      begin
        Cells[Col + 1, Row] := FormatFloat(',0.###0', qSolucoessaldo.AsFloat);
        InvalidateCell(ColCount - 1, Row);

        if (key = #13) and (Row < RowCount - 1) then
          Row := Row + 1;
      end;

      SetFocus;
    end;

  inherited;
end;

procedure TLabLaudoUISolucoes.LoadSolucoes;
var
  I: Integer;
begin
  qTipo.RecNo := PageControl1.ActivePageIndex + 1;

  with sGrid do
  try
    RowCount := 2;
    Rows[1].Text := EmptyStr;

    //UnloadSolucoes;

    with qSolucoes do
    begin
      Close;

      ParamByName('relato').AsInteger := FEnsaio.Laudo.TipoLaudo;
      ParamByName('laudo').AsInteger := FEnsaio.Laudo.Laudo;
      ParamByName('ensaio').AsInteger := FEnsaio.Ensaio;
      ParamByName('tipo').AsInteger := qTiporecno.AsInteger;

      Open;

      while not Eof do
      begin
        if (Cells[0,1] <> EmptyStr) then
          RowCount := RowCount + 1;

        for i := 0 to ColCount - 1 do
          Cells[i, RowCount - 1] := Fields[i].DisplayText;
          
        Next;
      end;
    end;
  finally
    RealignGrid;
  end;
end;

procedure TLabLaudoUISolucoes.LoadTabs;
var
  oTab: TTabSheet;
begin
  with PageControl1, qTipo do
  try
    Close;
    ParamByName('ensaio').AsInteger := Ensaio.Ensaio;
    Open;

    while not Eof do
    begin
      oTab := TTabSheet.Create(Self);
      oTab.PageControl := PageControl1;
      oTab.Parent := PageControl1;
      oTab.Caption := qTipodescri.AsString;

      if sGrid.Parent = Self then
        sGrid.Parent := oTab;
      
      Next;
    end;
  finally

  end;
end;

procedure TLabLaudoUISolucoes.PageControl1Change(Sender: TObject);
begin
  inherited;
  sGrid.Parent := PageControl1.ActivePage;
  LoadSolucoes;
end;

procedure TLabLaudoUISolucoes.RealignGrid;
var
  iCol, iRow, iColWidth, iColsWidth: Integer;
begin
  iColsWidth := 0;

  with sGrid do
  begin
    ResetTitles;

    for iCol := 0 to ColCount - 1 do
    begin
      iColWidth := ColWidths[iCol];
      for iRow := 0 to RowCount - 1 do
        if sGrid.Canvas.TextWidth(Cells[iCol, iRow]) + 4 > iColWidth then
          iColWidth := sGrid.Canvas.TextWidth(Cells[iCol, iRow]) + 4;

      ColWidths[iCol] := iColWidth;
      iColsWidth := iColsWidth + iColWidth;
    end;

    if sGrid.ClientWidth > iColsWidth then
      ColWidths[7] := ColWidths[7] + (sGrid.ClientWidth - iColsWidth - 30);
  end;
end;

procedure TLabLaudoUISolucoes.ResetTitles;
var
  iCol: Integer;
begin
  with sGrid do
  begin
    ColCount := 9;
    
    Cells[0, 0] := 'Lote';
    Cells[1, 0] := 'Lote For';
    Cells[2, 0] := 'Validade';
    Cells[3, 0] := 'Quandidade';
    Cells[4, 0] := 'Usar';
    Cells[5, 0] := 'Saldo';
    Cells[6, 0] := 'Fonecedor';
    Cells[7, 0] := 'Nome Curto';
    Cells[8, 0] := 'C.N.P.J.';

    for iCol := 0 to ColCount - 1 do
      ColWidths[iCol] := Canvas.TextWidth(Cells[iCol, 0]) + 4;

    ColWidths[3] := 100;
    ColWidths[4] := 100;
    ColWidths[5] := 100;
  end;
end;

procedure TLabLaudoUISolucoes.SalvarSolucao;
begin
  qSolucoes.RecNo := sGrid.Row;
  
  with U.Data.Query do
  try
    SQL.Text :=
    'select exists( ' +
           'select 1 ' +
             'from labamostras_res_sol ' +
            'where relato_recno = :relato '+
               'and ensaio_recno = :ensaio '+
               'and laudo = :laudo '+
               'and solucao = :solucao) ';

    ParamByName('relato').AsInteger := Ensaio.Laudo.TipoLaudo;
    ParamByName('ensaio').AsInteger := Ensaio.Ensaio;
    ParamByName('laudo').AsInteger := Ensaio.Laudo.Laudo;
    ParamByName('solucao').AsInteger := qSolucoesrecno.AsInteger;

    Open;

    if Fields[0].AsBoolean then
      SQL.Text :=
      'update labamostras_res_sol '+
         'set qtd = :qtd '+
       'where relato_recno = :relato '+
         'and ensaio_recno = :ensaio '+
         'and laudo = :laudo '+
         'and solucao = :solucao '
    else
      SQL.Text :=
      'insert into labamostras_res_sol '+
              '(relato_recno, ensaio_recno, laudo, solucao, qtd) '+
            'values (:relato, :ensaio, :laudo, :solucao, :qtd)';

    ParamByName('relato').AsInteger := Ensaio.Laudo.TipoLaudo;
    ParamByName('ensaio').AsInteger := Ensaio.Ensaio;
    ParamByName('laudo').AsInteger := Ensaio.Laudo.Laudo;
    ParamByName('solucao').AsInteger := qSolucoesrecno.AsInteger;
    ParamByName('qtd').AsFloat := JvCalcEdit1.Value;

    ExecSQL;

    qSolucoes.Refresh;
    qSolucoes.RecNo := sGrid.Row;
  finally
    Close;
  end;
end;

procedure TLabLaudoUISolucoes.SetEnsaio(const Value: TEnsaio);
begin
  FEnsaio := Value;
  try
    edEnsaio.Clear;
    edNome.Clear;
    edValor.Clear;

    if Assigned(FEnsaio) then
    begin
      edEnsaio.Text := IntToStr(FEnsaio.Ensaio);
      edNome.Text := FEnsaio.Nome;
      edValor.Text :=  FormatFloat(',0.###0', FEnsaio.Valor);

      LoadTabs;
    end;
  finally
    RealignGrid;
  end;
end;

procedure TLabLaudoUISolucoes.sGridDblClick(Sender: TObject);
var
  k: Char;
begin
  inherited;
  k := #13;
  sGridKeyPress(Sender, k);
end;

procedure TLabLaudoUISolucoes.sGridDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  inherited;

  with TStringGrid(Sender) do
  begin
    if (gdFixed in State) then
      CellCenter(sGrid, ACol, ARow, Rect)
    else if ACol in [0,3..6] then
      CellRight(sGrid, ACol, ARow, Rect)
    else
      CellLeft(sGrid, ACol, ARow, Rect);
  end;
end;

procedure TLabLaudoUISolucoes.sGridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  k: Char;
begin
  inherited;
  if Key = VK_DELETE then
  begin
    k := #127;
    sGridKeyPress(Sender, k);
  end;
end;

procedure TLabLaudoUISolucoes.sGridKeyPress(Sender: TObject; var Key: Char);
var
  cRect: TRect;
  oCtrl: TWinControl;
begin
  with sGrid do
  begin
    if ((Col = 4) and (Key in ['0'..'9', ',', #13, #127])) then
    begin
      {Limpeza do valor da celula}
      if Key = #127 then
      begin
        ExcluirSolucao;
        Cells[Col, Row] := qSolucoesuso.DisplayText;        
        Cells[Col + 1, Row] := qSolucoessaldo.DisplayText;
        Exit;
      end;
        
      qSolucoes.RecNo := Row;

      cRect := CellRect(Col, Row);
      cRect.TopLeft := ClientToParent(cRect.TopLeft, Self);
      cRect.BottomRight := ClientToParent(cRect.BottomRight, Self);

      oCtrl := JvCalcEdit1;
      oCtrl.Left := Left + cRect.Left - 2;
      oCtrl.Top := Top + cRect.Top - 2;
      oCtrl.Width := cRect.Right - cRect.Left - 2;
      oCtrl.Visible := True;
      oCtrl.SetFocus;

      // Posiciona o cursos dentro do controle jvCalc
      if Col = 4 then
      begin
        if Key in ['0'..'9', ',', '.'] then
        begin
          JvCalcEdit1.EditText := Key;
          if (Key in [',', '.']) then
            JvCalcEdit1.EditText := '0' + JvCalcEdit1.EditText;

          JvCalcEdit1.SelStart := Length(JvCalcEdit1.EditText);
        end
        else
        begin
          JvCalcEdit1.Value := qSolucoesuso.AsFloat;
          JvCalcEdit1.SelectAll;
        end;
      end;
    end;
  end;

  inherited;
end;

end.
