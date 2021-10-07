unit uRecebimentoNFe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ActnList, ComCtrls, ToolWin,
  ExtCtrls, Grids, DBGrids, StdCtrls, Mask, Buttons, ZSequence;

type
  TRecebimentoNFe = class(TIDefBrowse)
    IBrwSrcchave: TStringField;
    IBrwSrcregistro: TDateTimeField;
    IBrwSrcfrascos: TIntegerField;
    IBrwSrcfrascos_saldo: TIntegerField;
    IBrwSrcseringas: TIntegerField;
    IBrwSrcseringas_saldo: TIntegerField;
    IBrwSrcstatus: TIntegerField;
    IBrwSrccliente: TIntegerField;
    IBrwSrcnome_chave: TStringField;
    IBrwSrcrecno: TLargeintField;
    sIBrwSrc: TZSequence;
    Panel4: TPanel;
    Label4: TLabel;
    edCNPJ: TMaskEdit;
    Panel8: TPanel;
    Label6: TLabel;
    edEmpresa: TEdit;
    IBrwSrcnf_num: TStringField;
    IBrwSrcnfser: TStringField;
    IBrwSrcempresa: TStringField;
    IBrwSrccnpj: TStringField;
    IBrwSrccpf: TStringField;
    IBrwSrcemail: TStringField;
    IBrwSrccidade: TStringField;
    IBrwSrcestado: TStringField;
    IBrwSrctelefone: TStringField;
    Panel3: TPanel;
    Label1: TLabel;
    edNFe: TMaskEdit;
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
    procedure edCNPJChange(Sender: TObject);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure IBrwSrcCalcFields(DataSet: TDataSet);
  private
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  RecebimentoNFe: TRecebimentoNFe;

implementation

{$R *.dfm}

uses
  uDM, uRecebimentoNFeM, uIUtils;

{ TRecebimentoNFe }

procedure TRecebimentoNFe.actQueryProcessExecute(Sender: TObject);
var
  sWhere : string;
begin
  inherited;

  with IBrwSrc do
  begin
    sWhere := EmptyStr;

    if Length(edCNPJ.Text) > 0 then
      sWhere := sWhere + 'and c.cnpj like :cnpj ';

    if Length(edEmpresa.Text) > 0 then
      sWhere := sWhere + 'and c.nome_chave ilike :empresa ';

    if Length(edNFe.Text) = 44 then
      sWhere := sWhere + 'and nf.chave = :nfe ';


    if sWhere <> EmptyStr then
      SQL.Add(sWhere);

    if Assigned(Params.FindParam('cnpj')) then
      ParamByName('cnpj').AsString := edCNPJ.Text + '%';

    if Assigned(Params.FindParam('empresa')) then
      ParamByName('empresa').AsString := '%' + edEmpresa.Text + '%';

        if Assigned(Params.FindParam('nfe')) then
      ParamByName('nfe').AsString := edNFe.Text;
  end;

  G.RefreshDataSet(IBrwSrc);
  RefreshCtrl;
end;

procedure TRecebimentoNFe.edCNPJChange(Sender: TObject);
begin
  inherited;
  actQueryProcess.Enabled := True;
end;

procedure TRecebimentoNFe.IBrwSrcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  IBrwSrcfrascos.AsInteger := 0;
  IBrwSrcseringas.AsInteger := 0;
end;

procedure TRecebimentoNFe.IBrwSrcCalcFields(DataSet: TDataSet);
begin
  inherited;
  IBrwSrcnf_num.AsString := Copy(IBrwSrcchave.AsString, 26, 9);
  IBrwSrcnfser.AsString := Copy(IBrwSrcchave.AsString, 23, 3); 
end;

procedure TRecebimentoNFe.OnEdit;
begin
  RecebimentoNFeM := TRecebimentoNFeM.Create(nil);
  try
    RecebimentoNFeM.DataSet := IBrwSrc;
    RecebimentoNFeM.ShowModal;
  finally
    FreeAndNil(RecebimentoNFeM);
  end;

end;

initialization
  RegisterClass(TRecebimentoNFe);

finalization
  UnRegisterClass(TRecebimentoNFe);

end.
