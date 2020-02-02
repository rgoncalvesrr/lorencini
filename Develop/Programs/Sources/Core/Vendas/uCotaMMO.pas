unit uCotaMMO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls, Buttons, Mask,
  DBCtrls;

type
  TCotaMMO = class(TIDefBrowseEdit)
    Panel2: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel14: TPanel;
    SpeedButton3: TSpeedButton;
    Panel5: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel6: TPanel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Panel7: TPanel;
    GroupBox1: TGroupBox;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    GroupBox2: TGroupBox;
    Panel11: TPanel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Panel12: TPanel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Panel13: TPanel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    GroupBox3: TGroupBox;
    Panel15: TPanel;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Panel16: TPanel;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Panel17: TPanel;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    GroupBox4: TGroupBox;
    Panel18: TPanel;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Panel19: TPanel;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Panel20: TPanel;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Panel21: TPanel;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Panel22: TPanel;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    Panel23: TPanel;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    actFindFunc: TAction;
    procedure DBEdit1Exit(Sender: TObject);
    procedure actFindFuncExecute(Sender: TObject);
  private
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  CotaMMO: TCotaMMO;

implementation

uses uCota, mcutils, uIUtils, DB, uFFuncoes, uDM;

{$R *.dfm}

procedure TCotaMMO.actFindFuncExecute(Sender: TObject);
begin
  Funcoes := TFuncoes.Create(nil);
  try
    DM.qFuncoes.Filter := 'ativo';
    DM.qFuncoes.Filtered := (DataSet.State = dsInsert);
    Funcoes.DisplayMode := dmQuery;
    Funcoes.ShowModal;
    if (Funcoes.Execute) then
    begin
      DataSet.FieldByName('funcao').AsInteger := DM.qFuncoesid.AsInteger;
      DBEdit1Exit(DBEdit1);
    end;
  finally
    FreeAndNil(Funcoes);
    DM.qFuncoes.Filtered := False;
  end;

end;

procedure TCotaMMO.DBEdit1Exit(Sender: TObject);
var
  fLkp: TStringList;
  sWhere: string;
begin
  inherited;
  if mcEmpty(TDBEdit(Sender).Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('descricao');
    fLkp.Add('vlr_total_hora_normal');
    fLkp.Add('vlr_total_he_50');
    fLkp.Add('vlr_total_he_100');
    fLkp.Add('vlr_hr_adic_noturno');
    fLkp.Add('projecao_adic_noturno');

    sWhere := EmptyStr;
    if (DataSet.State = dsInsert) then
      sWhere := 'ativo';

    if U.Data.CheckFK('tb_funcoes', 'id', TDBEdit(Sender).Text, fLkp, sWhere) then
    begin
      DataSet.FieldByName('descricao').AsString := fLkp[0];
      DataSet.FieldByName('uteis_vl_hrs').AsString := fLkp[1];
      DataSet.FieldByName('sabado_vl_hrs').AsString := fLkp[2];
      DataSet.FieldByName('domingo_vl_hrs').AsString := fLkp[3];
      DataSet.FieldByName('adic_not_vl_hrs').AsString := fLkp[4];

      if DataSet.FieldByName('adic_not_vl_hrs').AsFloat > 0 then
        DataSet.FieldByName('adic_not_vl_hrs').AsFloat :=
        DataSet.FieldByName('adic_not_vl_hrs').AsFloat +
        DataSet.FieldByName('adic_not_vl_hrs').AsFloat *
        StrToFloat(fLkp[5]) / 100;
    end
    else
    begin
      U.Out.ShowErro('Função não cadastrada.');
      TDBEdit(Sender).SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TCotaMMO.RefreshControls;
begin
  inherited;
  if not Assigned(DataSet) then
    Exit;

  with DataSet do
    actFindFunc.Enabled := (State in [dsEdit, dsInsert]);
end;

end.
