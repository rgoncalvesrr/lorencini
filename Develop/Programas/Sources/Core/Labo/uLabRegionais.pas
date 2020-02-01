unit uLabRegionais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, uIUtils, ToolWin, ZSequence, ZSqlProcessor;

type
  TLabRegionais = class(TIDefBrowse)
    Label18: TLabel;
    ComboBox1: TComboBox;
    IBrwSrcrecno: TIntegerField;
    IBrwSrccodigo: TIntegerField;
    IBrwSrcnome: TStringField;
    ZSequence1: TZSequence;
    zSubEst: TZUpdateSQL;
    qSubEst: TZQuery;
    dsSubEst: TDataSource;
    sSubEst: TZSequence;
    qSubEstrecno: TIntegerField;
    qSubEstregional: TIntegerField;
    qSubEstnome: TStringField;
    qSubEstsigla: TStringField;
    qEquipCli: TZQuery;
    qEquipClicodigo: TIntegerField;
    qEquipClisubest: TIntegerField;
    qEquipClitag: TStringField;
    qEquipCliequip: TIntegerField;
    qEquipCliserie: TStringField;
    qEquipClitipo: TIntegerField;
    qEquipClidescri: TStringField;
    qEquipClistatus: TIntegerField;
    qEquipClienerg: TDateField;
    qEquipClirecno: TIntegerField;
    zEquipCli: TZUpdateSQL;
    sEquipCli: TZSequence;
    dsEquipCli: TDataSource;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    Splitter1: TSplitter;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
    procedure qSubEstAfterInsert(DataSet: TDataSet);
    procedure qSubEstAfterScroll(DataSet: TDataSet);
    procedure qEquipClitipoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qEquipClistatusGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qEquipClistatusSetText(Sender: TField; const Text: string);
    procedure qEquipCliAfterInsert(DataSet: TDataSet);
    procedure IBrwSrcAfterOpen(DataSet: TDataSet);
  private
    FCBClientes: TComboList;
    FCliente: Integer;
    procedure OnEdit; override;
    procedure SetCliente(const Value: Integer);
  public
    property Cliente: Integer read FCliente write SetCliente;
  end;

var
  LabRegionais: TLabRegionais;

implementation

uses uDM, uLabRegionaisM, iTypes;

{$R *.dfm}

procedure TLabRegionais.actQueryProcessExecute(Sender: TObject);
begin
  inherited;
  IBrwSrc.ParamByName('codigo').AsInteger := FCBClientes.Selected.Value;
  G.RefreshDataSet(IBrwSrc);
end;

procedure TLabRegionais.ComboBox1Change(Sender: TObject);
begin
  inherited;
  actQueryProcess.Enabled:= trim(ComboBox1.Text) <> EmptyStr;
end;

procedure TLabRegionais.FormCreate(Sender: TObject);
begin
  inherited;
  LabRegionais := Self;
  FCBClientes := TComboList.Create(ComboBox1, 'tbclientes', 'codigo', 'nome_chave');
end;

procedure TLabRegionais.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FCBClientes);
  inherited;
end;

procedure TLabRegionais.IBrwSrcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  IBrwSrccodigo.AsInteger := FCBClientes.Selected.Value;
end;

procedure TLabRegionais.IBrwSrcAfterOpen(DataSet: TDataSet);
begin
  inherited;
  IBrwSrcAfterScroll(IBrwSrc);
end;

procedure TLabRegionais.IBrwSrcAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qSubEst.ParamByName('regional').AsInteger := IBrwSrcrecno.AsInteger;
  G.RefreshDataSet(qSubEst);
end;

procedure TLabRegionais.OnEdit;
begin
  LabRegionaisM := TLabRegionaisM.Create(Application);
  try
    LabRegionaisM.DataSet := DataSet;
    LabRegionaisM.ChildDataSet := qSubEst;
    LabRegionaisM.ScreenType := stMasterDetail;
    LabRegionaisM.leCodigo.Text := FCBClientes.Selected.Value;
    LabRegionaisM.leNome.Text := FCBClientes.Selected.Caption;
    LabRegionaisM.ShowModal;
  finally
    FreeAndNil(LabRegionaisM);
  end;

end;

procedure TLabRegionais.qEquipCliAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qEquipClicodigo.AsInteger := IBrwSrccodigo.AsInteger;
  qEquipClisubest.AsInteger := qSubEstrecno.AsInteger;
  qEquipClitipo.AsInteger := 1;
end;

procedure TLabRegionais.qEquipClistatusGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Ativo';
    2: Text := 'Inativo';
  end;
end;

procedure TLabRegionais.qEquipClistatusSetText(Sender: TField;
  const Text: string);
begin
  if not (qEquipCli.State in [dsEdit, dsInsert]) then
    Exit;

  case Text[1] of
    'A': Sender.AsInteger := 1;
    'I': Sender.AsInteger := 2;
  end;
end;

procedure TLabRegionais.qEquipClitipoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  case Sender.AsInteger of
    1: Text := 'T. Potência';
    2: Text := 'T. Potencial';
    3: Text := 'Disjuntor';
    4: Text := 'Comutador';
    5: Text := 'Regulador';
  else
    Text := '';
  end;

end;

procedure TLabRegionais.qSubEstAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qSubEstregional.AsInteger := IBrwSrcrecno.AsInteger;
end;

procedure TLabRegionais.qSubEstAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qEquipCli.ParamByName('codigo').AsInteger := IBrwSrccodigo.AsInteger;
  qEquipCli.ParamByName('subest').AsInteger := qSubEstrecno.AsInteger;

  G.RefreshDataSet(qEquipCli);
end;

procedure TLabRegionais.SetCliente(const Value: Integer);
begin
  FCliente := Value;
  ComboBox1.Enabled := False;
  FCBClientes.Criteria.Add(Format('codigo = %d', [FCliente]));
  FCBClientes.UpdateList;
  actQueryProcessExecute(actQueryProcess);
end;

initialization
  RegisterClass(TLabRegionais);

finalization
  UnRegisterClass(TLabRegionais);

end.
