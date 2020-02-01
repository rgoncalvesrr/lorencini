unit uR00012;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uSysReportsParam, ActnList, StdCtrls, ExtCtrls, ComCtrls, ToolWin;

type
  TR00012 = class(TSysReportsParam)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  R00012: TR00012;

implementation

{$R *.dfm}

initialization
  RegisterClass(TR00012);

finalization
  UnRegisterClass(TR00012);

end.
