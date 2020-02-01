unit uLabLaudoUI;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIGrid, ActnList, Grids, JvExGrids, JvStringGrid, uLabLaudoCl,
  StdCtrls, Mask, JvExMask, JvToolEdit, JvBaseEdits;

type
  TLabLaudoUI = class(TIGrid)
    jvCalc: TJvCalcEdit;
    cbInst: TComboBox;
    procedure sGridDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure sGridKeyPress(Sender: TObject; var Key: Char);
    procedure cbInstExit(Sender: TObject);
    procedure cbInstKeyPress(Sender: TObject; var Key: Char);
    procedure cbInstChange(Sender: TObject);
    procedure sGridDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FEnsaios: TEnsaios;
    procedure SetEnsaios(const Value: TEnsaios);
    function GetEnsaio: TEnsaio;
    procedure ResetGridTitles;
    { Private declarations }
  public
    { Public declarations }
    procedure RealignGrid;

    property Ensaios: TEnsaios read FEnsaios write SetEnsaios;
    property Ensaio: TEnsaio read GetEnsaio;
  end;

var
  LabLaudoUI: TLabLaudoUI;

implementation

uses uDM, uLabLaudoUIParams, uResources, uLabLaudoUIAtivos, uLabLaudoUISolucoes;

{$R *.dfm}

{ TLabLaudoUI }

procedure TLabLaudoUI.cbInstChange(Sender: TObject);
begin
  inherited;
  Ensaio.Instrumento := TInstrumento(cbInst.Items.Objects[cbInst.ItemIndex]);
end;

procedure TLabLaudoUI.cbInstExit(Sender: TObject);
begin
  inherited;
  TWinControl(Sender).Visible := False;
end;

procedure TLabLaudoUI.cbInstKeyPress(Sender: TObject; var Key: Char);
var
  cText: String;
  e: TEnsaio;
begin
  if Key = #13 then
  begin
    if Sender is TJvCalcEdit then
    begin
      if Ensaio.Params.Count > 0 then
      try
        LabLaudoUIParams := TLabLaudoUIParams.Create(nil);
        LabLaudoUIParams.Params := Ensaio.Params;
        LabLaudoUIParams.ShowModal;
        if not LabLaudoUIParams.Execute then
          Key := #27;
      finally
        FreeAndNil(LabLaudoUIParams);
      end;

      if Key <> #27 then
      begin
        Ensaio.Valor := jvCalc.Value;
        cText := FormatFloat(',0.###0', Ensaio.Valor);
      end;
    end;

    if Sender is TComboBox then
      cText := Ensaio.Instrumento.Descri;

    // Atualiza banco de dados
    Ensaio.Update;
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
        Cells[Col + 1, Row] := FormatFloat(',0.###0', Ensaio.ValorC);
        InvalidateCell(ColCount - 1, Row);

        if (key = #13) and (Row < RowCount - 1) then
          Row := Row + 1;

        for e in FEnsaios do
          if e.SomenteLeitura then
          begin
            Cells[Col, e.Index + 1] := FormatFloat(',0.###0', e.Valor);
            Cells[Col + 1, e.Index + 1] := FormatFloat(',0.###0', e.ValorC);
          end;
      end;

      RealignGrid;
      SetFocus;
    end;

  inherited;
end;

procedure TLabLaudoUI.FormCreate(Sender: TObject);
begin
  inherited;
  ResetGridTitles;
end;

procedure TLabLaudoUI.FormResize(Sender: TObject);
begin
  inherited;
  RealignGrid;
end;

procedure TLabLaudoUI.FormShow(Sender: TObject);
begin
  inherited;
  RealignGrid;
end;

function TLabLaudoUI.GetEnsaio: TEnsaio;
begin
  Result := nil;
  if sGrid.Cells[0,1] <> EmptyStr then
    Result := FEnsaios[sGrid.Row - 1];
end;

procedure TLabLaudoUI.RealignGrid;
var
  iCol, iRow, iColWidth, iColsWidth: Integer;
begin
  iColsWidth := 0;

  with sGrid do
  begin
    ResetGridTitles;

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
      ColWidths[1] := ColWidths[1] + (sGrid.ClientWidth - iColsWidth - 30);
  end;
end;

procedure TLabLaudoUI.ResetGridTitles;
begin
  with sGrid do
  begin
    ColCount := 12;

    ColWidths[0] := 37;
    ColWidths[1] := 136;
    ColWidths[2] := 54;
    ColWidths[3] := 110;
    ColWidths[4] := 50;
    ColWidths[5] := 54;
    ColWidths[6] := 220;
    ColWidths[7] := 81;
    ColWidths[8] := 81;
    ColWidths[9] := 24;
    ColWidths[10] := 24;
    ColWidths[11] := 24;

    Cells[0,0] := 'Ensaio';
    Cells[1,0] := 'Nome';
    Cells[2,0] := 'Unidade';
    Cells[3,0] := 'Método';
    Cells[4,0] := 'Ref. Tipo';
    Cells[5,0] := 'Ref. Valor';
    Cells[6,0] := 'Instrumento';
    Cells[7,0] := 'Valor';
    Cells[8,0] := 'Valor Corrigido';
    Cells[9,0] := 'Ati';
    Cells[10,0] := 'Sol';
    Cells[11,0] := 'Ok';
  end;
end;

procedure TLabLaudoUI.SetEnsaios(const Value: TEnsaios);
var
  Laudo: TLaudo;
  e: TEnsaio;
  r: Integer;
  i: Integer;
  m: string;
begin
  FEnsaios := Value;

  try
    with sGrid do
    begin
      RowCount := 2;
      FixedRows := 1;
      Rows[1].Text := '';

      for e in FEnsaios do
      begin
        if Cells[0,1] <> EmptyStr then
          RowCount := RowCount + 1;

        r := RowCount - 1;
        Cells[6,r] := '';

        Cells[0,r] := IntToStr(e.Ensaio);
        Cells[1,r] := e.Nome;
        Cells[2,r] := e.Unidade;
        Cells[3,r] := e.Metodo;
        Cells[4,r] := e.Ref.TipoTexto;
        Cells[5,r] := FormatFloat(',0.###0', e.Ref.Valor);

        if Assigned(e.Instrumento) then
          Cells[6,r] := e.Instrumento.Descri;

        Cells[7,r] := FormatFloat(',0.###0', e.Valor);

        m := ',0';
        if e.Decimais > 0 then
          m := m + '.' + StringOfChar('0', e.Decimais);

        Cells[8,r] := FormatFloat(m, e.ValorC);
      end;
      Col := 7;
      Row := 1;
    end;
  finally
    RealignGrid;
  end;
end;

procedure TLabLaudoUI.sGridDblClick(Sender: TObject);
var
  k: Char;
begin
  inherited;
  k := #13;
  sGridKeyPress(Sender, k);
end;

procedure TLabLaudoUI.sGridDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  y: Integer;
  x: Integer;
  idx: Integer;
  fBmp: TIcon;
  oRes: TImageList;
  e: TEnsaio;
begin
  inherited;

  with TStringGrid(Sender) do
  begin
    Canvas.Font.Style := [];

    if (Cells[0,1] <> EmptyStr) and (ARow > 0) then
    begin
      e := FEnsaios[ARow - 1];

      if e.SomenteLeitura then
        Canvas.Font.Style := [fsBold];
    end;

    if (gdFixed in State) or (ACol in [2..4]) then
      CellCenter(sGrid, ACol, ARow, Rect)
    else if ACol in [0,5,7,8] then
      CellRight(sGrid, ACol, ARow, Rect)
    else
      CellLeft(sGrid, ACol, ARow, Rect);

    if (Cells[0,1] <> EmptyStr) and not (gdFixed in State)
      and (ACol in [9,10,11]) then
    begin
      oRes := Resources.small_n;
      case ACol of
        9:
        begin
          idx := 257;
          if not e.ExisteAtivos then
            oRes := Resources.small_d;
        end;
        10:
        begin
          idx := 267;
          if not e.ExisteSolucoes then
            oRes := Resources.small_d;
        end;
        11:
        begin
          idx := 214;

          if (e.Ref.Tipo = trMin) then
            if (e.ValorC < e.Ref.Valor ) then
              idx := 213
            else
              idx := 208;

          if (e.Ref.Tipo = trMax) then
            if (e.ValorC > e.Ref.Valor ) then
              idx := 213
            else
              idx := 208;
        end;
      end;

      try
        fBmp := TIcon.Create;
        fBmp.Transparent := True;

        oRes.GetIcon(idx, fBmp);

        x := Rect.Left + (Rect.Right - Rect.Left - fBmp.Width) div 2;
        y := Rect.Top + (Rect.Bottom - Rect.Top - fBmp.Height) div 2;

        Canvas.Brush.Style := bsClear;
        Canvas.Draw(x, y, fBmp);
        Canvas.Brush.Style := bsSolid;
      finally
        FreeAndNil(fBmp);
      end;
    end;
  end;
end;

procedure TLabLaudoUI.sGridKeyPress(Sender: TObject; var Key: Char);
var
  cRect: TRect;
  oCtrl: TWinControl;

  procedure PrepareCbInst();
  var
    i: TInstrumento;
  begin
    try
      cbInst.Clear;

      for i in Ensaio.Instrumentos do
      begin
        cbInst.Items.AddObject(i.Descri, i);

        if i = Ensaio.Instrumento then
          cbInst.ItemIndex := cbInst.Items.Count - 1;

      end;
    finally
      if (cbInst.ItemIndex = -1) and (cbInst.Items.Count > 0) then
        cbInst.ItemIndex := 0;
    end;
  end;
begin
  with sGrid do
  begin
    if Assigned(FEnsaios[Row - 1]) and FEnsaios[Row - 1].SomenteLeitura then
      Exit;

    if ((Col = 6) and (key = #13)) or ((Col = 7) and (Key in ['0'..'9', ',', #13])) then
    begin
      if Cells[Col, Row] = EmptyStr then
        Exit;

      cRect := CellRect(Col, Row);

      if Col = 6 then
      begin
        oCtrl := cbInst;
        PrepareCbInst;

        if cbInst.Items.Count = 0 then
        begin
          ShowMessageFmt('Não há instrumentos disponíveis para o ensaio:%s.',
            [#13#10 + Ensaio.Nome]);
          Exit;
        end;
      end else
        oCtrl := jvCalc;

      oCtrl.Left := Left + cRect.Left + 1;
      oCtrl.Top := Top + cRect.Top + 1;
      oCtrl.Width := cRect.Right - cRect.Left - 2;
      oCtrl.Visible := True;
      oCtrl.SetFocus;

      // Posiciona o cursos dentro do controle jvCalc
      if Col = 7 then
      begin
        if Key in ['0'..'9', ',', '.'] then
        begin
          jvCalc.EditText := Key;
          if (Key in [',', '.']) then
            jvCalc.EditText := '0'+jvCalc.EditText;

          jvCalc.SelStart := Length(jvCalc.EditText);
        end
        else
        begin
          jvCalc.Value := Ensaio.Valor;
          jvCalc.SelectAll;
        end;
      end;
    end;

    if (Col in [9, 10]) and (key = #13) then
    begin
      if (Col = 9) and Ensaio.ExisteAtivos then
      try
        LabLaudoUIAtivos := TLabLaudoUIAtivos.Create(nil);
        LabLaudoUIAtivos.Ensaio := Ensaio;
        LabLaudoUIAtivos.ShowModal;
      finally
        FreeAndNil(LabLaudoUIAtivos);
      end;

        
      if (Col = 10) and Ensaio.ExisteSolucoes then
      try
        LabLaudoUISolucoes := TLabLaudoUISolucoes.Create(nil);
        LabLaudoUISolucoes.Ensaio := Ensaio;
        LabLaudoUISolucoes.ShowModal;
      finally
        FreeAndNil(LabLaudoUISolucoes);
      end;
    end;
  end;

  inherited;
end;

end.
