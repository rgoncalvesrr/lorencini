unit uEstadosM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls;

type
  TEstadosM = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
  private
    { Private declarations }
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  EstadosM: TEstadosM;

implementation

uses uEstados, DB;

{$R *.dfm}

{ TEstadosM }

procedure TEstadosM.RefreshControls;
begin
  inherited;
  if Assigned(DataSet) then
    DBEdit1.Enabled := (DataSet.State = dsInsert);
end;

end.
