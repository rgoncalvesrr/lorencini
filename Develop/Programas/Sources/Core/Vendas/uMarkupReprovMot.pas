unit uMarkupReprovMot;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIForm, ActnList, StdCtrls, Buttons, ExtCtrls;

type
  TMarkupReprovMot = class(TIForm)
    Label1: TLabel;
    Memo1: TMemo;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure Memo1Change(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MarkupReprovMot: TMarkupReprovMot;

implementation

{$R *.dfm}

procedure TMarkupReprovMot.actOkExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TMarkupReprovMot.Memo1Change(Sender: TObject);
begin
  inherited;
  actOk.Enabled := Length(Trim(Memo1.Lines.Text)) >= 10
end;

end.
