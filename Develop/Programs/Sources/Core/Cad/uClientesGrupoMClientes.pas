unit uClientesGrupoMClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls, Buttons;

type
  TClientesGrupoMClientes = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Bevel6: TBevel;
    Label42: TLabel;
    DBEdit27: TDBEdit;
    SpeedButton3: TSpeedButton;
    Label48: TLabel;
    DBEdit33: TDBEdit;
    Label33: TLabel;
    DBEdit17: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    actFindCli: TAction;
    procedure DBEdit27Exit(Sender: TObject);
    procedure actFindCliExecute(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  ClientesGrupoMClientes: TClientesGrupoMClientes;

implementation

uses uClientesGrupo, uClientes, uIUtils, mcUtils, DB, uDM;

{$R *.dfm}

procedure TClientesGrupoMClientes.actFindCliExecute(Sender: TObject);
begin
  try
    Clientes := TClientes.Create(Application);
    Clientes.DisplayMode := dmQuery;
    Clientes.ShowModal;
    if (Clientes.Execute) then
    begin
      DataSet.FieldByName('codigo').AsInteger := DM.qClientescodigo.AsInteger;
      DBEdit27Exit(DBEdit27);
    end;
  finally
    Clientes.Release;
  end;

end;

procedure TClientesGrupoMClientes.DBEdit27Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit27.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('nome_chave');
    fLkp.Add('cnpj');
    fLkp.Add('cpf');
    fLkp.Add('telefone');

    if U.Data.CheckFK('tbclientes', 'codigo', DBEdit27.Text, fLkp) then
    begin
      DataSet.FieldByName('nome_chave').AsString := fLkp[0];
      DataSet.FieldByName('cnpj').AsString := fLkp[1];
      DataSet.FieldByName('cpf').AsString := fLkp[2];
      DataSet.FieldByName('telefone').AsString := fLkp[3];
    end
    else
    begin
      U.Out.ShowErro('Cliente não cadastrado.');
      DBEdit27.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TClientesGrupoMClientes.RefreshControls;
begin
  inherited;

  if not Assigned(DataSet) then
    Exit;

  actFindCli.Enabled := (DataSet.State in [dsEdit, dsInsert]);
end;

end.
