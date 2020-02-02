inherited LabInst: TLabInst
  Caption = 'Cadastro de Instrumentos'
  PixelsPerInch = 96
  TextHeight = 14
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
      ExplicitWidth = 71
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
  inherited Panel1: TPanel
    inherited pctlFind: TPageControl
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 833
        ExplicitHeight = 60
        object Label1: TLabel [0]
          Left = 3
          Top = 1
          Width = 110
          Height = 14
          Caption = 'Grupo de Diagn'#243'sticos'
        end
        object ComboBox1: TComboBox
          Left = 3
          Top = 21
          Width = 174
          Height = 22
          Style = csDropDownList
          ItemHeight = 14
          TabOrder = 1
          OnChange = ComboBox1Change
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 833
        ExplicitHeight = 60
      end
    end
  end
  inherited Panel2: TPanel
    inherited PageControl1: TPageControl
      inherited TabSheet1: TTabSheet
        Caption = 'Instrumentos'
        ExplicitLeft = 4
        ExplicitTop = 25
        ExplicitWidth = 832
        ExplicitHeight = 89
      end
    end
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    AfterScroll = IBrwSrcAfterScroll
    AfterInsert = IBrwSrcAfterInsert
    SQL.Strings = (
      'select i.recno, i.serie, i.descri, i.modelo, '
      '       i.validade, i.labdiag_gp_recno, g.descri as grupo'
      '  from labinst i'
      '       join labdiag_gp g'
      '         on g.recno = i.labdiag_gp_recno')
    Properties.Strings = (
      '')
    Sequence = ZSequence1
    SequenceField = 'recno'
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Instrumento'
      FieldName = 'recno'
      Required = True
    end
    object IBrwSrcserie: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'serie'
      Required = True
      Size = 30
    end
    object IBrwSrcmodelo: TStringField
      DisplayLabel = 'Modelo'
      FieldName = 'modelo'
      Size = 30
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Required = True
      Size = 60
    end
    object IBrwSrcvalidade: TDateField
      DisplayLabel = 'Aferido at'#233
      FieldName = 'validade'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object IBrwSrclabdiag_gp_recno: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'labdiag_gp_recno'
      Visible = False
    end
    object IBrwSrcgrupo: TStringField
      DisplayLabel = 'Grupo'
      DisplayWidth = 25
      FieldName = 'grupo'
      Required = True
      Size = 60
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labinst'
      'WHERE'
      '  labinst.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO labinst'
      '  (recno, serie, descri, modelo, validade, labdiag_gp_recno)'
      'VALUES'
      
        '  (:recno, :serie, :descri, :modelo, :validade, :labdiag_gp_recn' +
        'o)')
    ModifySQL.Strings = (
      'UPDATE labinst SET'
      '  recno = :recno,'
      '  serie = :serie,'
      '  descri = :descri,'
      '  modelo = :modelo,'
      '  validade = :validade,'
      '  labdiag_gp_recno = :labdiag_gp_recno'
      'WHERE'
      '  labinst.recno = :OLD_recno')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'serie'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'descri'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'modelo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'validade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'labdiag_gp_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_recno'
        ParamType = ptUnknown
      end>
  end
  object ZSequence1: TZSequence
    Connection = DM.Design
    SequenceName = 'public.labinst_recno_seq'
    Left = 112
    Top = 48
  end
  object sLabInstCert: TZSequence
    Connection = DM.Design
    SequenceName = 'public.labinstcert_recno_seq'
    Left = 112
    Top = 80
  end
  object uLabInstCert: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labinstcert'
      'WHERE'
      '  labinstcert.labinst_recno = :OLD_labinst_recno AND'
      '  labinstcert.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO labinstcert'
      
        '  (labinst_recno, recno, codigo, tecnico, emissao, validade, obs' +
        ', certificado)'
      'VALUES'
      
        '  (:labinst_recno, :recno, :codigo, :tecnico, :emissao, :validad' +
        'e, :obs, :certificado)')
    ModifySQL.Strings = (
      'UPDATE labinstcert SET'
      '  labinst_recno = :labinst_recno,'
      '  recno = :recno,'
      '  codigo = :codigo,'
      '  tecnico = :tecnico,'
      '  emissao = :emissao,'
      '  validade = :validade,'
      '  obs = :obs,'
      '  certificado = :certificado'
      'WHERE'
      '  labinstcert.labinst_recno = :OLD_labinst_recno AND'
      '  labinstcert.recno = :OLD_recno')
    UseSequenceFieldForRefreshSQL = False
    Left = 144
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'labinst_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tecnico'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emissao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'validade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'obs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'certificado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_labinst_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_recno'
        ParamType = ptUnknown
      end>
  end
  object qLabInstCert: TZQuery
    Tag = 1
    Connection = DM.Design
    UpdateObject = uLabInstCert
    AfterInsert = qLabInstCertAfterInsert
    SQL.Strings = (
      'select c.labinst_recno, c.recno, c.codigo, c.certificado, '
      '       c.tecnico, c.emissao, c.validade, c.obs,'
      '       f.nome_chave, f.cnpj, f.telefone'
      '  from labinstcert c'
      '       join fornecedores f'
      '         on f.codigo = c.codigo'
      ' where c.labinst_recno = :inst')
    Params = <
      item
        DataType = ftUnknown
        Name = 'inst'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    Properties.Strings = (
      '')
    Sequence = sLabInstCert
    SequenceField = 'recno'
    Left = 176
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'inst'
        ParamType = ptUnknown
      end>
    object qLabInstCertlabinst_recno: TIntegerField
      FieldName = 'labinst_recno'
      Required = True
      Visible = False
    end
    object qLabInstCertrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
      Required = True
    end
    object qLabInstCertcertificado: TStringField
      DisplayLabel = 'Certificado'
      DisplayWidth = 15
      FieldName = 'certificado'
      Size = 25
    end
    object qLabInstCertcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo'
      Required = True
      Visible = False
    end
    object qLabInstCertnome_chave: TStringField
      DisplayLabel = 'Fornecedor'
      DisplayWidth = 20
      FieldName = 'nome_chave'
      Size = 60
    end
    object qLabInstCertcnpj: TStringField
      DisplayLabel = 'C.N.P.J.'
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object qLabInstCerttelefone: TStringField
      DisplayLabel = 'Fone'
      DisplayWidth = 15
      FieldName = 'telefone'
      Size = 50
    end
    object qLabInstCerttecnico: TStringField
      DisplayLabel = 'T'#233'cnico'
      DisplayWidth = 25
      FieldName = 'tecnico'
      Required = True
      Size = 60
    end
    object qLabInstCertemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'emissao'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qLabInstCertvalidade: TDateField
      DisplayLabel = 'Validade'
      FieldName = 'validade'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qLabInstCertobs: TMemoField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'obs'
      Visible = False
      BlobType = ftMemo
    end
  end
  object dsLabInstCert: TDataSource
    AutoEdit = False
    DataSet = qLabInstCert
    Left = 208
    Top = 80
  end
  object sLabEns: TZSequence
    Connection = DM.Design
    SequenceName = 'public.labinst_ens_recno_seq'
    Left = 112
    Top = 112
  end
  object uLabEns: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labinst_ens'
      'WHERE'
      '  labinst_ens.ensaio_recno = :OLD_ensaio_recno AND'
      '  labinst_ens.labinst_recno = :OLD_labinst_recno')
    InsertSQL.Strings = (
      'INSERT INTO labinst_ens'
      '  (ensaio_recno, labinst_recno, recno)'
      'VALUES'
      '  (:ensaio_recno, :labinst_recno, :recno)')
    ModifySQL.Strings = (
      'UPDATE labinst_ens SET'
      '  ensaio_recno = :ensaio_recno,'
      '  labinst_recno = :labinst_recno,'
      '  recno = :recno'
      'WHERE'
      '  labinst_ens.ensaio_recno = :OLD_ensaio_recno AND'
      '  labinst_ens.labinst_recno = :OLD_labinst_recno')
    UseSequenceFieldForRefreshSQL = False
    Left = 144
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ensaio_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'labinst_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_ensaio_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_labinst_recno'
        ParamType = ptUnknown
      end>
  end
  object qLabEns: TZQuery
    Tag = 2
    Connection = DM.Design
    UpdateObject = uLabEns
    AfterInsert = qLabEnsAfterInsert
    SQL.Strings = (
      'select i.labinst_recno, i.ensaio_recno, i.recno,'
      '       e.nome, e.unidade, e.metodo'
      '  from labinst_ens i'
      '       join vensaios e'
      '         on e.recno = i.ensaio_recno'
      ' where i.labinst_recno = :inst')
    Params = <
      item
        DataType = ftUnknown
        Name = 'inst'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    Properties.Strings = (
      '')
    Sequence = sLabEns
    SequenceField = 'recno'
    Left = 176
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'inst'
        ParamType = ptUnknown
      end>
    object qLabEnslabinst_recno: TIntegerField
      FieldName = 'labinst_recno'
      Required = True
      Visible = False
    end
    object qLabEnsensaio_recno: TIntegerField
      DisplayLabel = 'Ensaio'
      FieldName = 'ensaio_recno'
      Required = True
    end
    object qLabEnsnome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Size = 60
    end
    object qLabEnsunidade: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'unidade'
      Size = 30
    end
    object qLabEnsmetodo: TStringField
      DisplayLabel = 'M'#233'todo'
      FieldName = 'metodo'
      Size = 30
    end
    object qLabEnsrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
      Required = True
      Visible = False
    end
  end
  object dsLabEns: TDataSource
    AutoEdit = False
    DataSet = qLabEns
    Left = 208
    Top = 112
  end
end
