unit uOSMMat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, DBCtrls, Mask, Buttons, JvExStdCtrls, JvCombobox, JvDBCombobox, JvExMask, JvToolEdit, JvBaseEdits,
  JvDBControls, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, JvDBDatePickerEdit;

type
  TOSMMat = class(TIDefBrowseEdit)
    actFindMat: TAction;
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
    Panel8: TPanel;
    Panel9: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel10: TPanel;
    Label11: TLabel;
    DBEdit4: TDBEdit;
    Panel11: TPanel;
    Label2: TLabel;
    JvDBDatePickerEdit1: TJvDBDatePickerEdit;
    Panel13: TPanel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Panel16: TPanel;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Panel23: TPanel;
    Label10: TLabel;
    DBEdit11: TDBEdit;
    Panel12: TPanel;
    Label3: TLabel;
    JvDBComboBox1: TJvDBComboBox;
    procedure actFindMatExecute(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  OSMMat: TOSMMat;

implementation

{$R *.dfm}

uses uDM, uIUtils, uProdutosM, db, uOS, mcUtils, uProdutos;

{ TOrcamentosMMat }

procedure TOSMMat.actFindMatExecute(Sender: TObject);
begin
  Produtos := TProdutos.Create(nil);
  try
    Produtos.DisplayMode := dmQuery;
    Produtos.ShowModal;
    if (Produtos.Execute) then
    begin
      DataSet.FieldByName('codigo').AsInteger := DM.qProdutoscodigo.AsInteger;
      DBEdit5Exit(DBEdit5);
    end;
  finally
    FreeAndNil(Produtos);
  end;
end;

procedure TOSMMat.DBEdit5Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(TDBEdit(Sender).Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  fLkp:= TStringList.Create;
  try
    fLkp.Add('descricao');
    fLkp.Add('vlrcusto');
    fLkp.Add('unidade');

    if U.Data.CheckFK('produtos', 'codigo', TDBEdit(Sender).Text, fLkp) then
    begin
      DataSet.FieldByName('material').AsString := fLkp[0];
      DataSet.FieldByName('unitario').AsString := fLkp[1];
      DataSet.FieldByName('un').AsString := fLkp[2];
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

procedure TOSMMat.RefreshControls;
begin
  inherited;
  if not Assigned(DataSet) then
    Exit;

  with DataSet do
    actFindMat.Enabled := (State <> dsBrowse);
end;

end.
