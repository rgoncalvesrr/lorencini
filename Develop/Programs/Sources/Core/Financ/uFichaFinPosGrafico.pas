unit uFichaFinPosGrafico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIForm, ActnList, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  TeEngine, Series, ExtCtrls, TeeProcs, Chart, DBChart, StdCtrls;

type
  TFichaFinPosGrafico = class(TIForm)
    DBChart1: TDBChart;
    Series1: TBarSeries;
    qAno: TZQuery;
    qAnotitulos: TLargeintField;
    qAnosaldo: TFloatField;
    qAnoano: TIntegerField;
    Splitter1: TSplitter;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    ComboBox1: TComboBox;
    DBChart2: TDBChart;
    qMes: TZQuery;
    qMesmes: TIntegerField;
    qMestitulos: TLargeintField;
    qMessaldo: TFloatField;
    qMesmesnome: TStringField;
    Mensal: TBarSeries;
    procedure FormShow(Sender: TObject);
    procedure qMesCalcFields(DataSet: TDataSet);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FichaFinPosGrafico: TFichaFinPosGrafico;

implementation

uses uDM, uIUtils, mcUtils;

{$R *.dfm}

procedure TFichaFinPosGrafico.ComboBox1Change(Sender: TObject);
begin
  inherited;
  qAno.RecNo := ComboBox1.ItemIndex + 1;
  qMes.ParamByName('de').AsDate := EncodeDate(qAnoano.AsInteger, 1, 1);
  qMes.ParamByName('ate').AsDate := EncodeDate(qAnoano.AsInteger, 12, 31);
  G.RefreshDataSet(qMes);

  DBChart2.Title.Caption := Format('Evolução Mensal de %d', [qAnoano.AsInteger]);
  DBChart2.RefreshData;
  DBChart2.Repaint;
end;

procedure TFichaFinPosGrafico.FormResize(Sender: TObject);
begin
  inherited;
  DBChart1.Width := Round(ClientWidth * 0.4);
end;

procedure TFichaFinPosGrafico.FormShow(Sender: TObject);
begin
  inherited;
  qAno.Open;
  qAno.DisableControls;
  try
    while not qAno.Eof do
    begin
      ComboBox1.Items.Add(Format('%d [%s]', [qAnoano.AsInteger, qAnosaldo.DisplayText]));
      qAno.Next;
    end;
  finally
    qAno.EnableControls;
  end;

  if ComboBox1.Items.Count > 0 then
  begin
    ComboBox1.ItemIndex := ComboBox1.Items.Count - 1;
    ComboBox1Change(ComboBox1);
  end;

  DBChart1.RefreshData;
end;

procedure TFichaFinPosGrafico.qMesCalcFields(DataSet: TDataSet);
begin
  inherited;
  qMesmesnome.AsString := mcMonthExt(qMesmes.AsInteger);
end;

end.
