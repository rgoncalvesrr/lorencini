unit uLabProcSaldos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, uIUtils, uReport;

type
  TLabProcSaldos = class(TIDefBrowse)
    IBrwSrccodigo: TIntegerField;
    IBrwSrcempresa: TStringField;
    IBrwSrcnome_chave: TStringField;
    IBrwSrccnpj: TStringField;
    IBrwSrccpf: TStringField;
    IBrwSrcseringas: TLargeintField;
    IBrwSrcfrascos: TLargeintField;
    Panel8: TPanel;
    Label7: TLabel;
    edEmpresa: TEdit;
    Panel9: TPanel;
    Label8: TLabel;
    edRazao: TEdit;
    IBrwSrctotal: TLargeintField;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure edEmpresaChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FR00012SQL: string;
    FR00013SQL: string;
    procedure OnPrint(Sender: TReport; var Continue: Boolean); override;
  public

    { Public declarations }
  end;

var
  LabProcSaldos: TLabProcSaldos;

implementation

uses uDM, uDMReport;

{$R *.dfm}

procedure TLabProcSaldos.actQueryProcessExecute(Sender: TObject);
var
  swhere: string;

  procedure SetParams(DataSet: TZQuery);
  begin
    with DataSet do
    begin
      if Assigned(Params.FindParam('empresa')) then
        ParamByName('empresa').AsString := '%' + edEmpresa.Text + '%';

      if Assigned(Params.FindParam('razao')) then
        ParamByName('razao').AsString := '%' + edRazao.Text + '%';
    end;
  end;
begin
  inherited;

  swhere := '';
  DMReport.R00012.SQL.Text := FR00012SQL;
  DMReport.R00013.SQL.Text := FR00013SQL;

  with IBrwSrc do
  begin
    if Length(edEmpresa.Text) > 0 then
      sWhere := 'cli.nome_chave ilike :empresa';

    if Length(edRazao.Text) > 0 then
    begin
      if swhere <> EmptyStr then
        swhere := swhere + 'and ';

      sWhere := sWhere + 'cli.empresa ilike :razao';
    end;

    if sWhere <> EmptyStr then
    begin
      SQL.Add(' where ' + sWhere);
      DMReport.R00012.SQL.Add(' where ' + swhere);
      DMReport.R00013.SQL.Add(' and ' + swhere);
    end;

    SetParams(IBrwSrc);
    SetParams(DMReport.R00012);
    SetParams(DMReport.R00013);
  end;

  G.RefreshDataSet(IBrwSrc);
  RefreshCtrl;
end;

procedure TLabProcSaldos.ComboBox1Change(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQuery);
end;

procedure TLabProcSaldos.edEmpresaChange(Sender: TObject);
begin
  inherited;
  actQueryProcess.Enabled := True;
end;

procedure TLabProcSaldos.FormCreate(Sender: TObject);
begin
  inherited;
  LabProcSaldos := Self;
  FR00012SQL := DMReport.R00012.SQL.Text;
  FR00013SQL := DMReport.R00013.SQL.Text;
end;

procedure TLabProcSaldos.FormDestroy(Sender: TObject);
begin
  DMReport.R00012.SQL.Text := FR00012SQL;
  DMReport.R00013.SQL.Text := FR00013SQL;
  inherited;
end;

procedure TLabProcSaldos.OnPrint(Sender: TReport; var Continue: Boolean);
begin
  with DMReport do
    case Sender.ID of
      12: G.RefreshDataSet(R00012);
      13: G.RefreshDataSet(R00013);
    end;
  inherited;
end;

initialization
  RegisterClass(TLabProcSaldos);

finalization
  UnRegisterClass(TLabProcSaldos);

end.
