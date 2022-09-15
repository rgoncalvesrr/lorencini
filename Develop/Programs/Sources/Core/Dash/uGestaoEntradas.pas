unit uGestaoEntradas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, uIBrowse, ZSqlUpdate, Menus, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, StdCtrls,
  Mask, Buttons, uFrameData, DBCtrls, TeEngine, Series, TeeProcs, Chart, DBChart;

type
  TGestaoEntradas = class(TIDefBrowse)
    IBrwSrccompetencia: TStringField;
    IBrwSrccompet: TStringField;
    Panel8: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    FrameData1: TFrameData;
    IBrwSrcivazios: TFloatField;
    qDiaria: TZQuery;
    dsDiaria: TDataSource;
    IBrwSrcemissaode: TDateTimeField;
    IBrwSrcemissaoate: TDateTimeField;
    qDiariaemissao: TDateField;
    IBrwSrcvalidas: TLargeintField;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    IBrwSrcivalidos: TFloatField;
    IBrwSrciquebrados: TFloatField;
    IBrwSrcconformes: TLargeintField;
    IBrwSrcnaoconformes: TLargeintField;
    IBrwSrcvazios: TLargeintField;
    IBrwSrcquebrados: TLargeintField;
    IBrwSrctotal: TLargeintField;
    qFrascos: TZQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    LargeintField1: TLargeintField;
    LargeintField2: TLargeintField;
    LargeintField3: TLargeintField;
    LargeintField4: TLargeintField;
    LargeintField5: TLargeintField;
    LargeintField6: TLargeintField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    dsFrascos: TDataSource;
    qSeringas: TZQuery;
    StringField3: TStringField;
    StringField4: TStringField;
    LargeintField7: TLargeintField;
    LargeintField8: TLargeintField;
    LargeintField9: TLargeintField;
    LargeintField10: TLargeintField;
    LargeintField11: TLargeintField;
    LargeintField12: TLargeintField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    dsSeringas: TDataSource;
    qDiariaconformes: TLargeintField;
    qDiarianaoconformes: TLargeintField;
    qDiariavazios: TLargeintField;
    qDiariaquebrados: TLargeintField;
    qDiariatotal: TLargeintField;
    qDiariavalidas: TLargeintField;
    qDiariaivalidos: TFloatField;
    qDiariaivazios: TFloatField;
    qDiariaiquebrados: TFloatField;
    qDFrascos: TZQuery;
    DateField1: TDateField;
    LargeintField13: TLargeintField;
    LargeintField14: TLargeintField;
    LargeintField15: TLargeintField;
    LargeintField16: TLargeintField;
    LargeintField17: TLargeintField;
    LargeintField18: TLargeintField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    dsDFrascos: TDataSource;
    qDSeringas: TZQuery;
    DateField2: TDateField;
    LargeintField19: TLargeintField;
    LargeintField20: TLargeintField;
    LargeintField21: TLargeintField;
    LargeintField22: TLargeintField;
    LargeintField23: TLargeintField;
    LargeintField24: TLargeintField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    dsDSeringas: TDataSource;
    qFrascosemissaode: TDateTimeField;
    qFrascosemissaoate: TDateTimeField;
    qSeringasemissaode: TDateTimeField;
    qSeringasemissaoate: TDateTimeField;
    PageControl3: TPageControl;
    TabSheet8: TTabSheet;
    DBGrid5: TDBGrid;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    DBGrid3: TDBGrid;
    TabSheet11: TTabSheet;
    PageControl4: TPageControl;
    TabSheet7: TTabSheet;
    DBGrid6: TDBGrid;
    qDocumentos: TZQuery;
    LargeintField25: TLargeintField;
    LargeintField28: TLargeintField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    dsDocumentos: TDataSource;
    qDocumentoscodigo: TIntegerField;
    qDocumentosempresa: TStringField;
    qDocumentosnome_chave: TStringField;
    qDocumentoscnpj: TStringField;
    qDocumentoscpf: TStringField;
    qDocumentosnf: TIntegerField;
    qDocumentosnf_serie: TIntegerField;
    qDocumentosnf_emissao: TDateField;
    qDocumentosnf_valor: TFloatField;
    qDocumentosfrascos_conformes: TLargeintField;
    qDocumentosfrascos_naoconformes: TLargeintField;
    qDocumentosfrascos_vazios: TLargeintField;
    qDocumentosfrascos_quebrados: TLargeintField;
    qDocumentosseringas_conformes: TLargeintField;
    qDocumentosseringas_vazios: TLargeintField;
    qDocumentosseringas_quebrados: TLargeintField;
    DBGrid2: TDBGrid;
    qDocumentosemissao: TDateTimeField;
    qDocumentosseringas_naoconformes: TLargeintField;
    qDocumentosconformes: TLargeintField;
    qDocumentosnaoconformes: TLargeintField;
    qDocumentosvazios: TLargeintField;
    qDocumentosquebrados: TLargeintField;
    ControlBar1: TControlBar;
    ToolBar2: TToolBar;
    ToolButton14: TToolButton;
    actViewDocs: TAction;
    qDocumentosfrascos_total: TLargeintField;
    qDocumentosfrascos_validos: TLargeintField;
    qDocumentosseringas_total: TLargeintField;
    qDocumentosseringas_validas: TLargeintField;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    Panel9: TPanel;
    Panel10: TPanel;
    Label1: TLabel;
    DBEdit6: TDBEdit;
    Panel11: TPanel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Panel12: TPanel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Panel13: TPanel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    GroupBox3: TGroupBox;
    Panel14: TPanel;
    Panel15: TPanel;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Panel16: TPanel;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Panel17: TPanel;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Panel18: TPanel;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Panel19: TPanel;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Panel20: TPanel;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    GroupBox4: TGroupBox;
    Panel21: TPanel;
    Panel22: TPanel;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Panel23: TPanel;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    Panel24: TPanel;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    Panel25: TPanel;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    Panel26: TPanel;
    Label20: TLabel;
    DBEdit20: TDBEdit;
    Panel27: TPanel;
    Label21: TLabel;
    DBEdit21: TDBEdit;
    GroupBox5: TGroupBox;
    Panel28: TPanel;
    Panel29: TPanel;
    Label22: TLabel;
    DBEdit22: TDBEdit;
    Panel30: TPanel;
    Label23: TLabel;
    DBEdit23: TDBEdit;
    Panel31: TPanel;
    Label24: TLabel;
    DBEdit24: TDBEdit;
    Panel32: TPanel;
    Label25: TLabel;
    DBEdit25: TDBEdit;
    Panel33: TPanel;
    Label26: TLabel;
    DBEdit26: TDBEdit;
    Panel34: TPanel;
    Label27: TLabel;
    DBEdit27: TDBEdit;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    Panel7: TPanel;
    pnCharts: TPanel;
    DBChart1: TDBChart;
    DBChart2: TDBChart;
    DBChart3: TDBChart;
    DBChart4: TDBChart;
    Series1: TFastLineSeries;
    Series2: TFastLineSeries;
    Series3: TFastLineSeries;
    Series4: TFastLineSeries;
    Series5: TFastLineSeries;
    procedure IBrwSrcCalcFields(DataSet: TDataSet);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure FrameData1CCalendarDiff1Change(Sender: TObject);
    procedure qDiariaCalcFields(DataSet: TDataSet);
    procedure PageControl1Change(Sender: TObject);
    procedure PageControl1Resize(Sender: TObject);
    procedure qDocumentosCalcFields(DataSet: TDataSet);
    procedure actViewDocsExecute(Sender: TObject);
    procedure IBrwSrcAfterRefresh(DataSet: TDataSet);
    procedure qFrascosAfterRefresh(DataSet: TDataSet);
    procedure qSeringasAfterRefresh(DataSet: TDataSet);
    procedure pnChartsResize(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshCtrl; override;
    procedure OnLoad; override;
    procedure Totalizar(DataSet: TDataSet);
  public
    { Public declarations }
  end;

var
  GestaoEntradas: TGestaoEntradas;

implementation

{$R *.dfm}

uses uDM, ccalendardiff, uIUtils, uGestaoEntradasDocs;

procedure TGestaoEntradas.actQueryProcessExecute(Sender: TObject);
var
  sWhere : string;
  ACal : TCCalendarDiff;
begin
  inherited;
  ACal := FrameData1.CCalendarDiff1;

  if Assigned(IBrwSrc.Params.FindParam('emissaode')) then
  begin
    IBrwSrc.Params.ParamByName('emissaode').AsDateTime := ACal.BeginDate;
    IBrwSrc.Params.ParamByName('emissaoate').AsDateTime := ACal.EndDate;
  end;

  if Assigned(qFrascos.Params.FindParam('emissaode')) then
  begin
    qFrascos.Params.ParamByName('emissaode').AsDateTime := ACal.BeginDate;
    qFrascos.Params.ParamByName('emissaoate').AsDateTime := ACal.EndDate;
  end;

  if Assigned(qSeringas.Params.FindParam('emissaode')) then
  begin
    qSeringas.Params.ParamByName('emissaode').AsDateTime := ACal.BeginDate;
    qSeringas.Params.ParamByName('emissaoate').AsDateTime := ACal.EndDate;
  end;


  G.RefreshDataSet(IBrwSrc);
  G.RefreshDataSet(qFrascos);
  G.RefreshDataSet(qSeringas);

  RefreshCtrl;
end;

procedure TGestaoEntradas.actViewDocsExecute(Sender: TObject);
begin
  inherited;
  GestaoEntradasDocs := TGestaoEntradasDocs.Create(nil);
  try
    GestaoEntradasDocs.WindowState := wsMaximized;
    GestaoEntradasDocs.ShowModal;
  finally
    FreeAndNil(GestaoEntradasDocs);
  end; 
end;

procedure TGestaoEntradas.FrameData1CCalendarDiff1Change(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TGestaoEntradas.IBrwSrcAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  qDiaria.ParamByName('emissaode').AsDate := IBrwSrcemissaode.AsDateTime;
  qDiaria.ParamByName('emissaoate').AsDate := IBrwSrcemissaoate.AsDateTime;
  qDocumentos.ParamByName('emissaode').AsDate := IBrwSrcemissaode.AsDateTime;
  qDocumentos.ParamByName('emissaoate').AsDate := IBrwSrcemissaoate.AsDateTime;
  G.RefreshDataSet(qDiaria);
  G.RefreshDataSet(qDocumentos);

  if PageControl1.ActivePageIndex = 3 then
    DBChart1.RefreshData;
    
  RefreshCtrl;
end;

procedure TGestaoEntradas.IBrwSrcCalcFields(DataSet: TDataSet);
begin
  inherited;
  with DataSet do
    FieldByName('compet').AsString := Copy(FieldByName('competencia').AsString, 5, 2) +
      Copy(FieldByName('competencia').AsString, 1, 4);
  Totalizar(DataSet);
end;

procedure TGestaoEntradas.OnLoad;
begin
  inherited;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TGestaoEntradas.PageControl1Change(Sender: TObject);
begin
  inherited;
  case PageControl1.ActivePageIndex of
    0: DBGrid1.DataSource := DataSource1;
    1: DBGrid1.DataSource := dsFrascos;
    2: DBGrid1.DataSource := dsSeringas;
    3:
      begin
        DBGrid1.DataSource := DataSource1;
        DBChart1.RefreshData;
      end;
  end;

  pnCharts.BringToFront;
end;

procedure TGestaoEntradas.PageControl1Resize(Sender: TObject);
begin
  inherited;
  PageControl2.Height := Round(PageControl2.Parent.ClientHeight * 0.8);
  PageControl3.Height := Round(PageControl3.Parent.ClientHeight * 0.8);
  PageControl4.Height := Round(PageControl4.Parent.ClientHeight * 0.8);
end;

procedure TGestaoEntradas.pnChartsResize(Sender: TObject);
begin
  inherited;
  DBChart1.Width := DBChart1.Parent.ClientWidth div 2;
  DBChart3.Width := DBChart3.Parent.ClientWidth div 2;
  Panel4.Height := Panel4.Parent.ClientHeight div 2; 
end;

procedure TGestaoEntradas.qDiariaCalcFields(DataSet: TDataSet);
begin
  inherited;
  Totalizar(DataSet);
end;

procedure TGestaoEntradas.qDocumentosCalcFields(DataSet: TDataSet);
begin
  inherited;
  with qDocumentos do
  begin
    // Totalização de frascos
    FieldByName('frascos_validos').AsInteger :=
      FieldByName('frascos_conformes').AsInteger + FieldByName('frascos_naoconformes').AsInteger;

    FieldByName('frascos_total').AsInteger :=
      FieldByName('frascos_validos').AsInteger + FieldByName('frascos_vazios').AsInteger +
      FieldByName('frascos_quebrados').AsInteger;

    // Totalização de seringas
    FieldByName('seringas_validas').AsInteger :=
      FieldByName('seringas_conformes').AsInteger + FieldByName('seringas_naoconformes').AsInteger;

    FieldByName('seringas_total').AsInteger :=
      FieldByName('seringas_validas').AsInteger + FieldByName('seringas_vazios').AsInteger +
      FieldByName('seringas_quebrados').AsInteger;

    // Totalização
    FieldByName('conformes').AsInteger :=
      FieldByName('frascos_conformes').AsInteger + FieldByName('seringas_conformes').AsInteger;

    FieldByName('naoconformes').AsInteger :=
      FieldByName('frascos_naoconformes').AsInteger + FieldByName('seringas_naoconformes').AsInteger;

    FieldByName('validas').AsInteger := FieldByName('conformes').AsInteger + FieldByName('naoconformes').AsInteger;

    FieldByName('vazios').AsInteger :=
      FieldByName('frascos_vazios').AsInteger + FieldByName('seringas_vazios').AsInteger;

    FieldByName('quebrados').AsInteger :=
      FieldByName('frascos_quebrados').AsInteger + FieldByName('seringas_quebrados').AsInteger;

    FieldByName('total').AsInteger := FieldByName('frascos_total').AsInteger +FieldByName('seringas_total').AsInteger;

    if (FieldByName('total').AsInteger <> 0) then
    begin
      FieldByName('ivalidos').AsFloat := FieldByName('validas').AsInteger / FieldByName('total').AsInteger * 100;
      FieldByName('ivazios').AsFloat := FieldByName('vazios').AsInteger / FieldByName('total').AsInteger * 100;
      FieldByName('iquebrados').AsFloat := FieldByName('quebrados').AsInteger / FieldByName('total').AsInteger * 100;
    end;
    
  end;
end;

procedure TGestaoEntradas.qFrascosAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  qDFrascos.ParamByName('emissaode').AsDate := qFrascosemissaode.AsDateTime;
  qDFrascos.ParamByName('emissaoate').AsDate := qFrascosemissaoate.AsDateTime;
  G.RefreshDataSet(qDFrascos);
end;

procedure TGestaoEntradas.qSeringasAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  qDSeringas.ParamByName('emissaode').AsDate := qSeringasemissaode.AsDateTime;
  qDSeringas.ParamByName('emissaoate').AsDate := qSeringasemissaoate.AsDateTime;
  G.RefreshDataSet(qDSeringas);
end;

procedure TGestaoEntradas.RefreshCtrl;
begin
  inherited;
  actViewDocs.Enabled := not qDocumentos.IsEmpty;
end;

procedure TGestaoEntradas.Totalizar(DataSet: TDataSet);
begin
  with DataSet do
  begin
    FieldByName('validas').AsInteger := FieldByName('conformes').AsInteger + FieldByName('naoconformes').AsInteger;
    FieldByName('total').AsInteger := FieldByName('validas').AsInteger + FieldByName('vazios').AsInteger +
      FieldByName('quebrados').AsInteger;
      if (FieldByName('total').AsInteger  <> 0) then
      begin
        FieldByName('ivalidos').AsFloat := FieldByName('validas').AsInteger / FieldByName('total').AsInteger * 100;
        FieldByName('ivazios').AsFloat := FieldByName('vazios').AsInteger / FieldByName('total').AsInteger * 100;
        FieldByName('iquebrados').AsFloat := FieldByName('quebrados').AsInteger / FieldByName('total').AsInteger * 100;
      end;
  end;  
end;

initialization
  RegisterClass(TGestaoEntradas);

finalization
  UnRegisterClass(TGestaoEntradas);

end.
