unit uLabEnsaiosMRefs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls,
  Buttons;

type
  TLabEnsaiosMRefs = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Bevel6: TBevel;
    actFindTipo: TAction;
    actFindClasse: TAction;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    SpeedButton3: TSpeedButton;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    JvDBCalcEdit1: TJvDBCalcEdit;
    Label5: TLabel;
    DBComboBox1: TDBComboBox;
    procedure DBEdit3Exit(Sender: TObject);
    procedure actFindTipoExecute(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure actFindClasseExecute(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  LabEnsaiosMRefs: TLabEnsaiosMRefs;

implementation

uses uIUtils, DB, mcUtils, uLabEnsaios, uLabTipo, uLabTensao;

{$R *.dfm}

procedure TLabEnsaiosMRefs.actFindClasseExecute(Sender: TObject);
begin
  inherited;
  try
    LabTensao := TLabTensao.Create(nil);
    LabTensao.DisplayMode := dmQuery;
    LabTensao.ShowModal;
    if (LabTensao.Execute) then
    begin
      DataSet.FieldByName('classe').AsString :=
        LabTensao.IBrwSrcclasse.AsString;
      DBEdit7Exit(DBEdit7);
    end;
  finally
    FreeAndNil(LabTensao);
  end;
end;

procedure TLabEnsaiosMRefs.actFindTipoExecute(Sender: TObject);
begin
  inherited;
  try
    LabTipo := TLabTipo.Create(nil);
    LabTipo.DisplayMode := dmQuery;
    LabTipo.ShowModal;
    if (LabTipo.Execute) then
    begin
      DataSet.FieldByName('tpamostra_recno').AsInteger :=
        LabTipo.IBrwSrcrecno.AsInteger;
      DBEdit3Exit(DBEdit3);
    end;
  finally
    FreeAndNil(LabTipo);
  end;
end;

procedure TLabEnsaiosMRefs.DBEdit3Exit(Sender: TObject);
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

procedure TLabEnsaiosMRefs.DBEdit7Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  if mcEmpty(DBEdit7.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('min');
    fLkp.Add('max');

    if U.Data.CheckFK('labtensao', 'classe', QuotedStr(DBEdit7.Text), fLkp) then
    begin
      DataSet.FieldByName('min').AsString := fLkp[0];
      DataSet.FieldByName('max').AsString := fLkp[1];
    end
    else
    begin
      U.Out.ShowErro('Classe de tensão não cadastrada.');
      DBEdit7.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TLabEnsaiosMRefs.RefreshControls;
begin
  inherited;
  if not Assigned(DataSet) then
    Exit;

  actFindTipo.Enabled := DataSet.State in [dsEdit, dsInsert];
  actFindClasse.Enabled := DataSet.State in [dsEdit, dsInsert];
end;

end.
