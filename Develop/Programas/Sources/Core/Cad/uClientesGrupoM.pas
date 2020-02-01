unit uClientesGrupoM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls;

type
  TClientesGrupoM = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
  private
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  ClientesGrupoM: TClientesGrupoM;

implementation

uses uClientesGrupo, uClientesGrupoMClientes;

{$R *.dfm}

{ TClientesGrupoM }

procedure TClientesGrupoM.OnEdit;
begin
  ClientesGrupoMClientes := TClientesGrupoMClientes.Create(nil);
  try
    ClientesGrupoMClientes.DataSet := ChildDataSet;
    ClientesGrupoMClientes.ShowModal;
  finally
    FreeAndNil(ClientesGrupoMClientes);
  end;
end;

end.
