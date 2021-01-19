inherited Colaboradores: TColaboradores
  Caption = 'Cadastro de colaboradores'
  ClientHeight = 459
  ClientWidth = 781
  Constraints.MinWidth = 645
  ExplicitWidth = 797
  ExplicitHeight = 498
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 427
    Width = 775
    Height = 29
    ExplicitTop = 427
    ExplicitWidth = 775
    ExplicitHeight = 29
  end
  inherited Panel1: TPanel
    Width = 781
    ExplicitWidth = 781
    inherited pctlFind: TPageControl
      Width = 771
      ExplicitWidth = 771
      inherited tsQuery: TTabSheet
        ExplicitWidth = 763
        inherited BitBtn2: TBitBtn
          Left = 662
          ExplicitLeft = 662
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 54
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Label3: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 48
            Height = 15
            Align = alTop
            Caption = 'C'#243'digo'
            ExplicitWidth = 39
          end
          object edCodigo: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 48
            Height = 23
            Align = alTop
            DecimalPlaces = 0
            DisplayFormat = '#'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
            OnChange = edCodigoChange
          end
        end
        object Panel6: TPanel
          Left = 54
          Top = 0
          Width = 234
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object Label1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 228
            Height = 15
            Align = alTop
            Caption = 'Situa'#231#227'o'
            ExplicitWidth = 45
          end
          object cbStatus: TComboBox
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 228
            Height = 23
            Align = alTop
            Style = csDropDownList
            ItemHeight = 15
            ItemIndex = 0
            TabOrder = 0
            Text = 'Todos'
            OnChange = cbStatusChange
            Items.Strings = (
              'Todos'
              'Ativo'
              'Demitido')
          end
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 763
      end
    end
  end
  inherited Panel2: TPanel
    Width = 781
    Height = 295
    ExplicitWidth = 781
    ExplicitHeight = 295
    inherited PageControl1: TPageControl
      Width = 775
      Height = 289
      Images = Resources.medium_n
      ExplicitWidth = 775
      ExplicitHeight = 289
      inherited TabSheet1: TTabSheet
        Caption = 'Todos'
        ImageIndex = -1
        ExplicitTop = 33
        ExplicitWidth = 767
        ExplicitHeight = 252
        inherited DBGrid1: TDBGrid
          Width = 761
          Height = 246
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Ativo'
        ImageIndex = 208
      end
      object TabSheet3: TTabSheet
        Caption = 'Demitido'
        ImageIndex = 213
        ExplicitLeft = 6
        ExplicitTop = 37
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Width = 775
    ExplicitWidth = 775
    inherited ToolBar1: TToolBar
      Width = 617
      ExplicitWidth = 617
      inherited ToolButton7: TToolButton
        ExplicitHeight = 36
      end
      inherited ToolButton4: TToolButton
        ExplicitHeight = 36
      end
    end
  end
  inherited alDef: TActionList
    Left = 320
    Top = 184
  end
  inherited pmRel: TPopupMenu
    Left = 360
    Top = 184
  end
  inherited pmOrder: TPopupMenu
    Left = 402
    Top = 182
  end
  inherited alRunTime: TActionList
    Left = 450
    Top = 182
  end
  inherited DataSource1: TDataSource
    Top = 184
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SortedFields = 'nome'
    AfterScroll = IBrwSrcAfterScroll
    AfterInsert = IBrwSrcAfterInsert
    BeforePost = IBrwSrcBeforePost
    SQL.Strings = (
      
        'select c.idcodigo, c.nome, c.rg, c.cpf, c.endereco, c.bairro, c.' +
        'cidade, c.estado, c.cep, c.telresidencia, c.telcelular,'
      
        '       c.contabanco, c.contaagencia, c.contanumero, c.situacao, ' +
        'c.dtadmissao, c.dtdemissao, c.cargo, c.crq, c.username,'
      '       c.conselho, c.assinatura, c.recno'
      '  from tbfuncionarios c ')
    IndexFieldNames = 'nome Asc'
    Sequence = sIBrwSrc
    SequenceField = 'recno'
    Left = 184
    Top = 184
    object IBrwSrcsituacao: TStringField
      DisplayLabel = ' '
      FieldName = 'situacao'
      Size = 50
    end
    object IBrwSrcidcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'idcodigo'
    end
    object IBrwSrcnome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Required = True
      Size = 60
    end
    object IBrwSrccargo: TStringField
      DisplayLabel = 'Cargo'
      FieldName = 'cargo'
      Visible = False
      Size = 60
    end
    object IBrwSrctelcelular: TStringField
      DisplayLabel = 'Celular'
      DisplayWidth = 10
      FieldName = 'telcelular'
      Size = 60
    end
    object IBrwSrcrg: TStringField
      DisplayLabel = 'RG'
      FieldName = 'rg'
      EditMask = '99.999.999-9;1;'
      Size = 50
    end
    object IBrwSrccpf: TStringField
      DisplayLabel = 'C.P.F.'
      DisplayWidth = 14
      FieldName = 'cpf'
      Required = True
      EditMask = '999.999.999-99;1;'
      Size = 50
    end
    object IBrwSrcendereco: TStringField
      FieldName = 'endereco'
      Visible = False
      Size = 80
    end
    object IBrwSrcbairro: TStringField
      FieldName = 'bairro'
      Visible = False
      Size = 80
    end
    object IBrwSrccep: TStringField
      FieldName = 'cep'
      Visible = False
      EditMask = '99999-999;0;'
      Size = 80
    end
    object IBrwSrccidade: TStringField
      FieldName = 'cidade'
      Visible = False
      Size = 80
    end
    object IBrwSrcestado: TStringField
      Alignment = taCenter
      FieldName = 'estado'
      Visible = False
      Size = 80
    end
    object IBrwSrccontabanco: TStringField
      FieldName = 'contabanco'
      Visible = False
      Size = 50
    end
    object IBrwSrccontaagencia: TStringField
      FieldName = 'contaagencia'
      Visible = False
      Size = 50
    end
    object IBrwSrccontanumero: TStringField
      FieldName = 'contanumero'
      Visible = False
      Size = 50
    end
    object IBrwSrctelresidencia: TStringField
      FieldName = 'telresidencia'
      Visible = False
      Size = 50
    end
    object IBrwSrcdtadmissao: TDateTimeField
      FieldName = 'dtadmissao'
      Visible = False
    end
    object IBrwSrcdtdemissao: TDateTimeField
      FieldName = 'dtdemissao'
      Visible = False
    end
    object IBrwSrccrq: TStringField
      DisplayLabel = 'CREA'
      FieldName = 'crq'
      Visible = False
      Size = 15
    end
    object IBrwSrcusername: TStringField
      FieldName = 'username'
      Visible = False
    end
    object IBrwSrcrecno: TIntegerField
      FieldName = 'recno'
      Required = True
    end
    object IBrwSrcassinatura: TStringField
      FieldName = 'assinatura'
      Visible = False
      Size = 50
    end
    object IBrwSrcconselho: TStringField
      FieldName = 'conselho'
      Visible = False
      Size = 5
    end
  end
  inherited pmOpcao: TPopupMenu
    Left = 504
    Top = 184
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM tbfuncionarios'
      'WHERE'
      '  tbfuncionarios.idcodigo = :OLD_idcodigo')
    InsertSQL.Strings = (
      'INSERT INTO tbfuncionarios'
      
        '  (idcodigo, nome, cargo, telcelular, rg, cpf, endereco, bairro,' +
        ' cep, cidade, '
      
        '   estado, contabanco, contaagencia, contanumero, telresidencia,' +
        ' situacao, '
      
        '   dtadmissao, dtdemissao, recno, crq, username, assinatura, con' +
        'selho)'
      'VALUES'
      
        '  (:idcodigo, :nome, :cargo, :telcelular, :rg, :cpf, :endereco, ' +
        ':bairro, '
      
        '   :cep, :cidade, :estado, :contabanco, :contaagencia, :contanum' +
        'ero, :telresidencia, '
      
        '   :situacao, :dtadmissao, :dtdemissao, :recno, :crq, :username,' +
        ' :assinatura, '
      '   :conselho)')
    ModifySQL.Strings = (
      'UPDATE tbfuncionarios SET'
      '  idcodigo = :idcodigo,'
      '  nome = :nome,'
      '  cargo = :cargo,'
      '  telcelular = :telcelular,'
      '  rg = :rg,'
      '  cpf = :cpf,'
      '  endereco = :endereco,'
      '  bairro = :bairro,'
      '  cep = :cep,'
      '  cidade = :cidade,'
      '  estado = :estado,'
      '  contabanco = :contabanco,'
      '  contaagencia = :contaagencia,'
      '  contanumero = :contanumero,'
      '  telresidencia = :telresidencia,'
      '  situacao = :situacao,'
      '  dtadmissao = :dtadmissao,'
      '  dtdemissao = :dtdemissao,'
      '  recno = :recno,'
      '  crq = :crq,'
      '  username = :username,'
      '  assinatura = :assinatura,'
      '  conselho = :conselho'
      'WHERE'
      '  tbfuncionarios.idcodigo = :OLD_idcodigo')
    Left = 128
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idcodigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nome'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cargo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'telcelular'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'rg'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cpf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'endereco'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bairro'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cep'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cidade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'estado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contabanco'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contaagencia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contanumero'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'telresidencia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'situacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtadmissao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtdemissao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'crq'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'username'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'assinatura'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'conselho'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_idcodigo'
        ParamType = ptUnknown
      end>
  end
  object sIBrwSrc: TZSequence
    Connection = DM.Design
    SequenceName = 'public.tbfuncionarios_recno_seq'
    Left = 72
    Top = 184
  end
  object qConselhos: TZReadOnlyQuery
    Connection = DM.Design
    SQL.Strings = (
      'select sigla, descri, recno'
      '  from conselhos ')
    Params = <>
    Left = 184
    Top = 240
    object qConselhossigla: TStringField
      FieldName = 'sigla'
      Required = True
      Size = 5
    end
    object qConselhosdescri: TStringField
      FieldName = 'descri'
      Required = True
      Size = 60
    end
    object qConselhosrecno: TIntegerField
      FieldName = 'recno'
      Required = True
    end
  end
  object dsConselhos: TDataSource
    AutoEdit = False
    DataSet = qConselhos
    Left = 256
    Top = 240
  end
end
