unit uOPM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids;

type
  TOPM = class(TIDefBrowseEdit)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OPM: TOPM;

implementation

{$R *.dfm}

uses
  uOP;

end.
