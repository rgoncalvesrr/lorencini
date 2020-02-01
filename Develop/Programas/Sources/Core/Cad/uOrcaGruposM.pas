unit uOrcaGruposM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls, JvExStdCtrls, JvCombobox, JvDBCombobox, Buttons,
  JvExMask, JvToolEdit, JvBaseEdits, JvDBControls;

type
  TOrcaGruposM = class(TIDefBrowseEdit)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel7: TPanel;
    Label3: TLabel;
    DBComboBox1: TDBComboBox;
    Panel6: TPanel;
    Label4: TLabel;
    DBComboBox2: TDBComboBox;
    Panel8: TPanel;
    Label5: TLabel;
    DBComboBox3: TDBComboBox;
    Panel9: TPanel;
    Panel10: TPanel;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Panel14: TPanel;
    SpeedButton3: TSpeedButton;
    Panel11: TPanel;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Panel12: TPanel;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    actFindAtiv: TAction;
    Panel15: TPanel;
    GroupBox1: TGroupBox;
    Panel18: TPanel;
    Label12: TLabel;
    JvDBCalcEdit4: TJvDBCalcEdit;
    Panel16: TPanel;
    Label10: TLabel;
    JvDBCalcEdit1: TJvDBCalcEdit;
    GroupBox2: TGroupBox;
    Panel17: TPanel;
    Panel20: TPanel;
    Panel23: TPanel;
    Label15: TLabel;
    DBMemo1: TDBMemo;
    GroupBox3: TGroupBox;
    Panel13: TPanel;
    Label9: TLabel;
    JvDBCalcEdit5: TJvDBCalcEdit;
    Panel21: TPanel;
    Label14: TLabel;
    JvDBCalcEdit6: TJvDBCalcEdit;
    Label11: TLabel;
    DBEdit6: TDBEdit;
    procedure DBEdit3Exit(Sender: TObject);
    procedure actFindAtivExecute(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  OrcaGruposM: TOrcaGruposM;

implementation

uses uOrcaGrupos, mcutils, iTypes, DB, uIUtils, uTextos_OS;

{$R *.dfm}

procedure TOrcaGruposM.actFindAtivExecute(Sender: TObject);
begin
  inherited;
  Textos_OS := TTextos_OS.Create(nil);
  try
    Textos_OS.DisplayMode := dmQuery;
    
    if (DataSet.State = dsEdit) and not DataSet.FieldByName('atividade').IsNull then
    begin
      Textos_OS.Atividades.ItemIndex := Textos_OS.Atividades.IndexOf(DBEdit4.Text);
      Textos_OS.ComboBox1.Text := DBEdit4.Text;
      Textos_OS.actQueryProcessExecute(Textos_OS.actQueryProcess);
      Textos_OS.IBrwSrc.Locate('item', DataSet.FieldByName('atividade').AsInteger, []);
    end;
    Textos_OS.ShowModal;
    if (Textos_OS.Execute) then
    begin
      DataSet.FieldByName('atividade').AsInteger := Textos_OS.IBrwSrcitem.AsInteger;
      DBEdit3Exit(DBEdit3);
    end;
  finally
    FreeAndNil(Textos_OS);
  end;
end;

procedure TOrcaGruposM.DBEdit3Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(TDBEdit(Sender).Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('descri');
    fLkp.Add('ativdescri');
    fLkp.Add('iss');

    if U.Data.CheckFK('vatividades', 'item', TDBEdit(Sender).Text, fLkp) then
    begin
      DataSet.FieldByName('ativgrupo').AsString := fLkp[0];
      DataSet.FieldByName('ativdescri').AsString := fLkp[1];
      DataSet.FieldByName('iss').AsString := fLkp[2];
    end
    else
    begin
      U.Out.ShowErro('Atividade não cadastrada.');
      TDBEdit(Sender).SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TOrcaGruposM.RefreshControls;
begin
  inherited;
  if (not Assigned(DataSet)) then
    Exit;
    
  actFindAtiv.Enabled := (DataSet.State in [dsEdit, dsInsert]);
end;

end.
