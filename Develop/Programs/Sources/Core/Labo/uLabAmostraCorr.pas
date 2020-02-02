unit uLabAmostraCorr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIForm, ActnList, StdCtrls, Buttons;

type
  TLabAmostraCorr = class(TIForm)
    Label1: TLabel;
    Label2: TLabel;
    mEtiquetas: TMemo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure mEtiquetasChange(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure mEtiquetasKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LabAmostraCorr: TLabAmostraCorr;

implementation

uses uIUtils;

{$R *.dfm}

procedure TLabAmostraCorr.actOkExecute(Sender: TObject);
var
  stmt: string;
begin
  inherited;
  stmt := 'update labamostras '+
         'set estado = 1 '+
       'where comodato_recno in (%s) ';

  if not ((U.Info.UserName = 'DAGOBERTO') or (U.Info.UserName = 'RICARDO')) then
    stmt := stmt + 'and estado <> 3';
  try
    U.ExecuteSQL(Format(stmt, [Trim(mEtiquetas.Text)]));

    G.Out.ShowInfo('Comando executado com êxito.');
    actCancelExecute(actCancel);
  except
    on e:Exception do
      G.Out.ShowErro('Erro ao processar etiquetas. Erro: %s', [e.Message]);
  end;
end;

procedure TLabAmostraCorr.mEtiquetasChange(Sender: TObject);
begin
  inherited;
  actOk.Enabled := Trim(mEtiquetas.Text) <> EmptyStr;
end;

procedure TLabAmostraCorr.mEtiquetasKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9', ',', #8]) then
    Key := #0;

end;

initialization
  RegisterClass(TLabAmostraCorr);

finalization
  UnRegisterClass(TLabAmostraCorr);

end.
