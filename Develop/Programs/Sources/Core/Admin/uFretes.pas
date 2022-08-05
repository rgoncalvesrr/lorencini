unit uFretes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, uIUtils, JvExMask, JvToolEdit, JvBaseEdits,
  DBCtrls, uFrameData, uReport;

type
  TFretes = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrcservico: TStringField;
    IBrwSrcserviconome: TStringField;
    IBrwSrcformato: TIntegerField;
    IBrwSrcemissao: TDateTimeField;
    IBrwSrcvolumes: TIntegerField;
    IBrwSrcpeso: TFloatField;
    IBrwSrcdiametro: TFloatField;
    IBrwSrcaltura: TFloatField;
    IBrwSrclargura: TFloatField;
    IBrwSrccomprimento: TFloatField;
    IBrwSrcfator: TFloatField;
    IBrwSrcvalor: TFloatField;
    IBrwSrcvalorc: TFloatField;
    IBrwSrcprazo: TIntegerField;
    IBrwSrcobs: TMemoField;
    IBrwSrcdescri: TStringField;
    IBrwSrccodigo: TIntegerField;
    IBrwSrcempresa: TStringField;
    IBrwSrcnome_chave: TStringField;
    IBrwSrccnpj: TStringField;
    IBrwSrccpf: TStringField;
    IBrwSrctelefone: TStringField;
    Label18: TLabel;
    ComboBox1: TComboBox;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel7: TPanel;
    Panel9: TPanel;
    Label7: TLabel;
    Panel10: TPanel;
    Label8: TLabel;
    Panel11: TPanel;
    Label9: TLabel;
    Panel12: TPanel;
    Label10: TLabel;
    Panel13: TPanel;
    Label11: TLabel;
    Panel14: TPanel;
    Label12: TLabel;
    Panel8: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Label15: TLabel;
    Panel18: TPanel;
    Label16: TLabel;
    Panel19: TPanel;
    Label17: TLabel;
    Panel3: TPanel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Panel4: TPanel;
    Panel5: TPanel;
    Label5: TLabel;
    Label1: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    Panel6: TPanel;
    Panel20: TPanel;
    Label6: TLabel;
    Panel23: TPanel;
    Label13: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Panel24: TPanel;
    Label14: TLabel;
    DBEdit16: TDBEdit;
    FrameData1: TFrameData;
    Label19: TLabel;
    Label20: TLabel;
    Panel25: TPanel;
    Panel26: TPanel;
    Label21: TLabel;
    DBEdit17: TDBEdit;
    Panel27: TPanel;
    Label22: TLabel;
    DBEdit18: TDBEdit;
    Panel28: TPanel;
    Label23: TLabel;
    DBEdit19: TDBEdit;
    IBrwSrccorreiovalor: TFloatField;
    IBrwSrccorreiopeso: TFloatField;
    IBrwSrccorreiolido: TDateTimeField;
    IBrwSrcstatus: TIntegerField;
    TabSheet2: TTabSheet;
    Estimado: TTabSheet;
    Cobrado: TTabSheet;
    cbStatus: TComboBox;
    Label24: TLabel;
    Splitter1: TSplitter;
    IBrwSrcrastreio: TStringField;
    TabSheet3: TTabSheet;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure IBrwSrcformatoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FrameData1ComboBox1Change(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cbStatusChange(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
  private
    { Private declarations }
    FCBClientes: TComboList;
    procedure OnLoad; override;
    procedure OnEdit; override;
    procedure OnPrint(Sender: TReport; var Continue: Boolean); override;
  public
    { Public declarations }
  end;

var
  Fretes: TFretes;

implementation

uses uDM, ccalendardiff, uResources, uFretesM, uDMReport;

{$R *.dfm}

procedure TFretes.actQueryProcessExecute(Sender: TObject);
var
  sWhere: string;
begin
  inherited;

  if not Assigned(DataSet) then
    Exit;

  sWhere := EmptyStr;
  if ComboBox1.ItemIndex > 0 then
    sWhere := 'co.codigo = :codigo';

  with FrameData1, DataSet do
  try
    if CCalendarDiff1.Interval <> diNone then
    begin
      if (sWhere <> EmptyStr) then
        sWhere := sWhere + ' and ';

      sWhere := sWhere + 'cast(co.emissao as date) between :de and :ate ';
    end;

    if cbStatus.ItemIndex > 0 then
    begin
      if (sWhere <> EmptyStr) then
        sWhere := sWhere + ' and ';

      sWhere := sWhere + 'co.status = :status ';
    end;

    if (sWhere <> EmptyStr) then
      SQL.Add('where ' + sWhere);

    if Assigned(Params.FindParam('codigo')) then
      ParamByName('codigo').AsInteger := FCBClientes.Selected.Value;

    if Assigned(Params.FindParam('de')) then
    begin
      ParamByName('de').AsDate := CCalendarDiff1.BeginDate;
      ParamByName('ate').AsDate := CCalendarDiff1.EndDate;
    end;

    if Assigned(Params.FindParam('status')) then
      ParamByName('status').AsInteger := cbStatus.ItemIndex;

    G.RefreshDataSet(DataSet);
  finally
    RefreshCtrl;
  end;
end;

procedure TFretes.cbStatusChange(Sender: TObject);
begin
  inherited;
  actQueryProcess.Enabled := True;
  with PageControl1 do
  begin
    ActivePageIndex := cbStatus.ItemIndex;
    inherited PageControl1Change(PageControl1);
  end;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TFretes.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fBitMap: TBitmap;
begin
  if (Column.Index <> 0) then
    inherited DBGridDrawColumnCell(Sender, Rect, DataCol, Column, State)
  else
    with TDBGrid(Sender) do
    try
      fBitMap:= TBitmap.Create;
      fBitMap.Transparent:= True;

      with Resources do
        case IBrwSrcstatus.AsInteger of
          1: small_n.GetBitmap(214, fBitMap); //Simulado
          2: small_n.GetBitmap(213, fBitMap); //Estimado
          3: small_n.GetBitmap(208, fBitMap); //Cobrado
          4: small_n.GetBitmap(204, fBitMap); //Cancelado
        end;

      if Column.Width <> fBitMap.Width + 2 then
        Column.Width:= fBitMap.Width + 2;

      {Desenha o status da remessa}
      Canvas.Draw(Rect.Left + 1, Rect.Top + 1, fBitMap);
    finally
      fBitMap.Free;
    end;
end;

procedure TFretes.FormCreate(Sender: TObject);
begin
  inherited;
  FCBClientes := TComboList.Create(ComboBox1, 'vclifretes', 'codigo', 'nome_chave');
  ComboBox1.Items.Insert(0, '(Todos)');
  ComboBox1.ItemIndex := 0;
end;

procedure TFretes.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FCBClientes);
  inherited;
end;

procedure TFretes.FrameData1ComboBox1Change(Sender: TObject);
begin
  inherited;
  FrameData1.ComboBox1Change(Sender);
end;

procedure TFretes.IBrwSrcformatoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Caixa / Pacote';
    2: Text := 'Rolo / Prisma';
    3: Text := 'Envelope';
  end;
end;

procedure TFretes.OnEdit;
begin
  FretesM := TFretesM.Create(nil);
  try
    FretesM.AllowInsert := False;
    FretesM.DataSet := IBrwSrc;
    FretesM.ShowModal;
  finally
    FreeAndNil(FretesM);
  end;

end;

procedure TFretes.OnLoad;
begin
  inherited;
  DBGrid1.SetFocus;
  FrameData1.CCalendarDiff1.Interval := diQuarterly;
end;

procedure TFretes.OnPrint(Sender: TReport; var Continue: Boolean);
begin
  with DMReport, FrameData1 do
  begin
    R00021.ParamByName('de').AsDate := CCalendarDiff1.BeginDate;
    R00021.ParamByName('ate').AsDate := CCalendarDiff1.EndDate;
    G.RefreshDataSet(R00021);
  end;
end;

procedure TFretes.PageControl1Change(Sender: TObject);
begin
  inherited;
  if cbStatus.ItemIndex <> PageControl1.ActivePageIndex then
  begin
    cbStatus.ItemIndex := PageControl1.ActivePageIndex;
    cbStatusChange(cbStatus);
  end;
end;

initialization
  RegisterClass(TFretes);

finalization
  UnRegisterClass(TFretes);

end.
