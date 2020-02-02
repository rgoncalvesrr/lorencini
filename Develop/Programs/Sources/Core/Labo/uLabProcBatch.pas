unit uLabProcBatch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uiwizard, ActnList, StdCtrls, ExtCtrls, DBCtrls, Mask, JvExMask,
  JvToolEdit, JvBaseEdits, Buttons;

type
  TLabProcBatch = class(TIWizard)
    Label3: TLabel;
    jvSeringas: TJvCalcEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label4: TLabel;
    jvFrascos: TJvCalcEdit;
    BitBtn1: TBitBtn;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    procedure jvSeringasChange(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LabProcBatch: TLabProcBatch;

implementation

uses uLabProc, uIUtils;

{$R *.dfm}

procedure TLabProcBatch.actOkExecute(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TLabProcBatch.jvSeringasChange(Sender: TObject);
begin
  inherited;
  actOk.Enabled := (jvSeringas.Value > 0) or (jvFrascos.Value > 0); 
end;

end.
