unit uFichaFinDespM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uidefeditform, ActnList, ComCtrls, ToolWin, uIUtils, StdCtrls,
  ExtCtrls, Mask, JvExMask, JvToolEdit, JvBaseEdits;

type
  TFichaFinDespM = class(TIDefEditForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label18: TLabel;
    cbCliente: TComboBox;
    Label2: TLabel;
    edData: TJvDateEdit;
    Label3: TLabel;
    edDocto: TEdit;
    Label4: TLabel;
    edHistorico: TMemo;
    Panel7: TPanel;
    Label1: TLabel;
    edValor: TJvCalcEdit;
    actClean: TAction;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    Label5: TLabel;
    cbHistorico: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actCleanExecute(Sender: TObject);
    procedure cbClienteChange(Sender: TObject);
    procedure edDataChange(Sender: TObject);
    procedure cbHistoricoChange(Sender: TObject);
  private
    { Private declarations }
    FCbClientes: TComboList;
    procedure ReiniciarControles;
    procedure AtualizarHistorico;
    procedure RefreshControls;
  public
    { Public declarations }
  end;

var
  FichaFinDespM: TFichaFinDespM;

implementation

{$R *.dfm}

procedure TFichaFinDespM.actCleanExecute(Sender: TObject);
begin
  inherited;
  ReiniciarControles;
end;

procedure TFichaFinDespM.actOkExecute(Sender: TObject);
begin
  inherited;
  with U.Data.Query do
  try
    SQL.Text :=
      'insert into fin_caixadesp(codigo, data, docto, historico, valor, status) '+
      'values (:codigo, :data, :docto, :historico, :valor, 2)';

    ParamByName('codigo').AsInteger := FCbClientes.Selected.Value;
    ParamByName('data').AsDate := edData.Date;
    ParamByName('historico').AsString := edHistorico.Text;
    ParamByName('valor').AsFloat := edValor.Value;
    if (edDocto.Text <> EmptyStr) then
      ParamByName('docto').AsString := edDocto.Text;

    try
      ExecSQL;
      
      ReiniciarControles;
      cbCliente.SetFocus;
    except
      on E:Exception do
        U.Out.ShowErro('Não foi possível registrar despesa. Erro: %s', [e.Message]);
    end;
  finally
    Close;
  end;
end;

procedure TFichaFinDespM.AtualizarHistorico;
begin
  with U.Data.Query, cbHistorico do
  try
    Enabled := False;
    Items.BeginUpdate;
    Items.Clear;

    SQL.Text :=
    'select historico '+
      'from fin_caixadesp '+
     'where codigo = :codigo '+
     'group by historico ';

    ParamByName('codigo').AsInteger := FCbClientes.Selected.Value;

    Open;

    while not Eof do
    begin
      Items.Add(Fields[0].AsString);

      Next;
    end;
  finally
    Close;
    Items.EndUpdate;
    Enabled := (Items.Count > 0);
  end;
end;

procedure TFichaFinDespM.cbClienteChange(Sender: TObject);
begin
  inherited;
  AtualizarHistorico;
  RefreshControls;
end;

procedure TFichaFinDespM.cbHistoricoChange(Sender: TObject);
begin
  inherited;
  edHistorico.Text :=  cbHistorico.Text;
end;

procedure TFichaFinDespM.edDataChange(Sender: TObject);
begin
  inherited;
  RefreshControls;
end;

procedure TFichaFinDespM.FormCreate(Sender: TObject);
begin
  inherited;
  FCbClientes := TComboList.Create(cbCliente, 'tbclientes', 'codigo', 'nome_chave', False);
  FCbClientes.Criteria.Add('situacao = ''ATIVO''');
  FCbClientes.UpdateList;
end;

procedure TFichaFinDespM.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FCbClientes);
  inherited;
end;

procedure TFichaFinDespM.FormShow(Sender: TObject);
begin
  inherited;
  ReiniciarControles;
end;

procedure TFichaFinDespM.RefreshControls;
begin
  actOk.Enabled := (FCbClientes.Count > 0) and (edData.Text <> EmptyStr) and
    (edValor.Value > 0) and (edHistorico.Text <> EmptyStr);  
end;

procedure TFichaFinDespM.ReiniciarControles;
begin
  edHistorico.Clear;
  edDocto.Clear;
  edData.Clear;
  edValor.Clear;
  edData.Date := Now;
  RefreshControls;
end;

end.
