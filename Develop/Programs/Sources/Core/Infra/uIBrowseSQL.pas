unit uIBrowseSQL;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uiwizard, ActnList, StdCtrls, ExtCtrls;

type
  TIDefBrowseSQL = class(TIWizard)
    Memo1: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IDefBrowseSQL: TIDefBrowseSQL;

implementation

{$R *.dfm}

end.
