inherited FichaFinDespM: TFichaFinDespM
  Caption = 'Registro de Despesas'
  ClientHeight = 266
  ClientWidth = 669
  ExplicitWidth = 685
  ExplicitHeight = 305
  PixelsPerInch = 96
  TextHeight = 15
  object Label4: TLabel [0]
    AlignWithMargins = True
    Left = 3
    Top = 149
    Width = 663
    Height = 15
    Align = alTop
    Caption = 'Hist'#243'rico'
    ExplicitLeft = 0
    ExplicitTop = 96
    ExplicitWidth = 48
  end
  object Label5: TLabel [1]
    AlignWithMargins = True
    Left = 3
    Top = 99
    Width = 663
    Height = 15
    Align = alTop
    Caption = 'Lan'#231'amentos Anteriores'
    ExplicitWidth = 128
  end
  inherited ToolBar1: TToolBar
    Width = 669
    ButtonWidth = 81
    inherited ToolButton1: TToolButton
      ExplicitWidth = 81
    end
    inherited ToolButton2: TToolButton
      Left = 81
      ExplicitLeft = 81
      ExplicitWidth = 81
    end
    object ToolButton4: TToolButton
      Left = 162
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 302
      Style = tbsSeparator
    end
    object ToolButton3: TToolButton
      Left = 170
      Top = 0
      Action = actClean
    end
  end
  object Panel1: TPanel [3]
    AlignWithMargins = True
    Left = 3
    Top = 43
    Width = 663
    Height = 50
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 654
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 290
      Height = 50
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 281
      object Label18: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 284
        Height = 15
        Align = alTop
        Caption = 'Vizualizar cliente:'
        Transparent = True
        ExplicitWidth = 90
      end
      object cbCliente: TComboBox
        AlignWithMargins = True
        Left = 3
        Top = 24
        Width = 284
        Height = 23
        Align = alClient
        Style = csDropDownList
        DropDownCount = 30
        ItemHeight = 15
        TabOrder = 0
        OnChange = cbClienteChange
        Items.Strings = (
          '<TODOS>'
          'JANEIRO'
          'FEVEREIRO'
          'MAR'#199'O'
          'ABRIL'
          'MAIO'
          'JUNHO'
          'JULHO'
          'AGOSTO'
          'SETEMBRO'
          'OUTUBRO'
          'NOVEMBRO'
          'DEZEMBRO')
        ExplicitWidth = 275
      end
    end
    object Panel3: TPanel
      Left = 290
      Top = 0
      Width = 120
      Height = 50
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitLeft = 281
      object Label2: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 114
        Height = 15
        Align = alTop
        Caption = 'Data'
        ExplicitWidth = 24
      end
      object edData: TJvDateEdit
        AlignWithMargins = True
        Left = 3
        Top = 24
        Width = 114
        Height = 23
        Align = alClient
        CheckOnExit = True
        Flat = True
        ParentFlat = False
        TabOrder = 0
        OnChange = edDataChange
        ExplicitHeight = 21
      end
    end
    object Panel4: TPanel
      Left = 410
      Top = 0
      Width = 120
      Height = 50
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitLeft = 404
      ExplicitTop = 3
      object Label3: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 114
        Height = 15
        Align = alTop
        Caption = 'Documento'
        ExplicitWidth = 63
      end
      object edDocto: TEdit
        AlignWithMargins = True
        Left = 3
        Top = 24
        Width = 114
        Height = 23
        Align = alClient
        TabOrder = 0
        OnChange = edDataChange
        ExplicitLeft = 0
        ExplicitTop = 16
        ExplicitWidth = 121
      end
    end
    object Panel7: TPanel
      Left = 530
      Top = 0
      Width = 133
      Height = 50
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 3
      ExplicitLeft = 592
      object Label1: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 127
        Height = 15
        Align = alTop
        Caption = 'Valor'
        ExplicitWidth = 26
      end
      object edValor: TJvCalcEdit
        AlignWithMargins = True
        Left = 3
        Top = 24
        Width = 127
        Height = 23
        Flat = True
        ParentFlat = False
        Align = alClient
        DisplayFormat = '0.00'
        FormatOnEditing = True
        TabOrder = 0
        DecimalPlacesAlwaysShown = True
        OnChange = edDataChange
        ExplicitHeight = 21
      end
    end
  end
  object edHistorico: TMemo [4]
    AlignWithMargins = True
    Left = 3
    Top = 170
    Width = 663
    Height = 93
    Align = alClient
    TabOrder = 3
    OnChange = edDataChange
    ExplicitLeft = -2
    ExplicitTop = 120
    ExplicitHeight = 143
  end
  object cbHistorico: TComboBox [5]
    AlignWithMargins = True
    Left = 3
    Top = 120
    Width = 663
    Height = 23
    Align = alTop
    Style = csDropDownList
    DropDownCount = 30
    ItemHeight = 15
    TabOrder = 2
    OnChange = cbHistoricoChange
    Items.Strings = (
      '<TODOS>'
      'JANEIRO'
      'FEVEREIRO'
      'MAR'#199'O'
      'ABRIL'
      'MAIO'
      'JUNHO'
      'JULHO'
      'AGOSTO'
      'SETEMBRO'
      'OUTUBRO'
      'NOVEMBRO'
      'DEZEMBRO')
    ExplicitLeft = -2
  end
  inherited alDef: TActionList
    inherited actOk: TAction
      Enabled = False
    end
    inherited actCancel: TAction
      Enabled = True
    end
    object actClean: TAction
      Caption = 'Limpar'
      ImageIndex = 316
      OnExecute = actCleanExecute
    end
  end
end
