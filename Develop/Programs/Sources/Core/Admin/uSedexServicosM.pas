unit uSedexServicosM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, DBCtrls, Mask;

type
  TSedexServicosM = class(TIDefBrowseEdit)
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SedexServicosM: TSedexServicosM;

implementation

uses uSedexServicos;

{$R *.dfm}

end.
