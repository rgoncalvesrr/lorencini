unit uRecebimentoNFeM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, StdCtrls, Mask, DBCtrls, uIFrameCliente,
  uFiscal;

type
  TRecebimentoNFeM = class(TIDefBrowseEdit)
    Panel2: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel5: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel6: TPanel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Panel7: TPanel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Panel8: TPanel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    FrameCliente1: TFrameCliente;
    Panel9: TPanel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Panel10: TPanel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    procedure DBEdit1Exit(Sender: TObject);
  private
    FNfeChave: INFeChave;
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  RecebimentoNFeM: TRecebimentoNFeM;

implementation

uses
  uRecebimentoNFe, db;

{$R *.dfm}

{ TRecebimentoNFeM }

procedure TRecebimentoNFeM.DBEdit1Exit(Sender: TObject);
begin
  inherited;

  FNfeChave := nil;
  try
    if DBEdit1.Text = EmptyStr then
      Exit;

    FNfeChave := TNFeChave.New(DBEdit1.Text);
    if (DataSet.State in [dsEdit, dsInsert]) then
    begin
      DataSet.FieldByName('nf_num').AsString := IntToStr(FNfeChave.Numero);
      DataSet.FieldByName('nfser').AsString := IntToStr(FNfeChave.Serie);
      DataSet.FieldByName('cnpj').AsString := FNfeChave.CNPJ.Inscricao;
      DataSet.FieldByName('estado').AsString := FNfeChave.UF.Sigla;
    end;
  finally
     RefreshControls;
  end;
end;

procedure TRecebimentoNFeM.RefreshControls;
const
  CNPJ_LORENCINI: string = '04824941000109';
var
  selecionarCliente: Boolean;
begin
  inherited;
  try
    // Caso nota de entrada da Lorencini ou nota avulsa, seleção de cliente habilitada
    selecionarCliente := (FNfeChave <> nil) and ((FNfeChave.CNPJ.Inscricao = CNPJ_LORENCINI) or
      ((FNfeChave.Serie >= 890) and (FNfeChave.Serie <= 899)));

    FrameCliente1.actFindCli.Enabled := (FrameCliente1.dsCliente.DataSet.State in [dsEdit, dsInsert]) and
      selecionarCliente;
    FrameCliente1.DBEdit8.Enabled := FrameCliente1.actFindCli.Enabled;
    FrameCliente1.DBEdit8.ReadOnly := not FrameCliente1.actFindCli.Enabled;
  finally
    RefreshControlsStyle(FrameCliente1);
  end;
end;

end.
