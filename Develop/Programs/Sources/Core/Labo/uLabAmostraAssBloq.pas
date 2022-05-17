unit uLabAmostraAssBloq;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uidefeditform, ComCtrls, ActnList, ToolWin, ExtCtrls, Grids, DBGrids, DB, ZAbstractRODataset, ZDataset,
  StdCtrls, DBCtrls;

type
  TLabAmostraAssBloq = class(TIDefEditForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    qLaudos: TZReadOnlyQuery;
    dsLaudos: TDataSource;
    qLaudosrecno: TIntegerField;
    qLaudosamostra: TIntegerField;
    qLaudoscomodato: TIntegerField;
    qLaudospedido: TIntegerField;
    qLaudosos: TIntegerField;
    qLaudospendencia: TMemoField;
    qLaudosnome_chave: TStringField;
    DBMemo1: TDBMemo;
    GroupBox1: TGroupBox;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure qLaudosBeforeOpen(DataSet: TDataSet);
    procedure actOkExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LabAmostraAssBloq: TLabAmostraAssBloq;

implementation

uses
  uResources, uDM, uIUtils;

{$R *.dfm}

procedure TLabAmostraAssBloq.actOkExecute(Sender: TObject);
begin
  inherited;
  actCloseExecute(actClose);
end;

procedure TLabAmostraAssBloq.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer;
  Column: TColumn; State: TGridDrawState);
var
  Bmp: TBitmap;
  x, y: integer;
begin
  with TDBGrid(Sender) do
  begin
    if not (gdFocused in State) and (DataSource.DataSet.State = dsBrowse) then
    begin
      Canvas.Brush.Color:= clWhite;

      if DataSource.DataSet.RecNo mod 2 = 0 then
        Canvas.Brush.Color:= $00D9EAD9
      else
        Canvas.Brush.Color:= clWhite;

      Canvas.FillRect(Rect);
    end;

    DefaultDrawColumnCell(Rect, DataCol, Column, State);

    if Column.Field is TBooleanField then
    begin

      Bmp:= TBitmap.Create;
      try
        if Column.Field.AsBoolean then
          Resources.small_n.GetBitmap(67, Bmp)
        else
          Resources.small_n.GetBitmap(69, Bmp);

        x:= Rect.Left + (Rect.Right - Rect.Left - Bmp.Width) div 2;
        y:= Rect.Top + (Rect.Bottom - Rect.Top - Bmp.Height) div 2;

        Canvas.FillRect(Rect);
        Canvas.Draw(x, y, Bmp);
      finally
        Bmp.Free;
      end;
    end;
  end;
end;

procedure TLabAmostraAssBloq.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
     Key := #0;
     actCloseExecute(actClose);
  end else
    inherited;
end;

procedure TLabAmostraAssBloq.FormShow(Sender: TObject);
begin
  inherited;
  G.RefreshDataSet(qLaudos);
end;

procedure TLabAmostraAssBloq.qLaudosBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  qLaudos.ParamByName('session').AsString := U.Info.Session;
end;

end.
