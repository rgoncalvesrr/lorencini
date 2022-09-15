unit uLabAmostraPedM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids,
  StdCtrls, Mask, DBCtrls;

type
  TLabAmostraPedM = class(TIDefBrowseEdit)
    Panel2: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Panel16: TPanel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
  private
    { Private declarations }
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  LabAmostraPedM: TLabAmostraPedM;

implementation

{$R *.dfm}
uses uLabAmostraPed, uLabAmostraPedMAmostra;

{ TLabAmostraPedM }

procedure TLabAmostraPedM.OnEdit;
begin
  LabAmostraPedMAmostra := TLabAmostraPedMAmostra.Create(nil);
  with LabAmostraPedMAmostra do
  try
    DataSet := LabAmostraPed.qPedAmostras;
    LabAmostraPedMAmostra.ShowModal;
  finally
    FreeAndNil(LabAmostraPedMAmostra);
  end;  

end;

end.
