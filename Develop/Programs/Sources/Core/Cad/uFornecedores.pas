unit uFornecedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ActnList, Grids, DBGrids, ComCtrls, StdCtrls, Buttons, Mask, ExtCtrls, ToolWin,
  ZSqlUpdate;

type
  TFornecedores = class(TIDefBrowse)
  private
    { Private declarations }
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  Fornecedores: TFornecedores;

implementation

{$R *.dfm}

uses uDM, uFornecedoresM;

{ TFornecedores }

procedure TFornecedores.OnEdit;
begin
  Application.CreateForm(TFornecedoresM, FornecedoresM);
  try
    FornecedoresM.DataSet := DataSet;
    FornecedoresM.ShowModal;
  finally
    FreeAndNil(FornecedoresM);
  end;
end;

initialization
  RegisterClass(TFornecedores);

finalization
  UnRegisterClass(TFornecedores);

end.
