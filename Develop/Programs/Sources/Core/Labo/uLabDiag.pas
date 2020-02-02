unit uLabDiag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset, uIUtils,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, ZSequence, DBCtrls, JvExStdCtrls, JvCombobox;

type
  TLabDiag = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrcdiag: TMemoField;
    IBrwSrcdias: TIntegerField;
    ZSequence1: TZSequence;
    Panel3: TPanel;
    Splitter1: TSplitter;
    Panel4: TPanel;
    DBMemo1: TDBMemo;
    IBrwSrcdescri: TStringField;
    IBrwSrclabdiag_gp_recno: TIntegerField;
    Label1: TLabel;
    ComboBox1: TComboBox;
    IBrwSrcgrupo: TStringField;
    sLaudos: TZSequence;
    uLaudos: TZUpdateSQL;
    qLaudos: TZQuery;
    dsLaudos: TDataSource;
    qLaudoslabdiag_recno: TIntegerField;
    qLaudosrelato_recno: TIntegerField;
    qLaudosdescri: TStringField;
    qLaudosativo: TBooleanField;
    qLaudosrecno: TIntegerField;
    dsRec: TDataSource;
    qRec: TZQuery;
    uRec: TZUpdateSQL;
    sRec: TZSequence;
    qReclabdiag_recno: TIntegerField;
    qReclabrec_recno: TIntegerField;
    qRecdescri: TStringField;
    qRecrecomenda: TMemoField;
    qRecrecno: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qLaudosAfterInsert(DataSet: TDataSet);
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
    procedure qRecAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    FGPDiag: TComboList;
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  LabDiag: TLabDiag;

implementation

uses uDM, uLabDiagM, iTypes;

{$R *.dfm}

{ TLabDiag }

procedure TLabDiag.actQueryProcessExecute(Sender: TObject);
begin
  inherited;

  if not Assigned(DataSet) then
    Exit;
    
  if FGPDiag.Selected.Value > 0 then
  begin
    IBrwSrc.SQL.Add(' where d.labdiag_gp_recno = :grupo');
    IBrwSrc.ParamByName('grupo').AsInteger := FGPDiag.Selected.Value;
  end;
  
  G.RefreshDataSet(IBrwSrc);
end;

procedure TLabDiag.ComboBox1Change(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TLabDiag.FormCreate(Sender: TObject);
begin
  inherited;
  FGPDiag := TComboList.Create(ComboBox1, 'labdiag_gp', 'recno', 'descri');
  ComboBox1.Items.Insert(0, '(Todos)');
  ComboBox1.ItemIndex := 0;
end;

procedure TLabDiag.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FGPDiag);
  inherited;
end;

procedure TLabDiag.FormShow(Sender: TObject);
begin
  inherited;
  DBGrid1.SetFocus;
end;

procedure TLabDiag.IBrwSrcAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qLaudos.ParamByName('diag').AsInteger := IBrwSrcrecno.AsInteger;
  qRec.ParamByName('diag').AsInteger := IBrwSrcrecno.AsInteger;
  G.RefreshDataSet(qLaudos);
  G.RefreshDataSet(qRec);
end;

procedure TLabDiag.OnEdit;
begin
  LabDiagM := TLabDiagM.Create(nil);
  try
    LabDiagM.DataSet := IBrwSrc;
    LabDiagM.ScreenType := stMasterDetail;
    LabDiagM.ShowModal;
  finally
    FreeAndNil(LabDiagM);
  end;

end;

procedure TLabDiag.qLaudosAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qLaudoslabdiag_recno.AsInteger := IBrwSrcrecno.AsInteger;
end;

procedure TLabDiag.qRecAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qReclabdiag_recno.AsInteger := IBrwSrcrecno.AsInteger;
end;

initialization
  RegisterClass(TLabDiag);

finalization
  UnRegisterClass(TLabDiag);

end.
