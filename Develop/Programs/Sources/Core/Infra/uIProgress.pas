unit uIProgress;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIWizard, ActnList, StdCtrls, ExtCtrls, ComCtrls;

type
  TIProgress = class(TIWizard)
    Label3: TLabel;
    ProgressBar1: TProgressBar;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IProgress: TIProgress;

implementation

{$R *.dfm}

end.
