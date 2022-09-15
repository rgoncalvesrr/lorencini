unit uLabEquipTipoM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls;

type
  TLabEquipTipoM = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
  private
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  LabEquipTipoM: TLabEquipTipoM;

implementation

uses uLabEquipTipo, uLabEquipTipoMClasse;

{$R *.dfm}

{ TLabEquipTipoM }

procedure TLabEquipTipoM.OnEdit;
begin
  LabEquipTipoMClasse := TLabEquipTipoMClasse.Create(nil);
  try
    LabEquipTipoMClasse.DataSet := ChildDataSet;
    LabEquipTipoMClasse.ShowModal;
  finally
    FreeAndNil(LabEquipTipoMClasse);
  end;
end;

end.
