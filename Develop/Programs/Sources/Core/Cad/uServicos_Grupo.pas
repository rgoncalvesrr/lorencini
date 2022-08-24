unit uServicos_Grupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ActnList, Grids, DBGrids, ComCtrls, StdCtrls, Buttons, Mask, ExtCtrls, ToolWin,
  ZSqlUpdate, ZSequence;

type
  TServicos_Grupo = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrcdescri: TStringField;
    IBrwSrcpedidos: TBooleanField;
    IBrwSrclaboratorio: TBooleanField;
    ZSequence1: TZSequence;
  private
    { Private declarations }
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  Servicos_Grupo: TServicos_Grupo;

implementation

{$R *.dfm}

uses uDM, uServicos_GrupoM;

{ TServicos_Grupo }

procedure TServicos_Grupo.OnEdit;
begin
  Application.CreateForm(TServicos_GrupoM, Servicos_GrupoM);
  Servicos_GrupoM.DataSet:= DataSet;
  Servicos_GrupoM.ShowModal;
end;

initialization
  RegisterClass(TServicos_Grupo);

end.
