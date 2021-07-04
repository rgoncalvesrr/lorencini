unit uRecebimentoPortador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIForm, ActnList, ComCtrls, Grids, DBGrids, ExtCtrls, StdCtrls, Mask, DBCtrls, Buttons, 
  uIUtils, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ZSqlUpdate, ZSequence;

type
  TRecebimentoPortador = class(TIForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Splitter1: TSplitter;
    Panel2: TPanel;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Panel12: TPanel;
    Panel13: TPanel;
    Label11: TLabel;
    DBComboBox1: TDBComboBox;
    Panel14: TPanel;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label19: TLabel;
    DBEdit9: TDBEdit;
    Label14: TLabel;
    DBComboBox2: TDBComboBox;
    Panel18: TPanel;
    Panel22: TPanel;
    Label16: TLabel;
    DBEdit14: TDBEdit;
    Panel23: TPanel;
    Label17: TLabel;
    DBComboBox4: TDBComboBox;
    Label9: TLabel;
    DBMemo1: TDBMemo;
    v: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    actSave: TAction;
    actClean: TAction;
    sPort: TZSequence;
    uPort: TZUpdateSQL;
    qPort: TZQuery;
    qPortrecno: TIntegerField;
    qPortoperac: TIntegerField;
    qPortemissao: TDateTimeField;
    qPorttipo: TIntegerField;
    qPorttipo_outros: TStringField;
    qPortcnpj: TStringField;
    qPortempresa: TStringField;
    qPortcpf: TStringField;
    qPortportador: TStringField;
    qPortobs: TMemoField;
    qPortcodigo: TIntegerField;
    dsPort: TDataSource;
    qPortstatus: TIntegerField;
    BitBtn4: TBitBtn;
    actNew: TAction;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure qPortAfterInsert(DataSet: TDataSet);
    procedure actNewExecute(Sender: TObject);
    procedure qPorttipoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qPorttipoSetText(Sender: TField; const Text: string);
    procedure actCancelExecute(Sender: TObject);
    procedure actSaveExecute(Sender: TObject);
    procedure DBComboBox2Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure qPortAfterPost(DataSet: TDataSet);
  private
    FCBEmp: TComboList;
    FCBPort: TComboList;
    procedure OnLoad; override;
    procedure RefreshState;

  public
    { Public declarations }
  end;

var
  RecebimentoPortador: TRecebimentoPortador;

implementation

uses
  uRecebimentoLote, uResources;

const
  OPERACAO_RETORNO : Integer = 2;
  
  STATUS_DIGITACAO : Integer = 1;
  STATUS_ENCERRADO : Integer = 2;

  TIPO_TRANSP : Integer = 1;
  TIPO_CORREIOS : Integer = 2;
  TIPO_LORENCINI : Integer = 3;
  TIPO_CLIENTE : Integer = 4;
  TIPO_OUTROS : Integer = 5;

{$R *.dfm}

procedure TRecebimentoPortador.actCancelExecute(Sender: TObject);
begin
  if qPort.State in [dsEdit, dsInsert] then
    qPort.Cancel;

  inherited;
end;

procedure TRecebimentoPortador.actNewExecute(Sender: TObject);
begin
  inherited;
  qPort.Append;
  RefreshState;
  DBComboBox1Change(DBComboBox1);
  DBComboBox1.SetFocus;
end;

procedure TRecebimentoPortador.actSaveExecute(Sender: TObject);
begin
  inherited;
  qPort.Post;

  qPort.Edit;
  qPortstatus.AsInteger := STATUS_ENCERRADO;
  qPort.Post;

  if RecebimentoLote.qLotes.IsEmpty then
    actCancelExecute(actCancel);

  actNewExecute(actNew);

  RefreshState;
end;

procedure TRecebimentoPortador.DBComboBox1Change(Sender: TObject);
var
  sCriteria: string;
begin
  inherited;
  Label12.Font.Style := [];

  if (qPort.State in [dsEdit, dsInsert]) then
  begin
    sCriteria := Format('tipo = %d', [DBComboBox1.ItemIndex + 1]);
    
    FCBEmp.Criteria.Text := sCriteria;
    FCBEmp.UpdateList;

    FCBPort.Criteria.Text := sCriteria;
    FCBPort.UpdateList;

    DBEdit11.Enabled := (DBComboBox1.Text = 'Outros');
    DBEdit12.Enabled := True;
    DBComboBox2.Enabled := True;

    qPort.FieldByName('empresa').AsString := EmptyStr;
    qPort.FieldByName('cnpj').AsString := EmptyStr;
    qPort.FieldByName('portador').AsString := EmptyStr;
    qPort.FieldByName('cpf').AsString := EmptyStr;

    if DBComboBox1.Text = 'Cliente' then
    begin
      qPort.FieldByName('empresa').AsString := RecebimentoLote.qLotesnome_chave.AsString;
      qPort.FieldByName('cnpj').AsString := RecebimentoLote.qLotescnpj.AsString;
      qPort.FieldByName('cpf').AsString := RecebimentoLote.qLotescpf.AsString;

      DBEdit12.Enabled := False;
      DBComboBox2.Enabled := False;
    end;

    if DBComboBox1.Text = 'Lorencini' then
    begin
      qPort.FieldByName('empresa').AsString := 'LORENCINI BRASIL';
      qPort.FieldByName('cnpj').AsString := '04824941000109';

      DBEdit12.Enabled := False;
      DBComboBox2.Enabled := False;
    end;
  end;

  if DBEdit11.Enabled then
    Label12.Font.Style := [fsBold];
end;

procedure TRecebimentoPortador.DBComboBox2Exit(Sender: TObject);
var
  campo: string;
  lc: TComboList;
  dbCB: TDBComboBox;
begin
  inherited;

  if (qPort.State in [dsInsert, dsEdit]) then
  begin
    campo := 'cnpj';
    lc := FCBEmp;
    dbCB := TDBComboBox(Sender);

    if TWinControl(Sender).Tag = 1 then
    begin
      campo := 'cpf';
      lc := FCBPort;
    end;

    if (dbCB.Text = EmptyStr) or (lc.Count = 0) then
      Exit;

    if (qPort.FieldByName(campo).AsString = EmptyStr) and
      (lc.IndexOf(dbCB.Text) <> -1) then
      qPort.FieldByName(campo).AsString := lc.Items[lc.IndexOf(dbCB.Text)].Value;
  end;
end;

procedure TRecebimentoPortador.DBEdit12Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if (DBEdit12.Text = EmptyStr) or not (qPort.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('empresa');

    if U.Data.CheckFK('vport_emp', 'cnpj', QuotedStr(DBEdit12.Text), fLkp) then
      qPort.FieldByName('empresa').AsString := fLkp[0];
  finally
    fLkp.Free;
  end;
end;

procedure TRecebimentoPortador.DBEdit14Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if (DBEdit14.Text = EmptyStr) or not (qPort.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('portador');

    if U.Data.CheckFK('vport_port', 'cpf', QuotedStr(DBEdit14.Text), fLkp) then
      qPort.FieldByName('portador').AsString := fLkp[0];
  finally
    fLkp.Free;
  end;
end;

procedure TRecebimentoPortador.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer;
  Column: TColumn; State: TGridDrawState);
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

procedure TRecebimentoPortador.FormCreate(Sender: TObject);
begin
  inherited;
  FCBEmp := TComboList.Create(DBComboBox2, 'vport_emp', 'cnpj', 'empresa', False);
  FCBPort := TComboList.Create(DBComboBox4, 'vport_port', 'cpf', 'portador', False);
end;

procedure TRecebimentoPortador.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FCBEmp);
  FreeAndNil(FCBPort);
  inherited;
end;

procedure TRecebimentoPortador.OnLoad;
begin
  inherited;
  qPort.Open;
end;

procedure TRecebimentoPortador.qPortAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qPortoperac.AsInteger := OPERACAO_RETORNO;
  qPortstatus.AsInteger := STATUS_DIGITACAO;
  qPortcodigo.AsInteger := RecebimentoLote.qLotescodigo.AsInteger;
  qPorttipo.AsInteger := TIPO_CORREIOS;
end;

procedure TRecebimentoPortador.qPortAfterPost(DataSet: TDataSet);
begin
  inherited;
  if qPort.IsEmpty then
  begin
    G.RefreshDataSet(RecebimentoLote.IBrwSrc);
    G.RefreshDataSet(RecebimentoLote.qLotes);
  end;
end;

procedure TRecebimentoPortador.qPorttipoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Transportadora';
    2: Text := 'Correios';
    3: Text := 'Lorencini';
    4: Text := 'Cliente';
    5: Text := 'Outros';
  end;
end;

procedure TRecebimentoPortador.qPorttipoSetText(Sender: TField; const Text: string);
begin
  inherited;
  if not (qPort.State in [dsEdit, dsInsert]) then
    Exit;

  if Text = 'Transportadora' then
    Sender.AsInteger := TIPO_TRANSP;

  if Text = 'Correios' then
    Sender.AsInteger := TIPO_CORREIOS;

  if Text = 'Lorencini' then
    Sender.AsInteger := TIPO_LORENCINI;

  if Text = 'Cliente' then
    Sender.AsInteger := TIPO_CLIENTE;

  if Text = 'Outros' then
    Sender.AsInteger := TIPO_OUTROS;
end;

procedure TRecebimentoPortador.RefreshState;
var
  I: Integer;
begin
  for I := 0 to alDef.ActionCount - 1 do
    TAction(alDef.Actions[i]).Enabled := False;

  actNew.Enabled := not RecebimentoLote.qLotes.IsEmpty and (qPort.State = dsBrowse);
  actSave.Enabled := qPort.State in [dsEdit, dsInsert];
  actClean.Enabled := actSave.Enabled;
end;

end.
