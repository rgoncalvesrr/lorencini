unit uLabProcRastreio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, ZSequence, uIUtils, uFrameData, JvExMask,
  JvToolEdit, JvBaseEdits;

type
  TLabProcRastreio = class(TIDefBrowse)
    ZSequence1: TZSequence;
    ComboBox1: TComboBox;
    Label18: TLabel;
    Etiquetas1: TMenuItem;
    FrameData1: TFrameData;
    Label3: TLabel;
    Label4: TLabel;
    IBrwSrclabproc_recno: TIntegerField;
    IBrwSrcdescri: TStringField;
    IBrwSrcexp_dh: TDateTimeField;
    IBrwSrcvolume: TIntegerField;
    IBrwSrcseringas: TIntegerField;
    IBrwSrcfrascos: TIntegerField;
    IBrwSrccodigo: TIntegerField;
    IBrwSrcnome_chave: TStringField;
    IBrwSrccnpj: TStringField;
    IBrwSrctelefone: TStringField;
    IBrwSrcestado: TStringField;
    IBrwSrcrecno: TIntegerField;
    IBrwSrcrastreio: TStringField;
    IBrwSrcetiqueta: TStringField;
    Label1: TLabel;
    Label5: TLabel;
    edRemessa: TJvCalcEdit;
    edVol: TJvCalcEdit;
    procedure actQueryProcessExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IBrwSrcCalcFields(DataSet: TDataSet);
  private
    FCBClientes: TComboList;
    procedure OnEdit; override;
    procedure SetDataSet(const Value: TZQuery); override;
  public
    { Public declarations }
  end;

var
  LabProcRastreio: TLabProcRastreio;

implementation

uses uDM, uLabProcM, iTypes, mcutils, maskutils, uReport,
  uResources, ccalendardiff, uLabProcRastreioM;

{$R *.dfm}

procedure TLabProcRastreio.actQueryProcessExecute(Sender: TObject);
var
  swhere: string;
begin
  inherited;
  
  swhere := EmptyStr;

  with IBrwSrc do
  begin
    if Trim(edRemessa.Text) <> EmptyStr then
      swhere := 'and p.recno = :remessa ';

    if Trim(edVol.Text) <> EmptyStr then
      swhere := swhere + 'and v.volume = :volume ';

    if FrameData1.CCalendarDiff1.Interval <> diNone then
      swhere := swhere + 'and v.exp_dh between :emde and :emate ';

    {Aplica filtro por cliente}
    if Assigned(FCBClientes.Selected) and  (FCBClientes.Selected.Value > 0) then
    begin
      swhere := swhere + 'and p.codigo = :codigo';
    end;

    if swhere <> EmptyStr then
      SQL.Add(swhere);

    if Assigned(Params.FindParam('codigo')) then
      Params.ParamByName('codigo').AsInteger := FCBClientes.Selected.Value;

    if Assigned(Params.FindParam('remessa')) then
      Params.ParamByName('remessa').AsInteger := Round(edRemessa.Value);

    if Assigned(Params.FindParam('volume')) then
      Params.ParamByName('volume').AsInteger := Round(edVol.Value);

    if Assigned(Params.FindParam('emde')) then
    begin
      ParamByName('emde').AsDateTime := FrameData1.CCalendarDiff1.BeginDate;
      ParamByName('emate').AsDateTime := FrameData1.CCalendarDiff1.EndDate;
    end;
  end;

  G.RefreshDataSet(IBrwSrc);

  RefreshCtrl;
end;

procedure TLabProcRastreio.ComboBox1Change(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQuery);
end;

procedure TLabProcRastreio.FormCreate(Sender: TObject);
begin
  inherited;
  LabProcRastreio := Self;

  FCBClientes := TComboList.Create(ComboBox1, 'tbclientes', 'codigo', 'nome_chave');

  ComboBox1.Items.Insert(0, '(Todos)');
  ComboBox1.ItemIndex := 0;

  FrameData1.CCalendarDiff1.Interval := diMonthly;
end;

procedure TLabProcRastreio.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FCBClientes);
  inherited;
end;

procedure TLabProcRastreio.FormShow(Sender: TObject);
begin
  inherited;
  DataSet := IBrwSrc;
  actQueryProcessExecute(actQuery);
end;

procedure TLabProcRastreio.IBrwSrcCalcFields(DataSet: TDataSet);
begin
  inherited;
  IBrwSrcetiqueta.AsString := mcRight(StringOfChar('0', 12) +
    IBrwSrcrecno.AsString, 12);
end;

procedure TLabProcRastreio.OnEdit;
begin
  LabProcRastreioM := TLabProcRastreioM.Create(nil);
  try
    LabProcRastreioM.DataSet := IBrwSrc;
    LabProcRastreioM.ShowModal;
  finally
    FreeNotification(LabProcRastreioM);
  end;
end;

procedure TLabProcRastreio.PageControl1Change(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TLabProcRastreio.SetDataSet(const Value: TZQuery);
begin
  inherited;

  if Value = IBrwSrc then
    actQueryProcessExecute(actQueryProcess);

  AllowInsert := False;
  AllowDelete := False;
end;

initialization
  RegisterClass(TLabProcRastreio);

finalization
  UnRegisterClass(TLabProcRastreio);

end.
