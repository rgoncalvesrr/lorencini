unit uAtividades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ActnList, Grids, DBGrids, ComCtrls, StdCtrls, Buttons, Mask, ExtCtrls, ToolWin,
  ZSqlUpdate;

type
  TAtividades = class(TIDefBrowse)
    IBrwSrccodativ: TIntegerField;
    IBrwSrcdescri: TStringField;
    IBrwSrciss: TFloatField;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure OnEdit; Override;
  public
    { Public declarations }
  end;

var
  Atividades: TAtividades;

implementation

{$R *.dfm}

uses uDM, uAtividadesM;

procedure TAtividades.FormCreate(Sender: TObject);
begin
  inherited;
  Atividades:= Self;
end;

procedure TAtividades.OnEdit;
begin
  Application.CreateForm(TAtividadesM, AtividadesM);
  AtividadesM.DataSet:= DataSet;
  AtividadesM.ShowModal;
end;

initialization
  RegisterClass(TAtividades);

end.
