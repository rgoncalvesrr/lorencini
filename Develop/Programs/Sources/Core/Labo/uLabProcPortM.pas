unit uLabProcPortM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls, JvExMask, JvToolEdit, JvBaseEdits, JvDBControls;

type
  TLabProcPortM = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Bevel6: TBevel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBMemo1: TDBMemo;
    DBComboBox1: TDBComboBox;
    Label7: TLabel;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Label11: TLabel;
    JvDBCalcEdit1: TJvDBCalcEdit;
    Panel12: TPanel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Panel15: TPanel;
    Label12: TLabel;
    DBEdit6: TDBEdit;
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LabProcPortM: TLabProcPortM;

implementation

uses uLabProcPort, DB, mcUtils, uIUtils;

{$R *.dfm}

procedure TLabProcPortM.DBComboBox1Change(Sender: TObject);
begin
  inherited;
  JvDBCalcEdit1.Enabled := DBComboBox1.ItemIndex < 2;
end;

procedure TLabProcPortM.DBEdit2Exit(Sender: TObject);
begin
  inherited;
  if mcEmpty(DBEdit2.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  with U.Data.Query do
  try
    SQL.Text :=
    'select b.ocorrencia rem_dh, b.historico rem_tr, c.labproc_recno, c.tipo, a.recno '+
      'from labamostras a '+
           'join labprocxequip c '+
      	     'on c.amostra = a.recno '+
           'join labamostras_hist b '+
      	     'on b.amostra = a.recno '+
            'and b.estado = a.estado '+
     'where a.codigo = :codigo '+
       'and a.comodato = :etiq '+
       'and a.estado = 30';

    ParamByName('codigo').AsInteger := StrToInt(DBEdit1.Text);
    ParamByName('etiq').AsInteger := StrToInt(DBEdit2.Text);

    Open;

    if not IsEmpty then
    begin
      DataSet.FieldByName('rem_dh').AsDateTime := FieldByName('rem_dh').AsDateTime;
      DataSet.FieldByName('rem_tr').AsString := FieldByName('rem_tr').AsString;
      DataSet.FieldByName('tipo').AsInteger := FieldByName('tipo').AsInteger;

      DataSet.FieldByName('amostra').AsInteger := FieldByName('recno').AsInteger;
      DataSet.FieldByName('labproc_recno').AsInteger :=
        FieldByName('labproc_recno').AsInteger;
    end else
    begin
      U.Out.ShowErro('Etiqueta %s não localizada.', [DBEdit2.Text]);
      DBEdit2.SetFocus;
    end;
  finally
    Close;
  end;
end;

end.
