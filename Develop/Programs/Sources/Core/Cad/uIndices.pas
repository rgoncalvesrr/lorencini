unit uIndices;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ActnList, Grids, DBGrids, ComCtrls, StdCtrls, Buttons, Mask, ExtCtrls, ToolWin,
  ZSqlUpdate;

type
  TIndices = class(TIDefBrowse)
    IBrwSrcvigencia: TDateField;
    IBrwSrciss: TFloatField;
    IBrwSrcpis: TFloatField;
    IBrwSrccofins: TFloatField;
    IBrwSrcirpj_mat: TFloatField;
    IBrwSrccssl_mat: TFloatField;
    IBrwSrccssl_srv: TFloatField;
    IBrwSrcirpj_srv: TFloatField;
    IBrwSrcirpf: TFloatField;
    IBrwSrcci: TFloatField;
    IBrwSrccom_srv: TFloatField;
    IBrwSrccom_mat: TFloatField;
    updIBRWSrc: TZUpdateSQL;
    IBrwSrcrecno: TIntegerField;
    IBrwSrcpis_srv: TFloatField;
    IBrwSrccofins_srv: TFloatField;
    IBrwSrcinss_srv: TFloatField;
    IBrwSrcinss_mat: TFloatField;
    IBrwSrcaliq_srv: TFloatField;
    IBrwSrcaliq_mat: TFloatField;
    IBrwSrcregime: TIntegerField;
    IBrwSrcicms: TFloatField;
    procedure IBrwSrcregimeGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBrwSrcregimeSetText(Sender: TField; const Text: string);
    procedure IBrwSrcTotAliqChange(Sender: TField);
  private
    { Private declarations }
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  Indices: TIndices;

implementation

{$R *.dfm}

uses uDM, uIndicesM;

{ TIndices }

procedure TIndices.IBrwSrcTotAliqChange(Sender: TField);
begin
  inherited;
  
  if not (IBrwSrc.State in [dsEdit, dsInsert]) then
    Exit;

  IBrwSrcaliq_srv.AsFloat :=
    IBrwSrcpis_srv.AsFloat + IBrwSrccofins_srv.AsFloat +
    IBrwSrciss.AsFloat + IBrwSrccssl_srv.AsFloat +
    IBrwSrcinss_srv.AsFloat + IBrwSrcirpj_srv.AsFloat;

  IBrwSrcaliq_mat.AsFloat :=
    IBrwSrcpis.AsFloat + IBrwSrccofins.AsFloat +
    IBrwSrcicms.AsFloat + IBrwSrccssl_mat.AsFloat +
    IBrwSrcinss_mat.AsFloat + IBrwSrcirpj_mat.AsFloat;
end;

procedure TIndices.IBrwSrcregimeGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Lucro Presumido';
    2: Text := 'Simples Nacional';
  end;
end;

procedure TIndices.IBrwSrcregimeSetText(Sender: TField; const Text: string);
begin
  if Text = 'Lucro Presumido' then
     Sender.AsInteger := 1;

  if Text = 'Simples Nacional' then
     Sender.AsInteger := 2;
end;

procedure TIndices.OnEdit;
begin
  Application.CreateForm(TIndicesM, IndicesM);
  IndicesM.DataSet:= IBrwSrc;
  IndicesM.ShowModal;
end;

initialization
  RegisterClass(TIndices);
  
end.
