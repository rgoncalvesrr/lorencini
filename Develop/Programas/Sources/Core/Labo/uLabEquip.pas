unit uLabEquip;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, JvExStdCtrls, JvCombobox, ZSequence, uIUtils;

type
  TLabEquip = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrcfabricante: TIntegerField;
    IBrwSrcserie: TStringField;
    IBrwSrctipo: TIntegerField;
    IBrwSrcdescri: TStringField;
    IBrwSrcfases: TIntegerField;
    IBrwSrclote: TStringField;
    IBrwSrcano: TIntegerField;
    IBrwSrcisolante: TIntegerField;
    IBrwSrcvolume: TIntegerField;
    IBrwSrcdrenos: TStringField;
    IBrwSrcfabricante_1: TStringField;
    IBrwSrcisolante_1: TStringField;
    Label1: TLabel;
    ZSequence1: TZSequence;
    IBrwSrcdescri_1: TStringField;
    IBrwSrcsigla: TStringField;
    IBrwSrcfamilia: TIntegerField;
    IBrwSrcfamilia_desc: TStringField;
    IBrwSrcpotencia: TFloatField;
    IBrwSrcpotencia_a: TFloatField;
    IBrwSrcpotencia_b: TFloatField;
    IBrwSrcimped: TFloatField;
    IBrwSrcimped_a: TFloatField;
    IBrwSrcimped_b: TFloatField;
    IBrwSrctensao: TFloatField;
    IBrwSrctensao_a: TFloatField;
    IBrwSrctensao_b: TFloatField;
    IBrwSrccorr: TFloatField;
    IBrwSrccorr_a: TFloatField;
    IBrwSrccorr_b: TFloatField;
    Label18: TLabel;
    ComboBox1: TComboBox;
    Panel3: TPanel;
    edTag: TEdit;
    chkTag: TCheckBox;
    Splitter1: TSplitter;
    Panel4: TPanel;
    PageControl2: TPageControl;
    tsEquipInfo: TTabSheet;
    Label3: TLabel;
    ComboBox2: TComboBox;
    jvcbTipo: TJvComboBox;
    edSerie: TEdit;
    Label4: TLabel;
    IBrwSrcpotencia_un: TStringField;
    IBrwSrctensao_un: TStringField;
    procedure actTipoExecute(Sender: TObject);
    procedure IBrwSrcfabricanteChange(Sender: TField);
    procedure IBrwSrctipoChange(Sender: TField);
    procedure IBrwSrcisolanteChange(Sender: TField);
    procedure IBrwSrcfamiliaChange(Sender: TField);
    procedure IBrwSrcimpedChange(Sender: TField);
    procedure IBrwSrctensaoChange(Sender: TField);
    procedure IBrwSrccorrChange(Sender: TField);
    procedure IBrwSrcpotenciaChange(Sender: TField);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Panel1Resize(Sender: TObject);
    procedure edTagChange(Sender: TObject);
    procedure chkTagClick(Sender: TObject);
    procedure jvcbTipoChange(Sender: TObject);
    procedure edSerieChange(Sender: TObject);
  private
    { Private declarations }
    FCBClientes: TComboList;
    FCBTipo: TComboList;
    FCBReg: TComboList;
    procedure OnEdit; override;
    procedure SetCliente(Codigo: Integer);
  public
    { Public declarations }
  end;

var
  LabEquip: TLabEquip;

implementation

uses uDM, uLabEquipM, mcUtils;

{$R *.dfm}

procedure TLabEquip.actQueryProcessExecute(Sender: TObject);
var
  swhere: string;
begin
  inherited;
  with IBrwSrc do
  begin
    {Exibir painel}
    Panel3.Visible := Assigned(FCBClientes.Selected) and
      (FCBClientes.Selected.Value > 0);
    Panel4.Visible := Panel3.Visible;
    Splitter1.Visible := Panel3.Visible;

    if Assigned(FCBTipo.Selected) and (FCBTipo.Selected.Value > 0) then
      swhere := 't.tipo = :tipo ';

    if edSerie.Text <> EmptyStr then
    begin
      if swhere <> EmptyStr  then
        swhere := swhere + 'and ';

      swhere := 'e.serie = :serie ';
    end;

    {Aplica filtro por cliente}
    if Assigned(FCBClientes.Selected) and (FCBClientes.Selected.Value > 0) then
    begin
      if swhere <> EmptyStr  then
        swhere := swhere + ' and ';

      swhere := swhere +
      'exists( '+
        'select 1 '+
          'from labequipxcli '+
         'where codigo = :codigo '+
           'and equip = e.recno ';

      if chkTag.Checked and not mcEmpty(edTag.Text) then
        swhere := swhere +
        'and tag like :tag ';

      swhere := swhere + ') ';

      tsEquipInfo.Caption :=
        'Informações adicionais do equipamento para o cliente ' + ComboBox1.Text;
    end;

    if swhere <> '' then
      SQL.Add('where ' + swhere);

    if Assigned(Params.FindParam('codigo')) then
      Params.ParamByName('codigo').AsInteger := FCBClientes.Selected.Value;

    if Assigned(Params.FindParam('tag')) then
      Params.ParamByName('tag').AsString := '%' + edTag.Text + '%';

    if Assigned(Params.FindParam('tipo')) then
      Params.ParamByName('tipo').AsInteger := FCBTipo.Selected.Value;

    if Assigned(Params.FindParam('serie')) then
      Params.ParamByName('serie').AsString := edSerie.Text;
  end;

  G.RefreshDataSet(IBrwSrc);

  RefreshCtrl;
end;

procedure TLabEquip.actTipoExecute(Sender: TObject);
begin
  actManExecute(TAction(Sender));
end;

procedure TLabEquip.chkTagClick(Sender: TObject);
begin
  inherited;
  if not chkTag.Checked then
    actQueryProcessExecute(actQueryProcess);
end;

procedure TLabEquip.ComboBox1Change(Sender: TObject);
begin
  inherited;
  SetCliente(FCBClientes.Selected.Value);
  actQueryProcessExecute(actQueryProcess);
end;

procedure TLabEquip.edSerieChange(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQuery);
end;

procedure TLabEquip.edTagChange(Sender: TObject);
begin
  inherited;
  if chkTag.Checked then
    actQueryProcessExecute(actQueryProcess);
end;

procedure TLabEquip.FormCreate(Sender: TObject);
begin
  inherited;
  FCBClientes := TComboList.Create(ComboBox1, 'tbclientes', 'codigo', 'nome_chave');

  ComboBox1.Items.Insert(0, '(Todos)');
  ComboBox1.ItemIndex := 0;

  FCBTipo := TComboList.Create(jvcbTipo, 'labequip_tipo', 'recno', 'descri');

  jvcbTipo.Items.Insert(0, '(Todos)');
  jvcbTipo.ItemIndex := 0;
end;

procedure TLabEquip.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FCBClientes);
  FreeAndNil(FCBTipo);

  if Assigned(FCBReg) then
    FreeAndNil(FCBReg);
    
  inherited;
end;

procedure TLabEquip.FormShow(Sender: TObject);
begin
  inherited;
  Panel3.Caption := '';
end;

procedure TLabEquip.IBrwSrccorrChange(Sender: TField);
begin
  inherited;
  if (DataSet.State in [dsEdit, dsInsert]) and (IBrwSrccorr_a.AsFloat = 0) then
    IBrwSrccorr_a.AsFloat := IBrwSrccorr.AsFloat;
end;

procedure TLabEquip.IBrwSrcfabricanteChange(Sender: TField);
begin
  inherited;
  if not (IBrwSrc.State in [dsEdit, dsInsert]) then
    Exit;

  IBrwSrcfabricante_1.SetData(nil);
end;

procedure TLabEquip.IBrwSrcfamiliaChange(Sender: TField);
begin
  inherited;
  if not (IBrwSrc.State in [dsEdit, dsInsert]) then
    Exit;

  IBrwSrcfamilia_desc.SetData(nil);
end;

procedure TLabEquip.IBrwSrcimpedChange(Sender: TField);
begin
  inherited;
  if (DataSet.State in [dsEdit, dsInsert]) and (IBrwSrcimped_a.AsFloat = 0) then
    IBrwSrcimped_a.AsFloat := IBrwSrcimped.AsFloat;
end;

procedure TLabEquip.IBrwSrcisolanteChange(Sender: TField);
begin
  inherited;
  if not (IBrwSrc.State in [dsEdit, dsInsert]) then
    Exit;

  IBrwSrcisolante_1.SetData(nil);
end;

procedure TLabEquip.IBrwSrcpotenciaChange(Sender: TField);
begin
  inherited;
  if (DataSet.State in [dsEdit, dsInsert]) and (IBrwSrcpotencia_a.AsFloat = 0) then
    IBrwSrcpotencia_a.AsFloat := IBrwSrcpotencia.AsFloat;
end;

procedure TLabEquip.IBrwSrctensaoChange(Sender: TField);
begin
  inherited;
  if (DataSet.State in [dsEdit, dsInsert]) and (IBrwSrctensao_a.AsFloat = 0) then
    IBrwSrctensao_a.AsFloat := IBrwSrctensao.AsFloat;
end;

procedure TLabEquip.IBrwSrctipoChange(Sender: TField);
begin
  inherited;
  if not (IBrwSrc.State in [dsEdit, dsInsert]) then
    Exit;

  IBrwSrcdescri_1.SetData(nil);
  IBrwSrcsigla.SetData(nil);
end;

procedure TLabEquip.jvcbTipoChange(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TLabEquip.OnEdit;
begin
  LabEquipM := TLabEquipM.Create(Application);
  LabEquipM.DataSet := IBrwSrc;
  LabEquipM.ShowModal;

  FreeAndNil(LabEquipM);
end;

procedure TLabEquip.Panel1Resize(Sender: TObject);
begin
  inherited;
  Panel3.Left := ComboBox1.Left + ComboBox1.Width + 3;
  Panel3.Width := BitBtn2.Left - Panel3.Left - 3;
  Panel3.Top := 0;
  Panel3.Height := Panel3.Parent.ClientHeight;
end;

procedure TLabEquip.SetCliente(Codigo: Integer);
begin
  if Assigned(FCBReg) then
    FCBReg.Clear;

  if Codigo = -1 then
    Exit;
    
  FCBReg := TComboList.Create(ComboBox2, 'labregionais', 'recno', 'nome', False);
  FCBReg.Criteria.Add(Format('codigo = %d', [Codigo]));

  ComboBox2.Items.Insert(0, '(Todos)');
  ComboBox2.ItemIndex := 0;

  FCBReg.UpdateList;
end;

initialization
  RegisterClass(TLabEquip);

finalization
  UnRegisterClass(TLabEquip);

end.
