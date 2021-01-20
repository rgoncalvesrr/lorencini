unit uEntidadesDeClasseM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, StdCtrls, Mask, DBCtrls;

type
  TEntidadesDeClasseM = class(TIDefBrowseEdit)
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  EntidadesDeClasseM: TEntidadesDeClasseM;

implementation

{$R *.dfm}

uses uEntidadesDeClasse;

end.
