unit uFinNaturezas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ActnList, Grids, DBGrids, ComCtrls, StdCtrls, Buttons, Mask, ExtCtrls, ToolWin,
  ZSqlUpdate, ZSequence;

type
  TFinNaturezas = class(TIDefBrowse)
    IBrwSrctipo: TStringField;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    zCategoria: TZQuery;
    dsCategoria: TDataSource;
    Splitter1: TSplitter;
    zCategoriacategoria: TIntegerField;
    zCategoriadescri: TStringField;
    IBrwSrcnatureza: TIntegerField;
    IBrwSrcdescri: TStringField;
    IBrwSrccategoria: TIntegerField;
    IBrwSrcrecno: TIntegerField;
    sIBrwSrc: TZSequence;
    procedure IBrwSrctipoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBrwSrctipoSetText(Sender: TField; const Text: string);
    procedure zCategoriaAfterScroll(DataSet: TDataSet);
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    procedure OnEdit; override;
    procedure OnLoad; override; 
  public
    { Public declarations }
  end;

var
  FinNaturezas: TFinNaturezas;

implementation

uses uDM, uFinNaturezasM, uFinNaturezasCategM;

{$R *.dfm}

procedure TFinNaturezas.IBrwSrcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  IBrwSrctipo.AsString := 'D';
  IBrwSrccategoria.AsInteger := zCategoriacategoria.AsInteger;
end;

procedure TFinNaturezas.IBrwSrctipoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if (Sender.AsString = EmptyStr) then
    exit;

  case Sender.AsString[1] of
    'R': Text := 'Receita';
    'D': Text := 'Despesa';
  end;
end;

procedure TFinNaturezas.IBrwSrctipoSetText(Sender: TField; const Text: string);
begin
  Sender.AsString := Text[1];
end;

procedure TFinNaturezas.OnEdit;
begin
  case DataSet.Tag of
    0:
      try
        FinNaturezasM := TFinNaturezasM.Create(Application);
        FinNaturezasM.DataSet := DataSet;
        FinNaturezasM.ShowModal;
      finally
        FinNaturezasM.Free;
      end;
    1:
      try
        FinNaturezasCategM := TFinNaturezasCategM.Create(Application);
        FinNaturezasCategM.DataSet := DataSet;
        FinNaturezasCategM.ShowModal;
      finally
        FinNaturezasCategM.Free;
      end;
    else
      inherited;
  end;

end;

procedure TFinNaturezas.OnLoad;
begin
  DBGridEnter(DBGrid2);
  inherited;
end;

procedure TFinNaturezas.zCategoriaAfterScroll(DataSet: TDataSet);
begin
  inherited;
  IBrwSrc.ParamByName('categoria').AsInteger := zCategoriacategoria.AsInteger;
  if (IBrwSrc.Active) then
    IBrwSrc.Refresh
  else
    IBrwSrc.Open;
end;

initialization
  RegisterClass(TFinNaturezas);

finalization
  UnRegisterClass(TFinNaturezas);

end.
