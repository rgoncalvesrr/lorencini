unit uFrameData;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ExtCtrls, ComCtrls, ccalendardiff;

type
  TFrameData = class(TFrame)
    ComboBox1: TComboBox;
    CCalendarDiff1: TCCalendarDiff;
    procedure ComboBox1Change(Sender: TObject);
  private
  public
    { Public declarations }
  end;

implementation

uses DateUtils;

{$R *.dfm}

procedure TFrameData.ComboBox1Change(Sender: TObject);
begin
  CCalendarDiff1.Interval := TCInterval(TComboBox(Sender).ItemIndex);
end;

end.
