inherited NFS: TNFS
  Caption = 'Notas Fiscais de Sa'#237'da'
  Constraints.MinWidth = 853
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    inherited pctlFind: TPageControl
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 819
        ExplicitHeight = 75
        object Label1: TLabel [0]
          Left = 4
          Top = 0
          Width = 32
          Height = 15
          Caption = 'Status'
        end
        object Label3: TLabel [1]
          Left = 111
          Top = 0
          Width = 43
          Height = 15
          Caption = 'Emiss'#227'o'
        end
        object Label4: TLabel [2]
          Left = 111
          Top = 46
          Width = 3
          Height = 15
        end
        object Label5: TLabel [3]
          Left = 274
          Top = 0
          Width = 63
          Height = 15
          Caption = 'Vencimento'
        end
        object Label6: TLabel [4]
          Left = 274
          Top = 46
          Width = 128
          Height = 15
          Caption = '01/03/2021 a 31/03/2021'
        end
        object JvComboBox1: TJvComboBox
          Left = 4
          Top = 18
          Width = 95
          Height = 23
          Style = csDropDownList
          TabOrder = 1
          Text = 'Em Digita'#231#227'o'
          OnChange = JvComboBox1Change
          Items.Strings = (
            'Todas'
            'Em Digita'#231#227'o'
            'Faturadas'
            'Canceladas')
          ItemIndex = 1
        end
        inline FrameData1: TFrameData
          Left = 111
          Top = 18
          Width = 156
          Height = 24
          AutoSize = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          ExplicitLeft = 111
          ExplicitTop = 18
          ExplicitWidth = 156
          ExplicitHeight = 24
          inherited ComboBox1: TComboBox
            Width = 156
            ExplicitWidth = 156
          end
          inherited CCalendarDiff1: TCCalendarDiff
            Date = 44280.083783206020000000
            DisplayInterval = Label4
            OnChange = actQueryProcessExecute
          end
        end
        inline FrameData2: TFrameData
          Left = 274
          Top = 18
          Width = 156
          Height = 24
          AutoSize = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Pitch = fpVariable
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          ExplicitLeft = 274
          ExplicitTop = 18
          ExplicitWidth = 156
          ExplicitHeight = 24
          inherited ComboBox1: TComboBox
            Width = 156
            ItemIndex = 1
            Text = 'Mensalmente'
            ExplicitWidth = 156
          end
          inherited CCalendarDiff1: TCCalendarDiff
            Interval = diMonthly
            Date = 44280.083783206020000000
            DisplayInterval = Label6
            OnChange = actQueryProcessExecute
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
        Caption = 'Notas Fiscais'
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
    Left = 264
    Top = 120
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SortedFields = 'nf'
    AfterScroll = IBrwSrcAfterScroll
    AfterInsert = IBrwSrcAfterInsert
    SQL.Strings = (
      'SELECT a.recno, a.nf, a.serie, a.codigo, a.natureza, d.descri, '
      '       a.emissao, a.valor, a.vencto, a.vlicms, a.vlipi, '
      
        '       a.vlirpj, a.vlcofins, a.vlinss, a.vlcssl, a.vlpis, a.vlco' +
        'm, a.vliss, a.status, b.tipo,'
      '       c.nome_chave, c.cnpj, a.historico, a.pqtd, a.pdias,'
      '       c.observacao'
      '  FROM nf a'
      '       join nf_serie b'
      '         on b.serie = a.serie'
      '       join tbclientes c'
      '         on a.codigo = c.codigo'
      '       join fin_naturezas d'
      '         on d.natureza = a.natureza')
    IndexFieldNames = 'nf Asc'
    Sequence = sIBrwSrc
    SequenceField = 'recno'
    Left = 208
    Top = 120
    object IBrwSrcrecno: TIntegerField
      FieldName = 'recno'
      Visible = False
    end
    object IBrwSrcstatus: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'status'
      Required = True
      OnGetText = IBrwSrcstatusGetText
      OnSetText = IBrwSrcstatusSetText
    end
    object IBrwSrcnf: TIntegerField
      DisplayLabel = 'NF'
      DisplayWidth = 6
      FieldName = 'nf'
    end
    object IBrwSrcserie: TIntegerField
      DisplayLabel = 'S'#233'rie'
      DisplayWidth = 5
      FieldName = 'serie'
      Required = True
    end
    object IBrwSrctipo: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Tipo'
      FieldName = 'tipo'
      OnGetText = IBrwSrctipoGetText
      OnSetText = IBrwSrctipoSetText
    end
    object IBrwSrcemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'emissao'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object IBrwSrcvencto: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'vencto'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object IBrwSrchistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      DisplayWidth = 35
      FieldName = 'historico'
      Visible = False
      Size = 100
    end
    object IBrwSrccodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
      Visible = False
    end
    object IBrwSrcnome_chave: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 25
      FieldName = 'nome_chave'
      Size = 45
    end
    object IBrwSrccnpj: TStringField
      DisplayLabel = 'CNPJ'
      DisplayWidth = 17
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object IBrwSrcnatureza: TIntegerField
      FieldName = 'natureza'
      Required = True
      Visible = False
    end
    object IBrwSrcdescri: TStringField
      FieldName = 'descri'
      Required = True
      Visible = False
      Size = 60
    end
    object IBrwSrcvalor: TFloatField
      DisplayLabel = 'Total da NF'
      FieldName = 'valor'
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcvlicms: TFloatField
      DisplayLabel = 'I.C.M.S.'
      DisplayWidth = 7
      FieldName = 'vlicms'
      Visible = False
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcvlipi: TFloatField
      DisplayLabel = 'I.P.I.'
      DisplayWidth = 7
      FieldName = 'vlipi'
      Visible = False
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcvlirpj: TFloatField
      DisplayLabel = 'I.R.P.J.'
      DisplayWidth = 7
      FieldName = 'vlirpj'
      Visible = False
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcvlcofins: TFloatField
      DisplayLabel = 'Cofins'
      DisplayWidth = 7
      FieldName = 'vlcofins'
      Visible = False
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcvlinss: TFloatField
      DisplayLabel = 'I.N.S.S.'
      DisplayWidth = 7
      FieldName = 'vlinss'
      Visible = False
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcvlcssl: TFloatField
      DisplayLabel = 'C.S.S.L.'
      DisplayWidth = 7
      FieldName = 'vlcssl'
      Visible = False
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcvlpis: TFloatField
      DisplayLabel = 'P.I.S.'
      DisplayWidth = 7
      FieldName = 'vlpis'
      Visible = False
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcvlcom: TFloatField
      DisplayLabel = 'Comiss'#227'o'
      DisplayWidth = 7
      FieldName = 'vlcom'
      Visible = False
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcvliss: TFloatField
      DisplayLabel = 'I.S.S.'
      DisplayWidth = 7
      FieldName = 'vliss'
      Visible = False
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcpqtd: TIntegerField
      DisplayLabel = 'Parcelas'
      FieldName = 'pqtd'
      Visible = False
    end
    object IBrwSrcpdias: TIntegerField
      DisplayLabel = 'Dias'
      FieldName = 'pdias'
      Visible = False
    end
    object IBrwSrcobservacao: TMemoField
      FieldName = 'observacao'
      Visible = False
      BlobType = ftMemo
    end
  end
  inherited pmOpcao: TPopupMenu
    object N2: TMenuItem [4]
      Caption = '-'
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM nf'
      'WHERE'
      '  nf.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO nf'
      
        '  (nf, serie, natureza, emissao, vencto, status, codigo, pqtd, p' +
        'dias, '
      '   historico, recno)'
      'VALUES'
      
        '  (:nf, :serie, :natureza, :emissao, :vencto, :status, :codigo, ' +
        ':pqtd, :pdias,'
      '  :historico, :recno)')
    ModifySQL.Strings = (
      'UPDATE nf SET'
      '  serie = :serie,'
      '  natureza = :natureza,  '
      '  vencto = :vencto, '
      '  status = :status,'
      '  codigo = :codigo,'
      '  historico = :historico,'
      '  pqtd = :pqtd,'
      '  pdias = :pdias,'
      '  emissao = :emissao'
      'WHERE'
      '  nf.recno = :OLD_recno')
    Left = 160
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'serie'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'natureza'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vencto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'status'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'historico'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pqtd'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pdias'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emissao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end>
  end
  object qItens: TZQuery
    Tag = 1
    Connection = DM.Design
    UpdateObject = uqItens
    AfterInsert = qItensAfterInsert
    SQL.Strings = (
      'select a.recno_nf, a.os, a.com_srv, a.vlsrv, a.com_mat, a.vlmat,'
      '       a.vlcom, a.valor, b.idos, b.data, a.tipo, a.recno'
      '  from nf_itens a'
      '       join tb_orcamentos b'
      '         on b.os = a.os'
      ' where a.recno_nf = :recno')
    Params = <
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end>
    Sequence = sItens
    SequenceField = 'recno'
    Left = 208
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end>
    object qItensrecno_nf: TIntegerField
      FieldName = 'recno_nf'
      Required = True
      Visible = False
    end
    object qItensos: TIntegerField
      FieldName = 'os'
      Required = True
      Visible = False
    end
    object qItensidos: TStringField
      DisplayLabel = 'O.S.'
      FieldName = 'idos'
      Size = 10
    end
    object qItenstipo: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'tipo'
      Required = True
      OnChange = qItenstipoChange
      OnGetText = qItenstipoGetText
      OnSetText = qItenstipoSetText
    end
    object qItensdata: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'data'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qItenscom_srv: TFloatField
      DisplayLabel = 'Com. Serv.'
      FieldName = 'com_srv'
      OnChange = qItenstipoChange
      DisplayFormat = ',0.#0%'
    end
    object qItensvlsrv: TFloatField
      DisplayLabel = 'Serv.'
      FieldName = 'vlsrv'
      OnChange = qItenstipoChange
      DisplayFormat = ',0.#0'
    end
    object qItenscom_mat: TFloatField
      DisplayLabel = 'Com. Mat.'
      FieldName = 'com_mat'
      OnChange = qItenstipoChange
      DisplayFormat = ',0.#0%'
    end
    object qItensvlmat: TFloatField
      DisplayLabel = 'Mat.'
      FieldName = 'vlmat'
      OnChange = qItenstipoChange
      DisplayFormat = ',0.#0'
    end
    object qItensvlcom: TFloatField
      DisplayLabel = 'Comiss'#227'o'
      FieldName = 'vlcom'
      DisplayFormat = ',0.#0'
    end
    object qItensvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      DisplayFormat = ',0.#0'
    end
    object qItensrecno: TIntegerField
      FieldName = 'recno'
      Required = True
    end
  end
  object dsqItens: TDataSource
    DataSet = qItens
    Left = 264
    Top = 168
  end
  object uqItens: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM nf_itens'
      'WHERE'
      '  nf_itens.recno_nf = :OLD_recno_nf AND'
      '  nf_itens.os = :OLD_os')
    InsertSQL.Strings = (
      'INSERT INTO nf_itens'
      '  (recno_nf, os, tipo, recno)'
      'VALUES'
      '  (:recno_nf, :os, :tipo, :recno)')
    ModifySQL.Strings = (
      'UPDATE nf_itens SET'
      '  recno_nf = :recno_nf,'
      '  os = :os,'
      '  tipo = :tipo'
      'WHERE'
      '  nf_itens.recno_nf = :OLD_recno_nf AND'
      '  nf_itens.os = :OLD_os')
    UseSequenceFieldForRefreshSQL = False
    Left = 160
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'recno_nf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'os'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_recno_nf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_os'
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
    SequenceName = 'public.nf_recno_seq'
    Left = 112
    Top = 120
  end
  object sItens: TZSequence
    Connection = DM.Design
    SequenceName = 'public.nf_itens_recno_seq'
    Left = 112
    Top = 168
  end
end
