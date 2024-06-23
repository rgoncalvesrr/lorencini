unit uIGrid;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, uIForm, ActnList, Grids,
  JvExGrids, JvStringGrid, System.Actions;

type
  TIGrid = class(TIForm)
    sGrid: TJvStringGrid;
    procedure sGridDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
  private
    procedure CellTextOut(AGrid: TStringGrid; ACol, ARow: Integer; Rect: TRect; Alignment: TAlignment);
  protected
    procedure CellCenter(AGrid: TStringGrid; ACol, ARow: Integer; Rect: TRect);
    procedure CellLeft(AGrid: TStringGrid; ACol, ARow: Integer; Rect: TRect);
    procedure CellRight(AGrid: TStringGrid; ACol, ARow: Integer; Rect: TRect);
  public
    { Public declarations }
  published
  end;

var
  IGrid: TIGrid;

implementation

{$R *.dfm}

procedure TIGrid.CellCenter(AGrid: TStringGrid; ACol, ARow: Integer; Rect: TRect);
begin
  CellTextOut(AGrid, ACol, ARow, Rect, taCenter);
end;

procedure TIGrid.CellLeft(AGrid: TStringGrid; ACol, ARow: Integer; Rect: TRect);
begin
  CellTextOut(AGrid, ACol, ARow, Rect, taLeftJustify);
end;

procedure TIGrid.CellRight(AGrid: TStringGrid; ACol, ARow: Integer; Rect: TRect);
begin
  CellTextOut(AGrid, ACol, ARow, Rect, taRightJustify);
end;

procedure TIGrid.CellTextOut(AGrid: TStringGrid; ACol, ARow: Integer; Rect: TRect;
  Alignment: TAlignment);
var
  x, y: Integer;
  s: string;
begin
  with AGrid do
  begin
    s := Cells[ACol, ARow];
    
    // Coordenada superior
    y := Rect.Top + (Rect.Bottom - Rect.Top - Canvas.TextHeight('X')) div 2;

    case Alignment of
      taLeftJustify:
        x := 1;
      taRightJustify:
        x := Rect.Right - Rect.Left - Canvas.TextWidth(s) - 2;
      taCenter:
        x := (Rect.Right - Rect.Left - Canvas.TextWidth(s)) div 2;
    end;

    x := Rect.Left + x;
    Canvas.TextRect(Rect, x, y, s);  
  end;
end;

procedure TIGrid.FormCreate(Sender: TObject);
begin
  inherited;
  with sGrid do
  begin
    DefaultColWidth := 1;
    DefaultRowHeight := 24;
    RowHeights[0] := 28;
  end;
end;

procedure TIGrid.sGridDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  inherited;
  with TStringGrid(Sender) do
  begin
    if (gdFixed in State) then
    begin
      Canvas.Brush.Style := bsSolid;
      Canvas.Brush.Color := clBtnFace;
      Canvas.Font.Color := clBlack;
      CellCenter(sGrid, ACol, ARow, Rect);
      Canvas.Brush.Style := bsSolid;
    end
    else
    begin

      if not (gdFocused in State) then
      begin
        Canvas.Font.Color := clBlack;

        if (ARow mod 2 = 0) then
          Canvas.Brush.Color:= $00D9EAD9
        else
          Canvas.Brush.Color:= clWhite;
      end;

      CellLeft(sGrid, ACol, ARow, Rect);
    end;
  end;
end;

end.
