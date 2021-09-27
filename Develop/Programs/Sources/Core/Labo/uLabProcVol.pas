unit uLabProcVol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIForm, ActnList, ComCtrls, DB, ZAbstractRODataset, ZDataset,
  ExtCtrls, Grids, DBGrids, StdCtrls, uIUtils, Buttons, DBCtrls, ACBrBarCode,
  JvExExtCtrls, JvImage, Menus;

type
  TLabProcVol = class(TIForm)
    zRem: TZReadOnlyQuery;
    DBGrid1: TDBGrid;
    dsRem: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    zRemcodigo: TIntegerField;
    zRemrecno: TIntegerField;
    zRemfrascos: TIntegerField;
    zRemseringas: TIntegerField;
    zRemvolumes: TIntegerField;
    zRemcoleta: TIntegerField;
    Splitter1: TSplitter;
    Panel1: TPanel;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    Splitter2: TSplitter;
    PageControl3: TPageControl;
    TabSheet3: TTabSheet;
    Panel2: TPanel;
    Panel3: TPanel;
    Label18: TLabel;
    ComboBox1: TComboBox;
    zRemnome_chave: TStringField;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    zVolumes: TZReadOnlyQuery;
    dsVolume: TDataSource;
    zVolumesvolume: TIntegerField;
    zVolumescriacao: TDateTimeField;
    zVolumesrastreio: TStringField;
    zVolumesusername: TStringField;
    zVolumesname: TStringField;
    zVolEtiq: TZReadOnlyQuery;
    zVolEtiqetiq_proc: TStringField;
    dsVolEtiq: TDataSource;
    zVolumesrecno: TIntegerField;
    zVolumesvol_etiq: TStringField;
    Panel5: TPanel;
    zVolumesfrascos: TIntegerField;
    zVolumesseringas: TIntegerField;
    actVolPrn: TAction;
    actVolNew: TAction;
    actVolBarCode: TAction;
    actVolAddNew: TAction;
    actVolDel: TAction;
    Panel6: TPanel;
    actVolEtiqDel: TAction;
    zVolEtiqrecno: TIntegerField;
    zVolEtiqtipo: TIntegerField;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    zVolEtiqvalidade: TDateField;
    GroupBox4: TGroupBox;
    ACBrBarCode2: TACBrBarCode;
    DBText2: TDBText;
    Label20: TLabel;
    Shape1: TShape;
    DBText3: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    zVolumesstatus: TIntegerField;
    BitBtn7: TBitBtn;
    actVolClose: TAction;
    Panel4: TPanel;
    JvImage1: TJvImage;
    lbLeg1: TLabel;
    JvImage2: TJvImage;
    lbLeg2: TLabel;
    lbLeg3: TLabel;
    JvImage3: TJvImage;
    Panel7: TPanel;
    pmVolume: TPopupMenu;
    Criar1: TMenuItem;
    CriareAdicionar1: TMenuItem;
    Adicionar1: TMenuItem;
    N1: TMenuItem;
    FecharVolume1: TMenuItem;
    EmitirVolume1: TMenuItem;
    N2: TMenuItem;
    Eliminar1: TMenuItem;
    zVolEtiqamostra: TIntegerField;
    zVolEtiqcomodato: TIntegerField;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure zRemAddCalcFields(DataSet: TDataSet);
    procedure zRemAddtipoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure zRemAfterScroll(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure zVolumesAfterScroll(DataSet: TDataSet);
    procedure zVolumesCalcFields(DataSet: TDataSet);
    procedure actVolPrnExecute(Sender: TObject);
    procedure actVolBarCodeExecute(Sender: TObject);
    procedure actVolNewExecute(Sender: TObject);
    procedure actVolAddNewExecute(Sender: TObject);
    procedure actVolDelExecute(Sender: TObject);
    procedure actVolEtiqDelExecute(Sender: TObject);
    procedure zVolEtiqAfterScroll(DataSet: TDataSet);
    procedure actVolCloseExecute(Sender: TObject);
  private
    { Private declarations }
    FCBClientes: TComboList;
    procedure OnLoad; override;
    procedure ResetQuery;
    procedure RefreshDB;
    procedure FormataEtiqueta(Sender: TObject; var Row: string; DataSet: TDataSet);
    procedure RefreshCtrl;
  public
    { Public declarations }
    procedure ImprimirVolume;
  end;

var
  LabProcVol: TLabProcVol;

implementation

uses uResources, uDM, mcUtils, uLabProcVolAddBarcode, uPrnTag;

{$R *.dfm}

procedure TLabProcVol.actVolAddNewExecute(Sender: TObject);
begin
  inherited;
  actVolNewExecute(actVolNew);
  actVolBarCodeExecute(actVolBarCode);
end;

procedure TLabProcVol.actVolBarCodeExecute(Sender: TObject);
begin
  inherited;
  LabProcVolAddBarcode := TLabProcVolAddBarcode.Create(nil);
  try
    G.RefreshDataSet(zVolEtiq);
    LabProcVolAddBarcode.ShowModal;
  finally
    FreeAndNil(LabProcVolAddBarcode);
    RefreshCtrl;
  end;
end;

procedure TLabProcVol.actVolCloseExecute(Sender: TObject);
begin
  inherited;
  try
    if U.Data.ExecSQL('update labvol set status = 1 where labproc_recno = %d and volume = %d',
        [zRemrecno.AsInteger, zVolumesvolume.AsInteger]) > 0 then
      G.RefreshDataSet(zVolumes, True);
      actVolPrnExecute(actVolPrn);
  except
    on e:Exception do
      U.Out.ShowErro(e.Message);
  end;
end;

procedure TLabProcVol.actVolDelExecute(Sender: TObject);
begin
  inherited;
  if not U.Out.ConfWarn('Deseja realmente eliminar o volume %d da remessa %d.',
    [zVolumesvolume.AsInteger, zRemrecno.AsInteger]) then
    Exit;

  U.Data.ExecSQL(Format('delete from labvol where recno = %d;', [zVolumesrecno.AsInteger]));
  G.RefreshDataSet(zVolumes);
  G.RefreshDataSet(zRem, True);
  RefreshCtrl;
end;

procedure TLabProcVol.actVolEtiqDelExecute(Sender: TObject);
var
  sCode: string;
begin
  inherited;
  if not U.Out.ConfWarn('Deseja realmente eliminar a etiqueta %s do volume %d da remessa %d.',
    [zVolEtiqetiq_proc.DisplayText, zVolumesvolume.AsInteger, zRemrecno.AsInteger]) then
    Exit;

  sCode := zVolEtiqetiq_proc.AsString;
  U.Data.ExecSQL(Format('update labprocxequip set volume = null where recno = %d;', [zVolEtiqrecno.AsInteger]));
  G.RefreshDataSet(zVolEtiq);
  G.RefreshDataSet(zVolumes, True);
  zVolEtiq.Locate('etiq_proc', sCode, [loPartialKey]);
  RefreshCtrl;
end;

procedure TLabProcVol.actVolNewExecute(Sender: TObject);
var
  vol: integer;
begin
  inherited;
  vol := zVolumesvolume.AsInteger;

  with U.Data.Query do
  try
    SQL.Text :=
    'select coalesce(max(volume),0) + 1 '+
      'from labvol '+
     'where labproc_recno = :remessa';

    Params[0].AsInteger := zRemrecno.AsInteger;

    Open;

    vol := Fields[0].AsInteger;
    
    U.Data.ExecSQL(Format(
        'insert into labvol (labproc_recno, volume) '+
                    'values (%d, %d);',
        [zRemrecno.AsInteger, vol]));
  finally
    Close;

    G.RefreshDataSet(zRem, True);
    G.RefreshDataSet(zVolumes);
    zVolumes.Locate('volume', vol, []);

    RefreshCtrl;
  end;
end;

procedure TLabProcVol.actVolPrnExecute(Sender: TObject);
begin
  inherited;
  ImprimirVolume;
  RefreshCtrl;
end;

procedure TLabProcVol.ComboBox1Change(Sender: TObject);
begin
  inherited;
  
  RefreshDB;
end;

procedure TLabProcVol.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

    if (Column.Index = 0) and (Sender = DBGrid3) then
      try
      Bmp:= TBitmap.Create;
      Bmp.Transparent:= True;

      with Resources do
        case zVolumesstatus.AsInteger of
          0: small_n.GetBitmap(213, Bmp); // Volume Aberto
          1: small_n.GetBitmap(205, Bmp); // Volume Fechado
          2: small_n.GetBitmap(208, Bmp); // Volume Rastreado
        end;

      if Column.Width <> Bmp.Width + 2 then
        Column.Width:= Bmp.Width + 2;

      {Desenha o status da remessa}
      Canvas.Draw(Rect.Left + 1, Rect.Top + 1, Bmp);
      Exit;
    finally
      Bmp.Free;
    end;

    DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TLabProcVol.FormataEtiqueta(Sender: TObject; var Row: string; DataSet: TDataSet);
begin
  Row := mcStuff('000000000000', Row, zVolumesvol_etiq.AsString);
  Row := mcStuff('000.000.000.000', Row, zVolumesvol_etiq.DisplayText);
  Row := mcStuff('@1', Row, zRemcodigo.AsString);
  Row := mcStuff('@2', Row, Format('Remessa %d. Volume %d',
        [zRemrecno.AsInteger, zVolumesvolume.AsInteger]));
  Row := mcStuff('@3', Row, Format('Frascos %d. Seringas: %d',
        [zVolumesfrascos.AsInteger, zVolumesseringas.AsInteger]));
end;

procedure TLabProcVol.FormCreate(Sender: TObject);
begin
  inherited;
  LabProcVol := Self;
  FCBClientes := TComboList.Create(ComboBox1, 'tbclientes', 'codigo', 'nome_chave');

  ComboBox1.Items.Insert(0, '(Todos)');
  ComboBox1.ItemIndex := 0;
end;

procedure TLabProcVol.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FCBClientes);
  inherited;
end;

procedure TLabProcVol.FormResize(Sender: TObject);
begin
  inherited;
  Panel2.Width := Round(ClientWidth * 0.4);
  Panel2.Realign;
  PageControl1.Realign;
  DBGrid1.Realign;
end;

procedure TLabProcVol.FormShow(Sender: TObject);
begin
  inherited;
  WindowState := wsMaximized;
  FormResize(Self);
end;

procedure TLabProcVol.ImprimirVolume;
var
  sFile, printer: String;
  oPrn: TPrnTag;
begin
  if not zVolumes.Active then
  begin
    U.Out.ShowErro('Volume não pode ser impresso porque a tabela de volumes está inativa.');
    Exit;
  end;

  sFile := U.Path.ReportTemplates + 'Volume_6x3cm.prn';

  if not FileExists(sFile) then
  begin
    U.Out.ShowErro('Etiqueta de volume não pode ser impressa porque o arquivo de modelo %s não foi localizado.',
      [sFile]);
    Exit;
  end;

  with U.Data.Query do
  try
    SQL.Text := 'select sys_paramv(''prn_volumes'')';
    Open;
    printer := Fields[0].AsString;
  finally
    close;
  end;

  oPrn := TPrnTag.Create(sFile, printer, FormataEtiqueta);
  try
    if oPrn.Print(zVolumes) then
    begin
      U.Data.ExecSQL('update labvol set imp_dh = localtimestamp where recno = %d',
        [zVolumesrecno.AsInteger]);
        
      G.RefreshDataSet(zRem);
    end;
  finally
    FreeAndNil(oPrn);
  end;
end;

procedure TLabProcVol.OnLoad;
begin
  inherited;
  zRem.Open;
end;

procedure TLabProcVol.RefreshCtrl;
var
  I: Integer;
begin
  with alDef do
    for I := 0 to ActionCount - 1 do
      if TAction(Actions[i]).Tag = 0 then
        TAction(Actions[i]).Enabled := False;

  actVolNew.Enabled := not zRem.IsEmpty;
  actVolBarCode.Enabled := not zVolumes.IsEmpty and (zVolumesstatus.AsInteger = 0);
  actVolClose.Enabled := not zVolumes.IsEmpty and (zVolumesstatus.AsInteger = 0) and
    ((zVolumesfrascos.AsInteger > 0) or (zVolumesseringas.AsInteger > 0));
  actVolAddNew.Enabled := not zRem.IsEmpty;
  actVolPrn.Enabled := not zVolumes.IsEmpty and (zVolumesstatus.AsInteger = 1);
  actVolDel.Enabled := not zVolumes.IsEmpty;
  actVolEtiqDel.Enabled := not zVolEtiq.IsEmpty;
end;

procedure TLabProcVol.RefreshDB;
var
  swhere: string;
begin
  swhere := '';
  
  ResetQuery;

  with zRem do
  begin
    {Aplica filtro por cliente}
    if Assigned(FCBClientes.Selected) and  (FCBClientes.Selected.Value > 0) then
      swhere := swhere + ' and p.codigo = :codigo';

    if swhere <> '' then
      SQL.Add(swhere);

    if Assigned(Params.FindParam('codigo')) then
      Params.ParamByName('codigo').AsInteger := FCBClientes.Selected.Value;
  end;

  G.RefreshDataSet(zRem);
end;

procedure TLabProcVol.ResetQuery;
begin
  zRem.SQL.Text :=
  'select p.codigo, c.nome_chave, p.recno, p.frascos, p.seringas, p.volumes, p.coleta '+
    'from labproc p '+
         'join tbclientes c '+
           'on c.codigo = p.codigo '+
   'where p.situacao = 2';
end;

procedure TLabProcVol.zRemAddCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('etiq_proc').AsString := mcRight(StringOfChar('0', 12) +
    DataSet.FieldByName('comodato').AsString, 12);
end;

procedure TLabProcVol.zRemAddtipoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Frasco';
    2: Text := 'Seringa';
  end;
end;

procedure TLabProcVol.zRemAfterScroll(DataSet: TDataSet);
begin
  inherited;
  zVolumes.Params[0].AsInteger := zRemrecno.AsInteger;
  G.RefreshDataSet(zVolumes);

  RefreshCtrl;
end;

procedure TLabProcVol.zVolEtiqAfterScroll(DataSet: TDataSet);
begin
  inherited;
  RefreshCtrl;
end;

procedure TLabProcVol.zVolumesAfterScroll(DataSet: TDataSet);
var
  l1, l2, lbar: string;
begin
  inherited;
  l1 := 'Remessa: %s. Volume %s';
  l2 := 'Frascos: %s. Seringas %s';
  lbar := '000000000000';
  if zVolumes.IsEmpty then
  begin
    l1 := Format(l1, ['-', '-']);
    l2 := Format(l2, ['-', '-']);
  end
  else
  begin
    lbar := Format('000000000000;0;', [zVolumesvol_etiq.AsString]);
    l1 := Format(l1, [zRemrecno.AsString, zVolumesvolume.AsString]);
    l2 := Format(l2, [zVolumesfrascos.AsString, zVolumesseringas.AsString]);
  end;

  ACBrBarCode2.Text := lbar;
  Label2.Caption := l1;
  Label3.Caption := l2;
    
  zVolEtiq.Params[0].AsInteger := zRemrecno.AsInteger;
  zVolEtiq.Params[1].AsInteger := zVolumesvolume.AsInteger;
  G.RefreshDataSet(zVolEtiq);

  RefreshCtrl;
end;

procedure TLabProcVol.zVolumesCalcFields(DataSet: TDataSet);
begin
  inherited;
  zVolumesvol_etiq.AsString := mcRight(StringOfChar('0', 12) +
    zVolumesrecno.AsString, 12); 
end;

initialization
  RegisterClass(TLabProcVol);

finalization
  UnRegisterClass(TLabProcVol);

end.
