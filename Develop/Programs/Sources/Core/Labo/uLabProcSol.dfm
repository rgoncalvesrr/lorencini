inherited LabProcSol: TLabProcSol
  Caption = 'Solicita'#231#227'o de Envio de Vidrarias'
  ClientWidth = 829
  Constraints.MinWidth = 842
  ExplicitWidth = 845
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Width = 823
    ExplicitWidth = 823
  end
  inherited Panel1: TPanel
    Width = 829
    ExplicitWidth = 829
    inherited pctlFind: TPageControl
      Width = 819
      ExplicitWidth = 819
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 811
        ExplicitHeight = 75
        inherited BitBtn2: TBitBtn
          Left = 710
          ExplicitLeft = 710
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 92
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Label4: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 86
            Height = 15
            Align = alTop
            Caption = 'C'#243'digo'
            ExplicitWidth = 39
          end
          object edCodigo: TJvCalcEdit
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
            OnChange = edCodigoChange
          end
        end
        object Panel6: TPanel
          Left = 92
          Top = 0
          Width = 124
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object Label1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 118
            Height = 15
            Align = alTop
            Caption = 'CNPJ'
            ExplicitWidth = 27
          end
          object edCNPJ: TMaskEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 118
            Height = 23
            Align = alTop
            EditMask = '99.999.999/9999-99;0;'
            MaxLength = 18
            TabOrder = 0
            OnChange = edCodigoChange
          end
        end
        object Panel7: TPanel
          Left = 216
          Top = 0
          Width = 124
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 3
          object Label3: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 118
            Height = 15
            Align = alTop
            Caption = 'CPF'
            ExplicitWidth = 21
          end
          object edCPF: TMaskEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 118
            Height = 23
            Align = alTop
            EditMask = '999.999.999-99;0;'
            MaxLength = 14
            TabOrder = 0
            OnChange = edCodigoChange
          end
        end
        object Panel8: TPanel
          Left = 340
          Top = 0
          Width = 212
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 4
          object Label6: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 206
            Height = 15
            Align = alTop
            Caption = 'Nome Fantasia'
            ExplicitWidth = 79
          end
          object edEmpresa: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 206
            Height = 23
            Align = alTop
            TabOrder = 0
            OnChange = edCodigoChange
          end
        end
        object Panel9: TPanel
          Left = 552
          Top = 0
          Width = 155
          Height = 75
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 5
          object Label7: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 149
            Height = 15
            Align = alTop
            Caption = 'Nome Empresarial'
            ExplicitWidth = 97
          end
          object edRazao: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 149
            Height = 23
            Align = alTop
            TabOrder = 0
            OnChange = edCodigoChange
          end
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 811
        ExplicitHeight = 75
      end
    end
  end
  inherited Panel2: TPanel
    Width = 829
    ExplicitWidth = 829
    inherited PageControl1: TPageControl
      Width = 823
      ExplicitWidth = 823
      inherited TabSheet1: TTabSheet
        Caption = 'Remessa de Vidraria'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 815
        ExplicitHeight = 147
        inherited DBGrid1: TDBGrid
          Width = 809
        end
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Width = 823
    ExplicitWidth = 823
    inherited ToolBar1: TToolBar
      Width = 810
      ExplicitWidth = 810
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
  inherited DataSource1: TDataSource
    Left = 264
    Top = 200
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    AfterScroll = IBrwSrcAfterScroll
    OnCalcFields = IBrwSrcCalcFields
    AfterInsert = IBrwSrcAfterInsert
    SQL.Strings = (
      'select'
      
        '  r.situacao, r.recno, r.atualizacao, r.emissao, r.frascos, r.se' +
        'ringas,'
      
        '  r.codigo, c.empresa, c.nome_chave, r.descri, c.cnpj, c.cpf, c.' +
        'cep,'
      '  r.coleta, r.frete, r.correio, r.envio, r.cotacao, r.pedido,'
      '  coalesce(x.saldo_frascos, 0) saldo_frascos,'
      '  coalesce(x.saldo_seringas, 0) saldo_seringas,'
      '  coalesce(x.saldo_recipientes, 0) saldo_recipientes'
      'from'
      '  labproc r'
      'join'
      '  tbclientes c on'
      '  c.codigo = r.codigo'
      'left join'
      '  (select'
      '    codigo,'
      '    count(*) filter (where recipiente = 1) saldo_frascos,'
      #9'  count(*) filter (where recipiente = 2) saldo_seringas,'
      #9'  count(*) saldo_recipientes'
      '  from'
      #9'  labamostras'
      '  where'
      #9'  estado = 30'
      '  group by'
      '    codigo) x on'
      '  x.codigo = r.codigo'
      'where'
      '  r.situacao = 0')
    Sequence = sIBrwSrc
    SequenceField = 'recno'
    Left = 192
    Top = 200
    object IBrwSrcstatus: TIntegerField
      DisplayLabel = ' '
      FieldKind = fkCalculated
      FieldName = 'status'
      Calculated = True
    end
    object IBrwSrcsituacao: TIntegerField
      FieldName = 'situacao'
      Visible = False
    end
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Solicita'#231#227'o'
      FieldName = 'recno'
    end
    object IBrwSrccotacao: TIntegerField
      DisplayLabel = 'Cota'#231#227'o'
      FieldName = 'cotacao'
    end
    object IBrwSrcpedido: TIntegerField
      DisplayLabel = 'Pedido'
      FieldName = 'pedido'
    end
    object IBrwSrcatualizacao: TDateTimeField
      DisplayLabel = 'Atualiza'#231#227'o'
      FieldName = 'atualizacao'
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object IBrwSrcemissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'emissao'
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object IBrwSrcfrascos: TIntegerField
      DisplayLabel = 'Frascos'
      FieldName = 'frascos'
      Required = True
    end
    object IBrwSrcseringas: TIntegerField
      DisplayLabel = 'Seringas'
      FieldName = 'seringas'
      Required = True
    end
    object IBrwSrcsaldo_frascos: TLargeintField
      DisplayLabel = 'Saldo Frascos'
      FieldName = 'saldo_frascos'
      DisplayFormat = ',0'
    end
    object IBrwSrcsaldo_seringas: TLargeintField
      DisplayLabel = 'Saldo Seringas'
      FieldName = 'saldo_seringas'
      DisplayFormat = ',0'
    end
    object IBrwSrcsaldo_recipientes: TLargeintField
      DisplayLabel = 'Saldo Recipientes'
      FieldName = 'saldo_recipientes'
      OnChange = IBrwSrcsaldo_recipientesChange
      DisplayFormat = ',0'
    end
    object IBrwSrcenvio: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Tipo de Envio'
      FieldName = 'envio'
      Required = True
      OnChange = IBrwSrcenvioChange
      OnGetText = IBrwSrcenvioGetText
      OnSetText = IBrwSrcenvioSetText
    end
    object IBrwSrccorreio: TIntegerField
      DisplayLabel = 'Sedex'
      FieldName = 'correio'
    end
    object IBrwSrcfrete: TFloatField
      DisplayLabel = 'Frete'
      FieldName = 'frete'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object IBrwSrccodigo: TIntegerField
      DisplayLabel = 'Cliente'
      DisplayWidth = 7
      FieldName = 'codigo'
      Required = True
      OnChange = IBrwSrccodigoChange
    end
    object IBrwSrcnome_chave: TStringField
      DisplayLabel = 'Nome Curto'
      DisplayWidth = 25
      FieldName = 'nome_chave'
      Size = 45
    end
    object IBrwSrccnpj: TStringField
      DisplayLabel = 'CNPJ'
      DisplayWidth = 18
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object IBrwSrccpf: TStringField
      DisplayLabel = 'CPF'
      DisplayWidth = 13
      FieldName = 'cpf'
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object IBrwSrcempresa: TStringField
      DisplayLabel = 'Raz'#227'o'
      DisplayWidth = 30
      FieldName = 'empresa'
      Size = 100
    end
    object IBrwSrcdescri: TStringField
      FieldName = 'descri'
      Visible = False
      Size = 60
    end
    object IBrwSrccoleta: TIntegerField
      FieldName = 'coleta'
      Required = True
      Visible = False
    end
    object IBrwSrccep: TStringField
      DisplayLabel = 'C.E.P.'
      DisplayWidth = 9
      FieldName = 'cep'
      Visible = False
      EditMask = '9999-999;9;'
      Size = 100
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labproc '
      'WHERE'
      '  labproc.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO labproc'
      
        '  (descri, codigo, frascos, seringas, coleta, frete, correio, en' +
        'vio, recno)'
      'VALUES'
      
        '  (:descri, :codigo, :frascos, :seringas, :coleta, :frete, :corr' +
        'eio, :envio, :recno)')
    ModifySQL.Strings = (
      'UPDATE labproc SET'
      '  descri = :descri,'
      '  codigo = :codigo,'
      '  frascos = :frascos,'
      '  seringas = :seringas,'
      '  coleta = :coleta,'
      '  frete = :frete,'
      '  correio = :correio,'
      '  envio = :envio'
      'WHERE'
      '  labproc.recno = :OLD_recno')
    Left = 128
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'descri'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'frascos'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'seringas'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'coleta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'frete'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'correio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'envio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_recno'
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
    SequenceName = 'public.labproc_recno_seq'
    Left = 56
    Top = 200
  end
  object qSaldo: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      'select    '
      #9'count(*) filter (where recipiente = 1) saldo_frascos,'
      #9'count(*) filter (where recipiente = 2) saldo_seringas,'
      #9'count(*) saldo_recipientes'
      'from'
      #9'labamostras'
      'where'
      #9'codigo = :cliente and'#9
      #9'estado = 30')
    Params = <
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    Left = 192
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end>
    object qSaldosaldo_frascos: TLargeintField
      DefaultExpression = '0'
      DisplayLabel = 'Frascos'
      FieldName = 'saldo_frascos'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object qSaldosaldo_seringas: TLargeintField
      DefaultExpression = '0'
      DisplayLabel = 'Seringas'
      FieldName = 'saldo_seringas'
      ReadOnly = True
      DisplayFormat = ',0'
    end
    object qSaldosaldo_recipientes: TLargeintField
      DefaultExpression = '0'
      DisplayLabel = 'Recipientes'
      FieldName = 'saldo_recipientes'
      ReadOnly = True
      DisplayFormat = ',0'
    end
  end
  object dsSaldo: TDataSource
    AutoEdit = False
    DataSet = qSaldo
    Left = 264
    Top = 248
  end
end
