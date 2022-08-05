unit ufieldnotnull;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uiwizard, ActnList, StdCtrls, ExtCtrls, Buttons;

type
  TFieldsNotNull = class(TIWizard)
    ListBox1: TListBox;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    procedure actOkExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FieldsNotNull: TFieldsNotNull;

implementation

{$R *.dfm}

procedure TFieldsNotNull.actOkExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
