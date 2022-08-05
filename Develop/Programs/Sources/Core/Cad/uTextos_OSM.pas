unit uTextos_OSM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, DBCtrls, Mask, JvExStdCtrls, JvCombobox, JvDBCombobox;

type
  TTextos_OSM = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBMemo1: TDBMemo;
    Label3: TLabel;
    RxDBComboBox1: TJvDBComboBox;
  private
    { Private declarations }
    procedure OnDataSet; override;
  public
    { Public declarations }
  end;

var
  Textos_OSM: TTextos_OSM;

implementation

{$R *.dfm}

uses uTextos_OS, uIUtils;

{ TTextos_OSM }

procedure TTextos_OSM.OnDataSet;
begin
  inherited;
  with U.Query, RxDBComboBox1 do
  try
    Items.BeginUpdate;
    Values.BeginUpdate;

    SQL.Text:=
    'select codativ, descri '+
      'from atividades '+
     'order by 2';

    Open;

    while not EOF do
    begin
      Items.Add(FieldByName('descri').AsString);
      Values.Add(FieldByName('codativ').AsString);

      Next;
    end;
  finally
    Close;
    Items.EndUpdate;
    Values.EndUpdate;
  end;
end;

end.
