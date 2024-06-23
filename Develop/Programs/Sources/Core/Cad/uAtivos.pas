unit uAtivos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Menus,
  ActnList, Grids, DBGrids, ComCtrls, StdCtrls, Buttons, Mask, ExtCtrls, ToolWin,
  ZSqlUpdate, uIUtils, ZSequence, System.Actions;

type
  TAtivos = class(TIDefBrowse)
    IBrwSrcid: TIntegerField;
    IBrwSrcdescri: TMemoField;
    IBrwSrctipo: TIntegerField;
    IBrwSrcdescri_1: TStringField;
    IBrwSrcdepto: TIntegerField;
    IBrwSrcdescri_2: TStringField;
    IBrwSrcstatus: TIntegerField;
    IBrwSrcbaixa: TDateTimeField;
    IBrwSrcmotivo: TMemoField;
    IBrwSrccomodato: TBooleanField;
    IBrwSrcvlcompra: TFloatField;
    IBrwSrcvlvenda: TFloatField;
    IBrwSrcrecno: TIntegerField;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label4: TLabel;
    cbStatus: TComboBox;
    Label1: TLabel;
    cbTipo: TComboBox;
    Label3: TLabel;
    cbDepto: TComboBox;
    ZSequence1: TZSequence;
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
    procedure IBrwSrcstatusGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBrwSrcstatusSetText(Sender: TField; const Text: string);
    procedure cbStatusChange(Sender: TObject);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure cbTipoChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FCLTipos: TComboList;
    FCLDeptos: TComboList;
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  Ativos: TAtivos;

implementation

{$R *.dfm}
uses uDM, uAtivosM, uResources;

procedure TAtivos.actQueryProcessExecute(Sender: TObject);
var
  sWhere : string;
begin
  inherited;
  with DataSet do
  begin
    if cbStatus.ItemIndex > 0 then
      sWhere := 'a.status = :situacao ';

    {Aplica filtro por tipo}
    if Assigned(FCLTipos.Selected) and  (FCLTipos.Selected.Value > 0) then
    begin
      if swhere <> EmptyStr then
        swhere := swhere + 'and ';

      swhere := swhere + 'a.tipo = :codigo ';
    end;

    {Aplica filtro por tipo}
    if Assigned(FCLDeptos.Selected) and  (FCLDeptos.Selected.Value > 0) then
    begin
      if swhere <> EmptyStr then
        swhere := swhere + 'and ';

      swhere := swhere + 'a.depto = :depto ';
    end;

    if sWhere <> EmptyStr then
      SQL.Add('where ' + sWhere);

    if Assigned(Params.FindParam('situacao')) then
      ParamByName('situacao').AsInteger := cbStatus.ItemIndex;

    if Assigned(Params.FindParam('codigo')) then
      Params.ParamByName('codigo').AsInteger := FCLTipos.Selected.Value;
      
    if Assigned(Params.FindParam('depto')) then
      Params.ParamByName('depto').AsInteger := FCLDeptos.Selected.Value;
  end;

  G.RefreshDataSet(DataSet);
end;

procedure TAtivos.cbStatusChange(Sender: TObject);
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

procedure TAtivos.cbTipoChange(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQuery);
end;

procedure TAtivos.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
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
          1: small_n.GetBitmap(208, fBitMap); //Expedição
          2: small_n.GetBitmap(209, fBitMap); //Aguardando Rastreio
        end;

      if Column.Width <> fBitMap.Width + 2 then
        Column.Width:= fBitMap.Width + 2;

      {Desenha o status da remessa}
      Canvas.Draw(Rect.Left + 1, Rect.Top + 1, fBitMap);
    finally
      fBitMap.Free;
    end;
end;

procedure TAtivos.FormCreate(Sender: TObject);
begin
  inherited;
  FCLTipos := TComboList.Create(cbTipo, 'ativos_tipo', 'tipo', 'descri');

  cbTipo.Items.Insert(0, '(Todos)');
  cbTipo.ItemIndex := 0;

  FCLDeptos := TComboList.Create(cbDepto, 'deptos', 'depto', 'descri');

  cbDepto.Items.Insert(0, '(Todos)');
  cbDepto.ItemIndex := 0;
end;

procedure TAtivos.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FCLTipos);
  FreeAndNil(FCLDeptos);
  inherited;
end;

procedure TAtivos.IBrwSrcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  IBrwSrcstatus.AsInteger:= 1;
  IBrwSrccomodato.AsBoolean:= false;
  IBrwSrcvlcompra.AsFloat:= 0;
  IBrwSrcvlvenda.AsFloat:= 0;
end;

procedure TAtivos.IBrwSrcstatusGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Ativo';
    2: Text := 'Inativo';
  end;
end;

procedure TAtivos.IBrwSrcstatusSetText(Sender: TField; const Text: string);
begin
  inherited;
  if Sender.DataSet.State in [dsEdit, dsInsert] then
    case Text[1] of
      'A': Sender.AsInteger := 1;
      'I': Sender.AsInteger := 2;  
    end;
end;

procedure TAtivos.OnEdit;
begin
  Application.CreateForm(TAtivosM, AtivosM);
  AtivosM.DataSet:= IBrwSrc;
  AtivosM.ShowModal;
end;

procedure TAtivos.PageControl1Change(Sender: TObject);
begin
  inherited;
  if cbStatus.ItemIndex <> PageControl1.ActivePageIndex then
  begin
    cbStatus.ItemIndex := PageControl1.ActivePageIndex;
    cbStatusChange(cbStatus);
  end;
end;

initialization
  RegisterClass(TAtivos);

finalization
  UnRegisterClass(TAtivos);

end.
