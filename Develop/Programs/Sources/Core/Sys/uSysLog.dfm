inherited SysLog: TSysLog
  Caption = 'Inspe'#231#227'o de Registro'
  ClientHeight = 729
  ClientWidth = 1008
  ExplicitWidth = 1024
  ExplicitHeight = 768
  PixelsPerInch = 96
  TextHeight = 15
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 402
    Width = 1008
    Height = 6
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 405
  end
  object ctrlBarTop: TControlBar [1]
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1002
    Height = 38
    Align = alTop
    AutoSize = True
    BevelEdges = []
    BevelKind = bkNone
    DrawingStyle = dsGradient
    TabOrder = 0
    object ToolBar1: TToolBar
      Left = 11
      Top = 2
      Width = 989
      Height = 34
      AutoSize = True
      BorderWidth = 1
      ButtonHeight = 30
      ButtonWidth = 81
      Caption = 'ToolBar1'
      DisabledImages = Resources.medium_d
      DrawingStyle = dsGradient
      EdgeInner = esNone
      EdgeOuter = esNone
      HotImages = Resources.medium_h
      Images = Resources.medium_n
      List = True
      ParentShowHint = False
      AllowTextButtons = True
      ShowHint = True
      TabOrder = 0
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Action = actRefresh
        Style = tbsTextButton
      end
      object ToolButton3: TToolButton
        Left = 85
        Top = 0
        Width = 8
        Caption = 'ToolButton3'
        ImageIndex = 125
        Style = tbsSeparator
      end
      object ToolButton2: TToolButton
        Left = 93
        Top = 0
        Action = actClose
        AutoSize = True
        Style = tbsTextButton
      end
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 44
    Width = 1008
    Height = 85
    Align = alTop
    BevelOuter = bvNone
    Padding.Left = 5
    Padding.Right = 5
    TabOrder = 1
    object pctlFind: TPageControl
      Left = 5
      Top = 0
      Width = 998
      Height = 85
      ActivePage = tsQuery
      Align = alClient
      TabOrder = 0
      object tsQuery: TTabSheet
        Caption = 'Filtrar'
        TabVisible = False
        object BitBtn2: TBitBtn
          AlignWithMargins = True
          Left = 889
          Top = 10
          Width = 98
          Height = 55
          Margins.Top = 10
          Margins.Bottom = 10
          Action = actQuery
          Align = alRight
          Caption = 'Filtrar'
          TabOrder = 0
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF000A0A9A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF009B3B0A009B3B0A009B3B0A00993B0D000A0A
            9A000A2FE4000A0A9A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF009B3B0A00FAEAC200E9B171000A0A9A000A31
            E7000A30E5000A2FE4000A0A9A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF009B3B0A00FAE9C0000A0A9A000A32E9000A31
            E8000A31E7000A30E5000A2FE4000A0A9A00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF009B3B0A000A0A9A000A33EC000A33EB000A32
            E9000A31E8000A30E6000A30E5000A2FE4000A0A9A00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00C3B6B0000A0A9A000A0A9A000A0A9A000A0A9A000A32
            EA000A32E9000A31E8000A0A9A000A0A9A000A0A9A000A0A9A00FF00FF00FF00
            FF00FF00FF00FF00FF00A8644100C5835500FADEB100F7D6A5000A0A9A000A33
            EC000A32EA000A32E9000A0A9A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00B8978700A54E2000F6D4A800FBE2B700F6D19D000A0A9A000A34
            ED000A33EB000A32EA000A0A9A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00C5BEBB00A0491D00DDA87600F9E3C200F9DBAD00F4CB96000A0A9A000A34
            EE000A34ED000A33EB000A0A9A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00AE755900B86F4000F6D6AC00FBE9CD00F7D5A400F2C68F000A0A9A000A0A
            9A000A0A9A000A0A9A000A0A9A00FF00FF00FF00FF00FF00FF00FF00FF00BDA7
            9B009F451600EBBC8400FAE9D100FBE8CB00F6D09C00EFC18700E9B27200D497
            5800A7653C009B441900C5BEBB00FF00FF00FF00FF00FF00FF00C7C4C300A453
            2B00CD8E5B00F5D5AA00FBF5E900FAE2BE00F3CB9500EDBC8000E7AD6A00DF9C
            5500B8743D00924D2B00AE725400FF00FF00FF00FF00FF00FF00B3856F00AC5E
            3000EFC18700FAEEDE00FCF9F500F7D6A900F1C58D00EBB77800E4A86200DF99
            4E00C17939009B582E0093411B00C0ADA400FF00FF00FF00FF009D3E0F009B3B
            0A009B3B0A009B3B0A009B3B0A009B3B0A009B3B0A009B3B0A009B3B0A009B3B
            0A009A3B0B00983B0E00973B0F00A65B3600FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
        object Panel2: TPanel
          Left = 129
          Top = 0
          Width = 185
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Label1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 179
            Height = 15
            Align = alTop
            Caption = 'Ocorr'#234'ncia'
            ExplicitWidth = 58
          end
          object Label2: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 53
            Width = 179
            Height = 15
            Align = alTop
            ExplicitWidth = 3
          end
          inline FrameData1: TFrameData
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 179
            Height = 23
            Align = alTop
            AutoSize = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Pitch = fpVariable
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            ExplicitLeft = 3
            ExplicitTop = 24
            ExplicitWidth = 179
            inherited ComboBox1: TComboBox
              Width = 179
              ExplicitWidth = 179
            end
            inherited CCalendarDiff1: TCCalendarDiff
              Date = 44276.033050902780000000
              DisplayInterval = Label2
            end
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 129
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object Label3: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 123
            Height = 15
            Align = alTop
            Caption = 'N'#237'vel de Log'
            ExplicitWidth = 66
          end
          object cbNivel: TComboBox
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 123
            Height = 23
            Align = alTop
            Style = csDropDownList
            ItemHeight = 15
            ItemIndex = 0
            TabOrder = 0
            Text = 'Todos'
            OnChange = cbNivelChange
            Items.Strings = (
              'Todos'
              'Informa'#231#227'o'
              'Aten'#231#227'o'
              'Cr'#237'tico'
              'Depura'#231#227'o')
          end
        end
        object Panel4: TPanel
          Left = 314
          Top = 0
          Width = 185
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 3
        end
        object Panel5: TPanel
          Left = 499
          Top = 0
          Width = 185
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 4
        end
      end
    end
  end
  object pnDetail: TPanel [3]
    Left = 0
    Top = 408
    Width = 1008
    Height = 321
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object GroupBox1: TGroupBox
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 1002
      Height = 69
      Align = alTop
      Caption = ' Log '
      TabOrder = 0
      object Panel6: TPanel
        Left = 2
        Top = 17
        Width = 119
        Height = 50
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object Label4: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 113
          Height = 15
          Align = alTop
          Caption = 'Tipo'
          FocusControl = DBEdit1
          ExplicitWidth = 23
        end
        object DBEdit1: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 113
          Height = 23
          Align = alClient
          DataField = 'level'
          DataSource = dsLog
          ReadOnly = True
          TabOrder = 0
        end
      end
      object Panel7: TPanel
        Left = 912
        Top = 17
        Width = 88
        Height = 50
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        object DBCheckBox1: TDBCheckBox
          AlignWithMargins = True
          Left = 3
          Top = 23
          Width = 82
          Height = 24
          Margins.Top = 23
          Align = alClient
          Caption = 'Rotacionar'
          DataField = 'rotate'
          DataSource = dsLog
          ReadOnly = True
          TabOrder = 0
          ValueChecked = 'True'
          ValueUnchecked = 'False'
        end
      end
      object Panel8: TPanel
        Left = 121
        Top = 17
        Width = 791
        Height = 50
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        object Label5: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 785
          Height = 15
          Align = alTop
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit2
          ExplicitWidth = 51
        end
        object DBEdit2: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 785
          Height = 23
          Align = alClient
          DataField = 'title'
          DataSource = dsLog
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
    object GroupBox2: TGroupBox
      AlignWithMargins = True
      Left = 3
      Top = 78
      Width = 1002
      Height = 69
      Align = alTop
      Caption = ' Usu'#225'rio '
      TabOrder = 1
      object Panel10: TPanel
        Left = 2
        Top = 17
        Width = 176
        Height = 50
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object Label6: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 170
          Height = 15
          Align = alTop
          Caption = 'Usu'#225'rio'
          FocusControl = DBEdit3
          ExplicitWidth = 40
        end
        object DBEdit3: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 170
          Height = 23
          Align = alClient
          DataField = 'account'
          DataSource = dsLog
          ReadOnly = True
          TabOrder = 0
        end
      end
      object Panel11: TPanel
        Left = 178
        Top = 17
        Width = 511
        Height = 50
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object Label8: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 505
          Height = 15
          Align = alTop
          Caption = 'Nome'
          FocusControl = DBEdit5
          ExplicitWidth = 33
        end
        object DBEdit5: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 505
          Height = 23
          Align = alClient
          DataField = 'nome'
          DataSource = dsLog
          ReadOnly = True
          TabOrder = 0
        end
      end
      object Panel12: TPanel
        Left = 689
        Top = 17
        Width = 311
        Height = 50
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 2
        object Label7: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 305
          Height = 15
          Align = alTop
          Caption = 'E-mail'
          FocusControl = DBEdit4
          ExplicitWidth = 34
        end
        object DBEdit4: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 305
          Height = 23
          Align = alClient
          DataField = 'email'
          DataSource = dsLog
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
    object GroupBox3: TGroupBox
      AlignWithMargins = True
      Left = 3
      Top = 153
      Width = 1002
      Height = 165
      Align = alClient
      Caption = ' Hist'#243'rico '
      TabOrder = 2
      object DBMemo1: TDBMemo
        AlignWithMargins = True
        Left = 5
        Top = 20
        Width = 992
        Height = 140
        Align = alClient
        DataField = 'detail'
        DataSource = dsLog
        ReadOnly = True
        TabOrder = 0
      end
    end
  end
  object pnBrowse: TPanel [4]
    Left = 0
    Top = 129
    Width = 1008
    Height = 273
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 3
    object PageControl1: TPageControl
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 1002
      Height = 267
      ActivePage = TabSheet1
      Align = alClient
      Images = Resources.medium_n
      TabOrder = 0
      OnChange = PageControl1Change
      object TabSheet1: TTabSheet
        Caption = 'Todos'
        ImageIndex = -1
        object DBGrid1: TDBGrid
          Tag = 1
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 988
          Height = 224
          Align = alClient
          BorderStyle = bsNone
          Ctl3D = True
          DataSource = dsLog
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Pitch = fpVariable
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid1DrawColumnCell
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Informa'#231#227'o'
        ImageIndex = 191
        ExplicitLeft = 3
        ExplicitTop = 34
      end
      object TabSheet3: TTabSheet
        Caption = 'Aten'#231#227'o'
        ImageIndex = 12
      end
      object TabSheet4: TTabSheet
        Caption = 'Cr'#237'tico'
        ImageIndex = 121
      end
      object TabSheet5: TTabSheet
        Caption = 'Depura'#231#227'o'
        ImageIndex = 257
      end
    end
  end
  inherited alDef: TActionList
    Left = 136
    Top = 192
    object actRefresh: TAction
      Caption = 'Atualizar'
      ImageIndex = 307
      OnExecute = actRefreshExecute
    end
    object actQuery: TAction
      Caption = 'Filtrar'
      ImageIndex = 134
      ShortCut = 16397
      OnExecute = actQueryExecute
    end
  end
  object qLog: TZReadOnlyQuery
    Connection = DM.Design
    SortedFields = 'registred'
    SortType = stDescending
    SQL.Strings = (
      
        'select l.recno, l.registred, l.title, l.detail, l.account, a.nom' +
        'e, a.email, l.rotate, l."level" '
      '  from sys_logs l'
      '       join vaccounts a'
      '         on a.account = l.account '
      ' where l.source_table = :origem'
      '   and l.source_recno = :recno')
    Params = <
      item
        DataType = ftUnknown
        Name = 'origem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end>
    IndexFieldNames = 'registred Desc'
    Left = 176
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'origem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end>
    object qLoglevel: TStringField
      DisplayLabel = ' '
      FieldName = 'level'
      Required = True
      Size = 255
    end
    object qLogrecno: TLargeintField
      DisplayLabel = 'Registro'
      DisplayWidth = 10
      FieldName = 'recno'
      Required = True
    end
    object qLogregistred: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'registred'
      Required = True
      DisplayFormat = 'dd/mm/yyy hh:nn:ss'
    end
    object qLogtitle: TStringField
      DisplayLabel = 'T'#237'tulo'
      DisplayWidth = 60
      FieldName = 'title'
      Required = True
      Size = 255
    end
    object qLogdetail: TMemoField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'detail'
      Visible = False
      BlobType = ftMemo
    end
    object qLogaccount: TLargeintField
      DisplayLabel = 'Conta'
      FieldName = 'account'
      Required = True
      Visible = False
    end
    object qLognome: TStringField
      DisplayLabel = 'Usu'#225'rio'
      DisplayWidth = 25
      FieldName = 'nome'
      Size = 150
    end
    object qLogemail: TStringField
      DisplayLabel = 'E-Mail'
      DisplayWidth = 40
      FieldName = 'email'
      Size = 150
    end
    object qLogrotate: TBooleanField
      DisplayLabel = 'Rotacionar'
      FieldName = 'rotate'
    end
  end
  object dsLog: TDataSource
    DataSet = qLog
    Left = 216
    Top = 192
  end
end
