inherited IGrid: TIGrid
  Margins.Left = 5
  Margins.Top = 5
  Margins.Right = 5
  Margins.Bottom = 5
  Caption = 'Grid'
  ClientHeight = 508
  ClientWidth = 765
  Font.Height = -19
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 783
  ExplicitHeight = 555
  PixelsPerInch = 120
  TextHeight = 25
  object sGrid: TJvStringGrid [0]
    AlignWithMargins = True
    Left = 4
    Top = 4
    Width = 757
    Height = 500
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    BorderStyle = bsNone
    ColCount = 1
    Ctl3D = False
    DefaultColWidth = 80
    DefaultRowHeight = 30
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
      80)
  end
end
