unit uUnidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ActnList, Grids, DBGrids, ComCtrls, StdCtrls, Buttons, Mask, ExtCtrls, ToolWin,
  ZSqlUpdate;

type
  TUnidades = class(TIDefBrowse)
    IBrwSrcun: TStringField;
    IBrwSrcdescri: TStringField;
  private
    { Private declarations }
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  Unidades: TUnidades;

implementation

{$R *.dfm}

uses uDM, uUnidadesM;

{ TUnidades }

procedure TUnidades.OnEdit;
begin
  Application.CreateForm(TUnidadesM, UnidadesM);
  UnidadesM.DataSet:= DataSet;
  UnidadesM.ShowModal;
end;

initialization
  RegisterClass(TUnidades);

end.
