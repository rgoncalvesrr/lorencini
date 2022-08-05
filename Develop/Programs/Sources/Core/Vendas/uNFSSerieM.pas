unit uNFSSerieM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, DBCtrls, Mask;

type
  TNFSSerieM = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBComboBox1: TDBComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NFSSerieM: TNFSSerieM;

implementation

uses uNFSSerie;

{$R *.dfm}

end.
