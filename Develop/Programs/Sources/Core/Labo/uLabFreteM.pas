unit uLabFreteM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  Buttons, StdCtrls, Mask, DBCtrls;

type
  TLabFreteM = class(TIDefBrowseEdit)
    Label7: TLabel;
    DBEdit7: TDBEdit;
    SpeedButton3: TSpeedButton;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LabFreteM: TLabFreteM;

implementation

uses uLabFrete, uDM;

{$R *.dfm}

end.
