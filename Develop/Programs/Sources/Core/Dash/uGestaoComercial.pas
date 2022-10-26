unit uGestaoComercial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIForm, JvExControls, JvChart, ActnList, DB, ZAbstractRODataset, ZDataset, ComCtrls, TeEngine, Series,
  ExtCtrls, TeeProcs, Chart, DBChart, StdCtrls, ToolWin, Menus;

type
  TGestaoComercial = class(TIForm)
    pnEvoRow1: TPanel;
    pnEvoRow1Left: TPanel;
    pnEvoRow1Right: TPanel;
    pnEvoRow3: TPanel;
    pnEvoRow3Left: TPanel;
    pnEvoRow3Rigth: TPanel;
    pnStage: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    pnStage1: TPanel;
    pnEvoMonth1: TPanel;
    pnEvoMonth1Col1: TPanel;
    pnEvoMonth2: TPanel;
    pnEvoMonth2Col1: TPanel;
    pnEvoMonth2Col2: TPanel;
    pnEvoMonth1Col2: TPanel;
    procedure FormResize(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private
    procedure OnLoad; override;
  public
    { Public declarations }
  end;

var
  GestaoComercial: TGestaoComercial;

implementation

uses
  uDM, DateUtils, uIUtils, uResources, uChartCotaEvolucao, uChartCotaDesempenho,
  uChartLabEvolucaoValor, uChartReceberEvolucaoValor, uChartFaturamentoMesCorrente, 
  uChartFaturamentoAcumuladoMesCorrente, uChartFaturamentoAnoCorrente, 
  uChartFaturamentoHistorico;

{$R *.dfm}

{ TGestaoComercial }

procedure TGestaoComercial.FormActivate(Sender: TObject);
begin
  inherited;
  WindowState := wsMaximized;
end;

procedure TGestaoComercial.FormResize(Sender: TObject);
begin
  inherited;
  pnEvoRow1.Height := pnEvoRow1.Parent.ClientHeight div 2;
  pnEvoRow1Left.Width := pnEvoRow1Left.Parent.ClientWidth div 2;
  pnEvoRow3Left.Width := pnEvoRow1Left.Width;
  pnEvoMonth1.Height := pnEvoMonth1.Parent.ClientHeight div 2;
  pnEvoMonth1Col2.Width := pnEvoMonth1Col2.Parent.ClientWidth div 3;
  pnEvoMonth2Col1.Width := pnEvoMonth1Col2.Parent.ClientWidth div 2; 
end;

procedure TGestaoComercial.OnLoad;
begin
  inherited;
  LockWindowUpdate(Handle);
  try
    TChartCotaEvolucao.New(pnEvoRow1Left);
    TChartCotaDesempenho.New(pnEvoRow1Right);
    TChartLabEvolucaoValor.New(pnEvoRow3Left);
    TChartReceberEvolucaoValor.New(pnEvoRow3Rigth);
  finally
    LockWindowUpdate(0);
  end;
end;

procedure TGestaoComercial.PageControl1Change(Sender: TObject);
begin
  inherited;
  if pnEvoMonth1Col1.ComponentCount = 0 then
  begin
    TChartFaturamentoMesCorrente.New(pnEvoMonth1Col1);
    TChartFaturamentoAcumuladoMesCorrente.New(pnEvoMonth1Col2);
    TChartFaturamentoAnoCorrente.New(pnEvoMonth2Col1);
    TChartFaturamentoHistorico.New(pnEvoMonth2Col2);
  end;
end;

initialization
  RegisterClass(TGestaoComercial);

finalization
  UnRegisterClass(TGestaoComercial);

end.
