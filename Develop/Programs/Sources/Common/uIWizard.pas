unit uiwizard;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIForm, ActnList, ExtCtrls, StdCtrls, System.Actions;

type
  TIWizard = class(TIForm)
    Panel1: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Shape1: TShape;
    bvDiv: TBevel;
    pnTitle: TPanel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IWizard: TIWizard;

implementation

uses uDM, uResources;

{$R *.dfm}

procedure TIWizard.FormShow(Sender: TObject);
begin
  inherited;
  Image1.AutoSize := False;
  Image1.AutoSize := True;
end;

end.
