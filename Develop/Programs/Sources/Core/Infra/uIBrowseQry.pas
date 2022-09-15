unit uIBrowseQry;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIForm, ActnList, ZDataSet, ComCtrls, ExtCtrls,
  StdCtrls, Buttons, Mask;

type
  TIDefBrowseQry = class(TIForm)
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox2: TComboBox;
    MaskEdit1: TMaskEdit;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    actAdd: TAction;
    GroupBox2: TGroupBox;
    ListBox1: TListBox;
    SpeedButton2: TSpeedButton;
    actDel: TAction;
    actClear: TAction;
    SpeedButton3: TSpeedButton;
    actApply: TAction;
  private
    FDataSet: TZQuery;
    procedure SetDataSet(const Value: TZQuery);
    { Private declarations }
  public
    { Public declarations }
    property DataSet: TZQuery read FDataSet write SetDataSet;
  end;

var
  IDefBrowseQry: TIDefBrowseQry;

implementation

uses uIBrowse;

{$R *.dfm}

{ TIDefBrowseQry }

procedure TIDefBrowseQry.SetDataSet(const Value: TZQuery);
begin
  FDataSet := Value;




end;

end.
