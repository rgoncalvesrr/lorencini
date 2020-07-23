inherited Contatos: TContatos
  Caption = 'Contatos'
  ClientHeight = 467
  ClientWidth = 983
  ExplicitWidth = 999
  ExplicitHeight = 506
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 440
    Width = 977
    ExplicitTop = 440
    ExplicitWidth = 977
  end
  inherited Panel1: TPanel
    Width = 983
    ExplicitWidth = 983
    inherited pctlFind: TPageControl
      Width = 973
      ExplicitWidth = 973
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 965
        ExplicitHeight = 75
        inherited BitBtn2: TBitBtn
          Left = 864
          ExplicitLeft = 864
        end
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 113
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Label5: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 107
            Height = 15
            Align = alTop
            Caption = 'Situa'#231#227'o'
            ExplicitWidth = 45
          end
          object cbSituacao: TComboBox
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 107
            Height = 23
            Align = alTop
            Style = csDropDownList
            ItemHeight = 15
            ItemIndex = 1
            TabOrder = 0
            Text = 'ATIVO'
            OnChange = cbSituacaoChange
            Items.Strings = (
              'TODOS'
              'ATIVO'
              'INATIVO')
          end
        end
        object Panel8: TPanel
          Left = 205
          Top = 0
          Width = 212
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object Label6: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 206
            Height = 15
            Align = alTop
            Caption = 'Nome'
            ExplicitWidth = 33
          end
          object edNome: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 206
            Height = 23
            Align = alTop
            TabOrder = 0
            OnChange = edNomeChange
          end
        end
        object Panel9: TPanel
          Left = 417
          Top = 0
          Width = 210
          Height = 75
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 3
          object Label7: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 204
            Height = 15
            Align = alTop
            Caption = 'E-mail'
            ExplicitWidth = 34
          end
          object edEmail: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 204
            Height = 23
            Align = alTop
            TabOrder = 0
            OnChange = edNomeChange
          end
        end
        object Panel5: TPanel
          Left = 113
          Top = 0
          Width = 92
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 4
          object Label4: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 86
            Height = 15
            Align = alTop
            Caption = 'Contato'
            ExplicitWidth = 43
          end
          object edContato: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 86
            Height = 23
            Align = alTop
            DecimalPlaceRound = True
            DecimalPlaces = 0
            DisplayFormat = ',0'
            ShowButton = False
            TabOrder = 0
            ZeroEmpty = False
            DecimalPlacesAlwaysShown = False
            OnChange = edNomeChange
          end
        end
        object Panel3: TPanel
          Left = 627
          Top = 0
          Width = 117
          Height = 75
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 5
          object Label1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 111
            Height = 15
            Align = alTop
            Caption = 'Telefone'
            ExplicitWidth = 44
          end
          object edTel: TMaskEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 111
            Height = 23
            Align = alTop
            EditMask = '(99) 9999-9999;0;'
            MaxLength = 14
            TabOrder = 0
            OnChange = edNomeChange
          end
        end
        object Panel6: TPanel
          Left = 744
          Top = 0
          Width = 117
          Height = 75
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 6
          object Label3: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 111
            Height = 15
            Align = alTop
            Caption = 'Celular'
            ExplicitWidth = 37
          end
          object edCel: TMaskEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 111
            Height = 23
            Align = alTop
            EditMask = '(99) 9.9999-9999;0;'
            MaxLength = 16
            TabOrder = 0
            OnChange = edNomeChange
          end
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 965
        ExplicitHeight = 75
      end
    end
  end
  inherited Panel2: TPanel
    Width = 983
    Height = 308
    ExplicitWidth = 983
    ExplicitHeight = 308
    inherited PageControl1: TPageControl
      Width = 977
      Height = 302
      ActivePage = TabSheet2
      Images = Resources.medium_n
      ExplicitWidth = 977
      ExplicitHeight = 302
      inherited TabSheet1: TTabSheet
        Caption = 'Todos'
        ImageIndex = -1
        ExplicitLeft = 4
        ExplicitTop = 33
        ExplicitWidth = 969
        ExplicitHeight = 265
        inherited DBGrid1: TDBGrid
          Width = 963
          Height = 259
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Ativos'
        ImageIndex = 208
        ExplicitLeft = 6
        ExplicitTop = 37
      end
      object TabSheet3: TTabSheet
        Caption = 'Inativos'
        ImageIndex = 209
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Width = 977
    ExplicitWidth = 977
    inherited ToolBar1: TToolBar
      Width = 817
      ExplicitWidth = 817
      inherited ToolButton2: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton5: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton9: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton6: TToolButton
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
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SortedFields = 'nome'
    AfterScroll = IBrwSrcAfterScroll
    AfterInsert = IBrwSrcAfterInsert
    SQL.Strings = (
      
        'select situacao, nome, telefone, celular, email, data, recno fro' +
        'm contatos')
    IndexFieldNames = 'nome Asc'
    Sequence = sContatos
    SequenceField = 'recno'
    object IBrwSrcsituacao: TIntegerField
      DisplayLabel = ' '
      FieldName = 'situacao'
      ProviderFlags = [pfInUpdate]
      Required = True
      OnGetText = IBrwSrcsituacaoGetText
      OnSetText = IBrwSrcsituacaoSetText
    end
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Contato'
      FieldName = 'recno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBrwSrcnome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 45
      FieldName = 'nome'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 150
    end
    object IBrwSrctelefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      ProviderFlags = [pfInUpdate]
      OnSetText = IBrwSrctelefoneSetText
      EditMask = '(99) 9999-9999;0;'
      Size = 25
    end
    object IBrwSrccelular: TStringField
      DisplayLabel = 'Celular'
      FieldName = 'celular'
      ProviderFlags = [pfInUpdate]
      OnSetText = IBrwSrctelefoneSetText
      EditMask = '(99) 9.9999-9999;0;'
      Size = 25
    end
    object IBrwSrcemail: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'email'
      ProviderFlags = [pfInUpdate]
      Size = 150
    end
    object IBrwSrcdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'data'
      ProviderFlags = [pfInUpdate]
      Required = True
      EditMask = '99/99/9999;0;'
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM contatos'
      'WHERE'
      '  contatos.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO contatos'
      '  (recno, nome, telefone, celular, email, data, situacao)'
      'VALUES'
      '  (:recno, :nome, :telefone, :celular, :email, :data, :situacao)')
    ModifySQL.Strings = (
      'UPDATE contatos SET'
      '  recno = :recno,'
      '  nome = :nome,'
      '  telefone = :telefone,'
      '  celular = :celular,'
      '  email = :email,'
      '  data = :data,'
      '  situacao = :situacao'
      'WHERE'
      '  contatos.recno = :OLD_recno')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nome'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'telefone'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'celular'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'email'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'situacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_recno'
        ParamType = ptUnknown
      end>
  end
  object sContatos: TZSequence
    Connection = DM.Design
    SequenceName = 'public.contatos_recno_seq'
    Left = 88
    Top = 128
  end
  object sContCli: TZSequence
    Connection = DM.Design
    SequenceName = 'public.tbclientes_contatos_recno_seq'
    Left = 88
    Top = 184
  end
  object zContCli: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM tbclientes_contatos'
      'WHERE'
      '  tbclientes_contatos.cliente = :OLD_cliente AND'
      '  tbclientes_contatos.contato = :OLD_contato')
    InsertSQL.Strings = (
      'INSERT INTO tbclientes_contatos'
      
        '  (cliente, contato, funcao, recno, situacao, enviar_pedido_vend' +
        'a, enviar_cotacao_venda, '
      
        '   enviar_laudo_critico, enviar_laudo_atencao, enviar_laudo_norm' +
        'al, enviar_laudo_retorno_critico, '
      
        '   enviar_laudo_retorno_atencao, enviar_laudo_retorno_normal, pa' +
        'drao, portal_acessivel, portal_senha)'
      'VALUES'
      
        '  (:cliente, :contato, :funcao, :recno, :situacao, :enviar_pedid' +
        'o_venda, :enviar_cotacao_venda,'
      
        '   :enviar_laudo_critico, :enviar_laudo_atencao, :enviar_laudo_n' +
        'ormal,'
      
        '   :enviar_laudo_retorno_critico, :enviar_laudo_retorno_atencao,' +
        ' :enviar_laudo_retorno_normal,'
      '   :padrao, :portal_acessivel, :portal_senha)')
    ModifySQL.Strings = (
      'UPDATE tbclientes_contatos SET'
      '  funcao = :funcao,'
      '  recno = :recno,'
      '  situacao = :situacao,'
      '  enviar_pedido_venda = :enviar_pedido_venda,'
      '  enviar_cotacao_venda = :enviar_cotacao_venda,'
      '  enviar_laudo_critico = :enviar_laudo_critico,'
      '  enviar_laudo_atencao = :enviar_laudo_atencao,'
      '  enviar_laudo_normal = :enviar_laudo_normal,'
      '  enviar_laudo_retorno_critico = :enviar_laudo_retorno_critico,'
      '  enviar_laudo_retorno_atencao = :enviar_laudo_retorno_atencao,'
      '  enviar_laudo_retorno_normal = :enviar_laudo_retorno_normal,'
      '  padrao = :padrao,'
      '  portal_acessivel = :portal_acessivel,'
      '  portal_senha = :portal_senha'
      'WHERE'
      '  tbclientes_contatos.cliente = :OLD_cliente AND'
      '  tbclientes_contatos.contato = :OLD_contato')
    UseSequenceFieldForRefreshSQL = False
    Left = 152
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'funcao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'situacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'enviar_pedido_venda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'enviar_cotacao_venda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'enviar_laudo_critico'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'enviar_laudo_atencao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'enviar_laudo_normal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'enviar_laudo_retorno_critico'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'enviar_laudo_retorno_atencao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'enviar_laudo_retorno_normal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'padrao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'portal_acessivel'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'portal_senha'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_contato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contato'
        ParamType = ptUnknown
      end>
  end
  object qContCli: TZQuery
    Connection = DM.Design
    BeforeRefresh = qContCliBeforeRefresh
    UpdateObject = zContCli
    AfterInsert = qContCliAfterInsert
    SQL.Strings = (
      
        'select cc.cliente, c.empresa, c.nome_chave, c.cidade, c.estado, ' +
        'c.email, c.telefone, cc.enviar_pedido_venda,'
      
        '       cc.enviar_cotacao_venda, cc.enviar_laudo_atencao, cc.envi' +
        'ar_laudo_critico, cc.enviar_laudo_normal,'
      
        '       cc.enviar_laudo_retorno_atencao, cc.enviar_laudo_retorno_' +
        'critico, cc.enviar_laudo_retorno_normal, cc.situacao,'
      
        '       cc.padrao, cc.funcao, cc.recno, c.cnpj, c.cpf, cc.contato' +
        ', cc.portal_acessivel, cc.portal_senha'
      '  from tbclientes_contatos cc'
      '       join tbclientes c'
      '         on c.codigo = cc.cliente'
      ' where cc.contato = :contato')
    Params = <
      item
        DataType = ftUnknown
        Name = 'contato'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    Sequence = sContCli
    SequenceField = 'recno'
    Left = 200
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'contato'
        ParamType = ptUnknown
      end>
    object qContClisituacao: TIntegerField
      DisplayLabel = ' '
      FieldName = 'situacao'
      Required = True
      OnGetText = IBrwSrcsituacaoGetText
      OnSetText = IBrwSrcsituacaoSetText
    end
    object qContClipadrao: TBooleanField
      DisplayLabel = 'Padr'#227'o'
      FieldName = 'padrao'
    end
    object qContClifuncao: TStringField
      DisplayLabel = 'Fun'#231#227'o'
      DisplayWidth = 25
      FieldName = 'funcao'
      Size = 54
    end
    object qContClicliente: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cliente'
      Required = True
    end
    object qContCliempresa: TStringField
      DisplayLabel = 'Nome Empresarial'
      DisplayWidth = 40
      FieldName = 'empresa'
      Size = 100
    end
    object qContClinome_chave: TStringField
      DisplayLabel = 'Nome Curto'
      DisplayWidth = 25
      FieldName = 'nome_chave'
      Size = 45
    end
    object qContClicnpj: TStringField
      DisplayLabel = 'C.N.P.J.'
      DisplayWidth = 18
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object qContClicpf: TStringField
      DisplayLabel = 'CPF'
      DisplayWidth = 14
      FieldName = 'cpf'
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object qContClienviar_cotacao_venda: TBooleanField
      DisplayLabel = 'Cota'#231#227'o'
      FieldName = 'enviar_cotacao_venda'
    end
    object qContClienviar_pedido_venda: TBooleanField
      DisplayLabel = 'Pedido'
      FieldName = 'enviar_pedido_venda'
    end
    object qContClienviar_laudo_normal: TBooleanField
      DisplayLabel = 'Laudo Normal'
      FieldName = 'enviar_laudo_normal'
    end
    object qContClienviar_laudo_atencao: TBooleanField
      DisplayLabel = 'Laudo Aten'#231#227'o'
      FieldName = 'enviar_laudo_atencao'
    end
    object qContClienviar_laudo_critico: TBooleanField
      DisplayLabel = 'Laudo Cr'#237'tico'
      FieldName = 'enviar_laudo_critico'
    end
    object qContClienviar_laudo_retorno_normal: TBooleanField
      DisplayLabel = 'Retorno Normal'
      FieldName = 'enviar_laudo_retorno_normal'
    end
    object qContClienviar_laudo_retorno_atencao: TBooleanField
      DisplayLabel = 'Retorno Aten'#231#227'o'
      FieldName = 'enviar_laudo_retorno_atencao'
    end
    object qContClienviar_laudo_retorno_critico: TBooleanField
      DisplayLabel = 'Retorno Cr'#237'tico'
      FieldName = 'enviar_laudo_retorno_critico'
    end
    object qContClicidade: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 40
      FieldName = 'cidade'
      Size = 100
    end
    object qContCliestado: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'estado'
      Size = 2
    end
    object qContCliemail: TStringField
      DisplayLabel = 'E-mail'
      DisplayWidth = 45
      FieldName = 'email'
      Size = 100
    end
    object qContClitelefone: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 25
      FieldName = 'telefone'
      EditMask = '(99) 9999-9999;0;'
      Size = 100
    end
    object qContClirecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
      Required = True
    end
    object qContClicontato: TIntegerField
      FieldName = 'contato'
      Required = True
      Visible = False
    end
    object qContCliportal_acessivel: TBooleanField
      DisplayLabel = 'Portal'
      FieldName = 'portal_acessivel'
      Required = True
    end
    object qContCliportal_senha: TStringField
      FieldName = 'portal_senha'
      Visible = False
      Size = 34
    end
  end
  object dsContCli: TDataSource
    AutoEdit = False
    DataSet = qContCli
    Left = 256
    Top = 184
  end
end
