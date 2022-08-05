unit uPrecosMLaudosCliM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids,
  JvExMask, JvToolEdit, JvBaseEdits, JvDBControls, StdCtrls, DBCtrls, Mask,
  Buttons;

type
  TPrecosMLaudosCliM = class(TIDefBrowseEdit)
    Panel2: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel5: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel6: TPanel;
    Label3: TLabel;
    DBComboBox1: TDBComboBox;
    Panel7: TPanel;
    Label4: TLabel;
    JvDBCalcEdit1: TJvDBCalcEdit;
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
    Panel11: TPanel;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Panel13: TPanel;
    Panel15: TPanel;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Panel16: TPanel;
    SpeedButton1: TSpeedButton;
    Panel20: TPanel;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Panel21: TPanel;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Panel22: TPanel;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Panel23: TPanel;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    Panel52: TPanel;
    Label39: TLabel;
    DBEdit34: TDBEdit;
    Panel53: TPanel;
    Label40: TLabel;
    DBEdit35: TDBEdit;
    actFindCli: TAction;
    procedure DBEdit9Exit(Sender: TObject);
    procedure actFindCliExecute(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  PrecosMLaudosCliM: TPrecosMLaudosCliM;

implementation

uses uPrecos, uIUtils, iTypes, mcUtils, DB, uClientes, uDM;

{$R *.dfm}

procedure TPrecosMLaudosCliM.actFindCliExecute(Sender: TObject);
begin
  Clientes := TClientes.Create(Application);
  try
    Clientes.DisplayMode := dmQuery;
    Clientes.ShowModal;
    if (Clientes.Execute) then
    begin
      DataSet.FieldByName('cliente').AsInteger := DM.qClientescodigo.AsInteger;
      DBEdit9Exit(DBEdit9);
    end;
  finally
    Clientes.Release;
  end;
end;

procedure TPrecosMLaudosCliM.DBEdit9Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(TDBEdit(Sender).Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('empresa');
    fLkp.Add('nome_chave');
    fLkp.Add('cnpj');
    fLkp.Add('cpf');
    fLkp.Add('cidade');
    fLkp.Add('estado');

    if U.Data.CheckFK('tbclientes', 'codigo', QuotedStr(TDBEdit(Sender).Text), fLkp) then
    begin
      DataSet.FieldByName('empresa').AsString := fLkp[0];
      DataSet.FieldByName('nome_chave').AsString := fLkp[1];
      DataSet.FieldByName('cnpj').AsString := fLkp[2];
      DataSet.FieldByName('cpf').AsString := fLkp[3];
      DataSet.FieldByName('cidade').AsString := fLkp[4];
      DataSet.FieldByName('estado').AsString := fLkp[5];
    end
    else
    begin
      U.Out.ShowErro('Cliente não cadastrado.');
      TDBEdit(Sender).SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TPrecosMLaudosCliM.RefreshControls;
begin
  inherited;
  if not Assigned(DataSet) then
    Exit;

  with DataSet do
    actFindCli.Enabled := (State <> dsBrowse);
end;

end.
