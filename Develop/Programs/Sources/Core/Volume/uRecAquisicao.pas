unit uRecAquisicao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIForm, ActnList, DB, Grids, DBGrids, ComCtrls, ZAbstractRODataset, ZAbstractDataset, ZDataset, 
  uIUtils, ZSequence, ZSqlUpdate, StdCtrls, ExtCtrls, JvExExtCtrls, JvImage;

type
  TRecAquisicao = class(TIForm)
    qEtiquetas: TZQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    dsEtiquetas: TDataSource;
    qEtiquetasrecno: TIntegerField;
    qEtiquetasexpirado: TBooleanField;
    qEtiquetasqtd: TFloatField;
    qEtiquetasamostra: TIntegerField;
    qEtiquetascomodato: TIntegerField;
    qEtiquetasentrada: TDateTimeField;
    qEtiquetasnome_chave: TStringField;
    qEtiquetascnpj: TStringField;
    qEtiquetascpf: TStringField;
    qEtiquetasestado: TStringField;
    qEtiquetascnpjcpf: TStringField;
    uEtiquetas: TZUpdateSQL;
    sEtiquetas: TZSequence;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    Edit1: TEdit;
    qEtiquetasstatus: TIntegerField;
    pnMsg: TPanel;
    qEtiquetastipo: TIntegerField;
    TabSheet3: TTabSheet;
    DBGrid2: TDBGrid;
    qResumo: TZQuery;
    dsResumo: TDataSource;
    qResumocodigo: TIntegerField;
    qResumonome_chave: TStringField;
    qResumofrascos: TLargeintField;
    qResumoseringas: TLargeintField;
    qResumoconformes: TLargeintField;
    qResumonaoconformes: TLargeintField;
    qResumovazios: TLargeintField;
    qResumoquebrados: TLargeintField;
    qResumocnpj: TStringField;
    qResumocpf: TStringField;
    qResumocidade: TStringField;
    qResumoestado: TStringField;
    qResumocnpjcpf: TStringField;
    Panel4: TPanel;
    JvImage1: TJvImage;
    lbLeg1: TLabel;
    JvImage2: TJvImage;
    lbLeg2: TLabel;
    lbLeg3: TLabel;
    JvImage3: TJvImage;
    JvImage4: TJvImage;
    Label1: TLabel;
    qEtiquetasnome: TStringField;
    qEtiquetasemail: TStringField;
    procedure qEtiquetasCalcFields(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure qEtiquetastipoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure qResumoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure OnLoad; override;
    procedure Log(AMsg: string; AColor: TColor = clGreen; AMillis: Integer = 2000);
    procedure DefaultDbGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  public
    { Public declarations }
  end;

var
  RecAquisicao: TRecAquisicao;

implementation

uses uDM, uResources;

{$R *.dfm}

{ TRecAquisicao }

procedure TRecAquisicao.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Bmp: TBitmap;
begin
  with TDBGrid(Sender) do
  begin
    if Column.Index = 0 then
    try
      Bmp := TBitmap.Create;
      Bmp.Transparent:= True;

      with Resources do
        case qEtiquetasstatus.AsInteger of
          1: small_n.GetBitmap(208, Bmp); //Conforme
          2: small_n.GetBitmap(210, Bmp); //Não Conforme
          3: small_n.GetBitmap(214, Bmp); //Vazio
          4: small_n.GetBitmap(213, Bmp); //Quebrado
        else
          small_n.GetBitmap(213, Bmp); //Cancelado
        end;

      if Column.Width <> Bmp.Width + 2 then
        Column.Width:= Bmp.Width + 2;

      {Desenha o status da remessa}
      Canvas.Draw(Rect.Left + 1, Rect.Top + 1, Bmp);
      Exit;
    finally
      FreeAndNil(Bmp);
    end;
  end;

  DefaultDbGridDrawColumnCell(Sender, Rect, DataCol, Column, State);
end;

procedure TRecAquisicao.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  DefaultDbGridDrawColumnCell(Sender, Rect, DataCol, Column, State);
end;

procedure TRecAquisicao.DefaultDbGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer;
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

procedure TRecAquisicao.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    inherited;
    Edit1.Enabled := False;
    with U.Query do
    try
      try
        if Pos('c', Edit1.Text) > 0 then
        begin
          SQL.Text := 'select receber_volume_cmd(:comando)';
          ParamByName('comando').AsString := Edit1.Text;
          ExecSQL;
          Exit;
        end;
        
        SQL.Text := 'select receber_volume(:etiqueta)';
        ParamByName('etiqueta').AsInteger := StrToInt(Edit1.Text);
        ExecSQL;
      except
        on E:Exception do
          Log(G.Out.TranslateMSG(E.Message), clRed);
      end;
    finally
      Close;
      G.RefreshDataSet(qEtiquetas);
      G.RefreshDataSet(qResumo);
      qEtiquetas.First;
      Edit1.Clear;
      Edit1.Enabled := True;
      Edit1.SetFocus;
      Log('Pronto', clGreen, 0);
    end;
  end;
end;

procedure TRecAquisicao.Log(AMsg: string; AColor: TColor; AMillis: Integer);
begin
  pnMsg.Font.Size := 14;
  pnMsg.Font.Color := AColor;
  pnMsg.Caption := '    ' + AMsg;
  Application.ProcessMessages;
  Sleep(AMillis);
end;

procedure TRecAquisicao.OnLoad;
begin
  inherited;
  G.RefreshDataSet(qEtiquetas);
  G.RefreshDataSet(qResumo);
  WindowState := wsMaximized;
  Log('Pronto', clGreen, 0);
end;

procedure TRecAquisicao.qEtiquetasCalcFields(DataSet: TDataSet);
begin
  inherited;
  if not qEtiquetascnpj.IsNull then
    qEtiquetascnpjcpf.AsString := qEtiquetascnpj.DisplayText
  else
    qEtiquetascnpjcpf.AsString := qEtiquetascpf.DisplayText;
end;

procedure TRecAquisicao.qEtiquetastipoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Frasco';
    2: Text := 'Seringa';
  end;
end;

procedure TRecAquisicao.qResumoCalcFields(DataSet: TDataSet);
begin
  inherited;
  if not qResumocnpj.IsNull then
    qResumocnpjcpf.AsString := qResumocnpj.DisplayText
  else
    qResumocnpjcpf.AsString := qResumocpf.DisplayText;
end;

initialization
  RegisterClass(TRecAquisicao);

finalization
  UnRegisterClass(TRecAquisicao);

end.
