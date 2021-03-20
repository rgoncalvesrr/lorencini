inherited SysReportsM: TSysReportsM
  Caption = 'Formul'#225'rios por Relat'#243'rio'
  ClientHeight = 186
  ClientWidth = 645
  ExplicitWidth = 651
  ExplicitHeight = 215
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 645
    Height = 142
    ExplicitTop = 35
    ExplicitWidth = 645
    ExplicitHeight = 151
    inherited Panel3: TPanel
      Align = alNone
      ExplicitTop = 204
      inherited PageControl3: TPageControl
        Top = 47
        Height = 185
        ExplicitLeft = 3
        ExplicitTop = 38
        ExplicitWidth = 633
        ExplicitHeight = 194
        inherited tsDet: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 625
          ExplicitHeight = 164
          inherited DBGrid1: TDBGrid
            Width = 625
            Height = 155
          end
        end
      end
      inherited ControlBar2: TControlBar
        Height = 38
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 633
        ExplicitHeight = 38
        inherited ToolBar3: TToolBar
          ButtonWidth = 129
          inherited ToolButton10: TToolButton
            ExplicitWidth = 32
          end
          inherited ToolButton11: TToolButton
            ExplicitWidth = 32
          end
          inherited ToolButton17: TToolButton
            ExplicitWidth = 32
          end
          inherited ToolButton12: TToolButton
            ExplicitWidth = 32
          end
          inherited ToolButton13: TToolButton
            ExplicitWidth = 32
          end
          inherited tbSQLDet: TToolButton
            ExplicitWidth = 32
          end
          inherited tbRefazGrid: TToolButton
            ExplicitWidth = 32
          end
        end
      end
    end
    inherited PageControl1: TPageControl
      Width = 639
      Height = 136
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 639
      ExplicitHeight = 145
      inherited TabSheet1: TTabSheet
        Caption = 'Formul'#225'rio'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 631
        ExplicitHeight = 115
        object Label1: TLabel
          Left = 3
          Top = 3
          Width = 47
          Height = 15
          Caption = 'Relat'#243'rio'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 164
          Top = 5
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit2
        end
        object Label6: TLabel
          Left = 5
          Top = 50
          Width = 61
          Height = 15
          Caption = 'Fromul'#225'rio'
          FocusControl = DBEdit6
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SpeedButton1: TSpeedButton
          Left = 182
          Top = 68
          Width = 25
          Height = 23
          Action = actFindForm
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000C3C4C600597E
            9B000A4B7B000A4B7B000A4B7B000A4B7B000A4B7B000A4B7B000A4B7B000A6B
            0A000A6B0A000A6B0A000A6B0A00C3C4C600FF00FF00FF00FF005A809C000A4B
            7B001AD1FC001AD1FC001AD1FC001AD1FC001AD1FC001AD1FC001AD1FC000A6B
            0A0042D3730031B85A000A6B0A005A809C00FF00FF00FF00FF000A4B7B001AD1
            FC00FCF3E500FBF2E200FBF0DF00FBEFDB00FCEED800FBECD500FCEBD2000A6B
            0A0078F3A40040D171000A6B0A000A4B7B00FF00FF00FF00FF000A4B7B001AD1
            FC00FBF5E900FCF3E300FBF1E000FBF0DD000A6B0A000A6B0A000A6B0A000A6B
            0A0078F3A40044D574000A6B0A000A6B0A000A6B0A000A6B0A000A4B7B001AD1
            FC00FCF6EB00FBF4E600FCF3E400FBF1E1000A6B0A0078F3A40053E484004FE1
            80004CDD7C0048D9780045D6750041D2720031B85A000A6B0A000A4B7B001AD1
            FC00FCF7EF00FCF5EA00FCF4E700FBF3E4000A6B0A0078F3A40078F3A40078F3
            A40078F3A4004DDE7D0078F3A40078F3A40042D373000A6B0A000A4B7B001AD1
            FC00FCF7F200FBF7EE005D6AD5005D6AD4000A6B0A000A6B0A000A6B0A000A6B
            0A0078F3A40050E281000A6B0A000A6B0A000A6B0A000A6B0A000A4B7B001AD1
            FC00FBF9F500FCF7F2000A22CA005D6AD500FBF5E900FBF3E600FCF2E4000A6B
            0A0078F3A40054E585000A6B0A000A4B7B00FF00FF00FF00FF000A4B7B001AD1
            FC00FCFAF700FCF9F500FCF8F300FCF7F000FCF7ED00FCF5EA00FCF4E6000A6B
            0A0078F3A40078F3A4000A6B0A000A4B7B00FF00FF00FF00FF000A4B7B001AD1
            FC00FCFBF800FCFAF800384BD200384BD100FCF7F100FBF7EE00FCF6EB000A6B
            0A000A6B0A000A6B0A000A6B0A000A4B7B00FF00FF00FF00FF000A4B7B001AD1
            FC00FCFBFA00FCFBFA000A22CA00384BD200FCF8F400AA4F0A00AA4F0A00AA4F
            0A00AA4F0A00FBF2E3001AD1FC000A4B7B00FF00FF00FF00FF000A4B7B001AD1
            FC00FCFCFC00FCFCFC00FCFCFB00FCFBF900FCF9F700FCF8F500FBF8F200FCF7
            F000FCF7EC00FCF3E5001AD1FC000A4B7B00FF00FF00FF00FF000A4B7B001AD1
            FC00FCFCFC00FCFCFC006B3B3B006B3B3B006B3B3B006B3B3B006B3B3B006B3B
            3B00FBF6EC00FCF5E9001AD1FC000D4C7C00FF00FF00FF00FF000A4B7B009BDC
            E6001AD1FC001AD1FC006B3B3B00BFA0A000BFA0A000BFA0A000BFA0A0006B3B
            3B001AD1FC001AD1FC0045C6E300396A8F00FF00FF00FF00FF00A4B0B900406E
            92003C93B5003C93B5006B3B3B00F3EAEA00F3EAEA00F3EAEA00F3EAEA006B3B
            3B003C93B5003C93B50041709300B4BAC000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF006B3B3B006B3B3B006B3B3B006B3B3B006B3B3B006B3B
            3B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
        object Label7: TLabel
          Left = 213
          Top = 50
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit7
        end
        object Label3: TLabel
          Left = 528
          Top = 3
          Width = 37
          Height = 15
          Caption = 'Ordem'
          FocusControl = DBEdit3
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 20
          Width = 155
          Height = 23
          TabStop = False
          DataField = 'report'
          DataSource = DM.dsSysReports
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 164
          Top = 20
          Width = 360
          Height = 23
          TabStop = False
          DataField = 'descri'
          DataSource = DM.dsSysReports
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit6: TDBEdit
          Left = 3
          Top = 71
          Width = 174
          Height = 23
          CharCase = ecUpperCase
          DataField = 'form'
          DataSource = DM.dsqSysFormRpt
          TabOrder = 2
          OnExit = DBEdit6Exit
        end
        object DBEdit7: TDBEdit
          Left = 213
          Top = 68
          Width = 403
          Height = 23
          TabStop = False
          DataField = 'descri'
          DataSource = DM.dsqSysFormRpt
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit3: TDBEdit
          Left = 528
          Top = 20
          Width = 88
          Height = 23
          DataField = 'ordem'
          DataSource = DM.dsqSysFormRpt
          TabOrder = 4
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 639
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 639
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      Width = 602
      ButtonWidth = 115
      ExplicitWidth = 602
      inherited ToolButton6: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton4: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton7: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton1: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton2: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton8: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton9: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton14: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton16: TToolButton
        ExplicitWidth = 32
      end
      inherited tbSQL: TToolButton
        ExplicitWidth = 32
      end
      inherited tbClose: TToolButton
        ExplicitWidth = 32
      end
    end
  end
  inherited alDef: TActionList
    Left = 192
    object actFindForm: TAction
      ImageIndex = 8
      OnExecute = actFindFormExecute
    end
  end
end
