inherited IGrid: TIGrid
  Caption = 'Grid'
  ExplicitWidth = 504
  ExplicitHeight = 364
  PixelsPerInch = 96
  TextHeight = 15
  object sGrid: TJvStringGrid [0]
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 482
    Height = 319
    Align = alClient
    BorderStyle = bsNone
    ColCount = 1
    Ctl3D = False
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goRangeSelect, goDrawFocusSelected]
    ParentCtl3D = False
    TabOrder = 0
    OnDrawCell = sGridDrawCell
    Alignment = taLeftJustify
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = []
    ColWidths = (
      64)
  end
end
