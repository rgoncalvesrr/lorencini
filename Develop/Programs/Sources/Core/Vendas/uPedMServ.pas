unit uPedMServ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids,
  StdCtrls, Mask, DBCtrls, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls,
  Buttons;

type
  TPedMServ = class(TIDefBrowseEdit)
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
    Panel22: TPanel;
    Label16: TLabel;
    DBEdit10: TDBEdit;
    actFindServ: TAction;
    Label8: TLabel;
    DBMemo1: TDBMemo;
    Panel15: TPanel;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Panel16: TPanel;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Panel17: TPanel;
    Label11: TLabel;
    JvDBCalcEdit1: TJvDBCalcEdit;
    procedure DBEdit5Exit(Sender: TObject);
    procedure actFindServExecute(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  PedMServ: TPedMServ;

implementation

uses uPed, mcUtils, DB, uIUtils, uServicos;

{$R *.dfm}

procedure TPedMServ.actFindServExecute(Sender: TObject);
begin
  Servicos := TServicos.Create(nil);
  try
    Servicos.DisplayMode := dmQuery;
    Servicos.ShowModal;
    if (Servicos.Execute) then
    begin
      DataSet.FieldByName('codserv').AsInteger := Servicos.IBrwSrccodserv.AsInteger;
      DBEdit5Exit(DBEdit5);
    end;
  finally
    FreeAndNil(Servicos);
  end;
end;

procedure TPedMServ.DBEdit5Exit(Sender: TObject);
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
    fLkp.Add('consumo');
    fLkp.Add('tipo');

    if U.Data.CheckFK('servicos', 'codserv', TDBEdit(Sender).Text, fLkp) then
    begin
      DataSet.FieldByName('descri').AsString := fLkp[0];
      if DataSet.FieldByName('unitario').AsFloat = 0 then
        DataSet.FieldByName('unitario').AsString := fLkp[1];
      DataSet.FieldByName('unidade').AsString := fLkp[2];
      DataSet.FieldByName('consumo').AsString := fLkp[3];
      DataSet.FieldByName('tipo').AsString := fLkp[4];
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

procedure TPedMServ.RefreshControls;
begin
  inherited;
  if not Assigned(DataSet) then
      Exit;

  actFindServ.Enabled := (DataSet.State in [dsEdit, dsInsert]);
end;

end.
