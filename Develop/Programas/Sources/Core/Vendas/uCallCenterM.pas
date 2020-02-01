unit uCallCenterM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, ComCtrls, ExtCtrls, ToolWin, StdCtrls, Mask,
  DBCtrls, Buttons, DB, DBTables, uIConst, Grids, DBGrids, ZDataSet;

type
  TCallCenterM = class(TIDefBrowseEdit)
    actLkpCli: TAction;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Bevel6: TBevel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    actContatoF: TAction;
    BitBtn2: TBitBtn;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBMemo1: TDBMemo;
    procedure actContatoFExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FCliente: Integer;
    FOs: Integer;
    procedure OnDataSet; override;
    procedure RefreshControls; override;
    procedure SetCliente(const Value: Integer);
    procedure SetOs(const Value: Integer);
    procedure SetOSEvent(Sender: TObject; DataSet: TZQuery; var AllowPost: Boolean);
  public
    { Public declarations }
    property Cliente: Integer read FCliente write SetCliente;
    property Os: Integer read FOs write SetOs;
  end;

var
  CallCenterM: TCallCenterM;

implementation

{$R *.dfm}

uses mcUtils, uIUtils, uDM, uContatoF;

procedure TCallCenterM.actContatoFExecute(Sender: TObject);
begin
  Application.CreateForm(TContatoF, ContatoF);
  ContatoF.Cliente := DM.qClientescodigo.AsInteger;
  ContatoF.ShowModal;

  if ContatoF.Execute then
    with DM do
    begin
      qCallCentercontato.AsInteger := ContatoF.IBrwSrcitem.AsInteger;
      qCallCenternome.AsString := ContatoF.IBrwSrcnome.AsString;
      qCallCentertelefone.AsString := ContatoF.IBrwSrctelefone.AsString;
      qCallCenterfuncao.AsString := ContatoF.IBrwSrcfuncao.AsString;
      qCallCentercelular.AsString := ContatoF.IBrwSrccelular.AsString;
      qCallCenteremail.AsString := ContatoF.IBrwSrcemail.AsString;
    end;

  FreeAndNil(ContatoF);
end;

procedure TCallCenterM.FormCreate(Sender: TObject);
begin
  inherited;
  OnBeforePost := SetOSEvent;
end;

procedure TCallCenterM.OnDataSet;
begin

end;

procedure TCallCenterM.RefreshControls;
begin
  inherited;
  actContatoF.Enabled := True;
end;

procedure TCallCenterM.SetCliente(const Value: Integer);
begin
  FCliente := Value;
  with dm do
  begin
    if not qClientes.Active then
      qClientes.Open;
    if not qContatos.Active then
      qContatos.Open;

    qClientes.Locate('codigo', FCliente, []);
  end;
end;

procedure TCallCenterM.SetOs(const Value: Integer);
begin
  FOs := Value;
end;

procedure TCallCenterM.SetOSEvent(Sender: TObject; DataSet: TZQuery; var AllowPost: Boolean);
begin
  if Os > 0 then
    DM.qCallCenteros.AsInteger := Os;
end;

end.
