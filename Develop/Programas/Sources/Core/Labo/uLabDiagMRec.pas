unit uLabDiagMRec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  Buttons, StdCtrls, Mask, DBCtrls;

type
  TLabDiagMRec = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Bevel6: TBevel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBMemo1: TDBMemo;
    actFindRec: TAction;
    procedure DBEdit3Exit(Sender: TObject);
    procedure actFindRecExecute(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  LabDiagMRec: TLabDiagMRec;

implementation

uses uLabDiag, uIUtils, mcUtils, DB, uLabRec;

{$R *.dfm}

procedure TLabDiagMRec.actFindRecExecute(Sender: TObject);
begin
  inherited;
  try
    LabRec := TLabRec.Create(nil);
    LabRec.DisplayMode := dmQuery;
    LabRec.ShowModal;
    if (LabRec.Execute) then
    begin
      DataSet.FieldByName('labrec_recno').AsInteger := LabRec.IBrwSrcrecno.AsInteger;
      DBEdit3Exit(DBEdit3);
    end;
  finally
    FreeAndNil(LabRec);
  end;
end;

procedure TLabDiagMRec.DBEdit3Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit3.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('descri');
    fLkp.Add('recomenda');

    if U.Data.CheckFK('labrec', 'recno', DBEdit3.Text, fLkp) then
    begin
      DataSet.FieldByName('descri').AsString := fLkp[0];
      DataSet.FieldByName('recomenda').AsString := fLkp[1];
    end
    else
    begin
      U.Out.ShowErro('Recomendação não cadastrada.');
      DBEdit3.SetFocus;
    end;
  finally
    FreeAndNil(fLkp);
  end;
end;

procedure TLabDiagMRec.RefreshControls;
begin
  inherited;
  if not Assigned(DataSet) then
    Exit;

  actFindRec.Enabled := DataSet.State in [dsEdit, dsInsert];
end;

end.
