unit uLabFrete;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, DB, ZSqlUpdate, Menus, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin;

type
  TLabFrete = class(TIDefBrowse)
    IBrwSrccodigo: TIntegerField;
    IBrwSrcrecno: TIntegerField;
    IBrwSrcdata: TDateField;
    IBrwSrctipo: TIntegerField;
    IBrwSrcsaldoa: TFloatField;
    IBrwSrcvalor: TFloatField;
    IBrwSrcsaldo: TFloatField;
    IBrwSrcobs: TStringField;
    IBrwSrcnome_chave: TStringField;
    IBrwSrccnpj: TStringField;
    IBrwSrccpf: TStringField;
    procedure IBrwSrctipoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LabFrete: TLabFrete;

implementation

uses uDM;

{$R *.dfm}

procedure TLabFrete.IBrwSrctipoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Frete';
    2: Text := 'Pagamento';
  end;
end;

initialization
  RegisterClass(TLabFrete);
  
finalization
  UnRegisterClass(TLabFrete);

end.
