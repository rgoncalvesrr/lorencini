unit uCotaCancelar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIWizard, ActnList, StdCtrls, ExtCtrls, Buttons;

type
  TCotaCancelar = class(TIWizard)
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    RadioGroup1: TRadioGroup;
    procedure actOkExecute(Sender: TObject);
  private
    FMotivo: Integer;
    procedure SetMotivo(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property Motivo: Integer read FMotivo write SetMotivo;
  end;

var
  CotaCancelar: TCotaCancelar;

implementation

{$R *.dfm}

procedure TCotaCancelar.actOkExecute(Sender: TObject);
begin
  inherited;
  Motivo := RadioGroup1.ItemIndex + 10;
  Close;
end;

procedure TCotaCancelar.SetMotivo(const Value: Integer);
begin
  FMotivo := Value;
end;

end.
