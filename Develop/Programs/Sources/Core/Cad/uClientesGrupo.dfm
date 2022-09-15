inherited ClientesGrupo: TClientesGrupo
  Caption = 'Grupos de Clientes'
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
        inherited BitBtn2: TBitBtn
          Glyph.Data = {00000000}
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 833
        ExplicitHeight = 60
        inherited BitBtn1: TBitBtn
          Glyph.Data = {00000000}
        end
      end
    end
  end
  inherited Panel2: TPanel
    inherited PageControl1: TPageControl
      inherited TabSheet1: TTabSheet
        Caption = 'Grupos de Cliente'
      end
    end
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    AfterScroll = IBrwSrcAfterScroll
    SQL.Strings = (
      'select recno, descri from tbcli_grupos')
    Sequence = ZSequence1
    SequenceField = 'recno'
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'recno'
      Required = True
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'descri'
      Required = True
      Size = 60
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM tbcli_grupos'
      'WHERE'
      '  tbcli_grupos.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO tbcli_grupos'
      '  (recno, descri)'
      'VALUES '
      '  (:recno, :descri)')
    ModifySQL.Strings = (
      'UPDATE tbcli_grupos SET'
      '  recno = :recno,'
      '  descri = :descri'
      'WHERE'
      '  tbcli_grupos.recno = :OLD_recno')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'descri'
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
    SequenceName = 'public.tbcli_grupos_recno_seq'
    Left = 112
    Top = 48
  end
  object sClientes: TZSequence
    Connection = DM.Design
    SequenceName = 'public.tbclixgrupos_recno_seq'
    Left = 112
    Top = 80
  end
  object uClientes: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM tbclixgrupos'
      'WHERE'
      '  tbclixgrupos.codigo = :OLD_codigo AND'
      '  tbclixgrupos.tbcli_grupos_recno = :OLD_tbcli_grupos_recno')
    InsertSQL.Strings = (
      'INSERT INTO tbclixgrupos'
      '  (codigo, tbcli_grupos_recno, recno)'
      'VALUES'
      '  (:codigo, :tbcli_grupos_recno, :recno)')
    ModifySQL.Strings = (
      'UPDATE tbclixgrupos SET'
      '  codigo = :codigo,'
      '  tbcli_grupos_recno = :tbcli_grupos_recno,'
      '  recno = :recno'
      'WHERE'
      '  tbclixgrupos.codigo = :OLD_codigo AND'
      '  tbclixgrupos.tbcli_grupos_recno = :OLD_tbcli_grupos_recno'
      ' ')
    UseSequenceFieldForRefreshSQL = False
    Left = 144
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tbcli_grupos_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_tbcli_grupos_recno'
        ParamType = ptUnknown
      end>
  end
  object qClientes: TZQuery
    Connection = DM.Design
    UpdateObject = uClientes
    AfterInsert = qClientesAfterInsert
    SQL.Strings = (
      'select cg.codigo, cg.tbcli_grupos_recno, cg.recno,'
      '       c.nome_chave, c.cnpj, c.cpf, c.telefone'
      '  from tbclixgrupos cg'
      '       join tbclientes c'
      '         on c.codigo = cg.codigo'
      ' where cg.tbcli_grupos_recno = :grupo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'grupo'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    Sequence = sClientes
    SequenceField = 'recno'
    Left = 176
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'grupo'
        ParamType = ptUnknown
      end>
    object qClientescodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo'
      Required = True
      OnChange = qClientescodigoChange
    end
    object qClientesnome_chave: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 25
      FieldName = 'nome_chave'
      Size = 45
    end
    object qClientescnpj: TStringField
      DisplayLabel = 'C.N.P.J.'
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object qClientescpf: TStringField
      DisplayLabel = 'C.P.F.'
      FieldName = 'cpf'
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object qClientestelefone: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 15
      FieldName = 'telefone'
      Size = 100
    end
    object qClientestbcli_grupos_recno: TIntegerField
      FieldName = 'tbcli_grupos_recno'
      Required = True
      Visible = False
    end
    object qClientesrecno: TIntegerField
      FieldName = 'recno'
      Required = True
      Visible = False
    end
  end
  object dsClientes: TDataSource
    AutoEdit = False
    DataSet = qClientes
    Left = 208
    Top = 80
  end
end
