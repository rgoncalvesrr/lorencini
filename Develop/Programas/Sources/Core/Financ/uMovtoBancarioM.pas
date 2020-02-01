unit uMovtoBancarioM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, DBCtrls, Mask, Buttons, JvExMask, JvToolEdit, JvDBControls,
  JvBaseEdits;

type
  TMovtoBancarioM = class(TIDefBrowseEdit)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBEdit5: TDBEdit;
    DBEdit1: TDBEdit;
    SpeedButton2: TSpeedButton;
    Label7: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    actNatureza: TAction;
    JvDBCalcEdit1: TJvDBCalcEdit;
    Label8: TLabel;
    DBMemo1: TDBMemo;
    procedure DBEdit1Exit(Sender: TObject);
    procedure actNaturezaExecute(Sender: TObject);
  private
    { Private declarations }
    procedure OnDataSet; override;
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  MovtoBancarioM: TMovtoBancarioM;

implementation

uses uMovtoBancario, uIUtils, mcUtils, uFinNaturezas, uFinNaturezasM, DB;

{$R *.dfm}

{ TMovtoBancarioM }

procedure TMovtoBancarioM.actNaturezaExecute(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TFinNaturezas, FinNaturezas);
    FinNaturezas.DisplayMode := dmQuery;
    FinNaturezas.ShowModal;
    if (FinNaturezas.Execute) then
    begin
      DataSet.FieldByName('natureza').AsInteger := FinNaturezas.IBrwSrcnatureza.AsInteger;
      DBEdit1Exit(DBEdit1);
    end;
  finally
    FinNaturezas.Release;
  end;
end;

procedure TMovtoBancarioM.DBEdit1Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit1.Text) or not (DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('descri');

    if U.Data.CheckFK('fin_naturezas', 'natureza', QuotedStr(DBEdit1.Text), fLkp) then
      DataSet.FieldByName('descri').AsString := fLkp[0]
    else
    begin
      U.Out.ShowErro('Natureza não cadastrada.');
      DBEdit1.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TMovtoBancarioM.OnDataSet;
begin
  U.FillDBComboBox(DBComboBox1, 'cc', 'cc');
end;

procedure TMovtoBancarioM.RefreshControls;
begin
  inherited;
  if Assigned(DataSet) then
    actNatureza.Enabled := DataSet.State in [dsEdit, dsInsert];
end;

end.
