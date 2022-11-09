unit uLabRecipientesM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, StdCtrls, Mask, DBCtrls;

type
  TLabRecipientesM = class(TIDefBrowseEdit)
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel6: TPanel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Panel7: TPanel;
    Label4: TLabel;
    DBComboBox1: TDBComboBox;
    Panel8: TPanel;
    Label5: TLabel;
    DBComboBox2: TDBComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LabRecipientesM: TLabRecipientesM;

implementation

{$R *.dfm}

uses
  uLabRecipientes;

end.
