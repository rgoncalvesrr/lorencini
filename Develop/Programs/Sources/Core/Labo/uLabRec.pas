unit uLabRec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, ZSequence, DBCtrls;

type
  TLabRec = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrcdescri: TStringField;
    IBrwSrcrecomenda: TMemoField;
    ZSequence1: TZSequence;
    Panel3: TPanel;
    Panel4: TPanel;
    DBMemo1: TDBMemo;
    Splitter1: TSplitter;
  private
    { Private declarations }
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  LabRec: TLabRec;

implementation

uses uDM, uLabRecM;

{$R *.dfm}

{ TLabRec }

procedure TLabRec.OnEdit;
begin
  LabRecM := TLabRecM.Create(nil);
  try
    LabRecM.DataSet := IBrwSrc;
    LabRecM.ShowModal;
  finally
    FreeAndNil(LabRecM);
  end;
end;

initialization
  RegisterClass(TLabRec);

finalization
  UnRegisterClass(TLabRec);

end.
