unit uClientesF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIDefFind, DB, Menus, ZAbstractRODataset, ZDataset, ActnList, Grids,
  DBGrids, ComCtrls, StdCtrls, Buttons, Mask, ExtCtrls, ToolWin;

type
  TClientesF = class(TIDefFind)
    IBrwSrccodigo: TIntegerField;
    IBrwSrcempresa: TStringField;
    IBrwSrcnome_chave: TStringField;
    IBrwSrccnpj: TStringField;
    IBrwSrccpf: TStringField;
    IBrwSrcemail: TStringField;
    IBrwSrccidade: TStringField;
    IBrwSrcestado: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClientesF: TClientesF;

implementation

{$R *.dfm}
uses uDM;

end.
