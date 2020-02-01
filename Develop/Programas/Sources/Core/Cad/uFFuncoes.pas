unit uFFuncoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ActnList, Grids, DBGrids, ComCtrls, StdCtrls, Buttons, Mask, ExtCtrls, ToolWin,
  ZSqlUpdate;

type
  TFuncoes = class(TIDefBrowse)
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  Funcoes: TFuncoes;

implementation

{$R *.dfm}

uses uDM, uFFuncoesM, uResources;

{ TFuncoes }

procedure TFuncoes.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fBitMap: TBitmap;
begin
  if (Column.Index <> 0) then
    inherited
  else
    with TDBGrid(Sender), DM do
    try
      fBitMap:= TBitmap.Create;
      fBitMap.Transparent:= True;

      with Resources do
        if DM.qFuncoesativo.AsBoolean then
          small_n.GetBitmap(208, fBitMap)
        else
          small_n.GetBitmap(213, fBitMap);

      if Column.Width <> fBitMap.Width + 2 then
        Column.Width:= fBitMap.Width + 2;

      {Desenha o status da OS}
      Canvas.Draw(Rect.Left + 1, Rect.Top + 1, fBitMap);
    finally
      fBitMap.Free;
    end;
end;

procedure TFuncoes.OnEdit;
begin
  Application.CreateForm(TFuncoesM, FuncoesM);
  FuncoesM.DataSet := DataSet;
  FuncoesM.ShowModal;
end;

initialization
  RegisterClass(TFuncoes);

finalization
  UnRegisterClass(TFuncoes);

end.
