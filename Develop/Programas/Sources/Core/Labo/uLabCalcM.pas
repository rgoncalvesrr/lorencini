unit uLabCalcM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls;

type
  TLabCalcM = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
  private
    { Private declarations }
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  LabCalcM: TLabCalcM;

implementation

uses uLabCalc, uLabCalcMVar;

{$R *.dfm}

{ TLabCalcM }

procedure TLabCalcM.OnEdit;
begin
  LabCalcMVar := TLabCalcMVar.Create(nil);
  try
    LabCalcMVar.DataSet := ChildDataSet;
    LabCalcMVar.ShowModal;
  finally
    FreeAndNil(LabCalcMVar);
  end;

end;

end.
