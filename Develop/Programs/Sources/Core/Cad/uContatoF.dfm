inherited ContatoF: TContatoF
  Caption = 'Pesquisar Contatos'
  ClientHeight = 614
  ClientWidth = 889
  ExplicitWidth = 905
  ExplicitHeight = 653
  PixelsPerInch = 96
  TextHeight = 15
  object Bevel4: TBevel [0]
    Left = 0
    Top = 611
    Width = 889
    Height = 3
    Align = alBottom
    Shape = bsSpacer
    ExplicitTop = 430
    ExplicitWidth = 631
  end
  inherited Panel1: TPanel
    Top = 172
    Width = 889
    ExplicitTop = 172
    ExplicitWidth = 889
    inherited GroupBox1: TGroupBox
      Width = 883
      Height = 54
      ExplicitWidth = 883
      ExplicitHeight = 54
      inherited Label2: TLabel
        Height = 29
      end
      inherited edSearch: TMaskEdit
        Width = 680
        Height = 29
        ExplicitWidth = 680
      end
      inherited BitBtn1: TBitBtn
        Left = 781
        Height = 29
        ExplicitLeft = 781
        ExplicitHeight = 29
      end
    end
  end
  inherited PageControl1: TPageControl
    Top = 236
    Width = 883
    Height = 372
    Images = Resources.medium_n
    OnChange = PageControl1Change
    ExplicitTop = 236
    ExplicitWidth = 883
    ExplicitHeight = 372
    inherited TabSheet1: TTabSheet
      Caption = 'Contatos'
      ImageIndex = 208
      ExplicitLeft = 4
      ExplicitTop = 33
      ExplicitWidth = 875
      ExplicitHeight = 335
      inherited DBGrid1: TDBGrid
        Width = 875
        Height = 335
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Contatos Inativos'
      ImageIndex = 209
    end
  end
  inherited ControlBar1: TControlBar
    Width = 883
    ExplicitWidth = 883
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
    Top = 47
    Width = 883
    Height = 122
    Align = alTop
    Caption = ' Cliente '
    TabOrder = 3
    object Panel2: TPanel
      Left = 2
      Top = 17
      Width = 879
      Height = 50
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Panel3: TPanel
        Left = 57
        Top = 0
        Width = 327
        Height = 50
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 321
          Height = 15
          Align = alTop
          Caption = 'Empresa'
          ExplicitWidth = 45
        end
        object DBEdit1: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 321
          Height = 23
          Align = alClient
          DataField = 'empresa'
          DataSource = dsIBrowse
          ReadOnly = True
          TabOrder = 0
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 57
        Height = 50
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 1
        object Label3: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 51
          Height = 15
          Align = alTop
          Caption = 'Codigo'
          ExplicitWidth = 39
        end
        object DBEdit2: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 51
          Height = 23
          Align = alClient
          DataField = 'cliente'
          DataSource = dsIBrowse
          ReadOnly = True
          TabOrder = 0
        end
      end
      object Panel5: TPanel
        Left = 384
        Top = 0
        Width = 245
        Height = 50
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 2
        object Label4: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 239
          Height = 15
          Align = alTop
          Caption = 'Nome Curto'
          ExplicitWidth = 66
        end
        object DBEdit3: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 239
          Height = 23
          Align = alClient
          DataField = 'nome_chave'
          DataSource = dsIBrowse
          ReadOnly = True
          TabOrder = 0
        end
      end
      object Panel6: TPanel
        Left = 629
        Top = 0
        Width = 123
        Height = 50
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 3
        object Label5: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 117
          Height = 15
          Align = alTop
          Caption = 'CNPJ'
          ExplicitWidth = 27
        end
        object DBEdit4: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 117
          Height = 23
          Align = alClient
          DataField = 'cnpj'
          DataSource = dsIBrowse
          ReadOnly = True
          TabOrder = 0
        end
      end
      object Panel7: TPanel
        Left = 752
        Top = 0
        Width = 127
        Height = 50
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 4
        object Label6: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 121
          Height = 15
          Align = alTop
          Caption = 'CPF'
          ExplicitWidth = 21
        end
        object DBEdit5: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 121
          Height = 23
          Align = alClient
          DataField = 'cpf'
          DataSource = dsIBrowse
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
    object Panel8: TPanel
      Left = 2
      Top = 67
      Width = 879
      Height = 50
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 771
        Height = 50
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
        object Label7: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 765
          Height = 15
          Align = alTop
          Caption = 'Cidade'
          ExplicitWidth = 37
        end
        object DBEdit6: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 765
          Height = 23
          Align = alClient
          DataField = 'cidade'
          DataSource = dsIBrowse
          ReadOnly = True
          TabOrder = 0
        end
      end
      object Panel13: TPanel
        Left = 771
        Top = 0
        Width = 108
        Height = 50
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        object Label11: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 102
          Height = 15
          Align = alTop
          Caption = 'UF'
          ExplicitWidth = 14
        end
        object DBEdit10: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 102
          Height = 23
          Align = alClient
          DataField = 'estado'
          DataSource = dsIBrowse
          ReadOnly = True
          TabOrder = 0
        end
      end
    end
  end
  inherited alDef: TActionList
    Left = 552
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
      
        'select a.nome, a.funcao, a.telefone, a.celular, a.email, b.empre' +
        'sa, b.nome_chave, a.contato, a.situacao, a.padrao,'
      
        '       b.cnpj, b.cpf, b.cidade, b.estado, a.cliente, a.enviar_pe' +
        'dido_venda, a.enviar_cotacao_venda, a.enviar_laudo_critico,'
      
        '  '#9'   a.enviar_laudo_atencao, a.enviar_laudo_normal, a.enviar_la' +
        'udo_retorno_critico, a.enviar_laudo_retorno_atencao,'
      #9'     a.enviar_laudo_retorno_normal'
      '  from vclientes_contatos a'
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
    Left = 656
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
    object IBrwSrccliente: TIntegerField
      FieldName = 'cliente'
      Visible = False
    end
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
    object IBrwSrcpadrao: TBooleanField
      DisplayLabel = 'Padr'#227'o'
      FieldName = 'padrao'
    end
    object IBrwSrccontato: TIntegerField
      DisplayLabel = 'Contato'
      FieldName = 'contato'
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
    object IBrwSrccnpj: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'cnpj'
      Visible = False
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object IBrwSrccpf: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'cpf'
      Visible = False
      Size = 11
    end
    object IBrwSrccidade: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 25
      FieldName = 'cidade'
      Visible = False
      Size = 100
    end
    object IBrwSrcestado: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'estado'
      Visible = False
      Size = 2
    end
    object IBrwSrcenviar_pedido_venda: TBooleanField
      DisplayLabel = 'Pedido'
      FieldName = 'enviar_pedido_venda'
      Required = True
    end
    object IBrwSrcenviar_cotacao_venda: TBooleanField
      DisplayLabel = 'Cota'#231#227'o'
      FieldName = 'enviar_cotacao_venda'
      Required = True
    end
    object IBrwSrcenviar_laudo_critico: TBooleanField
      DisplayLabel = 'Laudo Cr'#237'tico'
      FieldName = 'enviar_laudo_critico'
      Required = True
    end
    object IBrwSrcenviar_laudo_atencao: TBooleanField
      DisplayLabel = 'Laudo  Aten'#231#227'o'
      FieldName = 'enviar_laudo_atencao'
      Required = True
    end
    object IBrwSrcenviar_laudo_normal: TBooleanField
      DisplayLabel = 'Laudo Normal'
      FieldName = 'enviar_laudo_normal'
      Required = True
    end
    object IBrwSrcenviar_laudo_retorno_critico: TBooleanField
      DisplayLabel = 'Laudo Retorno Cr'#237'tico'
      FieldName = 'enviar_laudo_retorno_critico'
      Required = True
    end
    object IBrwSrcenviar_laudo_retorno_atencao: TBooleanField
      DisplayLabel = 'Laudo Retorno Aten'#231#227'o'
      FieldName = 'enviar_laudo_retorno_atencao'
      Required = True
    end
    object IBrwSrcenviar_laudo_retorno_normal: TBooleanField
      DisplayLabel = 'Laudo Retorno Normal'
      FieldName = 'enviar_laudo_retorno_normal'
      Required = True
    end
  end
  inherited pmOrder: TPopupMenu
    Left = 706
    Top = 6
  end
  inherited alRunTime: TActionList
    Left = 762
    Top = 6
  end
  inherited dsIBrowse: TDataSource
    Left = 608
    Top = 8
  end
end
