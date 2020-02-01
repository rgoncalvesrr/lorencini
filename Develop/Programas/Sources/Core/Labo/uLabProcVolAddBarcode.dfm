inherited LabProcVolAddBarcode: TLabProcVolAddBarcode
  ActiveControl = edCodLido
  Caption = 'Montagem de Volume - Composi'#231#227'o'
  ClientHeight = 672
  ClientWidth = 803
  ExplicitWidth = 819
  ExplicitHeight = 711
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel [0]
    AlignWithMargins = True
    Left = 3
    Top = 632
    Width = 797
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 4
    ExplicitTop = 465
    ExplicitWidth = 607
    object Button1: TButton
      AlignWithMargins = True
      Left = 696
      Top = 3
      Width = 98
      Height = 31
      Action = actClose
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 506
    end
  end
  object PageControl3: TPageControl [1]
    AlignWithMargins = True
    Left = 3
    Top = 233
    Width = 797
    Height = 393
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 3
    ExplicitTop = 239
    ExplicitWidth = 607
    ExplicitHeight = 220
    object TabSheet3: TTabSheet
      Caption = 'Etiquetas no Volume'
      ExplicitWidth = 599
      ExplicitHeight = 190
      object DBGrid4: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 552
        Height = 357
        Align = alClient
        BorderStyle = bsNone
        Ctl3D = False
        DataSource = DataSource1
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
      end
      object GroupBox4: TGroupBox
        AlignWithMargins = True
        Left = 561
        Top = 3
        Width = 225
        Height = 357
        Align = alRight
        Caption = ' '#218'ltima Etiqueta Lida '
        TabOrder = 1
        ExplicitLeft = 371
        ExplicitHeight = 184
        object ACBrBarCode2: TACBrBarCode
          Left = 12
          Top = 125
          Width = 205
          Height = 49
          Modul = 8
          Ratio = 2.000000000000000000
          Typ = bcCode39
          ShowTextFont.Charset = DEFAULT_CHARSET
          ShowTextFont.Color = clWindowText
          ShowTextFont.Height = -11
          ShowTextFont.Name = 'Tahoma'
          ShowTextFont.Style = []
          ShowTextPosition = stpTopRight
        end
        object DBText2: TDBText
          Left = 173
          Top = 25
          Width = 41
          Height = 15
          Alignment = taRightJustify
          AutoSize = True
          DataField = 'etiq_proc'
          DataSource = DataSource1
          Transparent = True
        end
        object Label20: TLabel
          Left = 10
          Top = 25
          Width = 80
          Height = 15
          Caption = 'Lorencini Brasil'
        end
        object Shape1: TShape
          Left = 10
          Top = 42
          Width = 205
          Height = 4
          Brush.Color = clBlack
        end
        object Label25: TLabel
          Left = 13
          Top = 109
          Width = 106
          Height = 10
          Caption = 'ESTERILIZA'#199#195'O V'#193'LIDA AT'#201
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object DBText5: TDBText
          Left = 127
          Top = 106
          Width = 40
          Height = 14
          AutoSize = True
          DataField = 'validade'
          DataSource = DataSource1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label4: TLabel
          Left = 10
          Top = 52
          Width = 40
          Height = 15
          Caption = 'Origem'
        end
        object Label9: TLabel
          Left = 10
          Top = 70
          Width = 23
          Height = 15
          Caption = 'Tipo'
        end
      end
    end
  end
  object GroupBox1: TGroupBox [2]
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 797
    Height = 69
    Align = alTop
    Caption = ' Remessa '
    TabOrder = 0
    object Panel2: TPanel
      Left = 2
      Top = 17
      Width = 793
      Height = 50
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 304
      ExplicitTop = 61
      ExplicitWidth = 428
      ExplicitHeight = 65
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 92
        Height = 50
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitHeight = 65
        object Label1: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 86
          Height = 15
          Align = alTop
          Caption = 'Origem'
          FocusControl = DBEdit1
          ExplicitLeft = 8
          ExplicitTop = 16
          ExplicitWidth = 40
        end
        object DBEdit1: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 86
          Height = 23
          TabStop = False
          Align = alClient
          DataField = 'recno'
          DataSource = LabProcVol.dsRem
          ReadOnly = True
          TabOrder = 0
          ExplicitLeft = 8
          ExplicitTop = 32
          ExplicitWidth = 57
        end
      end
      object Panel4: TPanel
        Left = 92
        Top = 0
        Width = 92
        Height = 50
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitLeft = 184
        ExplicitHeight = 65
        object Label2: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 86
          Height = 15
          Align = alTop
          Caption = 'Destinat'#225'rio'
          FocusControl = DBEdit2
          ExplicitLeft = 29
          ExplicitTop = 16
          ExplicitWidth = 63
        end
        object DBEdit2: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 86
          Height = 23
          TabStop = False
          Align = alClient
          DataField = 'codigo'
          DataSource = LabProcVol.dsRem
          ReadOnly = True
          TabOrder = 0
          ExplicitLeft = 27
          ExplicitTop = 32
          ExplicitWidth = 65
        end
      end
      object Panel5: TPanel
        Left = 184
        Top = 0
        Width = 609
        Height = 50
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        ExplicitLeft = 256
        ExplicitWidth = 92
        ExplicitHeight = 65
        object Label3: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 603
          Height = 15
          Align = alTop
          Caption = 'Destinat'#225'rio'
          FocusControl = DBEdit3
          ExplicitLeft = 144
          ExplicitTop = 16
          ExplicitWidth = 63
        end
        object DBEdit3: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 603
          Height = 23
          TabStop = False
          Align = alClient
          DataField = 'nome_chave'
          DataSource = LabProcVol.dsRem
          ReadOnly = True
          TabOrder = 0
          ExplicitLeft = -216
          ExplicitTop = 32
          ExplicitWidth = 460
        end
      end
    end
  end
  object GroupBox2: TGroupBox [3]
    AlignWithMargins = True
    Left = 3
    Top = 78
    Width = 797
    Height = 69
    Align = alTop
    Caption = ' Volume '
    TabOrder = 1
    object Panel6: TPanel
      Left = 2
      Top = 17
      Width = 793
      Height = 50
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 424
      ExplicitTop = 16
      ExplicitWidth = 673
      ExplicitHeight = 55
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 65
        Height = 50
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitHeight = 55
        object Label5: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 59
          Height = 15
          Align = alTop
          Caption = 'Volume'
          FocusControl = DBEdit4
          ExplicitTop = 19
          ExplicitWidth = 40
        end
        object DBEdit4: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 59
          Height = 23
          TabStop = False
          Align = alClient
          DataField = 'volume'
          DataSource = LabProcVol.dsVolume
          ReadOnly = True
          TabOrder = 0
          ExplicitLeft = 8
          ExplicitTop = 32
          ExplicitWidth = 57
        end
      end
      object Panel8: TPanel
        Left = 65
        Top = 0
        Width = 124
        Height = 50
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitHeight = 55
        object Label6: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 118
          Height = 15
          Align = alTop
          Caption = 'Etiqueta do Volume'
          FocusControl = DBEdit5
          ExplicitLeft = -38
          ExplicitTop = 24
          ExplicitWidth = 103
        end
        object DBEdit5: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 118
          Height = 23
          TabStop = False
          Align = alClient
          DataField = 'vol_etiq'
          DataSource = LabProcVol.dsVolume
          ReadOnly = True
          TabOrder = 0
          OnChange = DBEdit5Change
          ExplicitLeft = 21
          ExplicitTop = 32
          ExplicitWidth = 103
        end
      end
      object Panel9: TPanel
        Left = 189
        Top = 0
        Width = 100
        Height = 50
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 2
        ExplicitHeight = 55
        object Label7: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 94
          Height = 15
          Align = alTop
          Caption = 'Frascos'
          FocusControl = DBEdit6
          ExplicitLeft = 61
          ExplicitTop = 24
          ExplicitWidth = 39
        end
        object DBEdit6: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 94
          Height = 23
          TabStop = False
          Align = alClient
          DataField = 'frascos'
          DataSource = LabProcVol.dsVolume
          ReadOnly = True
          TabOrder = 0
          ExplicitLeft = 0
          ExplicitTop = 32
          ExplicitWidth = 100
        end
      end
      object Panel10: TPanel
        Left = 289
        Top = 0
        Width = 100
        Height = 50
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 3
        ExplicitHeight = 55
        object Label8: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 94
          Height = 15
          Align = alTop
          Caption = 'Seringas'
          FocusControl = DBEdit7
          ExplicitLeft = 21
          ExplicitTop = 24
          ExplicitWidth = 44
        end
        object DBEdit7: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 94
          Height = 23
          TabStop = False
          Align = alClient
          DataField = 'seringas'
          DataSource = LabProcVol.dsVolume
          ReadOnly = True
          TabOrder = 0
          ExplicitLeft = -35
          ExplicitTop = 32
          ExplicitWidth = 100
        end
      end
      object Panel11: TPanel
        Left = 389
        Top = 0
        Width = 404
        Height = 50
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 4
        ExplicitLeft = 320
        ExplicitTop = 3
        ExplicitWidth = 65
        ExplicitHeight = 55
        object ACBrBarCode1: TACBrBarCode
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 398
          Height = 44
          Modul = 15
          Ratio = 2.000000000000000000
          Typ = bcCode39
          ShowTextFont.Charset = DEFAULT_CHARSET
          ShowTextFont.Color = clWindowText
          ShowTextFont.Height = -11
          ShowTextFont.Name = 'Tahoma'
          ShowTextFont.Style = []
          ShowTextPosition = stpTopRight
          Align = alClient
          ExplicitLeft = 104
          ExplicitWidth = 297
        end
      end
    end
  end
  object GroupBox3: TGroupBox [4]
    AlignWithMargins = True
    Left = 3
    Top = 153
    Width = 797
    Height = 74
    Align = alTop
    Caption = ' Leitura Atual '
    TabOrder = 2
    ExplicitTop = 159
    ExplicitWidth = 607
    object lbMsg: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 51
      Width = 787
      Height = 18
      Align = alBottom
      AutoSize = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Transparent = False
      ExplicitTop = 52
      ExplicitWidth = 597
    end
    object edCodLido: TMaskEdit
      AlignWithMargins = True
      Left = 5
      Top = 20
      Width = 787
      Height = 25
      Align = alClient
      EditMask = '999.999.999.999;0;'
      MaxLength = 15
      TabOrder = 0
      OnExit = edCodLidoExit
      ExplicitWidth = 597
      ExplicitHeight = 23
    end
  end
  inherited alDef: TActionList
    Left = 200
  end
  object DataSource1: TDataSource
    DataSet = LabProcVol.zVolEtiq
    OnStateChange = DataSource1StateChange
    Left = 304
    Top = 240
  end
end
