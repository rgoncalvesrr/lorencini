inherited RecebimentoNFe: TRecebimentoNFe
  Caption = 'Recebimento NF-e'
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    inherited pctlFind: TPageControl
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 819
        ExplicitHeight = 75
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 124
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Label4: TLabel
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
            OnChange = edCNPJChange
          end
        end
        object Panel8: TPanel
          Left = 417
          Top = 0
          Width = 298
          Height = 75
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 3
          ExplicitLeft = 420
          ExplicitTop = -2
          object Label6: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 292
            Height = 15
            Align = alTop
            Caption = 'Empresa'
            ExplicitWidth = 45
          end
          object edEmpresa: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 292
            Height = 23
            Align = alTop
            TabOrder = 0
            OnChange = edCNPJChange
            ExplicitWidth = 585
          end
        end
        object Panel3: TPanel
          Left = 124
          Top = 0
          Width = 293
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object Label1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 287
            Height = 15
            Align = alTop
            Caption = 'Chave NF-e'
            ExplicitWidth = 62
          end
          object edNFe: TMaskEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 287
            Height = 23
            Align = alTop
            EditMask = '9999.9999.9999.9999.9999.9999.9999.9999.9999.9999.9999;0;'
            MaxLength = 54
            TabOrder = 0
            OnChange = edCNPJChange
            ExplicitWidth = 356
          end
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 819
        ExplicitHeight = 75
      end
    end
  end
  inherited Panel2: TPanel
    inherited PageControl1: TPageControl
      inherited TabSheet1: TTabSheet
        Caption = 'NF-e Recebidas'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 823
        ExplicitHeight = 147
      end
    end
  end
  inherited ctrlBarTop: TControlBar
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
  inherited DataSource1: TDataSource
    Left = 288
    Top = 184
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SortedFields = 'registro'
    SortType = stDescending
    OnCalcFields = IBrwSrcCalcFields
    AfterInsert = IBrwSrcAfterInsert
    SQL.Strings = (
      
        'select nf.chave, nf.registro, nf.frascos, nf.frascos_saldo, nf.s' +
        'eringas, nf.seringas_saldo, nf.status, nf.cliente,'
      
        '       c.nome_chave, c.empresa, c.cnpj, c.cpf, c.email, c.cidade' +
        ', c.estado, nf.recno,'
      '       c.telefone'
      '  from fis_nfe nf'
      '       left join tbclientes c'
      '         on c.codigo = nf.cliente'
      ' where nf.tipo = 1')
    IndexFieldNames = 'registro Desc'
    Sequence = sIBrwSrc
    SequenceField = 'recno'
    Left = 224
    Top = 184
    object IBrwSrcchave: TStringField
      DisplayLabel = 'NF-e'
      DisplayWidth = 54
      FieldName = 'chave'
      Required = True
      EditMask = '9999.9999.9999.9999.9999.9999.9999.9999.9999.9999.9999;0;'
      Size = 44
    end
    object IBrwSrcregistro: TDateTimeField
      DisplayLabel = 'Registro'
      FieldName = 'registro'
      DisplayFormat = 'dd/mm/yyy hh:nn:ss'
    end
    object IBrwSrcnf_num: TStringField
      DisplayLabel = 'N'#186' NF'
      FieldKind = fkCalculated
      FieldName = 'nf_num'
      Size = 9
      Calculated = True
    end
    object IBrwSrcnfser: TStringField
      DisplayLabel = 'S'#233'rie NF'
      FieldKind = fkCalculated
      FieldName = 'nfser'
      Size = 3
      Calculated = True
    end
    object IBrwSrcfrascos: TIntegerField
      DisplayLabel = 'Frascos'
      FieldName = 'frascos'
      Required = True
    end
    object IBrwSrcfrascos_saldo: TIntegerField
      DisplayLabel = 'Saldo'
      FieldName = 'frascos_saldo'
    end
    object IBrwSrcseringas: TIntegerField
      DisplayLabel = 'Seringas'
      FieldName = 'seringas'
      Required = True
    end
    object IBrwSrcseringas_saldo: TIntegerField
      DisplayLabel = 'Saldo'
      FieldName = 'seringas_saldo'
    end
    object IBrwSrcstatus: TIntegerField
      FieldName = 'status'
      Visible = False
    end
    object IBrwSrccliente: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'cliente'
    end
    object IBrwSrcnome_chave: TStringField
      DisplayLabel = 'Nome Curto'
      FieldName = 'nome_chave'
      Size = 45
    end
    object IBrwSrcrecno: TLargeintField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
      Required = True
    end
    object IBrwSrcempresa: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'empresa'
      Visible = False
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
      FieldName = 'cpf'
      Visible = False
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object IBrwSrcemail: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'email'
      Visible = False
      Size = 100
    end
    object IBrwSrccidade: TStringField
      DisplayLabel = 'Cidade'
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
    object IBrwSrctelefone: TStringField
      DefaultExpression = '(99) 9999-9999;0;'
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      Visible = False
      Size = 100
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM fis_nfe'
      'WHERE'
      '  fis_nfe.chave = :OLD_chave')
    InsertSQL.Strings = (
      'INSERT INTO fis_nfe'
      
        '  (chave, registro, frascos, frascos_saldo, seringas, seringas_s' +
        'aldo, status, '
      '   cliente, tipo, recno)'
      'VALUES'
      
        '  (:chave, :registro, :frascos, :frascos_saldo, :seringas, :seri' +
        'ngas_saldo,'
      '   :status, :cliente, 1, :recno)')
    ModifySQL.Strings = (
      'UPDATE fis_nfe SET'
      '  chave = :chave,'
      '  registro = :registro,'
      '  frascos = :frascos,'
      '  frascos_saldo = :frascos_saldo,'
      '  seringas = :seringas,'
      '  seringas_saldo = :seringas_saldo,'
      '  status = :status,'
      '  cliente = :cliente,'
      '  recno = :recno'
      'WHERE'
      '  fis_nfe.chave = :OLD_chave')
    Left = 168
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'chave'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'registro'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'frascos'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'frascos_saldo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'seringas'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'seringas_saldo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'status'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_chave'
        ParamType = ptUnknown
      end>
  end
  object sIBrwSrc: TZSequence
    Connection = DM.Design
    SequenceName = 'public.fis_nfe_recno_seq'
    Left = 112
    Top = 184
  end
end
