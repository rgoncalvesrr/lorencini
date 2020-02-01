inherited SysCompromisso: TSysCompromisso
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Compromisso'
  ClientHeight = 653
  ClientWidth = 840
  ExplicitWidth = 636
  ExplicitHeight = 519
  PixelsPerInch = 120
  TextHeight = 20
  object gbSendMail: TGroupBox [0]
    Left = 7
    Top = 368
    Width = 818
    Height = 253
    Caption = 'Progresso de Envio de Noficia'#231#245'es '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 5197647
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    Visible = False
    object SpeedButton5: TSpeedButton
      Left = 695
      Top = 204
      Width = 106
      Height = 36
      Action = actMailClose
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object lbMail: TListBox
      Left = 12
      Top = 35
      Width = 789
      Height = 161
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 15
      ParentFont = False
      TabOrder = 0
    end
  end
  inherited ControlBar1: TControlBar
    Width = 834
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 832
    inherited ToolBar1: TToolBar
      Width = 611
      ButtonWidth = 132
      ExplicitWidth = 611
      inherited ToolButton1: TToolButton
        AutoSize = True
        ExplicitWidth = 73
      end
      inherited ToolButton2: TToolButton
        Left = 73
        AutoSize = True
        ExplicitLeft = 73
        ExplicitWidth = 85
      end
      object ToolButton4: TToolButton
        Left = 158
        Top = 0
        Width = 8
        Caption = 'ToolButton4'
        ImageIndex = 27
        Style = tbsSeparator
      end
      object ToolButton3: TToolButton
        Left = 166
        Top = 0
        Action = actSendMail
        AutoSize = True
      end
    end
  end
  object GroupBox1: TGroupBox [2]
    AlignWithMargins = True
    Left = 3
    Top = 60
    Width = 834
    Height = 93
    Align = alTop
    Caption = ' Agendamento '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 5197647
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    ExplicitLeft = 4
    ExplicitTop = 63
    ExplicitWidth = 832
    object Label1: TLabel
      Left = 12
      Top = 23
      Width = 31
      Height = 17
      Caption = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 343
      Top = 23
      Width = 33
      Height = 17
      Caption = 'In'#237'cio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 435
      Top = 23
      Width = 54
      Height = 17
      Caption = 'T'#233'rmino'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 525
      Top = 23
      Width = 66
      Height = 17
      Caption = 'Prioridade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 661
      Top = 23
      Width = 53
      Height = 17
      Caption = 'Posi'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object edData: TDateTimePicker
      Left = 12
      Top = 45
      Width = 321
      Height = 25
      Date = 38917.494213356490000000
      Time = 38917.494213356490000000
      DateFormat = dfLong
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edHT: TDateTimePicker
      Left = 435
      Top = 45
      Width = 81
      Height = 25
      Date = 38917.494213356490000000
      Format = 'hh:mm'
      Time = 38917.494213356490000000
      DateFormat = dfLong
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      Kind = dtkTime
      ParentFont = False
      TabOrder = 2
    end
    object cbPrioriodade: TComboBox
      Left = 525
      Top = 45
      Width = 128
      Height = 25
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 17
      ItemIndex = 1
      ParentFont = False
      TabOrder = 3
      Text = 'Normal'
      OnDrawItem = cbPrioriodadeDrawItem
      OnDropDown = cbPrioriodadeDropDown
      Items.Strings = (
        'Baixa'
        'Normal'
        'Alta')
    end
    object edHI: TDateTimePicker
      Left = 343
      Top = 45
      Width = 81
      Height = 25
      Date = 38917.494213356490000000
      Format = 'hh:mm'
      Time = 38917.494213356490000000
      DateFormat = dfLong
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      Kind = dtkTime
      ParentFont = False
      TabOrder = 1
    end
    object cbPos: TComboBox
      Left = 661
      Top = 45
      Width = 152
      Height = 25
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 17
      ItemIndex = 0
      ParentFont = False
      TabOrder = 4
      Text = 'Pendente'
      Items.Strings = (
        'Pendente'
        'Executado')
    end
  end
  object GroupBox2: TGroupBox [3]
    AlignWithMargins = True
    Left = 3
    Top = 159
    Width = 834
    Height = 229
    Align = alTop
    Caption = ' Compromisso '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 5197647
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    ExplicitLeft = 4
    ExplicitTop = 164
    ExplicitWidth = 832
    object Label4: TLabel
      Left = 12
      Top = 40
      Width = 53
      Height = 17
      Caption = 'Assunto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 12
      Top = 199
      Width = 67
      Height = 17
      Caption = 'Descri'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object edAssunto: TEdit
      Left = 91
      Top = 28
      Width = 710
      Height = 23
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 100
      ParentFont = False
      TabOrder = 0
    end
    object edHisto: TMemo
      Left = 91
      Top = 68
      Width = 710
      Height = 151
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object GroupBox3: TGroupBox [4]
    AlignWithMargins = True
    Left = 3
    Top = 394
    Width = 834
    Height = 254
    Align = alTop
    Caption = ' Comprometimento '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 5197647
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    ExplicitLeft = 4
    ExplicitTop = 401
    ExplicitWidth = 832
    object Label8: TLabel
      Left = 12
      Top = 28
      Width = 122
      Height = 17
      Caption = 'Usu'#225'rios e Grupos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 435
      Top = 28
      Width = 348
      Height = 17
      Caption = 'Usu'#225'rios e/ou Grupos envolvidos neste compromisso'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 391
      Top = 75
      Width = 36
      Height = 30
      Action = actAddAll
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object SpeedButton2: TSpeedButton
      Tag = 1
      Left = 391
      Top = 115
      Width = 36
      Height = 30
      Action = actAdd
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object SpeedButton3: TSpeedButton
      Left = 391
      Top = 195
      Width = 36
      Height = 30
      Action = actDelAll
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object SpeedButton4: TSpeedButton
      Tag = 2
      Left = 391
      Top = 160
      Width = 36
      Height = 32
      Action = actDel
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object lbUsers: TListBox
      Left = 12
      Top = 57
      Width = 369
      Height = 184
      Style = lbOwnerDrawVariable
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 16
      MultiSelect = True
      ParentFont = False
      Sorted = True
      TabOrder = 0
      OnClick = lbUsersClick
      OnDrawItem = lbUsersDrawItem
    end
    object lbUsersCo: TListBox
      Left = 436
      Top = 57
      Width = 369
      Height = 184
      Style = lbOwnerDrawVariable
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 14
      MultiSelect = True
      ParentFont = False
      Sorted = True
      TabOrder = 1
      OnClick = lbUsersClick
      OnDrawItem = lbUsersDrawItem
    end
  end
  inherited alDef: TActionList
    object actAddAll: TAction
      Tag = 1
      Caption = '>>'
      Enabled = False
      Hint = 'Adiciona todos os usu'#225'rios/grupos ao compromisso'
      OnExecute = actAddAllExecute
    end
    object actAdd: TAction
      Tag = 1
      Caption = '>'
      Enabled = False
      Hint = 'Adiciona o usu'#225'rio/grupo selecionado ao compromisso'
      OnExecute = actAddExecute
    end
    object actDel: TAction
      Tag = 2
      Caption = '<'
      Enabled = False
      Hint = 'Remove o usu'#225'rio/grupo selecionado do compromisso'
      OnExecute = actAddExecute
    end
    object actDelAll: TAction
      Tag = 2
      Caption = '<<'
      Enabled = False
      Hint = 'Remove todos usu'#225'rios/grupos do compromisso'
      OnExecute = actAddAllExecute
    end
    object actMailClose: TAction
      Caption = 'Ocultar'
      Enabled = False
      OnExecute = actMailCloseExecute
    end
    object actSendMail: TAction
      Caption = 'Notificar Contatos'
      ImageIndex = 26
      OnExecute = actSendMailExecute
    end
  end
  object IdSMTP1: TIdSMTP
    HeloName = 'Sistema Manager'
    Host = 'smtp.terra.com.br'
    Password = 'lore08'
    SASLMechanisms = <>
    Username = 'lorencini08'
    Left = 320
    Top = 152
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 288
    Top = 152
  end
end
