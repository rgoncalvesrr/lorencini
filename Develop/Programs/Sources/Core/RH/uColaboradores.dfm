inherited Colaboradores: TColaboradores
  Margins.Left = 6
  Margins.Top = 6
  Margins.Right = 6
  Margins.Bottom = 6
  Caption = 'Cadastro de colaboradores'
  ClientHeight = 574
  ClientWidth = 976
  Constraints.MinWidth = 806
  Font.Height = -24
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 994
  ExplicitHeight = 621
  PixelsPerInch = 120
  TextHeight = 32
  inherited StatusBar1: TStatusBar
    Left = 5
    Top = 533
    Width = 966
    Height = 36
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Panels = <
      item
        Alignment = taCenter
        Bevel = pbNone
        Text = 'Registro'
        Width = 79
      end
      item
        Alignment = taCenter
        Width = 94
      end
      item
        Alignment = taCenter
        Bevel = pbNone
        Text = 'de'
        Width = 48
      end
      item
        Alignment = taCenter
        Width = 94
      end
      item
        Width = 79
      end>
    ExplicitLeft = 5
    ExplicitTop = 533
    ExplicitWidth = 966
    ExplicitHeight = 36
  end
  inherited Panel1: TPanel
    Top = 49
    Width = 976
    Height = 132
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Padding.Left = 8
    Padding.Right = 8
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 58
    ExplicitWidth = 976
    ExplicitHeight = 132
    inherited pctlFind: TPageControl
      Left = 8
      Width = 960
      Height = 132
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitLeft = 8
      ExplicitWidth = 960
      ExplicitHeight = 132
      inherited tsQuery: TTabSheet
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitWidth = 952
        ExplicitHeight = 122
        inherited BitBtn2: TBitBtn
          Left = 795
          Top = 16
          Width = 152
          Height = 71
          Margins.Left = 5
          Margins.Top = 16
          Margins.Right = 5
          Margins.Bottom = 35
          ExplicitLeft = 794
          ExplicitTop = 16
          ExplicitWidth = 152
          ExplicitHeight = 69
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 68
          Height = 122
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitHeight = 120
          object Label3: TLabel
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 60
            Height = 32
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alTop
            Caption = 'C'#243'digo'
            ExplicitWidth = 77
          end
          object edCodigo: TJvCalcEdit
            AlignWithMargins = True
            Left = 4
            Top = 44
            Width = 60
            Height = 40
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
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
          Left = 68
          Top = 0
          Width = 292
          Height = 122
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          ExplicitHeight = 120
          object Label1: TLabel
            AlignWithMargins = True
            Left = 4
            Top = 4
            Width = 284
            Height = 32
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alTop
            Caption = 'Situa'#231#227'o'
            ExplicitWidth = 90
          end
          object cbStatus: TComboBox
            AlignWithMargins = True
            Left = 4
            Top = 44
            Width = 284
            Height = 33
            Margins.Left = 4
            Margins.Top = 4
            Margins.Right = 4
            Margins.Bottom = 4
            Align = alTop
            Style = csDropDownList
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
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitWidth = 952
        ExplicitHeight = 122
        inherited Label2: TLabel
          Left = 5
          Top = 5
          Width = 169
          Height = 32
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          StyleElements = [seFont, seClient, seBorder]
          ExplicitLeft = 5
          ExplicitTop = 5
          ExplicitWidth = 169
          ExplicitHeight = 32
        end
        inherited BitBtn1: TBitBtn
          Left = 813
          Top = 30
          Width = 150
          Height = 50
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Font.Height = -24
          ExplicitLeft = 813
          ExplicitTop = 30
          ExplicitWidth = 150
          ExplicitHeight = 50
        end
        inherited edSearch: TMaskEdit
          Left = 5
          Top = 38
          Width = 518
          Height = 37
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          Font.Height = -24
          StyleElements = [seFont, seClient, seBorder]
          ExplicitLeft = 5
          ExplicitTop = 38
          ExplicitWidth = 518
          ExplicitHeight = 37
        end
      end
    end
  end
  inherited Panel2: TPanel
    Top = 181
    Width = 976
    Height = 347
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 190
    ExplicitWidth = 976
    ExplicitHeight = 338
    inherited PageControl1: TPageControl
      Left = 5
      Top = 5
      Width = 966
      Height = 337
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Images = Resources.medium_n
      ExplicitLeft = 5
      ExplicitTop = 5
      ExplicitWidth = 966
      ExplicitHeight = 337
      inherited TabSheet1: TTabSheet
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Todos'
        ImageIndex = -1
        ExplicitTop = 43
        ExplicitWidth = 958
        ExplicitHeight = 290
        inherited DBGrid1: TDBGrid
          Left = 5
          Top = 5
          Width = 951
          Height = 308
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          TitleFont.Height = -24
        end
      end
      object TabSheet2: TTabSheet
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Ativo'
        ImageIndex = 208
      end
      object TabSheet3: TTabSheet
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Demitido'
        ImageIndex = 213
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Left = 5
    Top = 5
    Width = 966
    Height = 39
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    RowSize = 41
    ExplicitLeft = 5
    ExplicitTop = 5
    ExplicitWidth = 966
    ExplicitHeight = 39
    inherited ToolBar1: TToolBar
      Width = 755
      Height = 35
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ButtonHeight = 31
      ButtonWidth = 93
      ExplicitWidth = 755
      ExplicitHeight = 35
      inherited ToolButton2: TToolButton
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitHeight = 31
      end
      inherited ToolButton5: TToolButton
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitHeight = 31
      end
      inherited ToolButton9: TToolButton
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitHeight = 31
      end
      inherited ToolButton6: TToolButton
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitHeight = 31
      end
      inherited ToolButton7: TToolButton
        Width = 13
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitWidth = 13
        ExplicitHeight = 31
      end
      inherited ToolButton1: TToolButton
        Left = 141
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 141
        ExplicitHeight = 31
      end
      inherited ToolButton8: TToolButton
        Left = 173
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 173
        ExplicitHeight = 31
      end
      inherited ToolButton3: TToolButton
        Left = 205
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 205
        ExplicitHeight = 31
      end
      inherited ToolButton4: TToolButton
        Left = 237
        Width = 12
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 237
        ExplicitWidth = 12
        ExplicitHeight = 31
      end
      inherited tbOrder: TToolButton
        Left = 249
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 249
        ExplicitWidth = 97
        ExplicitHeight = 31
      end
      inherited tbReport: TToolButton
        Left = 346
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 346
        ExplicitHeight = 31
      end
      inherited tbOpcao: TToolButton
        Left = 378
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 378
        ExplicitHeight = 31
      end
      inherited ToolButton11: TToolButton
        Left = 410
        Width = 13
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 410
        ExplicitWidth = 13
        ExplicitHeight = 31
      end
      inherited ToolButton10: TToolButton
        Left = 423
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitLeft = 423
        ExplicitHeight = 31
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
        'c.dtadmissao, c.dtdemissao, c.cargo, c.crq, c.account,'
      '       c.conselho, c.assinatura, c.recno, c.resptec'
      '  from tbfuncionarios c ')
    IndexFieldNames = 'nome Asc'
    Sequence = sIBrwSrc
    SequenceField = 'recno'
    Left = 184
    Top = 184
    object IBrwSrcresptec: TBooleanField
      FieldName = 'resptec'
      Visible = False
    end
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
    object IBrwSrcrecno: TIntegerField
      FieldName = 'recno'
      Required = True
    end
    object IBrwSrcaccount: TLargeintField
      FieldName = 'account'
      Visible = False
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
        ' cep, cidade, estado, contabanco, contaagencia,'
      
        '   contanumero, telresidencia, situacao, dtadmissao, dtdemissao,' +
        ' recno, crq, account, assinatura, conselho,'
      '   resptec)'
      'VALUES'
      
        '  (:idcodigo, :nome, :cargo, :telcelular, :rg, :cpf, :endereco, ' +
        ':bairro, :cep, :cidade, :estado, :contabanco,'
      
        '   :contaagencia, :contanumero, :telresidencia, :situacao, :dtad' +
        'missao, :dtdemissao, :recno, :crq, :account, :assinatura,'
      '   :conselho, :resptec)')
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
      '  account = :account,'
      '  assinatura = :assinatura,'
      '  conselho = :conselho,'
      '  resptec = :resptec'
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
        Name = 'account'
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
        Name = 'resptec'
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
