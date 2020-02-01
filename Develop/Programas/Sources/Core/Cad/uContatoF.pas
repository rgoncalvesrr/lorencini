unit uContatoF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIDefFind, DB, Menus, ZAbstractRODataset, ZDataset, ActnList, Grids,
  DBGrids, ComCtrls, StdCtrls, Buttons, Mask, ExtCtrls, ToolWin, DBCtrls;

type
  TContatoSituacao = (csTodos, csAtivos, csInativos); 

  TContatoF = class(TIDefFind)
    IBrwSrcnome: TStringField;
    IBrwSrcfuncao: TStringField;
    IBrwSrctelefone: TStringField;
    IBrwSrccelular: TStringField;
    IBrwSrcemail: TStringField;
    actNew: TAction;
    ToolButton3: TToolButton;
    ToolButton5: TToolButton;
    IBrwSrcempresa: TStringField;
    IBrwSrcnome_chave: TStringField;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    DBText2: TDBText;
    DBText1: TDBText;
    Bevel4: TBevel;
    IBrwSrcitem: TIntegerField;
    IBrwSrcsituacao: TIntegerField;
    TabSheet2: TTabSheet;
    procedure actOkExecute(Sender: TObject);
    procedure actNewExecute(Sender: TObject);
    procedure IBrwSrcsituacaoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure PageControl1Change(Sender: TObject);
  private
    FCliente: Integer;
    FSituacao: TContatoSituacao;
    procedure SetCliente(const Value: Integer);
    procedure SetSituacao(const Value: TContatoSituacao);
    { Private declarations }
  public
    { Public declarations }
    property Cliente: Integer read FCliente write SetCliente;
    property Situacao: TContatoSituacao read FSituacao write SetSituacao;
  end;

var
  ContatoF: TContatoF;

implementation

{$R *.dfm}

uses uDM, uClienteContatoM, uIUtils, uResources;

{ TOrcamentosLkpCont }

procedure TContatoF.actNewExecute(Sender: TObject);
begin
  inherited;
  if not DM.qClientes.Active then
    G.RefreshDataSet(DM.qClientes);

  DM.qClientes.Locate('codigo', FCliente, []);

  Application.CreateForm(TClientesContatoM, ClientesContatoM);
  ClientesContatoM.DataSet := DM.qContatos;
  ClientesContatoM.ShowModal;
  IBrwSrc.Refresh;
end;

procedure TContatoF.actOkExecute(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TContatoF.IBrwSrcsituacaoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    0: Text := 'Inativo';
    1: Text := 'Ativo';
  end;
end;

procedure TContatoF.PageControl1Change(Sender: TObject);
begin
  inherited;
  if PageControl1.ActivePageIndex = 0 then
    IBrwSrc.ParamByName('situacao').AsInteger := 1
  else
    IBrwSrc.ParamByName('situacao').AsInteger := 0;

  G.RefreshDataSet(IBrwSrc);
end;

procedure TContatoF.SetCliente(const Value: Integer);
begin
  FCliente := Value;

  case Situacao of
    csAtivos:
      IBrwSrc.SQL.Text := IBrwSrc.SQL.Text + 'and a.situacao = 1';
    csInativos:
      IBrwSrc.SQL.Text := IBrwSrc.SQL.Text + 'and a.situacao = 0';
  end;

  IBrwSrc.ParamByName('cliente').AsInteger := Value;
  IBrwSrc.Open;
end;

procedure TContatoF.SetSituacao(const Value: TContatoSituacao);
begin
  FSituacao := Value;

  TabSheet1.TabVisible := (Value in [csTodos, csAtivos]);
  TabSheet2.TabVisible := (Value in [csTodos, csInativos]);
end;

end.
