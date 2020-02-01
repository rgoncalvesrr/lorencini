inherited ContatoF: TContatoF
  Caption = 'Pesquisar Contatos'
  ClientHeight = 433
  ExplicitHeight = 472
  PixelsPerInch = 96
  TextHeight = 15
  object Bevel4: TBevel [0]
    Left = 0
    Top = 430
    Width = 631
    Height = 3
    Align = alBottom
    Shape = bsSpacer
  end
  inherited Panel1: TPanel
    inherited GroupBox1: TGroupBox
      inherited Label2: TLabel
        Height = 23
      end
      inherited BitBtn1: TBitBtn
        ExplicitHeight = 23
      end
    end
  end
  inherited PageControl1: TPageControl
    Top = 175
    Height = 252
    Images = Resources.medium_n
    OnChange = PageControl1Change
    ExplicitTop = 175
    ExplicitHeight = 252
    inherited TabSheet1: TTabSheet
      Caption = 'Contatos'
      ImageIndex = 208
      ExplicitLeft = 4
      ExplicitTop = 33
      ExplicitWidth = 617
      ExplicitHeight = 215
      inherited DBGrid1: TDBGrid
        Height = 215
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Contatos Inativos'
      ImageIndex = 209
    end
  end
  inherited ControlBar1: TControlBar
    inherited ToolBar1: TToolBar
      ButtonWidth = 92
      inherited tbOrder: TToolButton
        ExplicitWidth = 76
      end
      inherited ToolButton1: TToolButton
        ExplicitWidth = 93
      end
      inherited ToolButton2: TToolButton
        ExplicitWidth = 85
      end
      object ToolButton5: TToolButton
        Left = 262
        Top = 0
        Width = 8
        Caption = 'ToolButton5'
        ImageIndex = 5
        Style = tbsSeparator
      end
      object ToolButton3: TToolButton
        Left = 270
        Top = 0
        Action = actNew
      end
    end
  end
  object GroupBox2: TGroupBox [4]
    AlignWithMargins = True
    Left = 3
    Top = 108
    Width = 625
    Height = 61
    Align = alTop
    Caption = ' Cliente '
    TabOrder = 3
    object Label1: TLabel
      Left = 8
      Top = 19
      Width = 65
      Height = 15
      Caption = 'Raz'#227'o Social'
    end
    object Label3: TLabel
      Left = 8
      Top = 36
      Width = 45
      Height = 15
      Caption = 'Empresa'
    end
    object DBText2: TDBText
      Left = 85
      Top = 36
      Width = 41
      Height = 15
      AutoSize = True
      DataField = 'nome_chave'
      DataSource = dsIBrowse
    end
    object DBText1: TDBText
      Left = 85
      Top = 19
      Width = 41
      Height = 15
      AutoSize = True
      DataField = 'empresa'
      DataSource = dsIBrowse
    end
  end
  inherited alDef: TActionList
    Left = 376
    object actNew: TAction
      Caption = 'Contatos...'
      ImageIndex = 28
      OnExecute = actNewExecute
    end
  end
  inherited IBrwSrc: TZReadOnlyQuery
    Connection = DM.Design
    SortedFields = 'nome'
    SQL.Strings = (
      'select a.nome, a.funcao, a.telefone, a.celular, a.email,'
      '       b.empresa, b.nome_chave, a.item, a.situacao'
      '  from tbclientes_contatos a'
      '       join tbclientes b'
      '         on b.codigo = a.cliente'
      ' where a.cliente = :cliente'
      '   and a.situacao = :situacao')
    Params = <
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'situacao'
        ParamType = ptUnknown
        Value = 1
      end>
    IndexFieldNames = 'nome Asc'
    Options = []
    Left = 448
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'situacao'
        ParamType = ptUnknown
        Value = 1
      end>
    object IBrwSrcempresa: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'empresa'
      Visible = False
      Size = 100
    end
    object IBrwSrcnome_chave: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'nome_chave'
      Visible = False
      Size = 45
    end
    object IBrwSrcnome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 25
      FieldName = 'nome'
      Size = 60
    end
    object IBrwSrcsituacao: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'situacao'
      Required = True
      Visible = False
      OnGetText = IBrwSrcsituacaoGetText
    end
    object IBrwSrcfuncao: TStringField
      DisplayLabel = 'Fun'#231#227'o'
      DisplayWidth = 20
      FieldName = 'funcao'
      Size = 54
    end
    object IBrwSrctelefone: TStringField
      DisplayLabel = 'Fone'
      DisplayWidth = 20
      FieldName = 'telefone'
      Size = 100
    end
    object IBrwSrccelular: TStringField
      DisplayLabel = 'Celular'
      DisplayWidth = 20
      FieldName = 'celular'
      Size = 100
    end
    object IBrwSrcemail: TStringField
      DisplayLabel = 'Email'
      DisplayWidth = 30
      FieldName = 'email'
      Size = 100
    end
    object IBrwSrcitem: TIntegerField
      FieldName = 'item'
      Visible = False
    end
  end
  inherited pmOrder: TPopupMenu
    Left = 482
    Top = 6
  end
  inherited alRunTime: TActionList
    Left = 514
    Top = 6
  end
  inherited dsIBrowse: TDataSource
    Left = 408
    Top = 8
  end
end
