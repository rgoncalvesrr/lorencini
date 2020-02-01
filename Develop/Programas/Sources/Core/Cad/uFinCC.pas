unit uFinCC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons, ComCtrls, ExtCtrls, ToolWin,
  ZSqlUpdate, ZSequence;

type
  TFinCC = class(TIDefBrowse)
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    Splitter1: TSplitter;
    dsBancos: TDataSource;
    zBancos: TZQuery;
    zBancosbanco: TIntegerField;
    zBancosdescri: TStringField;
    IBrwSrccc: TStringField;
    IBrwSrcbanco: TIntegerField;
    IBrwSrcagencia: TStringField;
    IBrwSrcdescri: TStringField;
    IBrwSrcconciliacao: TDateField;
    uBanco: TZUpdateSQL;
    ZSequence1: TZSequence;
    sBanco: TZSequence;
    zBancosrecno: TIntegerField;
    IBrwSrcrecno: TIntegerField;
    procedure zBancosAfterScroll(DataSet: TDataSet);
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
    procedure OnEdit; override;
    procedure OnLoad; override;
  public
    { Public declarations }
  end;

var
  FinCC: TFinCC;

implementation

uses uDM, uFinCCBancosM, uIUtils, uFinCCM;

{$R *.dfm}

{ TFinCC }

procedure TFinCC.IBrwSrcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  IBrwSrcbanco.AsInteger := zBancosbanco.AsInteger;
end;

procedure TFinCC.OnEdit;
begin
  case DataSet.Tag of
    0:
    begin
      FinCCM := TFinCCM.Create(Application);
      FinCCM.DataSet := DataSet;
      FinCCM.ShowModal;
    end;
    1:
    begin
      FinCCBancosM := TFinCCBancosM.Create(Application);
      FinCCBancosM.DataSet := DataSet;
      FinCCBancosM.ShowModal; 
    end;
  else
    inherited;
  end;

end;

procedure TFinCC.OnLoad;
begin
  DBGridEnter(DBGrid2);
  inherited;
end;

procedure TFinCC.zBancosAfterScroll(DataSet: TDataSet);
begin
  inherited;
  IBrwSrc.ParamByName('banco').AsInteger := zBancosbanco.AsInteger;
  G.RefreshDataSet(IBrwSrc);
end;

initialization
  RegisterClass(TFinCC);

finalization
  UnRegisterClass(TFinCC);
  
end.
