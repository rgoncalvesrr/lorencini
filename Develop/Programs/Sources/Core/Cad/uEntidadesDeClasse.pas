unit uEntidadesDeClasse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ActnList, ComCtrls, ToolWin,
  ExtCtrls, Grids, DBGrids, StdCtrls, Mask, Buttons, ZSequence;

type
  TEntidadesDeClasse = class(TIDefBrowse)
    IBrwSrcsigla: TStringField;
    IBrwSrcdescri: TStringField;
    IBrwSrcrecno: TIntegerField;
    sIbrwSrc: TZSequence;
  private
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  EntidadesDeClasse: TEntidadesDeClasse;

implementation

{$R *.dfm}

uses uDM, uEntidadesDeClasseM;

{ TEntidadesDeClasse }

procedure TEntidadesDeClasse.OnEdit;
begin
  EntidadesDeClasseM := TEntidadesDeClasseM.Create(nil);
  try
    EntidadesDeClasseM.DataSet := IBrwSrc;
    EntidadesDeClasseM.ShowModal;
  finally
    FreeAndNil(EntidadesDeClasseM);
  end;

end;

initialization
  RegisterClass(TEntidadesDeClasse);

finalization
  UnRegisterClass(TEntidadesDeClasse);

end.
