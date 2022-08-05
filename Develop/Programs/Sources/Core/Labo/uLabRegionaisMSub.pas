unit uLabRegionaisMSub;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls;

type
  TLabRegionaisMSub = class(TIDefBrowseEdit)
    leCodigo: TLabeledEdit;
    leNome: TLabeledEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Bevel6: TBevel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
  private
    { Private declarations }
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  LabRegionaisMSub: TLabRegionaisMSub;

implementation

uses uLabRegionais, uLabRegionaisMSubEquip;

{$R *.dfm}

{ TLabRegionaisMSub }

{ TLabRegionaisMSub }

procedure TLabRegionaisMSub.OnEdit;
begin
  LabRegionaisMSubEquip := TLabRegionaisMSubEquip.Create(Application);
  try
    LabRegionaisMSubEquip.leCodigo.Text := leCodigo.Text;
    LabRegionaisMSubEquip.leNome.Text := leNome.Text;
    LabRegionaisMSubEquip.DataSet := ChildDataSet;
    LabRegionaisMSubEquip.ShowModal;
  finally
    FreeAndNil(LabRegionaisMSubEquip);
  end;
  
end;

end.
