inherited CallCenter: TCallCenter
  Caption = 'Call Center'
  ClientHeight = 573
  ClientWidth = 864
  Constraints.MinWidth = 880
  ExplicitWidth = 880
  ExplicitHeight = 612
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 546
    Width = 858
    ExplicitLeft = 3
    ExplicitTop = 546
    ExplicitWidth = 858
  end
  inherited Panel1: TPanel
    Width = 864
    ExplicitWidth = 864
    inherited pctlFind: TPageControl
      Width = 854
      ExplicitWidth = 854
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 846
        ExplicitHeight = 65
        object Label4: TLabel [0]
          Left = 9
          Top = 2
          Width = 41
          Height = 15
          Caption = 'Per'#237'odo'
          Transparent = True
        end
        object Label1: TLabel [1]
          Left = 173
          Top = 2
          Width = 45
          Height = 15
          Caption = 'Empresa'
        end
        object Label3: TLabel [2]
          Left = 384
          Top = 2
          Width = 55
          Height = 15
          Caption = 'Atendente'
        end
        object Label5: TLabel [3]
          Left = 173
          Top = 48
          Width = 65
          Height = 15
          Caption = 'Raz'#227'o Social'
          Transparent = True
        end
        object DBText1: TDBText [4]
          Left = 249
          Top = 46
          Width = 61
          Height = 18
          AutoSize = True
          DataField = 'empresa'
          DataSource = DM.dsCallCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label61: TLabel [5]
          Left = 9
          Top = 48
          Width = 3
          Height = 15
          Transparent = True
        end
        inherited BitBtn2: TBitBtn
          Left = 603
          ExplicitLeft = 603
        end
        inline FrameData1: TFrameData
          Left = 9
          Top = 23
          Width = 155
          Height = 23
          TabOrder = 1
          ExplicitLeft = 9
          ExplicitTop = 23
          ExplicitWidth = 155
          ExplicitHeight = 23
          inherited ComboBox1: TComboBox
            Width = 155
            Height = 23
            ItemHeight = 15
            ExplicitWidth = 155
            ExplicitHeight = 23
          end
          inherited CCalendarDiff1: TCCalendarDiff
            Date = 42971.952753148150000000
            DisplayInterval = Label61
            OnChange = FrameData1CCalendarDiff1Change
          end
        end
        object cbEmpresa: TComboBox
          Left = 173
          Top = 23
          Width = 201
          Height = 23
          ItemHeight = 15
          TabOrder = 2
          OnChange = cbEmpresaChange
        end
        object cbUsername: TComboBox
          Left = 384
          Top = 23
          Width = 201
          Height = 23
          ItemHeight = 15
          TabOrder = 3
          OnChange = cbUsernameChange
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 846
        ExplicitHeight = 65
      end
    end
  end
  inherited Panel2: TPanel
    Width = 864
    Height = 424
    ExplicitWidth = 864
    ExplicitHeight = 424
    object Splitter2: TSplitter [0]
      Left = 0
      Top = 417
      Width = 864
      Height = 7
      Cursor = crVSplit
      Align = alBottom
      Beveled = True
      ExplicitTop = 406
      ExplicitWidth = 852
    end
    inherited PageControl1: TPageControl
      Width = 858
      Height = 411
      ExplicitWidth = 858
      ExplicitHeight = 411
      inherited TabSheet1: TTabSheet
        Caption = 'Processos'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 850
        ExplicitHeight = 381
        object Splitter3: TSplitter [0]
          Left = 426
          Top = 0
          Width = 6
          Height = 381
          Align = alRight
          Beveled = True
          ExplicitLeft = 419
          ExplicitHeight = 375
        end
        inherited DBGrid1: TDBGrid
          Width = 426
          Height = 381
          DataSource = DM.dsCallCenter
        end
        object Panel5: TPanel
          Left = 432
          Top = 0
          Width = 418
          Height = 381
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 1
          object GroupBox2: TGroupBox
            Left = 0
            Top = 0
            Width = 418
            Height = 381
            Align = alClient
            Caption = ' Hist'#243'rico '
            Padding.Left = 3
            Padding.Right = 3
            Padding.Bottom = 3
            TabOrder = 0
            object DBMemo2: TDBMemo
              Left = 5
              Top = 17
              Width = 408
              Height = 359
              Align = alClient
              BorderStyle = bsNone
              DataField = 'descri'
              DataSource = DM.dsCallCenter
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Width = 858
    ExplicitWidth = 858
    inherited ToolBar1: TToolBar
      Width = 845
      ExplicitWidth = 845
      inherited ToolButton2: TToolButton
        Action = nil
        DropdownMenu = pmNovo
        ExplicitWidth = 32
      end
      inherited ToolButton5: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton9: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton6: TToolButton
        Enabled = False
        ExplicitWidth = 32
      end
      inherited ToolButton1: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton8: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton3: TToolButton
        ExplicitWidth = 32
      end
      inherited tbOrder: TToolButton
        ExplicitWidth = 76
      end
      inherited tbReport: TToolButton
        ExplicitWidth = 32
      end
      inherited tbOpcao: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton10: TToolButton
        ExplicitWidth = 32
      end
    end
  end
  inherited alDef: TActionList
    Left = 232
    Top = 96
    object actAttach: TAction
      Caption = 'Anexar Or'#231'amento...'
      ImageIndex = 42
    end
  end
  inherited pmRel: TPopupMenu
    Left = 328
    Top = 96
  end
  inherited pmOrder: TPopupMenu
    Left = 298
    Top = 102
  end
  inherited alRunTime: TActionList
    Left = 266
    Top = 102
  end
  inherited DataSource1: TDataSource
    DataSet = nil
    Left = 592
    Top = 8
  end
  inherited IBrwSrc: TZQuery
    Tag = 1
    Connection = DM.Design
    Left = 560
    Top = 8
  end
  inherited pmOpcao: TPopupMenu
    Left = 360
    Top = 96
  end
  object pmNovo: TPopupMenu
    Left = 456
    Top = 96
    object Novo1: TMenuItem
      Action = actNew
    end
    object AnexarOramento1: TMenuItem
      Action = actAttach
    end
  end
end
