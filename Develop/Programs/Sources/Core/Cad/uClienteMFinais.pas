unit uClienteMFinais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids,
  StdCtrls, Mask, DBCtrls;

type
  TClienteMFinais = class(TIDefBrowseEdit)
    Panel27: TPanel;
    Panel28: TPanel;
    Label47: TLabel;
    DBEdit49: TDBEdit;
    Panel29: TPanel;
    Label54: TLabel;
    DBEdit50: TDBEdit;
    Panel30: TPanel;
    Label55: TLabel;
    DBEdit51: TDBEdit;
    Bevel1: TBevel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClienteMFinais: TClienteMFinais;

implementation

uses uDM;

{$R *.dfm}

end.
