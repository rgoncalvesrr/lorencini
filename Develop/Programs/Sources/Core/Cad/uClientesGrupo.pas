unit uClientesGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, ZSequence;

type
  TClientesGrupo = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrcdescri: TStringField;
    ZSequence1: TZSequence;
    sClientes: TZSequence;
    uClientes: TZUpdateSQL;
    qClientes: TZQuery;
    dsClientes: TDataSource;
    qClientescodigo: TIntegerField;
    qClientestbcli_grupos_recno: TIntegerField;
    qClientesrecno: TIntegerField;
    qClientesnome_chave: TStringField;
    qClientescnpj: TStringField;
    qClientescpf: TStringField;
    qClientestelefone: TStringField;
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
    procedure qClientesAfterInsert(DataSet: TDataSet);
    procedure qClientescodigoChange(Sender: TField);
  private
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  ClientesGrupo: TClientesGrupo;

implementation

uses uDM, uIUtils, uClientesGrupoM, iTypes;

{$R *.dfm}

procedure TClientesGrupo.IBrwSrcAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qClientes.ParamByName('grupo').AsInteger := IBrwSrcrecno.AsInteger;
  G.RefreshDataSet(qClientes);
end;

procedure TClientesGrupo.OnEdit;
begin
  ClientesGrupoM := TClientesGrupoM.Create(nil);
  try
    ClientesGrupoM.ScreenType := stMasterDetail;
    ClientesGrupoM.DataSet := IBrwSrc;
    ClientesGrupoM.ShowModal;
  finally
    FreeAndNil(ClientesGrupoM);
  end;

end;

procedure TClientesGrupo.qClientesAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qClientestbcli_grupos_recno.AsInteger := IBrwSrcrecno.AsInteger;
end;

procedure TClientesGrupo.qClientescodigoChange(Sender: TField);
begin
  inherited;
  if (Sender.DataSet.State in [dsEdit, dsInsert]) and (Sender.IsNull) then
  begin
    qClientesnome_chave.SetData(nil);
    qClientescnpj.SetData(nil);
    qClientescpf.SetData(nil);
    qClientestelefone.SetData(nil);
  end;


end;

initialization
  RegisterClass(TClientesGrupo);

finalization
  UnRegisterClass(TClientesGrupo);

end.
