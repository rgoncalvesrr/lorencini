unit uidefeditform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIForm, ActnList, ComCtrls, ToolWin, StdCtrls, db, ExtCtrls;

type
  TIDefEditForm = class(TIForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ControlBar1: TControlBar;
  private
    FState: TDataSetState;
    procedure SetState(const Value: TDataSetState);
    { Private declarations }
  public
    { Public declarations }
    property State: TDataSetState read FState write SetState;
  end;

var
  IDefEditForm: TIDefEditForm;

implementation

{$R *.dfm}
uses uDM, uResources;

{ TIDefEditForm }

procedure TIDefEditForm.SetState(const Value: TDataSetState);
begin
  FState := Value;
end;

end.
