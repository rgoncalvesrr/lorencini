unit uFinNaturezasM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls;

type
  TFinNaturezasM = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBComboBox1: TDBComboBox;
    Panel2: TPanel;
    DBText1: TDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FinNaturezasM: TFinNaturezasM;

implementation

uses uFinNaturezas;

{$R *.dfm}

end.
