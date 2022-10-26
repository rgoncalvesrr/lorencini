unit uContratos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ActnList, ComCtrls, ToolWin,
  ExtCtrls, Grids, DBGrids, StdCtrls, Mask, Buttons, JvExMask, JvToolEdit, JvBaseEdits, ZSequence;

type
  TContratos = class(TIDefBrowse)
    IBrwSrccontrato: TStringField;
    IBrwSrcstatus: TIntegerField;
    IBrwSrcemissao: TDateTimeField;
    IBrwSrcinicio: TDateField;
    IBrwSrctermino: TDateField;
    IBrwSrcvalor: TFloatField;
    IBrwSrcvalor_coleta: TFloatField;
    IBrwSrcprazo_rec: TIntegerField;
    IBrwSrcemail: TStringField;
    IBrwSrctransporte: TIntegerField;
    IBrwSrccoleta: TIntegerField;
    IBrwSrcobs: TMemoField;
    IBrwSrccliente: TIntegerField;
    IBrwSrcempresa: TStringField;
    IBrwSrcnome_chave: TStringField;
    IBrwSrccnpj: TStringField;
    IBrwSrccpf: TStringField;
    IBrwSrcemail_1: TStringField;
    IBrwSrccidade: TStringField;
    IBrwSrcestado: TStringField;
    IBrwSrctelefone: TStringField;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Panel6: TPanel;
    Label1: TLabel;
    cbStatus: TComboBox;
    Panel5: TPanel;
    Label3: TLabel;
    edContrato: TEdit;
    IBrwSrcrecno: TIntegerField;
    sBrwSrc: TZSequence;
    qContatos: TZQuery;
    uContatos: TZUpdateSQL;
    qContatoscliente: TIntegerField;
    qContatoscontrato: TStringField;
    qContatosstatus: TSmallintField;
    qContatosresponsavel: TBooleanField;
    qContatosrecno: TIntegerField;
    qContatosnome: TStringField;
    qContatostelefone: TStringField;
    qContatosemail: TStringField;
    qContatoscontato_comercial: TBooleanField;
    qContatoscontato_tecnico: TBooleanField;
    qContatoscontato_financeiro: TBooleanField;
    qContatoscontato: TIntegerField;
    sContatos: TZSequence;
    dsContatos: TDataSource;
    qServicos: TZQuery;
    qServicoscliente: TIntegerField;
    qServicoscontrato: TStringField;
    qServicosservico: TIntegerField;
    qServicosqtd: TFloatField;
    qServicossaldo: TFloatField;
    qServicosunitario: TFloatField;
    qServicosdescri: TStringField;
    qServicosconsumo: TFloatField;
    qServicosvidraria: TIntegerField;
    qServicosdescri_1: TStringField;
    qServicosrecno: TIntegerField;
    uServicos: TZUpdateSQL;
    sServicos: TZSequence;
    dsServicos: TDataSource;
    procedure IBrwSrctransporteGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure IBrwSrctransporteSetText(Sender: TField; const Text: string);
    procedure cbStatusChange(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure edContratoChange(Sender: TObject);
    procedure IBrwSrcstatusGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure IBrwSrcstatusSetText(Sender: TField; const Text: string);
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    procedure OnLoad; override;
    procedure OnEdit; override;
    procedure OnLog(var TableName: string; var Recno: Integer); override;
    procedure RefreshCtrl; override;
  public
    { Public declarations }
  end;

implementation

uses uDM, uResources, uIUtils, uContratosM, iTypes;

{$R *.dfm}

procedure TContratos.actQueryProcessExecute(Sender: TObject);
var
  sWhere : string;
begin
  inherited;

  if not Assigned(DataSet) or (DataSet <> IBrwSrc) then
    Exit;

  with DataSet do
  try
    if cbStatus.ItemIndex > 0 then
      sWhere := 'co.status = :status ';

    if sWhere <> EmptyStr then
      SQL.Add('where ' + sWhere);

    if Assigned(Params.FindParam('status')) then
      ParamByName('status').AsInteger := cbStatus.ItemIndex;
  finally
    G.RefreshDataSet(DataSet);
    RefreshCtrl;
  end;
end;

procedure TContratos.cbStatusChange(Sender: TObject);
begin
  inherited;
  actQueryProcess.Enabled := True;
  with PageControl1 do
  begin
    DBGrid1.SetFocus;
    ActivePageIndex := cbStatus.ItemIndex;
    inherited PageControl1Change(PageControl1);
  end;

  actQueryProcessExecute(actQueryProcess);
end;

procedure TContratos.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
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
          1: small_n.GetBitmap(215, fBitMap); //Elaboração
          2: small_n.GetBitmap(208, fBitMap); //Vigente
          3: small_n.GetBitmap(209, fBitMap); //Encerrado
        end;

      if Column.Width <> fBitMap.Width + 2 then
        Column.Width:= fBitMap.Width + 2;

      {Desenha o status da remessa}
      Canvas.Draw(Rect.Left + 1, Rect.Top + 1, fBitMap);
    finally
      fBitMap.Free;
    end;
end;

procedure TContratos.edContratoChange(Sender: TObject);
begin
  inherited;
  actQueryProcess.Enabled := True;
end;

procedure TContratos.IBrwSrcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('status').AsInteger := 1;
  DataSet.FieldByName('transporte').AsInteger := 1;
  DataSet.FieldByName('coleta').AsInteger := 1;
end;

procedure TContratos.IBrwSrcAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qContatos.ParamByName('cliente').AsInteger := IBrwSrccliente.AsInteger;
  qContatos.ParamByName('contrato').AsString := IBrwSrccontrato.AsString;
  qServicos.ParamByName('cliente').AsInteger := IBrwSrccliente.AsInteger;
  qServicos.ParamByName('contrato').AsString := IBrwSrccontrato.AsString;

  G.RefreshDataSet(qContatos);
  G.RefreshDataSet(qServicos);
end;

procedure TContratos.IBrwSrcstatusGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Elaboração';
    2: Text := 'Vigente';
    3: Text := 'Encerrado';
  end;
end;

procedure TContratos.IBrwSrcstatusSetText(Sender: TField; const Text: string);
begin
  inherited;
  if Text = 'Elaboração' then
    Sender.AsInteger := 1;

  if Text = 'Vigente' then
    Sender.AsInteger := 2;

  if Text = 'Encerrado' then
    Sender.AsInteger := 3;
end;

procedure TContratos.IBrwSrctransporteGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Lorencini';
    2: Text := 'Cliente';
  end;
end;

procedure TContratos.IBrwSrctransporteSetText(Sender: TField; const Text: string);
begin
  inherited;
  if not (Sender.DataSet.State in [dsEdit, dsInsert]) then
    Exit;
    
  case Text[1] of
    'L': Sender.AsInteger := 1;
    'C': Sender.AsInteger := 2;
  end;
end;

procedure TContratos.OnEdit;
var
  ContratosM: TContratosM;
begin
  ContratosM := TContratosM.Create(nil);
  try
    ContratosM.ScreenType := stMasterDetail;
    ContratosM.DataSet := IBrwSrc;
    ContratosM.ChildDataSet := qContatos;
    ContratosM.ShowModal;
  finally
    FreeAndNil(ContratosM);
    RefreshCtrl;
  end;
end;

procedure TContratos.OnLoad;
begin
  inherited;
  cbStatus.ItemIndex := 2;
  cbStatusChange(cbStatus);
  DataSet := IBrwSrc;
end;

procedure TContratos.OnLog(var TableName: string; var Recno: Integer);
begin
  inherited;
  TableName := 'contratos';
  Recno := IBrwSrcrecno.AsInteger;
end;

procedure TContratos.PageControl1Change(Sender: TObject);
begin
  inherited;
  if cbStatus.ItemIndex <> PageControl1.ActivePageIndex then
  begin
    cbStatus.ItemIndex := PageControl1.ActivePageIndex;
    cbStatusChange(cbStatus);
  end;
end;

procedure TContratos.RefreshCtrl;
begin
  inherited;
  actLog.Enabled := not IBrwSrc.IsEmpty and (IBrwSrc.State = dsBrowse);
end;

initialization
  RegisterClass(TContratos);

finalization
  UnRegisterClass(TContratos);

end.
