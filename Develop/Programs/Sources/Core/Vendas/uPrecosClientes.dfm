inherited PrecosClientes: TPrecosClientes
  Caption = 'Pol'#237'tica de Pre'#231'os por Cliente'
  ClientHeight = 462
  Constraints.MinWidth = 851
  ExplicitWidth = 853
  ExplicitHeight = 500
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 435
    ExplicitTop = 435
    ExplicitWidth = 831
  end
  inherited Panel1: TPanel
    Top = 44
    ExplicitTop = 35
    inherited pctlFind: TPageControl
      ExplicitLeft = 5
      ExplicitWidth = 827
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 819
        ExplicitHeight = 65
        object Label18: TLabel [0]
          Left = 12
          Top = 2
          Width = 90
          Height = 15
          Caption = 'Vizualizar cliente:'
          Transparent = True
        end
        object ComboBox1: TComboBox
          Left = 12
          Top = 23
          Width = 264
          Height = 23
          DropDownCount = 30
          ItemHeight = 15
          TabOrder = 1
          OnChange = ComboBox1Change
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
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 819
        ExplicitHeight = 65
      end
    end
  end
  inherited Panel2: TPanel
    Top = 119
    Height = 174
    ExplicitTop = 110
    ExplicitHeight = 194
    inherited PageControl1: TPageControl
      Height = 168
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 831
      ExplicitHeight = 188
      inherited TabSheet1: TTabSheet
        Caption = 'Pre'#231'os por Cliente'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 823
        ExplicitHeight = 158
        inherited DBGrid1: TDBGrid
          Height = 138
        end
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 831
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
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
  object GroupBox1: TGroupBox [4]
    AlignWithMargins = True
    Left = 3
    Top = 296
    Width = 831
    Height = 133
    Align = alBottom
    Caption = ' Cliente '
    Color = clBtnFace
    ParentBackground = False
    ParentColor = False
    TabOrder = 4
    object Panel3: TPanel
      AlignWithMargins = True
      Left = 5
      Top = 20
      Width = 821
      Height = 51
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 74
        Height = 51
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitHeight = 45
        object Label1: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 68
          Height = 15
          Align = alTop
          Caption = 'C'#243'digo'
          FocusControl = DBEdit1
          ExplicitLeft = 2
          ExplicitTop = 2
          ExplicitWidth = 39
        end
        object DBEdit1: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 68
          Height = 24
          Align = alClient
          DataField = 'cliente'
          DataSource = DataSource1
          ReadOnly = True
          TabOrder = 0
          ExplicitHeight = 23
        end
      end
      object Panel5: TPanel
        Left = 74
        Top = 0
        Width = 342
        Height = 51
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitHeight = 45
        object Label3: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 336
          Height = 15
          Align = alTop
          Caption = 'Nome Empresarial'
          FocusControl = DBEdit2
          ExplicitLeft = 2
          ExplicitTop = 2
          ExplicitWidth = 97
        end
        object DBEdit2: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 336
          Height = 24
          Align = alClient
          DataField = 'empresa'
          DataSource = DataSource1
          ReadOnly = True
          TabOrder = 0
          ExplicitHeight = 23
        end
      end
      object Panel6: TPanel
        Left = 723
        Top = 0
        Width = 98
        Height = 51
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 2
        ExplicitHeight = 45
        object Label4: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 92
          Height = 15
          Align = alTop
          Caption = 'CPF'
          FocusControl = DBEdit3
          ExplicitLeft = 2
          ExplicitTop = 2
          ExplicitWidth = 21
        end
        object DBEdit3: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 92
          Height = 24
          Align = alClient
          DataField = 'cpf'
          DataSource = DataSource1
          ReadOnly = True
          TabOrder = 0
          ExplicitHeight = 23
        end
      end
      object Panel7: TPanel
        Left = 603
        Top = 0
        Width = 120
        Height = 51
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 3
        ExplicitHeight = 45
        object Label5: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 114
          Height = 15
          Align = alTop
          Caption = 'CNPJ'
          FocusControl = DBEdit4
          ExplicitLeft = 2
          ExplicitTop = 2
          ExplicitWidth = 28
        end
        object DBEdit4: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 114
          Height = 24
          Align = alClient
          DataField = 'cnpj'
          DataSource = DataSource1
          ReadOnly = True
          TabOrder = 0
          ExplicitHeight = 23
        end
      end
      object Panel8: TPanel
        Left = 416
        Top = 0
        Width = 187
        Height = 51
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 4
        ExplicitHeight = 45
        object Label6: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 181
          Height = 15
          Align = alTop
          Caption = 'Nome Curto'
          FocusControl = DBEdit5
          ExplicitLeft = 2
          ExplicitTop = 2
          ExplicitWidth = 66
        end
        object DBEdit5: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 181
          Height = 24
          Align = alClient
          DataField = 'nome_chave'
          DataSource = DataSource1
          ReadOnly = True
          TabOrder = 0
          ExplicitHeight = 23
        end
      end
    end
    object Panel9: TPanel
      AlignWithMargins = True
      Left = 5
      Top = 77
      Width = 821
      Height = 51
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 241
        Height = 51
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        ExplicitHeight = 45
        object Label7: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 235
          Height = 15
          Align = alTop
          Caption = 'E-mail'
          FocusControl = DBEdit6
          ExplicitLeft = 2
          ExplicitTop = 2
          ExplicitWidth = 34
        end
        object DBEdit6: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 235
          Height = 24
          Align = alClient
          CharCase = ecLowerCase
          DataField = 'email'
          DataSource = DataSource1
          ReadOnly = True
          TabOrder = 0
          ExplicitHeight = 23
        end
      end
      object Panel11: TPanel
        Left = 241
        Top = 0
        Width = 421
        Height = 51
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitHeight = 45
        object Label8: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 415
          Height = 15
          Align = alTop
          Caption = 'Cidade'
          FocusControl = DBEdit7
          ExplicitLeft = 2
          ExplicitTop = 2
          ExplicitWidth = 37
        end
        object DBEdit7: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 415
          Height = 24
          Align = alClient
          DataField = 'cidade'
          DataSource = DataSource1
          ReadOnly = True
          TabOrder = 0
          ExplicitHeight = 23
        end
      end
      object Panel13: TPanel
        Left = 701
        Top = 0
        Width = 120
        Height = 51
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 2
        ExplicitHeight = 45
        object Label10: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 114
          Height = 15
          Align = alTop
          Caption = 'Telefone'
          FocusControl = DBEdit9
          ExplicitLeft = 2
          ExplicitTop = 2
          ExplicitWidth = 46
        end
        object DBEdit9: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 114
          Height = 24
          Align = alClient
          DataField = 'telefone'
          DataSource = DataSource1
          ReadOnly = True
          TabOrder = 0
          ExplicitHeight = 23
        end
      end
      object Panel14: TPanel
        Left = 662
        Top = 0
        Width = 39
        Height = 51
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 3
        ExplicitHeight = 45
        object Label11: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 33
          Height = 15
          Align = alTop
          Caption = 'Estado'
          FocusControl = DBEdit10
          ExplicitLeft = 2
          ExplicitTop = 2
          ExplicitWidth = 35
        end
        object DBEdit10: TDBEdit
          AlignWithMargins = True
          Left = 3
          Top = 24
          Width = 33
          Height = 24
          Align = alClient
          CharCase = ecUpperCase
          DataField = 'estado'
          DataSource = DataSource1
          ReadOnly = True
          TabOrder = 0
          ExplicitHeight = 23
        end
      end
    end
  end
  inherited alDef: TActionList
    Left = 288
  end
  inherited pmRel: TPopupMenu
    Left = 344
  end
  inherited pmOrder: TPopupMenu
    Left = 418
  end
  inherited alRunTime: TActionList
    Left = 498
  end
  inherited DataSource1: TDataSource
    Left = 232
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    AfterInsert = IBrwSrcAfterInsert
    SQL.Strings = (
      'select a.cliente, a.servico, a.valor, a.recno, c.empresa,'
      '       c.nome_chave, c.cnpj, c.cpf, c.cidade, c.estado,'
      '       c.email, c.telefone, s.descri'
      '  from tbclientesprecos a'
      '       join tbclientes c'
      '         on c.codigo = a.cliente'
      '       join servicos s'
      '         on s.codserv = a.servico'
      ' where a.cliente = :cliente')
    Params = <
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end>
    Sequence = sIBrwSrc
    SequenceField = 'recno'
    Left = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end>
    object IBrwSrcservico: TIntegerField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'servico'
      Required = True
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Required = True
      Size = 80
    end
    object IBrwSrcvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object IBrwSrccliente: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'cliente'
      Required = True
      Visible = False
    end
    object IBrwSrcempresa: TStringField
      DisplayLabel = 'Nome Empresarial'
      DisplayWidth = 45
      FieldName = 'empresa'
      Visible = False
      Size = 100
    end
    object IBrwSrcnome_chave: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'nome_chave'
      Visible = False
      Size = 45
    end
    object IBrwSrccnpj: TStringField
      DisplayLabel = 'CNPJ'
      DisplayWidth = 18
      FieldName = 'cnpj'
      Visible = False
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object IBrwSrccpf: TStringField
      DisplayLabel = 'CPF'
      DisplayWidth = 14
      FieldName = 'cpf'
      Visible = False
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object IBrwSrcemail: TStringField
      DisplayLabel = 'E-mail'
      DisplayWidth = 40
      FieldName = 'email'
      Visible = False
      Size = 100
    end
    object IBrwSrctelefone: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 25
      FieldName = 'telefone'
      Visible = False
      Size = 100
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
      DisplayWidth = 4
      FieldName = 'estado'
      Visible = False
      Size = 2
    end
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
      Required = True
    end
  end
  inherited pmOpcao: TPopupMenu
    Left = 584
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM tbclientesprecos'
      'WHERE'
      '  tbclientesprecos.cliente = :OLD_cliente AND'
      '  tbclientesprecos.servico = :OLD_servico')
    InsertSQL.Strings = (
      'INSERT INTO tbclientesprecos'
      '  (cliente, servico, valor, recno)'
      'VALUES'
      '  (:cliente, :servico, :valor, :recno)')
    ModifySQL.Strings = (
      'UPDATE tbclientesprecos SET'
      '  valor = :valor'
      'WHERE'
      '  tbclientesprecos.cliente = :OLD_cliente AND'
      '  tbclientesprecos.servico = :OLD_servico')
    Left = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_servico'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'servico'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end>
  end
  object sIBrwSrc: TZSequence
    Connection = DM.Design
    SequenceName = 'public.tbclientesprecos_recno_seq'
    Left = 32
    Top = 48
  end
end
