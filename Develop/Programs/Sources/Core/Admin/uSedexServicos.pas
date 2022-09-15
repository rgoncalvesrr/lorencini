unit uSedexServicos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin;

type
  TSedexServicos = class(TIDefBrowse)
    IBrwSrcservico: TStringField;
    IBrwSrcdescri: TStringField;
    IBrwSrcativo: TBooleanField;
    IBrwSrcrecno: TIntegerField;
  private
    { Private declarations }
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  SedexServicos: TSedexServicos;

implementation

uses uDM, uSedexServicosM;

{$R *.dfm}

{ TSedexServicos }

procedure TSedexServicos.OnEdit;
begin
  SedexServicosM := TSedexServicosM.Create(nil);
  try
    SedexServicosM.DataSet := DataSet;
    SedexServicosM.ShowModal;  
  finally
    FreeAndNil(SedexServicosM);
  end;

end;

initialization
  RegisterClass(TSedexServicos);

finalization
  UnRegisterClass(TSedexServicos);

end.
