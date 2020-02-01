unit uOSMServicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls, db, Buttons, JvExMask, JvToolEdit, JvBaseEdits,
  JvDBControls;

type
  TOSMServicos = class(TIDefBrowseEdit)
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    Panel2: TPanel;
    Panel17: TPanel;
    Label51: TLabel;
    DBEdit49: TDBEdit;
    Panel18: TPanel;
    SpeedButton5: TSpeedButton;
    Panel19: TPanel;
    Label47: TLabel;
    DBEdit45: TDBEdit;
    Panel20: TPanel;
    Label48: TLabel;
    DBEdit48: TDBEdit;
    Panel21: TPanel;
    Label49: TLabel;
    DBEdit3: TDBEdit;
    Panel22: TPanel;
    Label50: TLabel;
    JvDBCalcEdit1: TJvDBCalcEdit;
    Panel23: TPanel;
    Label52: TLabel;
    DBEdit50: TDBEdit;
    actFindServ: TAction;
    procedure DBEdit49Exit(Sender: TObject);
    procedure actFindServExecute(Sender: TObject);
  private
    { Private declarations }
    procedure OnDataSet; override;
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  OSMServicos: TOSMServicos;

implementation

{$R *.dfm}

uses uOSM, uIUtils, uDM, uOS, mcUtils, uServicos;

{ TOrcamentosMServicos }

procedure TOSMServicos.actFindServExecute(Sender: TObject);
begin
  inherited;
  Servicos := TServicos.Create(nil);
  try
    Servicos.DisplayMode := dmQuery;
    Servicos.ShowModal;

    if Servicos.Execute then
    begin
      DataSet.FieldByName('codserv').AsInteger := Servicos.IBrwSrccodserv.AsInteger;
      DBEdit49Exit(DBEdit49);
    end;
  finally
    FreeAndNil(Servicos);
  end;
end;

procedure TOSMServicos.DBEdit49Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  try
    if mcEmpty(DBEdit49.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
      Exit;

    fLkp:= TStringList.Create;
    fLkp.Add('descri');
    fLkp.Add('un');
    fLkp.Add('valor');

    if U.Data.CheckFK('servicos', 'codserv', DBEdit49.Text, fLkp) then
    begin
      DataSet.FieldByName('descri').AsString := fLkp[0];
      DataSet.FieldByName('un').AsString := fLkp[1];

      if DataSet.FieldByName('valor').AsFloat = 0 then
        DataSet.FieldByName('valor').AsString := fLkp[2];
    end
    else
    begin
      U.Out.ShowErro('Serviço não cadastrado.');
      DBEdit49.SetFocus;
    end;
  finally
    if Assigned(fLkp) then
      FreeAndNil(fLkp);
  end;
end;

procedure TOSMServicos.OnDataSet;
begin
  ChildDataSet := OS.qServDet;
end;

procedure TOSMServicos.RefreshControls;
begin
  inherited;

  if not Assigned(DataSet) then
    Exit;

  actFindServ.Enabled := (DataSet.State in [dsEdit, dsInsert]);
end;

end.
