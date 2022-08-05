unit uLabEnsaiosMRef;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  JvExMask, JvToolEdit, JvBaseEdits, JvDBControls, StdCtrls, DBCtrls, Buttons,
  Mask;

type
  TLabEnsaiosMRef = class(TIDefBrowseEdit)
    Label3: TLabel;
    DBEdit3: TDBEdit;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBComboBox1: TDBComboBox;
    Label10: TLabel;
    JvDBCalcEdit1: TJvDBCalcEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Bevel6: TBevel;
    actFindTipo: TAction;
    procedure DBEdit3Exit(Sender: TObject);
    procedure actFindTipoExecute(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  LabEnsaiosMRef: TLabEnsaiosMRef;

implementation

uses uLabEnsaios, uIUtils, DB, mcutils, uLabTipo;

{$R *.dfm}

procedure TLabEnsaiosMRef.actFindTipoExecute(Sender: TObject);
begin
  inherited;
  try
    LabTipo := TLabTipo.Create(nil);
    LabTipo.DisplayMode := dmQuery;
    LabTipo.ShowModal;
    if (LabTipo.Execute) then
    begin
      DataSet.FieldByName('tipo_recno').AsInteger :=
        LabTipo.IBrwSrcrecno.AsInteger;
      DBEdit3Exit(DBEdit3);
    end;
  finally
    FreeAndNil(LabTipo);
  end;
end;

procedure TLabEnsaiosMRef.DBEdit3Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  if mcEmpty(DBEdit3.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('descri');

    if U.Data.CheckFK('labtipo', 'recno', DBEdit3.Text, fLkp) then
      DataSet.FieldByName('descri').AsString := fLkp[0]
    else
    begin
      U.Out.ShowErro('Tipo de amostra não cadastrada.');
      DBEdit3.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TLabEnsaiosMRef.RefreshControls;
begin
  inherited;
  if not Assigned(DataSet) then
    Exit;

  actFindTipo.Enabled := DataSet.State in [dsEdit, dsInsert];
end;

end.
