inherited LabProcDespachoVol: TLabProcDespachoVol
  Caption = 'Registro de Envio'
  ClientHeight = 427
  ClientWidth = 676
  ExplicitWidth = 692
  ExplicitHeight = 466
  PixelsPerInch = 96
  TextHeight = 15
  object GroupBox1: TGroupBox [0]
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 670
    Height = 70
    Align = alTop
    Caption = ' Remessa '
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 40
      Height = 15
      Caption = 'Origem'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 72
      Top = 16
      Width = 63
      Height = 15
      Caption = 'Destinat'#225'rio'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 144
      Top = 16
      Width = 63
      Height = 15
      Caption = 'Destinat'#225'rio'
      FocusControl = DBEdit3
    end
    object Label5: TLabel
      Left = 479
      Top = 16
      Width = 46
      Height = 15
      Caption = 'Portador'
      FocusControl = DBEdit4
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 32
      Width = 57
      Height = 23
      TabStop = False
      DataField = 'recno'
      DataSource = LabProcDespacho.DataSource1
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 72
      Top = 32
      Width = 65
      Height = 23
      TabStop = False
      DataField = 'codigo'
      DataSource = LabProcDespacho.DataSource1
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 144
      Top = 32
      Width = 329
      Height = 23
      TabStop = False
      DataField = 'nome_chave'
      DataSource = LabProcDespacho.DataSource1
      ReadOnly = True
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 479
      Top = 32
      Width = 188
      Height = 23
      TabStop = False
      DataField = 'tipo'
      DataSource = LabProcDespacho.DataSource1
      ReadOnly = True
      TabOrder = 3
    end
  end
  object GroupBox3: TGroupBox [1]
    AlignWithMargins = True
    Left = 3
    Top = 79
    Width = 670
    Height = 74
    Align = alTop
    Caption = ' C'#243'digo de Barras do Volume  '
    TabOrder = 1
    object lbMsg: TLabel
      AlignWithMargins = True
      Left = 5
      Top = 51
      Width = 660
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
      Width = 660
      Height = 25
      Align = alClient
      EditMask = '999.999.999.999;0;'
      MaxLength = 15
      TabOrder = 0
      OnExit = edCodLidoExit
      ExplicitHeight = 23
    end
  end
  object Panel1: TPanel [2]
    AlignWithMargins = True
    Left = 3
    Top = 387
    Width = 670
    Height = 37
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object Button1: TButton
      AlignWithMargins = True
      Left = 569
      Top = 3
      Width = 98
      Height = 31
      Action = actClose
      Align = alRight
      TabOrder = 0
    end
  end
  object PageControl3: TPageControl [3]
    AlignWithMargins = True
    Left = 3
    Top = 159
    Width = 670
    Height = 222
    ActivePage = TabSheet3
    Align = alClient
    TabOrder = 3
    object TabSheet3: TTabSheet
      Caption = 'Volumes Prontos para Envio'
      object DBGrid4: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 455
        Height = 186
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
        Left = 464
        Top = 3
        Width = 195
        Height = 186
        Align = alRight
        Caption = ' '#218'ltima Etiqueta Lida '
        TabOrder = 1
        object ACBrBarCode2: TACBrBarCode
          Left = 12
          Top = 101
          Width = 179
          Height = 73
          Modul = 7
          Ratio = 2.000000000000000000
          Typ = bcCode39
          ShowTextFont.Charset = DEFAULT_CHARSET
          ShowTextFont.Color = clWindowText
          ShowTextFont.Height = -11
          ShowTextFont.Name = 'Tahoma'
          ShowTextFont.Style = []
          ShowTextPosition = stpTopRight
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
          Width = 174
          Height = 4
          Brush.Color = clBlack
        end
        object Label4: TLabel
          Left = 10
          Top = 48
          Width = 66
          Height = 15
          Caption = 'Destinat'#225'rio:'
        end
        object Label9: TLabel
          Left = 10
          Top = 64
          Width = 49
          Height = 15
          Caption = 'Remessa:'
        end
        object Label6: TLabel
          Left = 10
          Top = 80
          Width = 113
          Height = 15
          Caption = 'Frascos: 0. Seringas: 0'
        end
        object DBText1: TDBText
          Left = 143
          Top = 25
          Width = 41
          Height = 15
          Alignment = taRightJustify
          AutoSize = True
          DataField = 'etiqueta'
          DataSource = LabProcDespacho.dsVolumes
        end
      end
    end
  end
  inherited alDef: TActionList
    Left = 248
  end
  object DataSource1: TDataSource
    DataSet = LabProcDespacho.qVolumes
    OnStateChange = DataSource1StateChange
    Left = 288
    Top = 8
  end
end
