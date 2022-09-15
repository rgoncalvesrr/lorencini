unit uLabRefsM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  Buttons, StdCtrls, Mask, DBCtrls, JvExMask, JvToolEdit, JvBaseEdits,
  JvDBControls;

type
  TLabRefsM = class(TIDefBrowseEdit)
    Label3: TLabel;
    DBEdit3: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    actFindTipo: TAction;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    SpeedButton2: TSpeedButton;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    SpeedButton3: TSpeedButton;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    JvDBCalcEdit1: TJvDBCalcEdit;
    Label10: TLabel;
    actFindEnsaios: TAction;
    actFindTensao: TAction;
    Label11: TLabel;
    DBComboBox1: TDBComboBox;
    procedure DBEdit3Exit(Sender: TObject);
    procedure actFindTipoExecute(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure actFindEnsaiosExecute(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure actFindTensaoExecute(Sender: TObject);
  private
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  LabRefsM: TLabRefsM;

implementation

uses uLabRefs, mcUtils, DB, uIUtils, uLabTipo, uLabEnsaios, uLabTensao;

{$R *.dfm}

procedure TLabRefsM.actFindEnsaiosExecute(Sender: TObject);
begin
  LabEnsaios := TLabEnsaios.Create(nil);
  try
    LabEnsaios.DisplayMode := dmQuery;
    LabEnsaios.ShowModal;
    if (LabEnsaios.Execute) then
    begin
      DataSet.FieldByName('ensaio_recno').AsInteger :=
        LabEnsaios.IBrwSrcrecno.AsInteger;
      DBEdit1Exit(DBEdit1);
    end;
  finally
    FreeAndNil(LabEnsaios);
  end;

end;

procedure TLabRefsM.actFindTensaoExecute(Sender: TObject);
begin
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

procedure TLabRefsM.actFindTipoExecute(Sender: TObject);
begin
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

procedure TLabRefsM.DBEdit1Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  if mcEmpty(DBEdit1.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('nome');
    fLkp.Add('unidade');
    fLkp.Add('metodo');

    if U.Data.CheckFK('vensaios', 'recno', DBEdit1.Text, fLkp) then
    begin
      DataSet.FieldByName('nome').AsString := fLkp[0];
      DataSet.FieldByName('unidade').AsString := fLkp[1];
      DataSet.FieldByName('metodo').AsString := fLkp[2];
    end
    else
    begin
      U.Out.ShowErro('Ensaio não cadastrado.');
      DBEdit1.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TLabRefsM.DBEdit3Exit(Sender: TObject);
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

procedure TLabRefsM.DBEdit7Exit(Sender: TObject);
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

procedure TLabRefsM.RefreshControls;
begin
  inherited;
  if not Assigned(DataSet) then
    Exit;

  actFindTipo.Enabled := DataSet.State in [dsEdit, dsInsert];
  actFindEnsaios.Enabled := DataSet.State in [dsEdit, dsInsert];
  actFindTensao.Enabled := DataSet.State in [dsEdit, dsInsert];
end;

end.
