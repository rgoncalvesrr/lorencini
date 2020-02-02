unit uLabCritM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls, JvExStdCtrls, JvCombobox, JvColorCombo;

type
  TLabCritM = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    JvColorComboBox1: TJvColorComboBox;
    Label3: TLabel;
    procedure JvColorComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  LabCritM: TLabCritM;

implementation

uses uLabCrit, uLabCritMRel, DB;

{$R *.dfm}

{ TLabCritM }

procedure TLabCritM.FormCreate(Sender: TObject);
begin
  inherited;
  JvColorComboBox1.Clear;
  JvColorComboBox1.AddColor(clGreen, 'Normal');
  JvColorComboBox1.AddColor(clYellow, 'Atenção');
  JvColorComboBox1.AddColor(clRed, 'Crítico');
end;

procedure TLabCritM.JvColorComboBox1Change(Sender: TObject);
begin
  inherited;
  if (Assigned(DataSet) and (DataSet.State in [dsInsert, dsEdit])) then
    DataSet.FieldByName('cor').AsString := ColorToString(JvColorComboBox1.ColorValue);
end;

procedure TLabCritM.OnEdit;
begin
  LabCritMRel := TLabCritMRel.Create(nil);
  try
    LabCritMRel.DataSet := ChildDataSet;
    LabCritMRel.ShowModal;
  finally
    FreeAndNil(LabCritMRel);
  end;
end;

end.
