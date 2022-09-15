unit uOSMCancelamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, DBCtrls, Mask, ZDataSet;

type
  TOSMCancelamento = class(TIDefBrowseEdit)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label19: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    GroupBox2: TGroupBox;
    DBMemo2: TDBMemo;
  private
    { Private declarations }
    procedure BeforePost(Sender: TObject; DataSet: TZQuery; var AllowPost: Boolean); // Evento DataSet
    procedure OnDataSet; override;
  public
    { Public declarations }
  end;

var
  OSMCancelamento: TOSMCancelamento;

implementation

uses uDM, uIUtils, uOS;

{$R *.dfm}

{ TOrcamentosMCancelamento }

procedure TOSMCancelamento.BeforePost(Sender: TObject; DataSet: TZQuery;
  var AllowPost: Boolean);
begin
  DataSet.FieldByName('status').AsInteger := 6;

  with U.Data.Query do
  try
    SQL.Text := 'select sys_flag_mark(:table, cast(:recno as integer));';
    ParamByName('table').AsString := 'tb_orcamentos';
    ParamByName('recno').AsInteger := DataSet.FieldByName('recno').AsInteger;
    ExecSQL;
  finally
    Close;
  end;

  AllowPost := True;
end;

procedure TOSMCancelamento.OnDataSet;
begin
  inherited;
  OnBeforePost := BeforePost;
end;

end.
