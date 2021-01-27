unit uGestaoEntradas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ActnList, ComCtrls, ToolWin,
  ExtCtrls, Grids, DBGrids, StdCtrls, Mask, Buttons, uFrameData;

type
  TGestaoEntradas = class(TIDefBrowse)
    IBrwSrccompetencia: TStringField;
    IBrwSrcseringas_conformes: TLargeintField;
    IBrwSrcseringas_naoconformes: TLargeintField;
    IBrwSrcseringas_vazios: TLargeintField;
    IBrwSrcseringas_quebrados: TLargeintField;
    IBrwSrccompet: TStringField;
    Panel8: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    FrameData1: TFrameData;
    IBrwSrcconformes: TLargeintField;
    IBrwSrcnaoconformes: TLargeintField;
    IBrwSrcvazios: TLargeintField;
    IBrwSrcquebrados: TLargeintField;
    IBrwSrcivazios: TFloatField;
    IBrwSrciperda: TFloatField;
    Splitter1: TSplitter;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    qDiaria: TZQuery;
    dsDiaria: TDataSource;
    IBrwSrcemissaode: TDateTimeField;
    IBrwSrcemissaoate: TDateTimeField;
    qDiariaemissao: TDateField;
    qDiariaseringas_conformes: TLargeintField;
    qDiariaseringas_naoconformes: TLargeintField;
    qDiariaseringas_vazios: TLargeintField;
    qDiariaseringas_quebrados: TLargeintField;
    qDiariaconformes: TLargeintField;
    qDiarianaoconformes: TLargeintField;
    qDiariavazios: TLargeintField;
    qDiariaquebrados: TLargeintField;
    qDiariavalidas: TLargeintField;
    qDiariaiperda: TFloatField;
    qDiariaivazios: TFloatField;
    IBrwSrcfrascos_conformes: TLargeintField;
    IBrwSrcfrascos_naoconformes: TLargeintField;
    IBrwSrcfrascos_vazios: TLargeintField;
    IBrwSrcfrascos_quebrados: TLargeintField;
    qDiariafrascos_conformes: TLargeintField;
    qDiariafrascos_naoconformes: TLargeintField;
    qDiariafrascos_vazios: TLargeintField;
    qDiariafrascos_quebrados: TLargeintField;
    IBrwSrcvalidas: TLargeintField;
    pnDetalhe: TPanel;
    procedure IBrwSrcCalcFields(DataSet: TDataSet);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure FrameData1CCalendarDiff1Change(Sender: TObject);
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
    procedure qDiariaCalcFields(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    procedure OnLoad; override;
  public
    { Public declarations }
  end;

var
  GestaoEntradas: TGestaoEntradas;

implementation

{$R *.dfm}

uses uDM, ccalendardiff, uIUtils ;

procedure TGestaoEntradas.actQueryProcessExecute(Sender: TObject);
var
  sWhere : string;
  ACal : TCCalendarDiff;
begin
  inherited;
  ACal := FrameData1.CCalendarDiff1;

  with IBrwSrc do
  begin
    if Assigned(Params.FindParam('emissaode')) then
    begin
      Params.ParamByName('emissaode').AsDateTime := ACal.BeginDate;
      Params.ParamByName('emissaoate').AsDateTime := ACal.EndDate;
    end;
  end;

  G.RefreshDataSet(IBrwSrc);
  RefreshCtrl;
end;

procedure TGestaoEntradas.FormResize(Sender: TObject);
begin
  inherited;
  pnDetalhe.Height := Round((ClientHeight - Panel1.Height - Splitter1.Height) * 0.6);
end;

procedure TGestaoEntradas.FrameData1CCalendarDiff1Change(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TGestaoEntradas.IBrwSrcAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qDiaria.ParamByName('emissaode').AsDate := IBrwSrcemissaode.AsDateTime;
  qDiaria.ParamByName('emissaoate').AsDate := IBrwSrcemissaoate.AsDateTime;
  G.RefreshDataSet(qDiaria);
end;

procedure TGestaoEntradas.IBrwSrcCalcFields(DataSet: TDataSet);
begin
  inherited;
  IBrwSrccompet.AsString := Copy(IBrwSrccompetencia.AsString, 5, 2) + Copy(IBrwSrccompetencia.AsString, 1, 4);
  IBrwSrcconformes.AsLargeInt := IBrwSrcfrascos_conformes.AsLargeInt + IBrwSrcseringas_conformes.AsLargeInt;
  IBrwSrcnaoconformes.AsLargeInt := IBrwSrcfrascos_naoconformes.AsLargeInt + IBrwSrcseringas_naoconformes.AsLargeInt;
  IBrwSrcvalidas.AsLargeInt := IBrwSrcconformes.AsLargeInt + IBrwSrcnaoconformes.AsLargeInt;
  IBrwSrcvazios.AsLargeInt := IBrwSrcfrascos_vazios.AsLargeInt + IBrwSrcseringas_vazios.AsLargeInt;
  IBrwSrcquebrados.AsLargeInt := IBrwSrcfrascos_quebrados.AsLargeInt + IBrwSrcseringas_quebrados.AsLargeInt;
  if IBrwSrcvalidas.AsLargeInt > 0 then
  begin
    IBrwSrciperda.AsFloat :=  IBrwSrcquebrados.AsLargeInt / (IBrwSrcvalidas.AsLargeInt + IBrwSrcvazios.AsLargeInt + IBrwSrcquebrados.AsLargeInt) * 100;
    IBrwSrcivazios.AsFloat :=  IBrwSrcvazios.AsLargeInt / (IBrwSrcvalidas.AsLargeInt + IBrwSrcvazios.AsLargeInt) * 100;
  end;

end;

procedure TGestaoEntradas.OnLoad;
begin
  inherited;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TGestaoEntradas.qDiariaCalcFields(DataSet: TDataSet);
begin
  inherited;
  qDiariaconformes.AsLargeInt := qDiariafrascos_conformes.AsLargeInt + qDiariaseringas_conformes.AsLargeInt;
  qDiarianaoconformes.AsLargeInt := qDiariafrascos_naoconformes.AsLargeInt + qDiariaseringas_naoconformes.AsLargeInt;
  qDiariavalidas.AsLargeInt := qDiariaconformes.AsLargeInt + qDiarianaoconformes.AsLargeInt;
  qDiariavazios.AsLargeInt := qDiariafrascos_vazios.AsLargeInt + qDiariaseringas_vazios.AsLargeInt;
  qDiariaquebrados.AsLargeInt := qDiariafrascos_quebrados.AsLargeInt + qDiariaseringas_quebrados.AsLargeInt;
  if qDiariavalidas.AsLargeInt > 0 then
  begin
    qDiariaiperda.AsFloat :=  qDiariaquebrados.AsLargeInt / (qDiariavalidas.AsLargeInt + qDiariaquebrados.AsLargeInt + qDiariavazios.AsLargeInt) * 100;
    qDiariaivazios.AsFloat :=  qDiariavazios.AsLargeInt / (qDiariavalidas.AsLargeInt + qDiariavazios.AsLargeInt) * 100;
  end;
end;

initialization
  RegisterClass(TGestaoEntradas);

finalization
  UnRegisterClass(TGestaoEntradas);

end.
