unit uParcelamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uiwizard, ActnList, StdCtrls, ExtCtrls, Mask, JvExMask, JvToolEdit,
  JvBaseEdits, ComCtrls, ToolWin, Grids, JvExGrids, JvStringGrid, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, DBGrids, JvExDBGrids, JvDBGrid, DB,
  JvMemoryDataset, JvDBControls;

type
  TParcelamento = class(TIWizard)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ceParcelas: TJvCalcEdit;
    ceIntervalo: TJvCalcEdit;
    ceValor: TJvCalcEdit;
    ceSaldo: TJvCalcEdit;
    GroupBox2: TGroupBox;
    actGerar: TAction;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    dpVencto: TJvDatePickerEdit;
    Label3: TLabel;
    JvDBGrid1: TJvDBGrid;
    Parcelas: TJvMemoryData;
    Parcelasvencimento: TDateField;
    Parcelasvalor: TFloatField;
    DataSource1: TDataSource;
    ControlBar1: TControlBar;
    procedure ceParcelasChange(Sender: TObject);
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure actGerarExecute(Sender: TObject);
    procedure ParcelasAfterPost(DataSet: TDataSet);
    procedure ParcelasBeforeEdit(DataSet: TDataSet);
    procedure ceIntervaloExit(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure dpVenctoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    FModifiedByUser: Boolean;
  public
    { Public declarations }
  end;

var
  Parcelamento: TParcelamento;

implementation

uses uDM, uIUtils, math, uResources;

{$R *.dfm}

{ TParcelamento }

procedure TParcelamento.actGerarExecute(Sender: TObject);
var
  i: integer;
  itot : integer;
  fparc : Double;
  dvenc : TDateTime;
  iinterv : Integer;
  ftot: Double;
begin
  inherited;

  if FModifiedByUser then
    if not G.Out.ConfWarn('Uma ou mais parcelas foram editadas. Continuar?') then
      Exit;

  with Parcelas do
  try
    DisableControls;
    First;

    while not Eof do
      Delete;

    ceSaldo.Value := 0;

    itot := round(ceParcelas.Value);
    iinterv := round(ceIntervalo.Value);
    fparc := RoundTo(ceValor.Value / itot, -2);
    dvenc := dpVencto.Date;
    ftot := 0;
    
    for i := 1 to itot do
    begin
      Append;
      Parcelasvencimento.AsDateTime := dvenc;
      // Última parcela
      if (itot - i) = 0 then
        fparc := ceValor.Value - ftot;

      Parcelasvalor.AsFloat := fparc;
      Post;
      ftot := ftot + fparc;
      dvenc := dvenc + iinterv;
    end;

    First;
  finally
    EnableControls;
    FModifiedByUser := False;
  end;
end;

procedure TParcelamento.actOkExecute(Sender: TObject);
begin
  inherited;
  actCancelExecute(actCancel);
end;

procedure TParcelamento.ceIntervaloExit(Sender: TObject);
begin
  inherited;
  if actGerar.Enabled then
    actGerarExecute(actGerar);
end;

procedure TParcelamento.ceParcelasChange(Sender: TObject);
begin
  inherited;
  actGerar.Enabled := (ceValor.Value > 0) and (ceParcelas.Value > 0);
  actOk.Enabled := (ceValor.Value > 0) and (ceValor.Value = ceSaldo.Value);
end;

procedure TParcelamento.dpVenctoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  FormKeyPress(Sender, Key);
end;

procedure TParcelamento.JvDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  with TJvDBGrid(Sender) do
  begin
    if not (gdFocused in State) then
    begin
      Canvas.Brush.Color:= clWhite;

      if DataSource.DataSet.RecNo mod 2 = 0 then
        Canvas.Brush.Color:= $00D9EAD9
      else
        Canvas.Brush.Color:= clWhite;

      Canvas.FillRect(Rect);
    end;

    DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TParcelamento.ParcelasAfterPost(DataSet: TDataSet);
begin
  inherited;
  ceSaldo.Value := ceSaldo.Value + Parcelasvalor.AsFloat;
  FModifiedByUser := True;
  actOk.Enabled := ceValor.Value = ceSaldo.Value;
end;

procedure TParcelamento.ParcelasBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  ceSaldo.Value := ceSaldo.Value - Parcelasvalor.AsFloat;
end;

end.
