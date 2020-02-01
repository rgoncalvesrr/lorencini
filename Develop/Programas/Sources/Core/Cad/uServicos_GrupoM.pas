unit uServicos_GrupoM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls;

type
  TServicos_GrupoM = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    DBCheckBox2: TDBCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Servicos_GrupoM: TServicos_GrupoM;

implementation

{$R *.dfm}

uses uServicos_Grupo;

end.
