unit uLabAmostraPedMAmostra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids,
  StdCtrls, Mask, DBCtrls, Buttons;

type
  TLabAmostraPedMAmostra = class(TIDefBrowseEdit)
    Panel2: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel5: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel6: TPanel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Panel7: TPanel;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Panel8: TPanel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Panel9: TPanel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Panel10: TPanel;
    Panel11: TPanel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Panel35: TPanel;
    SpeedButton1: TSpeedButton;
    actFindAmostra: TAction;
    Panel12: TPanel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Panel13: TPanel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    procedure DBEdit7Exit(Sender: TObject);
    procedure actFindAmostraExecute(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  LabAmostraPedMAmostra: TLabAmostraPedMAmostra;

implementation

{$R *.dfm}

uses uLabAmostraPed, mcUtils, DB, uIUtils, uAmostras, ccalendardiff;

procedure TLabAmostraPedMAmostra.actFindAmostraExecute(Sender: TObject);
begin
  inherited;
  Amostras := TAmostras.Create(nil);
  Amostras.FrameData1.CCalendarDiff1.OnChange := nil;
  Amostras.FrameData1.CCalendarDiff1.Interval := diNone;

  try
    Amostras.DisplayMode := dmQuery;
    Amostras.Codigo := LabAmostraPed.IBrwSrccodigo.AsInteger;
    Amostras.Saldo := LabAmostraPed.IBrwSrcConsumo.AsFloat;
    Amostras.ShowModal;

    if (Amostras.Execute) then
    begin
      DataSet.FieldByName('amostra').AsInteger := Amostras.IBrwSrcrecno.AsInteger;
      DBEdit7Exit(DBEdit7);
    end;
  finally
    FreeAndNil(Amostras);
  end;
end;

procedure TLabAmostraPedMAmostra.DBEdit7Exit(Sender: TObject);
var
  fLkp: TStringList;
  ccond: string;
begin
  inherited;
  if mcEmpty(DBEdit7.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  with LabAmostraPed do
    ccond := Format('codigo = %d and saldo >= %s', [IBrwSrccodigo.AsInteger,
      FloatToStr(qPedAmostrasconsumo.AsFloat)]);

  fLkp:= TStringList.Create;
  try
    fLkp.Add('saldo');
    fLkp.Add('comodato');

    if U.Data.CheckFK('labamostras', 'recno', DBEdit7.Text, fLkp, ccond) then
    begin
      DBEdit9.Field.AsString := fLkp[0];
      DBEdit8.Field.AsString := fLkp[1];
    end else
    begin
      U.Out.ShowErro('Não há saldo na amostra informada.');
      DBEdit7.SetFocus;
    end;


  finally
    fLkp.Free;
  end;
end;

procedure TLabAmostraPedMAmostra.RefreshControls;
begin
  inherited;
  actFindAmostra.Enabled := False;

  if not Assigned(DataSet) then
    Exit;

  actFindAmostra.Enabled := DataSet.State in [dsEdit, dsInsert];
end;

end.
