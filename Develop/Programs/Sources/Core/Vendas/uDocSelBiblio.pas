unit uDocSelBiblio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIForm, ActnList, ExtCtrls, StdCtrls, CheckLst, Buttons, DB,
  ZAbstractRODataset, ZDataset;

type
  TDocSelBiblio = class(TIForm)
    CheckListBox1: TCheckListBox;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qryDocs: TZReadOnlyQuery;
    qryDocsrecno: TIntegerField;
    qryDocstitulo: TStringField;
    procedure CheckListBox1ClickCheck(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
  private
    F_Recno: Integer;
    F_Table: string;
    procedure OnLoad; override;
    procedure Set_Recno(const Value: Integer);
    procedure Set_Table(const Value: string);
  public
    property _Table: string read F_Table write Set_Table;
    property _Recno: Integer read F_Recno write Set_Recno;
  end;

var
  DocSelBiblio: TDocSelBiblio;

implementation

uses uIUtils, uDM;

{$R *.dfm}

{ TDocSelBiblio }

procedure TDocSelBiblio.actOkExecute(Sender: TObject);
var
  I: Integer;
begin
  inherited;
  actOk.Enabled := False;
  for I := 0 to CheckListBox1.Count - 1 do
    if CheckListBox1.Checked[i] then
    begin
      qryDocs.RecNo := I + 1;

      U.Data.GetQuery('select cpModeloParaDoc(%d, %d, %d);',
        [qryDocsrecno.AsInteger, U.Data.TableIdFromName(_Table), _Recno]).ExecSQL;
    end;
    
  actOk.Enabled := True;
  Close;
end;

procedure TDocSelBiblio.CheckListBox1ClickCheck(Sender: TObject);
var
  I: Integer;
begin
  actOk.Enabled := False;
  for I := 0 to CheckListBox1.Count - 1 do
    if CheckListBox1.Checked[i] then
    begin
      actOk.Enabled := True;
      Break;
    end;
end;

procedure TDocSelBiblio.OnLoad;
begin
  inherited;
  CheckListBox1.Clear;
  CheckListBox1.Items.BeginUpdate;
  qryDocs.Open;
  with qryDocs do
  try
    while not Eof do
    begin
      CheckListBox1.Items.Add(qryDocstitulo.AsString);
      Next;
    end;
  finally
    CheckListBox1.Items.EndUpdate;
  end;
end;

procedure TDocSelBiblio.Set_Recno(const Value: Integer);
begin
  F_Recno := Value;
end;

procedure TDocSelBiblio.Set_Table(const Value: string);
begin
  F_Table := Value;
end;

end.
