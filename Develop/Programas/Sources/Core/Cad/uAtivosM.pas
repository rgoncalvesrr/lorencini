unit uAtivosM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, ComCtrls, ExtCtrls, ToolWin, StdCtrls,
  DBCtrls, Mask, Grids, DBGrids, JvExStdCtrls, JvCombobox, JvDBCombobox;

type
  TAtivosM = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    Label8: TLabel;
    DBEdit3: TDBEdit;
    GroupBox1: TGroupBox;
    DBMemo1: TDBMemo;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    DBMemo2: TDBMemo;
    RxDBComboBox1: TJvDBComboBox;
    RxDBComboBox3: TJvDBComboBox;
    DBComboBox1: TDBComboBox;
  private
    { Private declarations }
    procedure OnDataSet; override;
  public
    { Public declarations }
  end;

var
  AtivosM: TAtivosM;

implementation

{$R *.dfm}

uses uAtivos, uIUtils;

{ TAtivosM }

procedure TAtivosM.OnDataSet;
begin
  inherited;
  with U.Query, RxDBComboBox1 do
  try
    with RxDBComboBox1 do
    try
      Items.BeginUpdate;
      Values.BeginUpdate;

      Items.Clear;
      Values.Clear;

      SQL.Text:=
      'select tipo, descri '+
        'from ativos_tipo '+
       'order by 2';

      Open;

      while not Eof do
      begin
        Items.Add(FieldByName('descri').AsString);
        Values.Add(FieldByName('tipo').AsString);
        Next;
      end;
    finally
      Items.EndUpdate;
      Values.EndUpdate;
    end;

    with RxDBComboBox3 do
    try
      Items.BeginUpdate;
      Values.BeginUpdate;

      Items.Clear;
      Values.Clear;

      SQL.Text:=
      'select depto, descri '+
        'from deptos '+
       'order by 2';

      Open;

      while not Eof do
      begin
        Items.Add(FieldByName('descri').AsString);
        Values.Add(FieldByName('depto').AsString);
        Next;
      end;
    finally
      Items.EndUpdate;
      Values.EndUpdate;
    end;

  finally
    Close;
  end;
end;

end.
