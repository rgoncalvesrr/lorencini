unit uLabAmostrasMLaudo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls, Buttons;

type
  TLabAmostrasMLaudo = class(TIDefBrowseEdit)
    Bevel6: TBevel;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    actFindLaudo: TAction;
    Label15: TLabel;
    DBMemo1: TDBMemo;
    Panel4: TPanel;
    Panel15: TPanel;
    Panel17: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel18: TPanel;
    Label40: TLabel;
    DBEdit39: TDBEdit;
    Panel69: TPanel;
    Label44: TLabel;
    DBEdit51: TDBEdit;
    Panel70: TPanel;
    Label45: TLabel;
    DBEdit52: TDBEdit;
    Panel68: TPanel;
    Label43: TLabel;
    DBEdit54: TDBEdit;
    Panel72: TPanel;
    Label54: TLabel;
    DBEdit55: TDBEdit;
    Panel75: TPanel;
    Label56: TLabel;
    DBEdit57: TDBEdit;
    Panel6: TPanel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Panel7: TPanel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Panel8: TPanel;
    Panel9: TPanel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Panel10: TPanel;
    SpeedButton1: TSpeedButton;
    Panel12: TPanel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Panel19: TPanel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    procedure DBEdit1Exit(Sender: TObject);
    procedure actFindLaudoExecute(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  LabAmostrasMLaudo: TLabAmostrasMLaudo;

implementation

uses uLabAmostras, uIUtils, mcUtils, DB, uLabTiposLaudos;

{$R *.dfm}

procedure TLabAmostrasMLaudo.actFindLaudoExecute(Sender: TObject);
begin
  inherited;
  LabTiposLaudos := TLabTiposLaudos.Create(nil);
  try
    LabTiposLaudos.DisplayMode := dmQuery;
    LabTiposLaudos.IBrwSrc.Filter := Format('codserv = %d and ativo',
      [DataSet.FieldByName('codserv').AsInteger]);
    LabTiposLaudos.IBrwSrc.Filtered := True;
    LabTiposLaudos.ShowModal;
    if LabTiposLaudos.Execute then
    begin
      DataSet.FieldByName('relato_recno').AsInteger :=
        LabTiposLaudos.IBrwSrcrecno.AsInteger;
      DBEdit1Exit(DBEdit5);
    end;
  finally
    LabTiposLaudos.IBrwSrc.Filtered := False;
    LabTiposLaudos.IBrwSrc.Filter := EmptyStr;
    FreeAndNil(LabTiposLaudos);
  end;
end;

procedure TLabAmostrasMLaudo.DBEdit1Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  if mcEmpty(TDBEdit(Sender).Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('descri');

    if U.Data.CheckFK('vtplaudo', 'recno', TDBEdit(Sender).Text, fLkp,
      Format('codserv = %d and ativo', [DataSet.FieldByName('codserv').AsInteger])) then
    begin
      DataSet.FieldByName('descri').AsString := fLkp[0];
    end
    else
    begin
      U.Out.ShowErro('Tipo de laudo não cadastrado.');
      TDBEdit(Sender).SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TLabAmostrasMLaudo.RefreshControls;
begin
  inherited;
  if not Assigned(DataSet) then
    Exit;

  actFindLaudo.Enabled := DataSet.State in [dsEdit, dsInsert];
end;

end.
