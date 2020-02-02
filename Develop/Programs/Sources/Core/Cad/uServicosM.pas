unit uServicosM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls, ZSqlUpdate, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls,
  JvExStdCtrls, JvCombobox, JvDBCombobox, CheckLst;

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
    Panel13: TPanel;
    Label8: TLabel;
    JvDBComboBox2: TJvDBComboBox;
    TabSheet2: TTabSheet;
    CheckListBox1: TCheckListBox;
    ToolBar2: TToolBar;
    ToolButton5: TToolButton;
    ToolButton15: TToolButton;
    procedure CheckListBox1ClickCheck(Sender: TObject);
    procedure PageControl3Change(Sender: TObject);
  private
    { Private declarations }
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

uses uServicos, uIUtils, uServicosMDet, uDM;

{ TServicosM }

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

procedure TServicosM.LoadTipoRel;
var
  oBM: TBookmark;
begin
  if not Assigned(DataSet) then
    Exit;
    
  with Servicos, CheckListBox1 do
  try
    qTipoLaudo.First;
    Items.BeginUpdate;
    Items.Clear;

    while not qTipoLaudo.Eof do
    begin
      oBM := qTipoLaudo.GetBookmark;
      // Adicionando serviço a lista
      Items.AddObject(Format('%s (%d)', [qTipoLaudodescri.DisplayText, qTipoLaudorecno.AsInteger]), oBM);

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
end;

procedure TServicosM.RefreshTipoRel;
var
  oBM: TBookmark;
  i: Integer;
begin
  with Servicos, CheckListBox1 do
  try
    Items.BeginUpdate;
    for i := 0 to Items.Count - 1 do
    begin
      oBM := Items.Objects[i];
      qTipoLaudo.GotoBookmark(oBM);
      Checked[i] := Assigned(DataSet) and not (DataSet.State in [dsEdit, dsInsert])
        and qTipoLaudoServ.Locate('relato_recno', qTipoLaudorecno.AsInteger, []);
    end;
  finally
    Items.EndUpdate;
  end;

end;

end.

