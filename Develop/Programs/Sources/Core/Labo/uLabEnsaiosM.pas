unit uLabEnsaiosM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, StdCtrls, Mask, DBCtrls, ActnList, Grids, DBGrids,
  ComCtrls, ExtCtrls, ToolWin, DB, ZAbstractRODataset, ZDataset, JvExStdCtrls,
  JvCombobox, JvDBCombobox, JvExControls, JvDBLookup, Buttons, JvExMask, JvSpin,
  JvDBSpinEdit, CheckLst, System.Actions, System.Generics.Collections;

type
  TLabEnsaiosM = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    SpeedButton2: TSpeedButton;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    FindUnidade: TAction;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    FindMetodo: TAction;
    Label7: TLabel;
    DBMemo1: TDBMemo;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    TabSheet3: TTabSheet;
    DBGrid3: TDBGrid;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    SpeedButton3: TSpeedButton;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    FindCalc: TAction;
    DBComboBox1: TDBComboBox;
    Label11: TLabel;
    Label12: TLabel;
    JvDBSpinEdit1: TJvDBSpinEdit;
    Label13: TLabel;
    DBComboBox2: TDBComboBox;
    Label14: TLabel;
    DBEdit10: TDBEdit;
    Label15: TLabel;
    DBEdit11: TDBEdit;
    Label16: TLabel;
    DBEdit12: TDBEdit;
    TabSheet4: TTabSheet;
    CheckListBox1: TCheckListBox;
    ToolBar2: TToolBar;
    ToolButton5: TToolButton;
    ToolButton15: TToolButton;
    actCheckAll: TAction;
    actUnCheckAll: TAction;
    TabSheet5: TTabSheet;
    ToolBar4: TToolBar;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    CheckListBox2: TCheckListBox;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    TabSheet6: TTabSheet;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    DBGrid4: TDBGrid;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Label17: TLabel;
    DBEdit13: TDBEdit;
    Panel26: TPanel;
    Label18: TLabel;
    DBEdit14: TDBEdit;
    procedure DBEdit4Exit(Sender: TObject);
    procedure FindUnidadeExecute(Sender: TObject);
    procedure FindMetodoExecute(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure FindCalcExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CheckListBox1ClickCheck(Sender: TObject);
    procedure actCheckAllExecute(Sender: TObject);
    procedure CheckListBox2ClickCheck(Sender: TObject);
    procedure PageControl3Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FBookMarksAtivos: TList<TBookmark>;
    FBookMarksSolucoes: TList<TBookmark>;
    procedure RefreshControls; override;
    procedure OnEdit; override;
    procedure OnDataSet; override;
    procedure LoadTipoAtivos;
    procedure LoadTipoSolucoes;
    procedure RefreshAtivos;
    procedure RefreshSolucoes;
  public
    { Public declarations }
  end;

var
  LabEnsaiosM: TLabEnsaiosM;

implementation

uses uLabEnsaios, uDM, mcUtils, uIUtils, uLabUnidade, uLabMetodos,
  uLabEnsaiosMRef, uLabEnsaiosMRefs, uLabEnsaiosMInst, uLabCalc,
  uLabEnsaiosMComps;

{$R *.dfm}

{ TLabEnsaiosM }

procedure TLabEnsaiosM.actCheckAllExecute(Sender: TObject);
var
  I: Integer;
  CheckListBox: TCheckListBox;
  Evento : TNotifyEvent;
begin
  inherited;

  CheckListBox := CheckListBox1;
  Evento := CheckListBox1ClickCheck;

  if PageControl3.ActivePage = TabSheet5 then
  begin
    CheckListBox := CheckListBox2;
    Evento := CheckListBox2ClickCheck;
  end;

  with CheckListBox do
  try
    Items.BeginUpdate;
    for I := 0 to Items.Count - 1 do
      if Checked[i] <> (TAction(Sender).Tag = 1) then
      begin
        Checked[i] := TAction(Sender).Tag = 1;
        ItemIndex := i;
        Evento(CheckListBox);
      end;

  finally
    Items.EndUpdate;
  end;
end;

procedure TLabEnsaiosM.CheckListBox1ClickCheck(Sender: TObject);
begin
  with CheckListBox1, LabEnsaios do
  begin
    qAtivoTipos.GotoBookmark(FBookMarksAtivos[ItemIndex]);
    if Checked[ItemIndex] then
       U.Data.ExecSQL(
        'insert into labens_ativo (labens_recno, tipoativo) '+
                                  'values (%d, %d)',
        [IBrwSrcrecno.AsInteger, qAtivoTipostipo.AsInteger])
    else
      U.Data.ExecSQL('delete from labens_ativo where labens_recno = %d and tipoativo = %d',
        [IBrwSrcrecno.AsInteger, qAtivoTipostipo.AsInteger]);
  end;
end;

procedure TLabEnsaiosM.CheckListBox2ClickCheck(Sender: TObject);
begin
  with CheckListBox2, LabEnsaios do
  begin
    qSolTipo.GotoBookmark(FBookMarksSolucoes[ItemIndex]);
    if Checked[ItemIndex] then
       U.Data.ExecSQL(
        'insert into labens_soltipo (labens_recno, labsoltipo_recno) '+
                                  'values (%d, %d)',
        [IBrwSrcrecno.AsInteger, qSolTiporecno.AsInteger])
    else
      U.Data.ExecSQL(
        'delete '+
          'from labens_soltipo '+
         'where labens_recno = %d '+
           'and labsoltipo_recno = %d',
        [IBrwSrcrecno.AsInteger, qSolTiporecno.AsInteger]);
  end;
end;

procedure TLabEnsaiosM.DBEdit3Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit3.Text) or not (DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('descri');

    if U.Data.CheckFK('labmetodos', 'recno', QuotedStr(DBEdit3.Text), fLkp) then
    begin
      DataSet.FieldByName('metodo').AsString := fLkp[0];
    end
    else
    begin
      U.Out.ShowErro('Método não cadastrado.');
      DBEdit3.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TLabEnsaiosM.DBEdit4Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit4.Text) or not (DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('descri');

    if U.Data.CheckFK('labunidades', 'recno', QuotedStr(DBEdit4.Text), fLkp) then
    begin
      DataSet.FieldByName('unidade').AsString := fLkp[0];
    end
    else
    begin
      U.Out.ShowErro('Unidade não cadastrada.');
      DBEdit4.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TLabEnsaiosM.DBEdit8Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit8.Text) or not (DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('descri');

    if U.Data.CheckFK('labcalc', 'proc', QuotedStr(DBEdit8.Text), fLkp) then
      DataSet.FieldByName('calculo').AsString := fLkp[0]
    else
    begin
      U.Out.ShowErro('Cálculo não cadastrado.');
      DBEdit8.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TLabEnsaiosM.FindCalcExecute(Sender: TObject);
begin
  inherited;
  LabCalc := TLabCalc.Create(nil);
  try
    LabCalc.DisplayMode := dmQuery;
    LabCalc.ShowModal;
    if (LabCalc.Execute) then
    begin
      DataSet.FieldByName('proc').AsString :=
        LabCalc.IBrwSrcproc.AsString;
      DBEdit8Exit(DBEdit8);
    end;
  finally
    FreeAndNil(LabCalc);
  end;
end;

procedure TLabEnsaiosM.FindMetodoExecute(Sender: TObject);
begin
  LabMetodos := TLabMetodos.Create(nil);
  try
    LabMetodos.DisplayMode := dmQuery;
    LabMetodos.ShowModal;
    if (LabMetodos.Execute) then
    begin
      DataSet.FieldByName('metodo_recno').AsInteger :=
        LabMetodos.IBrwSrcrecno.AsInteger;
      DBEdit3Exit(DBEdit3);
    end;
  finally
    FreeAndNil(LabMetodos);
  end;
end;

procedure TLabEnsaiosM.FindUnidadeExecute(Sender: TObject);
begin
  LabUnidade := TLabUnidade.Create(nil);
  try
    LabUnidade.DisplayMode := dmQuery;
    LabUnidade.ShowModal;
    if (LabUnidade.Execute) then
    begin
      DataSet.FieldByName('unidade_recno').AsInteger :=
        LabUnidade.IBrwSrcrecno.AsInteger;
      DBEdit4Exit(DBEdit4);
    end;
  finally
    FreeAndNil(LabUnidade);
  end;
end;

procedure TLabEnsaiosM.FormCreate(Sender: TObject);
begin
  inherited;
  FBookMarksAtivos  := TList<TBookmark>.Create;
  FBookMarksSolucoes:= TList<TBookmark>.Create;
end;

procedure TLabEnsaiosM.FormDestroy(Sender: TObject);
begin
  for var BookMark in FBookMarksAtivos do
    LabEnsaios.qAtivoTipos.FreeBookmark(BookMark);

  for var BookMark in FBookMarksSolucoes do
    LabEnsaios.qSolTipo.FreeBookmark(BookMark);

  FBookMarksAtivos.free;
  FBookMarksSolucoes.free;

  inherited;
end;

procedure TLabEnsaiosM.LoadTipoAtivos;
begin
  if not Assigned(DataSet) then
    Exit;

  with LabEnsaios, CheckListBox1 do
  try
    qAtivoTipos.First;
    Items.BeginUpdate;
    Items.Clear;

    while not qAtivoTipos.Eof do
    begin
      FBookMarksAtivos.Add(qAtivoTipos.GetBookmark);
      // Adicionando serviço a lista
      Items.Add(Format('%d - %s', [qAtivoTipostipo.AsInteger, qAtivoTiposdescri.DisplayText]));

      qAtivoTipos.Next;
    end;
  finally
    Items.EndUpdate;
  end;
end;

procedure TLabEnsaiosM.LoadTipoSolucoes;
begin
  if not Assigned(DataSet) then
    Exit;

  with LabEnsaios, CheckListBox2 do
  try
    qSolTipo.First;
    Items.BeginUpdate;
    Items.Clear;

    while not qSolTipo.Eof do
    begin
      FBookMarksSolucoes.Add(qSolTipo.GetBookmark);
      // Adicionando serviço a lista
      Items.Add(Format('%d - %s', [qSolTiporecno.AsInteger, qSolTipodescri.DisplayText]));

      qSolTipo.Next;
    end;
  finally
    Items.EndUpdate;
  end;
end;

procedure TLabEnsaiosM.OnDataSet;
begin
  inherited;
  LoadTipoAtivos;
  LoadTipoSolucoes;
end;

procedure TLabEnsaiosM.OnEdit;
var
  refForm: TIDefBrowseEdit;
begin
  refForm := nil;
  
  case ChildDataSet.Tag of
    1: refForm := TLabEnsaiosMRef.Create(nil);
    2: refForm := TLabEnsaiosMRefs.Create(nil);
    3: refForm := TLabEnsaiosMInst.Create(nil);
    4: refForm := TLabEnsaiosMComps.Create(nil);
  else
    inherited;
    Exit;
  end;

  try
    refForm.DataSet := ChildDataSet;
    refForm.ShowModal;
  finally
    FreeAndNil(refForm);
  end;
end;

procedure TLabEnsaiosM.PageControl3Change(Sender: TObject);
begin
  inherited;
  RefreshControls;
end;

procedure TLabEnsaiosM.RefreshAtivos;
begin
  with LabEnsaios, CheckListBox1 do
  try
    Items.BeginUpdate;
    for var i := 0 to Items.Count - 1 do
    begin
      qAtivoTipos.GotoBookmark(FBookMarksAtivos[i]);
      Checked[i] := Assigned(DataSet) and not (DataSet.State in [dsEdit, dsInsert])
        and qLabEnsAtivo.Locate('tipoativo', qAtivoTipostipo.AsInteger, []);
    end;
  finally
    Items.EndUpdate;
  end;
end;

procedure TLabEnsaiosM.RefreshControls;
begin
  inherited;
  FindUnidade.Enabled := Assigned(DataSet) and
    (DataSet.State in [dsEdit, dsInsert]);
  FindMetodo.Enabled := Assigned(DataSet) and
    (DataSet.State in [dsEdit, dsInsert]);
  FindCalc.Enabled := Assigned(DataSet) and
    (DataSet.State in [dsEdit, dsInsert]);
  actCheckAll.Enabled := Assigned(DataSet) and
    not (DataSet.State in [dsEdit, dsInsert]);
  actUnCheckAll.Enabled := Assigned(DataSet) and
    not (DataSet.State in [dsEdit, dsInsert]);

  if PageControl3.ActivePage = TabSheet4 then
    RefreshAtivos;

  if PageControl3.ActivePage = TabSheet5 then
    RefreshSolucoes;
end;

procedure TLabEnsaiosM.RefreshSolucoes;
begin
  with LabEnsaios, CheckListBox2 do
  try
    Items.BeginUpdate;
    for var i := 0 to Items.Count - 1 do
    begin
      qSolTipo.GotoBookmark(FBookMarksSolucoes[i]);
      Checked[i] := Assigned(DataSet) and not (DataSet.State in [dsEdit, dsInsert])
        and qLabensSolucao.Locate('labsoltipo_recno', qSolTiporecno.AsInteger, []);
    end;
  finally
    Items.EndUpdate;
  end;

end;

end.
