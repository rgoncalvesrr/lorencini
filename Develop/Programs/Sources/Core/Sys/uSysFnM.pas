unit uSysFnM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls, JvDBCheckBox, Buttons, JvExExtCtrls, JvExtComponent,
  JvDBRadioPanel, JvExStdCtrls, JvCombobox, JvDBCombobox, SynEditHighlighter, SynHighlighterSQL, SynEdit;

type
  TSysFnM = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    SpeedButton2: TSpeedButton;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBComboBox1: TDBComboBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    actFindTable: TAction;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Panel8: TPanel;
    Label8: TLabel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    JvDBComboBox1: TJvDBComboBox;
    Panel19: TPanel;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    GroupBox2: TGroupBox;
    SynEdit1: TSynEdit;
    SynSQLSyn1: TSynSQLSyn;
    procedure DBEdit3Exit(Sender: TObject);
    procedure actFindTableExecute(Sender: TObject);
  private
    procedure RefreshControls; override;
    procedure OnDataSet; override;
  public
    { Public declarations }
  end;

var
  SysFnM: TSysFnM;

implementation

uses uSysFn, uIUtils, DB, mcUtils, uSysTables;

{$R *.dfm}

procedure TSysFnM.actFindTableExecute(Sender: TObject);
begin
  inherited;
  try
    SysTables := TSysTables.Create(nil);
    SysTables.DisplayMode := dmQuery;
    SysTables.ShowModal;
    if (SysTables.Execute) then
    begin
      DataSet.FieldByName('table_recno').AsInteger := SysTables.IBrwSrcrecno.AsInteger;
      DBEdit3Exit(DBEdit3);
    end;
  finally
    FreeAndNil(SysTables);
  end;
end;

procedure TSysFnM.DBEdit3Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit3.Text) or not (DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  fLkp:= TStringList.Create;
  try
    fLkp.Add('tabela');
    fLkp.Add('descri');

    if U.Data.CheckFK('sys_tables', 'recno', DBEdit3.Text, fLkp) then
    begin
      DataSet.FieldByName('table_name').AsString := fLkp[0];
      DataSet.FieldByName('tabela').AsString := fLkp[1];
    end
    else
    begin
      U.Out.ShowErro('Tabela não cadastrada.');
      DBEdit3.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TSysFnM.OnDataSet;
begin
  inherited;
  if Assigned(DataSet) then
    SynEdit1.Text := DataSet.FieldByName('stmt').AsString;
end;

procedure TSysFnM.RefreshControls;
begin
  inherited;
  if not Assigned(DataSet) then
    Exit;

  actFindTable.Enabled := DataSet.State in [dsEdit, dsInsert];
end;

end.
