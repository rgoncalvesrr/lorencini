unit uLabTiposLaudosMDiag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, DBCtrls, Mask, Buttons;

type
  TLabTiposLaudosMDiag = class(TIDefBrowseEdit)
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Bevel6: TBevel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBMemo1: TDBMemo;
    actFindDiag: TAction;
    procedure DBEdit1Exit(Sender: TObject);
    procedure actFindDiagExecute(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  LabTiposLaudosMDiag: TLabTiposLaudosMDiag;

implementation

uses uLabTiposLaudos, uIUtils, mcUtils, DB, uLabDiag;

{$R *.dfm}

procedure TLabTiposLaudosMDiag.actFindDiagExecute(Sender: TObject);
begin
  inherited;
  try
    LabDiag := TLabDiag.Create(nil);
    LabDiag.DisplayMode := dmQuery;
    LabDiag.ShowModal;
    if (LabDiag.Execute) then
    begin
      DataSet.FieldByName('labdiag_recno').AsInteger := LabDiag.IBrwSrcrecno.AsInteger;
      DBEdit1Exit(DBEdit1);
    end;
  finally
    FreeAndNil(LabDiag);
  end;
end;

procedure TLabTiposLaudosMDiag.DBEdit1Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit1.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('descri');
    fLkp.Add('diag');
    fLkp.Add('dias');

    if U.Data.CheckFK('labdiag', 'recno', DBEdit1.Text, fLkp) then
    begin
      DataSet.FieldByName('descri').AsString := fLkp[0];
      DataSet.FieldByName('diag').AsString := fLkp[1];
      DataSet.FieldByName('dias').AsString := fLkp[2];
    end
    else
    begin
      U.Out.ShowErro('Diagnóstico não cadastrado.');
      DBEdit1.SetFocus;
    end;
  finally
    FreeAndNil(fLkp);
  end;
end;

procedure TLabTiposLaudosMDiag.RefreshControls;
begin
  inherited;
  if not Assigned(DataSet) then
    Exit;

  actFindDiag.Enabled := DataSet.State in [dsEdit, dsInsert];
end;

end.
