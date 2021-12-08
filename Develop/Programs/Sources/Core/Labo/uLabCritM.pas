unit uLabCritM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls, JvExStdCtrls, JvCombobox, JvColorCombo, JvDBCombobox;

type
  TLabCritM = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    JvDBComboBox1: TJvDBComboBox;
    Panel7: TPanel;
    DBCheckBox1: TDBCheckBox;
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
