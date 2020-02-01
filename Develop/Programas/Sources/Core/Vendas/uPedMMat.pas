unit uPedMMat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids,
  JvExMask, JvToolEdit, JvBaseEdits, JvDBControls, Buttons, StdCtrls, Mask,
  DBCtrls;

type
  TPedMMat = class(TIDefBrowseEdit)
    Panel8: TPanel;
    Panel9: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel10: TPanel;
    Label14: TLabel;
    DBEdit19: TDBEdit;
    Panel11: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel12: TPanel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Panel13: TPanel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Panel2: TPanel;
    Panel4: TPanel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Panel14: TPanel;
    SpeedButton3: TSpeedButton;
    Panel5: TPanel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Panel6: TPanel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Panel7: TPanel;
    Panel18: TPanel;
    Label12: TLabel;
    JvDBCalcEdit4: TJvDBCalcEdit;
    Panel19: TPanel;
    Label13: TLabel;
    JvDBCalcEdit5: TJvDBCalcEdit;
    Panel20: TPanel;
    Label8: TLabel;
    JvDBCalcEdit6: TJvDBCalcEdit;
    Panel21: TPanel;
    Label15: TLabel;
    DBEdit9: TDBEdit;
    Panel22: TPanel;
    Label16: TLabel;
    DBEdit10: TDBEdit;
    actFindProd: TAction;
    procedure DBEdit5Exit(Sender: TObject);
    procedure actFindProdExecute(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  PedMMat: TPedMMat;

implementation

{$R *.dfm}

uses mcUtils, DB, uIUtils, uProdutos, uDM, uPed;


procedure TPedMMat.actFindProdExecute(Sender: TObject);
begin
  inherited;
  Produtos := TProdutos.Create(nil);
  try
    Produtos.DisplayMode := dmQuery;
    Produtos.ShowModal;
    if (Produtos.Execute) then
    begin
      DataSet.FieldByName('material').AsInteger := DM.qProdutoscodigo.AsInteger;
      DBEdit5Exit(DBEdit5);
    end;
  finally
    FreeAndNil(Produtos);
  end;
end;

procedure TPedMMat.DBEdit5Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(TDBEdit(Sender).Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('descricao');
    fLkp.Add('vlrcusto');
    fLkp.Add('unidade');

    if U.Data.CheckFK('produtos', 'codigo', TDBEdit(Sender).Text, fLkp) then
    begin
      DataSet.FieldByName('descricao').AsString := fLkp[0];
      DataSet.FieldByName('unitario').AsString := fLkp[1];
      DataSet.FieldByName('unidade').AsString := fLkp[2];
    end
    else
    begin
      U.Out.ShowErro('Produto não cadastrado.');
      TDBEdit(Sender).SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TPedMMat.RefreshControls;
begin
  inherited;
  if not Assigned(DataSet) then
    Exit;

  with DataSet do
    actFindProd.Enabled := (State <> dsBrowse);
end;

end.
