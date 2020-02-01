unit uPrecosClientesM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids,
  JvExMask, JvToolEdit, JvBaseEdits, JvDBControls, Buttons, StdCtrls, Mask,
  DBCtrls, uIFrameCliente;

type
  TPrecosClientesM = class(TIDefBrowseEdit)
    Panel8: TPanel;
    Panel9: TPanel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Panel10: TPanel;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Panel12: TPanel;
    Label8: TLabel;
    JvDBCalcEdit2: TJvDBCalcEdit;
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
    actFindServ: TAction;
    FrameCliente1: TFrameCliente;
    procedure DBEdit3Exit(Sender: TObject);
    procedure actFindServExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  PrecosClientesM: TPrecosClientesM;

implementation

uses uPrecosClientes, uClientes, iTypes, uIUtils, uDM, mcutils, DB,
  uLabTiposLaudos, uServicos;

{$R *.dfm}

procedure TPrecosClientesM.actFindServExecute(Sender: TObject);
begin
  Servicos := TServicos.Create(nil);
  try
    Servicos.DisplayMode := dmQuery;
    Servicos.ShowModal;
    if (Servicos.Execute) then
    begin
      DataSet.FieldByName('servico').AsInteger := Servicos.IBrwSrccodserv.AsInteger;
      DBEdit3Exit(DBEdit3);
    end;
  finally
    FreeAndNil(Servicos);
  end;
end;

procedure TPrecosClientesM.DBEdit3Exit(Sender: TObject);
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

    if U.Data.CheckFK('servicos', 'codserv', TDBEdit(Sender).Text, fLkp) then
    begin
      DataSet.FieldByName('descri').AsString := fLkp[0];
      DataSet.FieldByName('valor').AsString := fLkp[1];
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

procedure TPrecosClientesM.FormShow(Sender: TObject);
begin
  inherited;
  with FrameCliente1 do
    DBEdit8Exit(DBEdit8);

  DBEdit3.SetFocus;
  Application.ProcessMessages;
end;

procedure TPrecosClientesM.RefreshControls;
begin
  inherited;
  if not Assigned(DataSet) then
    Exit;

  with DataSet do
  begin
    FrameCliente1.actFindCli.Enabled := (State <> dsBrowse);
    actFindServ.Enabled := (State <> dsBrowse);
  end;
end;

end.
