unit uSysVersions;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uiwizard, ActnList, StdCtrls, ExtCtrls, Htmlview;

type
  TSysVersions = class(TIWizard)
    HTMLViewer1: THTMLViewer;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SysVersions: TSysVersions;

implementation

{$R *.dfm}

procedure TSysVersions.FormCreate(Sender: TObject);
begin
  inherited;
  if FileExists('versions.html') then
    HTMLViewer1.LoadFromFile('versions.html');
end;

end.
