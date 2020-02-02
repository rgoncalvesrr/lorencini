unit uPedProducao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIWizard, ActnList, StdCtrls, ExtCtrls, Mask, DBCtrls, Buttons;

type
  TPedProducao = class(TIWizard)
    Panel8: TPanel;
    Panel9: TPanel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Panel10: TPanel;
    Label14: TLabel;
    DBEdit19: TDBEdit;
    Panel16: TPanel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel4: TPanel;
    Label8: TLabel;
    ComboBox1: TComboBox;
    procedure actOkExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PedProducao: TPedProducao;

implementation

uses uPed;

{$R *.dfm}

procedure TPedProducao.actOkExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
