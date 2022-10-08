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
    Panel1: TPanel;
    Panel3: TPanel;
    Panel2: TPanel;
    pnStage: TPanel;
    procedure FormResize(Sender: TObject);
    procedure FormActivate(Sender: TObject);
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
  uChartLabEvolucaoValor, uChartReceberEvolucaoValor;

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
end;

procedure TGestaoComercial.OnLoad;
begin
  inherited;
  TChartCotaEvolucao.New(pnEvoRow1Left);
  TChartCotaDesempenho.New(pnEvoRow1Right);
  TChartLabEvolucaoValor.New(pnEvoRow3Left);
  TChartReceberEvolucaoValor.New(pnEvoRow3Rigth);
end;

initialization
  RegisterClass(TGestaoComercial);

finalization
  UnRegisterClass(TGestaoComercial);

end.
