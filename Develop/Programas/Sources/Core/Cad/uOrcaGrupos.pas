unit uOrcaGrupos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons, ComCtrls, ExtCtrls, ToolWin,
  ZSequence, ZSqlUpdate;

type
  TOrcaGrupos = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrcdescri: TStringField;
    ZSequence1: TZSequence;
    ZUpdateSQL1: TZUpdateSQL;
    IBrwSrcreqsrv: TBooleanField;
    IBrwSrcreqmat: TBooleanField;
    IBrwSrcreqmo: TBooleanField;
    IBrwSrcmat_bdi: TFloatField;
    IBrwSrcmat_comissao: TFloatField;
    IBrwSrcserv_bdi: TFloatField;
    IBrwSrcserv_comissao: TFloatField;
    IBrwSrcatividade: TIntegerField;
    IBrwSrcativdescri: TMemoField;
    IBrwSrcativgrupo: TStringField;
    IBrwSrciss: TFloatField;
    IBrwSrcvalidade: TIntegerField;
    actDoc: TAction;
    Agenda2: TMenuItem;
    ToolButton12: TToolButton;
    procedure IBrwSrcreqsrvGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBrwSrcreqsrvSetText(Sender: TField; const Text: string);
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
    procedure IBrwSrcatividadeChange(Sender: TField);
    procedure actDocExecute(Sender: TObject);
  private
    { Private declarations }
    procedure OnEdit; override;
    procedure RefreshCtrl; override;
  public
    { Public declarations }
  end;

var
  OrcaGrupos: TOrcaGrupos;

implementation

uses uDM, uOrcaGruposM, uDoc;

{$R *.dfm}

{ TOrcaGrupos }

procedure TOrcaGrupos.actDocExecute(Sender: TObject);
begin
  inherited;
  Doc := TDoc.Create(nil);
  try
    Doc._Table := 'orca_grupo';
    Doc._Recno := IBrwSrcrecno.AsInteger;
    Doc.ShowModal;
  finally
    FreeAndNil(Doc);
  end;
end;

procedure TOrcaGrupos.IBrwSrcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  IBrwSrcmat_bdi.AsFloat := 0;
  IBrwSrcmat_comissao.AsFloat := 0;
  IBrwSrcserv_bdi.AsFloat := 0;
  IBrwSrcserv_comissao.AsFloat := 0;
  IBrwSrcvalidade.AsInteger := 15;
end;

procedure TOrcaGrupos.IBrwSrcatividadeChange(Sender: TField);
begin
  inherited;
  if not (Sender.DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  if not IBrwSrcatividade.IsNull then
    Exit;

  IBrwSrcativdescri.SetData(nil);
  IBrwSrcativgrupo.SetData(nil);
  IBrwSrciss.AsFloat := 0;
end;

procedure TOrcaGrupos.IBrwSrcreqsrvGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  if Sender.AsBoolean then
    Text := 'Sim'
  else
    Text := 'Não';
end;

procedure TOrcaGrupos.IBrwSrcreqsrvSetText(Sender: TField; const Text: string);
begin
  inherited;
  
  if (Sender.DataSet.State in [dsEdit, dsInsert]) then
    Sender.AsBoolean := Text[1] = 'S';
end;

procedure TOrcaGrupos.OnEdit;
begin
  try
    OrcaGruposM := TOrcaGruposM.Create(nil);
    OrcaGruposM.DataSet := IBrwSrc;
    OrcaGruposM.ShowModal;
  finally
    FreeAndNil(OrcaGruposM);
  end;
end;

procedure TOrcaGrupos.RefreshCtrl;
begin
  inherited;
  if not Assigned(DataSet) then
    Exit;

  actDoc.Enabled := (DataSet.State = dsBrowse) and (not DataSet.IsEmpty);
end;

initialization
  RegisterClass(TOrcaGrupos);

finalization
  UnRegisterClass(TOrcaGrupos);
  
end.
