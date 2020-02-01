unit uLabLaudoUIParams;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIGrid, ActnList, Grids, JvExGrids, JvStringGrid, uLabLaudoCl,
  StdCtrls, Mask, JvExMask, JvToolEdit, JvBaseEdits, ExtCtrls, Buttons,
  JvExStdCtrls, JvEdit;

type
  TLabLaudoUIParams = class(TIGrid)
    jvCalc: TJvCalcEdit;
    GroupBox1: TGroupBox;
    edEnsaio: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edNome: TEdit;
    Label3: TLabel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    edValor: TJvEdit;
    procedure FormCreate(Sender: TObject);
    procedure sGridKeyPress(Sender: TObject; var Key: Char);
    procedure jvCalcExit(Sender: TObject);
    procedure jvCalcKeyPress(Sender: TObject; var Key: Char);
    procedure sGridDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure actOkExecute(Sender: TObject);
  private
    FParams: TEnsaioParams;
    FEnsaio: TEnsaio;
    procedure SetParams(const Value: TEnsaioParams);
    function GetParam: TEnsaioParam;
    { Private declarations }
  public
    { Public declarations }
    property Ensaio: TEnsaio read FEnsaio;
    property Param: TEnsaioParam read GetParam;
    property Params: TEnsaioParams read FParams write SetParams;
  end;

var
  LabLaudoUIParams: TLabLaudoUIParams;

implementation

{$R *.dfm}

{ TLabLaudoUIParams }

procedure TLabLaudoUIParams.actOkExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TLabLaudoUIParams.FormCreate(Sender: TObject);
begin
  inherited;
  with sGrid do
  begin
    ColCount := 2;
    ColWidths[0] := 266;
    ColWidths[1] := 81;

    Cells[0, 0] := 'Parâmetro';
    Cells[1, 0] := 'Valor';
  end;
end;

function TLabLaudoUIParams.GetParam: TEnsaioParam;
begin
  with sGrid do
    Result := FParams[Row - 1];
end;

procedure TLabLaudoUIParams.jvCalcExit(Sender: TObject);
begin
  inherited;
  TWinControl(Sender).Visible := False;
end;

procedure TLabLaudoUIParams.jvCalcKeyPress(Sender: TObject; var Key: Char);
var
  cText: String;
begin
  if Key = #13 then
  begin
    Param.Valor := jvCalc.Value;
    cText := FormatFloat(Param.Mask, Param.Valor);
    actOk.Enabled := FParams.ParamsOk;
  end;

  if Key = #27 then
    with sGrid do
      cText := Cells[Col, Row];


  if Key in [#13, #27] then
    with sGrid do
    begin
      Cells[Col, Row] := cText;
      SetFocus;

      if (key = #13) then
        if (Row < RowCount - 1) then
          Row := Row + 1
        else
          SelectNext(ActiveControl, True, True);
    end;

  inherited;
end;

procedure TLabLaudoUIParams.SetParams(const Value: TEnsaioParams);
var
  p: TEnsaioParam;
  r: Integer;
begin
  FEnsaio := nil;
  FParams := Value;

  if Assigned(FParams) then
  begin
    FEnsaio := TEnsaio(FParams.Owner);

    edEnsaio.Text := IntToStr(FEnsaio.Ensaio);
    edNome.Text := FEnsaio.Nome;
    edValor.Text := FormatFloat(',0.###0', FEnsaio.Valor);

    actOk.Enabled := FParams.ParamsOk;
  end;

  with sGrid do
  begin
    RowCount := 2;
    Rows[1].Text := '';
    for p in FParams do
    begin
      if Cells[0,1] <> EmptyStr then
        RowCount := RowCount + 1;

      r := RowCount - 1;

      Cells[0, r] := p.Titulo;
      Cells[1, r] := FormatFloat(p.Mask, p.Valor);
    end;

    Row := 1;
    Col := 1;
  end;
end;

procedure TLabLaudoUIParams.sGridDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  inherited;
  if not (gdFixed in State) and (ACol = 1) then
    CellRight(sGrid, ACol, ARow, Rect);
end;

procedure TLabLaudoUIParams.sGridKeyPress(Sender: TObject; var Key: Char);
var
  cRect: TRect;
begin
  with sGrid do
    if (Col = 1) and (Key in ['0'..'9', ',', '.', #13]) then
    begin
      cRect := CellRect(Col, Row);

      jvCalc.DecimalPlaces := Param.Dec_;
      jvCalc.DisplayFormat := Param.Mask;
      jvCalc.Left := Left + cRect.Left + 1;
      jvCalc.Top := Top + cRect.Top + 1;
      jvCalc.Width := cRect.Right - cRect.Left - 2;
      jvCalc.Visible := True;
      jvCalc.SetFocus;

      if Key in ['0'..'9', ',', '.'] then
      begin
        jvCalc.EditText := Key;
        if (Key in [',', '.']) then
          jvCalc.EditText := '0'+jvCalc.EditText;

        jvCalc.SelStart := Length(jvCalc.EditText);
      end
      else
      begin
        jvCalc.Value := Param.Valor;
        jvCalc.SelectAll;
      end;
    end;

  if Key = #27 then
    actCancelExecute(actCancel);

  inherited;
end;

end.
