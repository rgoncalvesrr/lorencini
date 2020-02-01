unit uLabInst;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, uIUtils, ZSequence;

type
  TLabInst = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrcserie: TStringField;
    IBrwSrcdescri: TStringField;
    IBrwSrcmodelo: TStringField;
    IBrwSrcvalidade: TDateField;
    IBrwSrclabdiag_gp_recno: TIntegerField;
    Label1: TLabel;
    ComboBox1: TComboBox;
    ZSequence1: TZSequence;
    IBrwSrcgrupo: TStringField;
    sLabInstCert: TZSequence;
    uLabInstCert: TZUpdateSQL;
    qLabInstCert: TZQuery;
    dsLabInstCert: TDataSource;
    qLabInstCertlabinst_recno: TIntegerField;
    qLabInstCertrecno: TIntegerField;
    qLabInstCertcodigo: TIntegerField;
    qLabInstCerttecnico: TStringField;
    qLabInstCertemissao: TDateField;
    qLabInstCertvalidade: TDateField;
    qLabInstCertobs: TMemoField;
    qLabInstCertnome_chave: TStringField;
    qLabInstCertcnpj: TStringField;
    qLabInstCerttelefone: TStringField;
    qLabInstCertcertificado: TStringField;
    sLabEns: TZSequence;
    uLabEns: TZUpdateSQL;
    qLabEns: TZQuery;
    dsLabEns: TDataSource;
    qLabEnslabinst_recno: TIntegerField;
    qLabEnsensaio_recno: TIntegerField;
    qLabEnsrecno: TIntegerField;
    qLabEnsnome: TStringField;
    qLabEnsunidade: TStringField;
    qLabEnsmetodo: TStringField;
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
    procedure qLabInstCertAfterInsert(DataSet: TDataSet);
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
    procedure qLabEnsAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    FGPDiag: TComboList;
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  LabInst: TLabInst;

implementation

uses uDM, uLabInstM, iTypes;

{$R *.dfm}

procedure TLabInst.actQueryProcessExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(DataSet) then
    Exit;
    
  if FGPDiag.Selected.Value > 0 then
  begin
    IBrwSrc.SQL.Add(' where i.labdiag_gp_recno = :grupo');
    IBrwSrc.ParamByName('grupo').AsInteger := FGPDiag.Selected.Value;
  end;
  
  G.RefreshDataSet(IBrwSrc);
end;

procedure TLabInst.ComboBox1Change(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TLabInst.FormCreate(Sender: TObject);
begin
  inherited;
  FGPDiag := TComboList.Create(ComboBox1, 'labdiag_gp', 'recno', 'descri');
  ComboBox1.Items.Insert(0, '(Todos)');
  ComboBox1.ItemIndex := 0;
end;

procedure TLabInst.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FGPDiag);
end;

procedure TLabInst.IBrwSrcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if ComboBox1.ItemIndex > 0 then
    IBrwSrclabdiag_gp_recno.AsInteger := FGPDiag.Selected.Value;
end;

procedure TLabInst.IBrwSrcAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qLabInstCert.ParamByName('inst').AsInteger := IBrwSrcrecno.AsInteger;
  qLabEns.ParamByName('inst').AsInteger := IBrwSrcrecno.AsInteger;
  G.RefreshDataSet(qLabInstCert);
  G.RefreshDataSet(qLabEns);
end;

procedure TLabInst.OnEdit;
begin
  LabInstM := TLabInstM.Create(nil);
  try
    LabInstM.ScreenType := stMasterDetail;
    LabInstM.DataSet := IBrwSrc;
    LabInstM.ShowModal;
  finally
    FreeAndNil(LabInstM);
  end;

end;

procedure TLabInst.qLabEnsAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qLabEnslabinst_recno.AsInteger := IBrwSrcrecno.AsInteger;
end;

procedure TLabInst.qLabInstCertAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qLabInstCertlabinst_recno.AsInteger := IBrwSrcrecno.AsInteger;
end;

initialization
  RegisterClass(TLabInst);

finalization
  UnRegisterClass(TLabInst);

end.
