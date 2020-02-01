unit uMovtoBancario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ActnList, Grids, DBGrids, ComCtrls, StdCtrls, Buttons, Mask, ExtCtrls, ToolWin,
  uIUtils, uFrameData, ZSqlUpdate, ZSequence;

type
  TMovtoBancario = class(TIDefBrowse)
    IBrwSrccc: TStringField;
    IBrwSrcdata: TDateField;
    IBrwSrcdocto: TStringField;
    IBrwSrchistorico: TStringField;
    IBrwSrctipo: TStringField;
    IBrwSrcvalor: TFloatField;
    IBrwSrccompensado: TBooleanField;
    IBrwSrcnatureza: TIntegerField;
    IBrwSrcdescri: TStringField;
    ComboBox1: TComboBox;
    Label1: TLabel;
    FrameData1: TFrameData;
    Label3: TLabel;
    Label4: TLabel;
    IBrwSrcentrada: TFloatField;
    IBrwSrcsaida: TFloatField;
    ZUpdateSQL1: TZUpdateSQL;
    IBrwSrcrecno: TIntegerField;
    IBrwSrcobs: TMemoField;
    sBrwSrc: TZSequence;
    procedure IBrwSrctipoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBrwSrctipoSetText(Sender: TField; const Text: string);
    procedure IBrwSrccompensadoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure IBrwSrccompensadoSetText(Sender: TField; const Text: string);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure FrameData1CCalendarDiff1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure OnEdit; override;
  public
    { Public declarations }
    FCBContas: TComboList;
  end;

var
  MovtoBancario: TMovtoBancario;

implementation

uses uDM, ccalendardiff, uMovtoBancarioM;

{$R *.dfm}

procedure TMovtoBancario.actQueryProcessExecute(Sender: TObject);
var
  AWhere: String;
  ACal: TCCalendarDiff;
begin
  inherited;

  AWhere := '';

  with IBrwSrc do
  begin
    if ComboBox1.ItemIndex > 0 then
      AWhere := AWhere +
      'a.cc = ' + QuotedStr(FCBContas.Selected.Value) + LF;

    if FrameData1.ComboBox1.ItemIndex > 0 then
    begin
      if AWhere <> EmptyStr then
        AWhere := AWhere + ' and ';

      ACal := FrameData1.CCalendarDiff1;
      AWhere := AWhere + 'a.data between '+
        ACal.FormatedDate('yyyy-mm-dd', fdDateBegin, true) + ' and ' +
        ACal.FormatedDate('yyyy-mm-dd', fdDateEnd, true) + LF;
    end;

    if (AWhere <> EmptyStr) and (Pos('where', SQL.Text) = 0) then
      SQL.Text := SQL.Text + ' where ' + AWhere;

    G.RefreshDataSet(IBrwSrc);
  end;

end;

procedure TMovtoBancario.ComboBox1Change(Sender: TObject);
begin
  inherited;
  actQueryProcess.Enabled := True;
  actQueryProcessExecute(actQuery);
end;

procedure TMovtoBancario.FormCreate(Sender: TObject);
begin
  inherited;
  FrameData1.CCalendarDiff1.Date := Now;
end;

procedure TMovtoBancario.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FCBContas);
  inherited;
end;

procedure TMovtoBancario.FormShow(Sender: TObject);
begin
  inherited;
  FCBContas := TComboList.Create(ComboBox1, 'cc', 'cc', 'cc');
  ComboBox1.Items.Insert(0, 'Todas as Contas');
  ComboBox1.ItemIndex := 0;
end;

procedure TMovtoBancario.FrameData1CCalendarDiff1Change(Sender: TObject);
begin
  inherited;
  actQueryProcess.Enabled := True;
  actQueryProcessExecute(actQuery);
end;

procedure TMovtoBancario.IBrwSrcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  IBrwSrcdata.AsDateTime := Now;
  IBrwSrctipo.AsString := 'Saida';
  IBrwSrcvalor.AsInteger := 0;
  IBrwSrccompensado.AsBoolean := true;
end;

procedure TMovtoBancario.IBrwSrccompensadoGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text := 'Não';
  if Sender.AsBoolean then
    Text := 'Sim';
end;

procedure TMovtoBancario.IBrwSrccompensadoSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsBoolean := Text[1] = 'S';
end;

procedure TMovtoBancario.IBrwSrctipoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  if (Sender.AsString = EmptyStr) then
    Exit;

  case Sender.AsString[1] of
    'E': Text := 'Entrada';
    'S': Text := 'Saída';
  end;
end;

procedure TMovtoBancario.IBrwSrctipoSetText(Sender: TField; const Text: string);
begin
  inherited;
  Sender.AsString := Text[1];
end;

procedure TMovtoBancario.OnEdit;
begin
  try
    MovtoBancarioM := TMovtoBancarioM.Create(Application);
    MovtoBancarioM.DataSet := DataSet;
    MovtoBancarioM.ShowModal;
  finally
    MovtoBancarioM.Free;
  end;
end;

initialization
  RegisterClass(TMovtoBancario);

finalization
  UnRegisterClass(TMovtoBancario);

end.
