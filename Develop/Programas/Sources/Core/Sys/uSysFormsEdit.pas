unit uSysFormsEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, ComCtrls, ExtCtrls, ToolWin, StdCtrls, Mask,
  DBCtrls, Grids, DBGrids;

type
  TSysFormsEdit = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
  private
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  SysFormsEdit: TSysFormsEdit;

implementation

uses uSysForms, uSysFormsEditM;

{$R *.dfm}

{ TSysFormsEdit }

procedure TSysFormsEdit.OnEdit;
begin
  SysFormsEditM := TSysFormsEditM.Create(nil);
  try
    SysFormsEditM.DataSet := ChildDataSet;
    SysFormsEditM.ShowModal;
  finally
    FreeAndNil(SysFormsEditM);
  end;

end;

end.
