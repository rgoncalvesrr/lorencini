unit uR00010;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uSysReportsParam, ActnList, StdCtrls, ExtCtrls, ComCtrls, ToolWin,
  Mask, JvExMask, JvToolEdit, JvBaseEdits;

type
  TR00010 = class(TSysReportsParam)
    GroupBox1: TGroupBox;
    Label3: TLabel;
    nfDe: TJvCalcEdit;
    serDe: TJvCalcEdit;
    Label4: TLabel;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    nfAte: TJvCalcEdit;
    serAte: TJvCalcEdit;
    procedure nfDeChange(Sender: TObject);
    procedure serDeChange(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  R00010: TR00010;

implementation

uses uDMReport, uIUtils, ZDataSet, uResources;

{$R *.dfm}

procedure TR00010.actOkExecute(Sender: TObject);
var
  Consulta: TZReadOnlyQuery;
begin
  inherited;

  case Report.ID of
    10: Consulta := DMReport.R00010;
    15: Consulta := DMReport.R00015;
  end;
  
  with Consulta do
  begin
    ParamByName('nfde').AsInteger := round(nfDe.Value);
    ParamByName('nfate').AsInteger := round(nfAte.Value);
    ParamByName('seriede').AsInteger := round(serDe.Value);
    ParamByName('serieate').AsInteger := round(serAte.Value);
  end;

  G.RefreshDataSet(Consulta);
end;

procedure TR00010.nfDeChange(Sender: TObject);
begin
  inherited;
  nfAte.Value := nfDe.Value;
end;

procedure TR00010.serDeChange(Sender: TObject);
begin
  inherited;
  serAte.Value := serDe.Value;
end;

initialization
  RegisterClass(TR00010);

finalization
  UnRegisterClass(TR00010);

end.
