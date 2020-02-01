unit uCotaMServ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  JvExMask, JvToolEdit, JvBaseEdits, JvDBControls, Buttons, StdCtrls, Mask,
  DBCtrls, CheckLst, JvExCheckLst, JvCheckListBox, DB;

type
  TCotaMServ = class(TIDefBrowseEdit)
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
    Panel12: TPanel;
    Panel18: TPanel;
    Label12: TLabel;
    JvDBCalcEdit4: TJvDBCalcEdit;
    Panel19: TPanel;
    Label13: TLabel;
    JvDBCalcEdit5: TJvDBCalcEdit;
    Panel21: TPanel;
    Label15: TLabel;
    DBEdit9: TDBEdit;
    Panel22: TPanel;
    Label16: TLabel;
    DBEdit10: TDBEdit;
    Panel7: TPanel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    actFindServ: TAction;
    procedure DBEdit1Exit(Sender: TObject);
    procedure actFindServExecute(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  CotaMServ: TCotaMServ;

implementation

uses uCota, mcutils, uIUtils, iTypes, uServicos;

{$R *.dfm}

procedure TCotaMServ.actFindServExecute(Sender: TObject);
begin
  inherited;
  Servicos := TServicos.Create(nil);
  try
    Servicos.DisplayMode := dmQuery;
    Servicos.ShowModal;
    if (Servicos.Execute) then
    begin
      DataSet.FieldByName('servico').AsInteger := Servicos.IBrwSrccodserv.AsInteger;
      DBEdit1Exit(DBEdit1);
    end;
  finally
    FreeAndNil(Servicos);
  end;
end;

procedure TCotaMServ.DBEdit1Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(TDBEdit(Sender).Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('descri');
    fLkp.Add('valor');
    fLkp.Add('un');
    fLkp.Add('tipo');

    if U.Data.CheckFK('servicos', 'codserv', TDBEdit(Sender).Text, fLkp) then
    begin
      DataSet.FieldByName('descri').AsString := fLkp[0];
      if DataSet.FieldByName('unitario').AsFloat = 0 then
        DataSet.FieldByName('unitario').AsString := fLkp[1];
      DataSet.FieldByName('unidade').AsString := fLkp[2];
      DataSet.FieldByName('tipo').AsString := fLkp[3];
    end
    else
    begin
      U.Out.ShowErro('Serviço não cadastrado.');
      TDBEdit(Sender).SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TCotaMServ.RefreshControls;
begin
  inherited;
  if not Assigned(DataSet) then
    Exit;

  actFindServ.Enabled := (DataSet.State in [dsEdit, dsInsert]);
end;

end.
