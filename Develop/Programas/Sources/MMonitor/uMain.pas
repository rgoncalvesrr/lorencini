unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIForm, ActnList, ExtCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZDataset, DBCGrids, StdCtrls, DBCtrls, IniFiles, Remessa;

type
  TMain = class(TIForm)
    Timer1: TTimer;
    Panel1: TPanel;
    zMMonitor: TZReadOnlyQuery;
    DataSource1: TDataSource;
    RadioGroup1: TRadioGroup;
    DrawGrid1: TDrawGrid;
    Label1: TLabel;
    Image1: TImage;
    Label2: TLabel;
    Timer2: TTimer;
    Button1: TButton;
    procedure Timer1Timer(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DrawGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure Timer2Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    FRemessas: TRemessas;
    FAtualizando: Boolean;
    bmp: TBitmap;
    bmp1: TBitmap;
    FConfig: TIniFile;
    FIDX: integer;
    procedure AtualizaRemessas;
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

uses uDM, uResources, uFPainel, DateUtils, uIUtils;

{$R *.dfm}

procedure TMain.AtualizaRemessas;
var
  i: integer;
  oRemessa: TRemessa;
begin
  FAtualizando := True;
  oRemessa := nil;

  with zMMonitor do
  try
    //DrawGrid1.ColCount := 3;

    Active := False;

    SQL.Text :=
    'select r.situacao, r.recno, r.atualizacao, r.emissao, r.frascos, '+
           'r.seringas, r.codigo, r.volumes, c.empresa, c.nome_chave '+
      'from labproc r '+
           'join tbclientes c '+
             'on c.codigo = r.codigo '+
     'where r.situacao < 5 ';

    case RadioGroup1.ItemIndex of
      0: SQL.Text := SQL.Text + 'order by r.situacao, r.atualizacao desc ';
      1: SQL.Text := SQL.Text + 'order by coalesce(r.atualizacao, localtimestamp - interval ''1 day'') desc ';
    end;

    Open;

    while not Eof do
    begin
      oRemessa := nil;
      oRemessa := FRemessas.FindById(Fields[1].AsInteger);
      if not Assigned(oRemessa) then
      begin
        oRemessa := TRemessa.Create;
        oRemessa.Id := Fields[1].AsInteger;
        FRemessas.Add(oRemessa);
      end;

      oRemessa.Manter := True;

      if (oRemessa.Situacao <> TRemessaSituacao(Fields[0].AsInteger)) then
      begin
        oRemessa.Situacao := TRemessaSituacao(Fields[0].AsInteger);
        oRemessa.Atualizado := Fields[2].AsDateTime;
        oRemessa.Emissao := Fields[3].AsDateTime;
        oRemessa.Frascos := Fields[4].AsInteger;
        oRemessa.Seringas := Fields[5].AsInteger;
        oRemessa.Codigo := Fields[6].AsInteger;
        oRemessa.Volumes := Fields[7].AsInteger;
        oRemessa.Empresa := Fields[8].AsString;
        oRemessa.NomeChave := Fields[9].AsString;
      end;

      Next;

      if RecNo mod 50 = 0 then
        Application.ProcessMessages;
    end;

    for I := FRemessas.Count - 1 downto 0 do
      if not FRemessas[i].Manter then
      begin
        FRemessas[i].Free;
        FRemessas[i] := nil;
      end;

    FRemessas.Pack;

      // Marca todos os itens para deleção
    for oRemessa in FRemessas do
      oRemessa.Manter := False;

    case RadioGroup1.ItemIndex of
      0: FRemessas.SortBySituacao;
      1: FRemessas.SortByAtualizacao;
    end;

    DrawGrid1.RowCount :=
      FRemessas.Count div DrawGrid1.ColCount +
      FRemessas.Count mod DrawGrid1.ColCount;
  finally
    Close;
    FAtualizando := False;
  end;
  
  DrawGrid1.Invalidate;
  Application.ProcessMessages;
end;

procedure TMain.Button1Click(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TMain.DrawGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  oRemessa: TRemessa;
  i, t, l, w, h: integer;
  bColor: TColor;
  srow: string;
  RectA: TRect;
begin
  if FAtualizando then
    Exit;

  oRemessa := nil;
  Canvas.Lock;
  if ARow mod 2 = 0 then
    Canvas.Brush.Color := clWhite
  else
    Canvas.Brush.Color := $00D9EAD9;
    
  Canvas.FillRect(Rect);

  with DrawGrid1 do
  try
    RectA.Left := Rect.Left + 1;
    RectA.Top := Rect.Top + 1;
    RectA.Right := Rect.Right - 1;
    RectA.Bottom := Rect.Bottom - 1;

    i := ACol + ColCount * ARow;

    if i < FRemessas.Count then
      oRemessa := FRemessas[i];

    bColor := clWindow;
    if Assigned(oRemessa) then
    begin
      case oRemessa.Situacao of
        rsAguardando:
          begin
            bColor := clRed;
            Resources.medium_h.GetBitmap(213, bmp);
          end;
        rsRemessa:
          begin
            bColor := clYellow;
            Resources.medium_h.GetBitmap(210, bmp);
          end;
        rsVolumes:
          begin
            bColor := clBlue;
            Resources.medium_h.GetBitmap(205, bmp);
          end;
        rdDespacho:
          begin
            bColor := clGray;
            Resources.medium_h.GetBitmap(214, bmp);
          end;
        rsExpedicao:
          begin
            bColor := clLime;
            Resources.medium_h.GetBitmap(208, bmp);
          end;
      end;
    end;

    //Canvas.Brush.Color := bColor;
    //Canvas.FillRect(Rect);

    Canvas.Pen.Color := bColor;
    Canvas.Rectangle(RectA);

    if Assigned(oRemessa) then
    begin
      {Imprimindo primeira linha dentro da célula}
      // -------- Imagem
      bmp.Transparent := True;
      l := RectA.Left + 2;
      t := RectA.Top + 2;
      w := bmp.Width;
      h := bmp.Height;
      Canvas.Draw(l, t, bmp);

      RectA.Left := l + w + 2;
      l := RectA.Left;

      // -------- Linha abaixo do título
      Canvas.MoveTo(l, t + h);
      Canvas.LineTo(RectA.Right, t + h);

      Canvas.Font.Size := 12;

      t := t + (h - Canvas.TextHeight('X')) div 2;

      // -------- Título
      Canvas.Font.Style := Canvas.Font.Style + [fsBold];
      Canvas.TextOut(l, t, oRemessa.SituacaoToText);
      Canvas.Font.Style := Canvas.Font.Style - [fsBold];

      // -------- Segunda Linha
      t := RectA.Top + bmp.Height + 7;
      //l := RectA.Left + 2;

      srow := 'Solicitação:';
      Canvas.TextOut(l, t, srow);
      l := l + Canvas.TextWidth(srow) + 2;

      Canvas.Font.Style := Canvas.Font.Style + [fsBold];
      srow := Format('%d', [oRemessa.Id]);
      Canvas.TextOut(l, t, srow);
      l := l + Canvas.TextWidth(srow) + 4;
      Canvas.Font.Style := Canvas.Font.Style - [fsBold];

      srow := 'Atualizado:';
      Canvas.TextOut(l, t, srow);
      l := l + Canvas.TextWidth(srow) + 2;

      Canvas.Font.Style := Canvas.Font.Style + [fsBold];
      srow := FormatDateTime('dd/mm/yyyy hh:nn:ss', oRemessa.Atualizado);
      Canvas.TextOut(l, t, srow);
      l := l + Canvas.TextWidth(srow) + 4;
      t := t + Canvas.TextHeight(srow) + 5;
      Canvas.Font.Style := Canvas.Font.Style - [fsBold];

      // ------ Nova Linha
      l := RectA.Left;
      srow := 'Frascos:';
      Canvas.TextOut(l, t, srow);
      l := l + Canvas.TextWidth(srow) + 2;

      Canvas.Font.Style := Canvas.Font.Style + [fsBold];
      srow := Format('%d', [oRemessa.Frascos]);
      Canvas.TextOut(l, t, srow);
      l := l + Canvas.TextWidth(srow) + 4;
      Canvas.Font.Style := Canvas.Font.Style - [fsBold];

      srow := 'Seringas:';
      Canvas.TextOut(l, t, srow);
      l := l + Canvas.TextWidth(srow) + 2;

      Canvas.Font.Style := Canvas.Font.Style + [fsBold];
      srow := Format('%d', [oRemessa.Seringas]);
      Canvas.TextOut(l, t, srow);
      l := l + Canvas.TextWidth(srow) + 4;
      Canvas.Font.Style := Canvas.Font.Style - [fsBold];

      srow := 'Volumes:';
      Canvas.TextOut(l, t, srow);
      l := l + Canvas.TextWidth(srow) + 2;

      Canvas.Font.Style := Canvas.Font.Style + [fsBold];
      srow := Format('%d', [oRemessa.Volumes]);
      Canvas.TextOut(l, t, srow);
      l := l + Canvas.TextWidth(srow) + 4;
      t := t + Canvas.TextHeight(srow) + 5;
      Canvas.Font.Style := Canvas.Font.Style - [fsBold];

      // ------ Nova Linha
      l := RectA.Left;
      srow := 'Destinatário:';
      Canvas.TextOut(l, t, srow);
      l := l + Canvas.TextWidth(srow) + 2;

      Canvas.Font.Style := Canvas.Font.Style + [fsBold];
      srow := Format('%d - %s', [oRemessa.Codigo, oRemessa.NomeChave]);
      Canvas.TextOut(l, t, srow);
      l := l + Canvas.TextWidth(srow) + 4;
      Canvas.Font.Style := Canvas.Font.Style - [fsBold];

    end;
  finally
    Canvas.Unlock;
  end;
  inherited;
end;

procedure TMain.FormCreate(Sender: TObject);
begin
  inherited;
  FRemessas := TRemessas.Create;
  bmp := TBitmap.Create;
  bmp1 := TBitmap.Create;
  FConfig := TIniFile.Create(U.Path.System + 'Config.txt');
  RadioGroup1.Enabled := FConfig.ReadBool('Monitor', 'AllowChangeOrder', False);
  RadioGroup1.Visible := RadioGroup1.Enabled;
  Timer1.Interval := FConfig.ReadInteger('Monitor', 'Cycle', 60) * 1000;

  if FConfig.ReadBool('Monitor', 'FullScreen', False) then
  begin
    BorderStyle := bsNone;
    BorderIcons := [];
  end else
    Button1.Visible := False;

  AlphaBlend := FConfig.ReadBool('Monitor', 'AlphaBlend', False);

  FIDX := 214;
end;

procedure TMain.FormDestroy(Sender: TObject);
var
  i: integer;
begin
  Timer1.Enabled := False;
  Timer2.Enabled := False;
  
    // Removendo itens baixados
  for i := FRemessas.Count - 1 downto 0 do
    FRemessas[i].Free;

  FreeAndNil(FRemessas);
  FreeAndNil(FConfig);
  FreeAndNil(bmp);
  FreeAndNil(bmp1);
  inherited;
end;

procedure TMain.FormResize(Sender: TObject);
var
  PanelCols, PanelRows: Integer;
begin
  inherited;
  PanelCols := FConfig.ReadInteger('Monitor', 'PanelCols', 3);
  PanelRows := FConfig.ReadInteger('Monitor', 'PanelRows', 5);


  with DrawGrid1 do
  begin
    ColCount := PanelCols;
    DefaultColWidth := ClientWidth div PanelCols;
    DefaultRowHeight := ClientHeight div PanelRows;
  end;
end;

procedure TMain.FormShow(Sender: TObject);
var
  iMon: Integer;
begin
  inherited;

  iMon := FConfig.ReadInteger('Monitor', 'DefaultScreen', 1) - 1;
  if Screen.MonitorCount > iMon then
  begin
    Top := Screen.Monitors[iMon].Top;
    Left := Screen.Monitors[iMon].Left;
    Width := Screen.Monitors[iMon].WorkareaRect.Right - Screen.Monitors[iMon].WorkareaRect.Left;
    Height := Screen.Monitors[iMon].WorkareaRect.Bottom - Screen.Monitors[iMon].WorkareaRect.Top;
  end;

  WindowState := wsMaximized;
  Screen.ResetFonts;

  Timer1Timer(Timer1);
  Timer1.Enabled := True;
  Timer2.Enabled := True;
end;

procedure TMain.RadioGroup1Click(Sender: TObject);
begin
  inherited;

  Timer1.Enabled := False;
  try
    AtualizaRemessas;
  finally
    Timer1.Enabled := True;
  end;
end;

procedure TMain.Timer1Timer(Sender: TObject);
begin
  inherited;
  Label2.Caption := 'Último Ciclo: ' + FormatDateTime('dd/mm/yyyy hh:nn:ss', Now);

  Timer1.Enabled := False;
  try
    AtualizaRemessas;
  finally
    Timer1.Enabled := True;
  end;
end;



procedure TMain.Timer2Timer(Sender: TObject);
begin
  Timer2.Enabled := False;

  try
    bmp1.Canvas.Brush.Color := Panel1.Color;
    bmp1.Canvas.FillRect(bmp1.Canvas.ClipRect);
    Image1.Picture := nil;
    Resources.large_h.GetBitmap(FIDX, bmp1);
    Image1.Picture.Bitmap.Assign(bmp1);
    Image1.Refresh;
    Application.ProcessMessages;
  finally
    Timer2.Enabled := True;

    //Inc(FIDX);

    //if not (FIDX in [21..28]) then
      //FIDX := 21;
    if FIDX = 204 then
      FIDX := 214
    else
      FIDX := 204;
  end;
end;

end.
