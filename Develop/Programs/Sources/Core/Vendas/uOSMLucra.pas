unit uOSMLucra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uiwizard, ActnList, StdCtrls, ExtCtrls, Htmlview, ComCtrls;

type
  TOSMLucra = class(TIWizard)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    htmlSrv: THTMLViewer;
    TabSheet2: TTabSheet;
    htmlMat: THTMLViewer;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OSMLucra: TOSMLucra;

implementation

{$R *.dfm}

end.
