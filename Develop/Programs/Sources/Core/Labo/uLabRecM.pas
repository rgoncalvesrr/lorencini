unit uLabRecM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, DBCtrls, Mask;

type
  TLabRecM = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBMemo1: TDBMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LabRecM: TLabRecM;

implementation

uses uLabRec;

{$R *.dfm}

end.
