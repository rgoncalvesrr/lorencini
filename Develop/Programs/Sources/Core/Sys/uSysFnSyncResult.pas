unit uSysFnSyncResult;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIWizard, ActnList, StdCtrls, ExtCtrls;

type
  TSysFnSyncResult = class(TIWizard)
    Memo1: TMemo;
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SysFnSyncResult: TSysFnSyncResult;

implementation

{$R *.dfm}

procedure TSysFnSyncResult.Memo1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    actCloseExecute(actClose);
    Key := #0;
  end;
  inherited;
end;

end.
