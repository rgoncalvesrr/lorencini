unit uLabRegionaisM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls;

type
  TLabRegionaisM = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    leCodigo: TLabeledEdit;
    leNome: TLabeledEdit;
  private
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  LabRegionaisM: TLabRegionaisM;

implementation

uses uLabRegionais, uLabRegionaisMSub, iTypes;

{$R *.dfm}

{ TLabRegionaisM }

procedure TLabRegionaisM.OnEdit;
begin
  LabRegionaisMSub := TLabRegionaisMSub.Create(Application);
  try
    LabRegionaisMSub.leCodigo.Text := Self.leCodigo.Text;
    LabRegionaisMSub.leNome.Text := Self.leNome.Text;
    LabRegionaisMSub.ScreenType := stMasterDetail;
    LabRegionaisMSub.DataSet := ChildDataSet;
    LabRegionaisMSub.ChildDataSet := LabRegionais.qEquipCli;
    LabRegionaisMSub.ShowModal;
  finally
    FreeAndNil(LabRegionaisMSub);
  end;
end;

end.
