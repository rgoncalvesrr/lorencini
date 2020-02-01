unit uLabRegionaisMSubEquip;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  Mask, DBCtrls, StdCtrls, Buttons, JvExMask, JvToolEdit, JvDBControls;

type
  TLabRegionaisMSubEquip = class(TIDefBrowseEdit)
    leCodigo: TLabeledEdit;
    leNome: TLabeledEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Bevel6: TBevel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    SpeedButton3: TSpeedButton;
    actFindEquip: TAction;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    JvDBDateEdit1: TJvDBDateEdit;
    Label11: TLabel;
    DBComboBox1: TDBComboBox;
    Label12: TLabel;
    procedure DBEdit7Exit(Sender: TObject);
    procedure actFindEquipExecute(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  LabRegionaisMSubEquip: TLabRegionaisMSubEquip;

implementation

uses uLabRegionais, mcUtils, DB, uIUtils, uLabEquip;

{$R *.dfm}

procedure TLabRegionaisMSubEquip.actFindEquipExecute(Sender: TObject);
begin
  inherited;
  try
    Application.CreateForm(TLabEquip, LabEquip);
    LabEquip.DisplayMode := dmQuery;
    LabEquip.ShowModal;
    if (LabEquip.Execute) then
    begin
      DataSet.FieldByName('equip').AsInteger := LabEquip.IBrwSrcrecno.AsInteger;
      DBEdit7Exit(DBEdit7);
    end;
  finally
    FreeAndNil(LabEquip);
  end;
end;

procedure TLabRegionaisMSubEquip.DBEdit7Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit7.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('serie');
    fLkp.Add('descri');
    fLkp.Add('tipo');

    if U.Data.CheckFK('labequip', 'recno', QuotedStr(DBEdit7.Text), fLkp) then
    begin
      DataSet.FieldByName('serie').AsString := fLkp[0];
      DataSet.FieldByName('descri').AsString := fLkp[1];
      DataSet.FieldByName('tipo').AsString := fLkp[2];
    end
    else
    begin
      U.Out.ShowErro('Equipamento não cadastrado.');
      DBEdit7.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TLabRegionaisMSubEquip.RefreshControls;
begin
  inherited;
  if not Assigned(DataSet) then
    Exit;
    
  actFindEquip.Enabled := DataSet.State in [dsEdit, dsInsert];
  DBComboBox1.Enabled := DataSet.State = dsEdit;
end;

end.
