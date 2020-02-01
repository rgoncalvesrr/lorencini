unit uLabEquipDetalhes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uidefform, ActnList, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Grids;

type
  TLabEquipDetalhes = class(TIDefForm)
    qEquip: TZQuery;
    qEquiprecno: TIntegerField;
    qEquipserie: TStringField;
    qEquipdescri: TStringField;
    qEquippotencia: TIntegerField;
    qEquipfases: TIntegerField;
    qEquiplote: TStringField;
    qEquipimpedancia: TFloatField;
    qEquiptensao_p: TFloatField;
    qEquiptensao_s: TFloatField;
    qEquipano: TIntegerField;
    qEquipvolume: TIntegerField;
    qEquipdrenos: TStringField;
    qEquipclasse: TStringField;
    dsEquip: TDataSource;
    qEquipfabricante: TStringField;
    qEquiptipo: TStringField;
    qEquipisolante: TStringField;
    StringGrid1: TStringGrid;
    procedure qEquipAfterOpen(DataSet: TDataSet);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
  private
    FEquip: Integer;
    procedure SetEquip(const Value: Integer);
    { Private declarations }
  public
    property Equip: Integer read FEquip write SetEquip;

  end;

var
  LabEquipDetalhes: TLabEquipDetalhes;

implementation

uses uDM;

{$R *.dfm}

{ TLabEquipDetalhes }

{ TLabEquipDetalhes }

procedure TLabEquipDetalhes.qEquipAfterOpen(DataSet: TDataSet);
var
  oField: TField;
begin
  with StringGrid1 do
    for oField in DataSet.Fields do
    begin
      if Cells[0, 0] <> '' then
        RowCount := RowCount + 1;
         
      Cells[0, RowCount - 1] := oField.DisplayLabel;
      Cells[1, RowCount - 1] := oField.DisplayText;
    end;
end;

procedure TLabEquipDetalhes.SetEquip(const Value: Integer);
begin
  FEquip := Value;

  with qEquip do
  begin
    Close;
    ParamByName('recno').AsInteger := Value;
    Open;
  end;
end;

procedure TLabEquipDetalhes.StringGrid1DrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin

  with TStringGrid(Sender) do
  begin
    if not (gdFocused in State) then
    begin
      Canvas.Brush.Color:= clWhite;

      if ARow mod 2 = 0 then
        Canvas.Brush.Color:= $00D9EAD9;

      Canvas.FillRect(Rect);
    end;

    Canvas.TextRect(Rect, Rect.Left, Rect.Top, Cells[ACol, ARow]);
  end;


end;

end.
