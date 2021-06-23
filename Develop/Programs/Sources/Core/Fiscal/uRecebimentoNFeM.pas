unit uRecebimentoNFeM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, StdCtrls, Mask, DBCtrls;

type
  TRecebimentoNFeM = class(TIDefBrowseEdit)
    Panel2: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel5: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel6: TPanel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Panel7: TPanel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Panel8: TPanel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Panel9: TPanel;
    Panel10: TPanel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Panel13: TPanel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RecebimentoNFeM: TRecebimentoNFeM;

implementation

uses
  uRecebimentoNFe;
  
{$R *.dfm}



end.
