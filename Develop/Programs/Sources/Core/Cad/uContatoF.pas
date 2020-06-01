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
    Bevel4: TBevel;
    IBrwSrcsituacao: TIntegerField;
    TabSheet2: TTabSheet;
    IBrwSrcpadrao: TBooleanField;
    IBrwSrccnpj: TStringField;
    IBrwSrccpf: TStringField;
    IBrwSrccidade: TStringField;
    IBrwSrcestado: TStringField;
    Panel2: TPanel;
    Panel3: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel4: TPanel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    IBrwSrccliente: TIntegerField;
    Panel5: TPanel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Panel6: TPanel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Panel7: TPanel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Panel8: TPanel;
    Panel9: TPanel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Panel13: TPanel;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    IBrwSrcenviar_pedido_venda: TBooleanField;
    IBrwSrcenviar_cotacao_venda: TBooleanField;
    IBrwSrcenviar_laudo_critico: TBooleanField;
    IBrwSrcenviar_laudo_atencao: TBooleanField;
    IBrwSrcenviar_laudo_normal: TBooleanField;
    IBrwSrcenviar_laudo_retorno_critico: TBooleanField;
    IBrwSrcenviar_laudo_retorno_atencao: TBooleanField;
    IBrwSrcenviar_laudo_retorno_normal: TBooleanField;
    IBrwSrccontato: TIntegerField;
    procedure actOkExecute(Sender: TObject);
    procedure actNewExecute(Sender: TObject);
    procedure IBrwSrcsituacaoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure PageControl1Change(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FormActivate(Sender: TObject);
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

uses uIUtils, uResources;

{ TOrcamentosLkpCont }

procedure TContatoF.actNewExecute(Sender: TObject);
begin
  inherited;
//  if not DM.qClientes.Active then
//    G.RefreshDataSet(DM.qClientes);
//
//  DM.qClientes.Locate('codigo', FCliente, []);
//
//  Application.CreateForm(TClientesContatoM, ClientesContatoM);
//  ClientesContatoM.DataSet := DM.qContatos;
//  ClientesContatoM.ShowModal;
//  IBrwSrc.Refresh;
end;

procedure TContatoF.actOkExecute(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TContatoF.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Bmp: TBitmap;
  x, y: integer;
begin
  with TDBGrid(Sender) do
  begin
    if not (gdFocused in State) and (DataSource.DataSet.State = dsBrowse) then
    begin
      Canvas.Brush.Color:= clWhite;

      if DataSource.DataSet.RecNo mod 2 = 0 then
        Canvas.Brush.Color:= $00D9EAD9
      else
        Canvas.Brush.Color:= clWhite;

      Canvas.FillRect(Rect);
    end;

    DefaultDrawColumnCell(Rect, DataCol, Column, State);

    if Column.Field is TBooleanField then
      try
        Bmp:= TBitmap.Create;

        if Column.Field.AsBoolean then
          Resources.small_n.GetBitmap(67, Bmp)
        else
          Resources.small_n.GetBitmap(69, Bmp);

        x:= Rect.Left + (Rect.Right - Rect.Left - Bmp.Width) div 2;
        y:= Rect.Top + (Rect.Bottom - Rect.Top - Bmp.Height) div 2;

        Canvas.FillRect(Rect);
        Canvas.Draw(x, y, Bmp);
      finally
        Bmp.Free;
      end;
  end;
end;

procedure TContatoF.FormActivate(Sender: TObject);
begin
  inherited;
  WindowState := wsMaximized;
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
