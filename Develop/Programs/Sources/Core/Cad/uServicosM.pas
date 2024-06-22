unit uServicosM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, uIBrowseDet, ActnList,
  Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin, StdCtrls, Mask, DBCtrls, ZSqlUpdate, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls, JvExStdCtrls, JvCombobox,
  JvDBCombobox, CheckLst, Buttons, System.Actions, System.Generics.Collections;

type
  TServicosM = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label5: TLabel;
    dsNatDet: TDataSource;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    dsCategorias: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    dsUnidades: TDataSource;
    DBCheckBox1: TDBCheckBox;
    JvDBComboBox1: TJvDBComboBox;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Label4: TLabel;
    JvDBCalcEdit1: TJvDBCalcEdit;
    Panel12: TPanel;
    Label7: TLabel;
    JvDBCalcEdit2: TJvDBCalcEdit;
    TabSheet2: TTabSheet;
    CheckListBox1: TCheckListBox;
    ToolBar2: TToolBar;
    ToolButton5: TToolButton;
    ToolButton15: TToolButton;
    Panel14: TPanel;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Panel35: TPanel;
    SpeedButton1: TSpeedButton;
    Panel15: TPanel;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    actFindRecipiente: TAction;
    procedure CheckListBox1ClickCheck(Sender: TObject);
    procedure PageControl3Change(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure actFindRecipienteExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FBookMarks: TList<TBookmark>;
    procedure RefreshControls; override;
    procedure OnEdit; override;
    procedure OnDataSet; override;
    procedure LoadTipoRel;
    procedure RefreshTipoRel;
  public
    { Public declarations }
  end;

var
  ServicosM: TServicosM;

implementation

{$R *.dfm}

uses
  uServicos, uIUtils, uServicosMDet, uDM, mcUtils, uLabRecipientes;

{ TServicosM }

procedure TServicosM.actFindRecipienteExecute(Sender: TObject);
begin
  LabRecipientes := TLabRecipientes.Create(nil);
  try
    LabRecipientes.DisplayMode := dmQuery;
    LabRecipientes.ShowModal;
    if (LabRecipientes.Execute) then
    begin
      Self.DataSet.FieldByName('vidraria').AsInteger := LabRecipientes.IBrwSrcrecno.AsInteger;
      DBEdit8Exit(DBEdit8);
    end;
  finally
    FreeAndNil(LabRecipientes);
  end;
end;

procedure TServicosM.CheckListBox1ClickCheck(Sender: TObject);
var
  oBM: TBookmark;
begin
  with CheckListBox1, Servicos do
  begin
    oBM := Items.Objects[ItemIndex];
    qTipoLaudo.GotoBookmark(oBM);
    if Checked[ItemIndex] then
       U.Data.ExecSQL(
        'insert into labrel_serv (codserv, relato_recno) values (%d, %d)',
          [IBrwSrccodserv.AsInteger, qTipoLaudorecno.AsInteger])
    else
      U.Data.ExecSQL(
        'delete '+
          'from labrel_serv '+
         'where codserv = %d '+
           'and relato_recno = %d',
        [IBrwSrccodserv.AsInteger, qTipoLaudorecno.AsInteger]);
  end;
end;

procedure TServicosM.DBEdit8Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit8.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  fLkp:= TStringList.Create;
  try
    fLkp.Add('descri');

    if U.Data.CheckFK('labtipo_recipiente', 'recno', DBEdit8.Text, fLkp) then
      DataSet.FieldByName('recipiente').AsString := fLkp[0]
    else
    begin
      U.Out.ShowErro('Recipiente não cadastrado.');
      DBEdit8.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TServicosM.FormCreate(Sender: TObject);
begin
  inherited;
  FBookMarks := TList<TBookmark>.Create;
end;

procedure TServicosM.FormDestroy(Sender: TObject);
begin
  FBookMarks.Free;
  inherited;

end;

procedure TServicosM.LoadTipoRel;
begin
  if not Assigned(DataSet) then
    Exit;

  with Servicos, CheckListBox1 do
  try
    qTipoLaudo.First;
    Items.BeginUpdate;
    Items.Clear;
    FBookMarks.Clear;

    while not qTipoLaudo.Eof do
    begin
      FBookMarks.Add(qTipoLaudo.GetBookmark);
      // Adicionando serviço a lista
      Items.Add(Format('%s (%d)', [qTipoLaudodescri.DisplayText, qTipoLaudorecno.AsInteger]));

      qTipoLaudo.Next;
    end;
  finally
    Items.EndUpdate;
  end;
end;

procedure TServicosM.OnDataSet;
begin
  inherited;
  LoadTipoRel;
end;

procedure TServicosM.OnEdit;
begin
  Application.CreateForm(TServicosMDet, ServicosMDet);
  ServicosMDet.DataSet:= ChildDataSet;
  ServicosMDet.ShowModal;
end;

procedure TServicosM.PageControl3Change(Sender: TObject);
begin
  inherited;
  RefreshControls;
end;

procedure TServicosM.RefreshControls;
begin
  inherited;
  if PageControl3.ActivePage = TabSheet2 then
    RefreshTipoRel;
    
  actFindRecipiente.Enabled := Assigned(DataSet) and (DataSet.State in [dsEdit, dsInsert]);
end;

procedure TServicosM.RefreshTipoRel;
begin
  with Servicos, CheckListBox1 do
  try
    Items.BeginUpdate;
    for var i := 0 to Items.Count - 1 do
    begin
      qTipoLaudo.GotoBookmark(FBookMarks[i]);
      Checked[i] := Assigned(DataSet) and not (DataSet.State in [dsEdit, dsInsert])
        and qTipoLaudoServ.Locate('relato_recno', qTipoLaudorecno.AsInteger, []);
    end;
  finally
    Items.EndUpdate;
  end;

end;

end.

