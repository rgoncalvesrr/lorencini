unit uNFSSerie;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons, ComCtrls, ExtCtrls, ToolWin,
  ZSqlUpdate;

type
  TNFSSerie = class(TIDefBrowse)
    IBrwSrcserie: TIntegerField;
    IBrwSrcnf_atual: TIntegerField;
    IBrwSrctipo: TIntegerField;
    ZUpdateSQL1: TZUpdateSQL;
    procedure IBrwSrctipoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBrwSrctipoSetText(Sender: TField; const Text: string);
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    procedure OnEdit; override;
    procedure SetDataSet(const Value: TZQuery); override;
  public
    { Public declarations }
  end;

var
  NFSSerie: TNFSSerie;

implementation

uses uDM, uNFSSerieM;

{$R *.dfm}

procedure TNFSSerie.IBrwSrcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  IBrwSrctipo.AsInteger := 1;
end;

procedure TNFSSerie.IBrwSrctipoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Materiais';
    2: Text := 'Serviços';
  end;
end;

procedure TNFSSerie.IBrwSrctipoSetText(Sender: TField; const Text: string);
begin
  inherited;
  if Text = 'Materiais' then
    Sender.AsInteger := 1
  else
    Sender.AsInteger := 2;
end;

procedure TNFSSerie.OnEdit;
begin
  NFSSerieM := TNFSSerieM.Create(Application);
  inherited CopySecurity(NFSSerieM);
  NFSSerieM.DataSet := DataSet;
  NFSSerieM.ShowModal; 
end;

procedure TNFSSerie.SetDataSet(const Value: TZQuery);
begin
  inherited;
  AllowEdit := False;
  AllowDelete := False;
  RefreshCtrl;
end;

initialization
  RegisterClass(TNFSSerie);


end.
