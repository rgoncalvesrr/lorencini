inherited OrcaGrupos: TOrcaGrupos
  Caption = 'Tipo de Cota'#231#227'o/Ordem de Servi'#231'o'
  Constraints.MinWidth = 853
  PixelsPerInch = 96
  TextHeight = 15
  inherited ToolBar1: TToolBar
    ButtonWidth = 85
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
    object ToolButton12: TToolButton
      Left = 420
      Top = 0
      Action = actDoc
      Style = tbsTextButton
    end
  end
  inherited Panel1: TPanel
    inherited pctlFind: TPageControl
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 819
        ExplicitHeight = 65
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
    inherited PageControl1: TPageControl
      inherited TabSheet1: TTabSheet
        Caption = 'Tipos'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 823
        ExplicitHeight = 163
      end
    end
  end
  inherited alDef: TActionList
    object actDoc: TAction
      Caption = 'Modelo...'
      ImageIndex = 248
      OnExecute = actDocExecute
    end
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    UpdateObject = ZUpdateSQL1
    AfterInsert = IBrwSrcAfterInsert
    SQL.Strings = (
      'select o.recno, o.descri, o.reqsrv, o.reqmat, o.reqmo,'
      '       o.mat_bdi, o.mat_comissao, o.serv_bdi, o.serv_comissao,'
      '       o.atividade, a.ativdescri, a.ativgrupo, a.iss,'
      '       o.validade'
      '  from orca_grupo o'
      '       left join '
      
        #9#9#9'(select a.item, at.descri ativgrupo, a.descri ativdescri, at.' +
        'iss '
      '            from textos_os a'
      '                 join atividades at'
      '                   on at.codativ = a.codativ) a       '
      '         on a.item = o.atividade')
    Sequence = ZSequence1
    SequenceField = 'recno'
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'recno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Required = True
      Size = 60
    end
    object IBrwSrcreqsrv: TBooleanField
      DisplayLabel = 'Servi'#231'os'
      FieldName = 'reqsrv'
      Required = True
      OnGetText = IBrwSrcreqsrvGetText
      OnSetText = IBrwSrcreqsrvSetText
    end
    object IBrwSrcreqmat: TBooleanField
      DisplayLabel = 'Materiais'
      FieldName = 'reqmat'
      Required = True
      OnGetText = IBrwSrcreqsrvGetText
      OnSetText = IBrwSrcreqsrvSetText
    end
    object IBrwSrcreqmo: TBooleanField
      DisplayLabel = 'M'#227'o-De-Obra'
      FieldName = 'reqmo'
      Required = True
      OnGetText = IBrwSrcreqsrvGetText
      OnSetText = IBrwSrcreqsrvSetText
    end
    object IBrwSrcmat_bdi: TFloatField
      DisplayLabel = 'BDI Mat.'
      FieldName = 'mat_bdi'
      DisplayFormat = ',0.#0%'
    end
    object IBrwSrcmat_comissao: TFloatField
      DisplayLabel = 'Comiss'#227'o Mat.'
      FieldName = 'mat_comissao'
      DisplayFormat = ',0.#0%'
    end
    object IBrwSrcserv_bdi: TFloatField
      DisplayLabel = 'BDI Servi'#231'o'
      FieldName = 'serv_bdi'
      DisplayFormat = ',0.#0%'
    end
    object IBrwSrcserv_comissao: TFloatField
      DisplayLabel = 'Comiss'#227'o Servi'#231'o'
      FieldName = 'serv_comissao'
      DisplayFormat = ',0.#0%'
    end
    object IBrwSrcatividade: TIntegerField
      DisplayLabel = 'Atividade'
      FieldName = 'atividade'
      OnChange = IBrwSrcatividadeChange
    end
    object IBrwSrcativdescri: TMemoField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'ativdescri'
      Visible = False
      BlobType = ftMemo
    end
    object IBrwSrcativgrupo: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'ativgrupo'
      Size = 60
    end
    object IBrwSrciss: TFloatField
      DisplayLabel = 'ISS'
      FieldName = 'iss'
      DisplayFormat = ',0.#0%'
    end
    object IBrwSrcvalidade: TIntegerField
      DisplayLabel = 'Validade'
      FieldName = 'validade'
      Required = True
      Visible = False
      DisplayFormat = '#0 D'
    end
  end
  inherited pmOpcao: TPopupMenu
    object Agenda2: TMenuItem [2]
      Action = actDoc
    end
  end
  object ZSequence1: TZSequence
    SequenceName = 'public.orca_grupo_recno_seq'
    Left = 144
    Top = 48
  end
  object ZUpdateSQL1: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM orca_grupo'
      'WHERE'
      '  orca_grupo.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO orca_grupo'
      '  (recno, descri, reqsrv, reqmat, reqmo, mat_bdi, mat_comissao,'
      '   serv_bdi, serv_comissao, atividade,validade)'
      'VALUES'
      
        '  (:recno, :descri, :reqsrv, :reqmat, :reqmo, :mat_bdi, :mat_com' +
        'issao,'
      '   :serv_bdi, :serv_comissao, :atividade, :validade)')
    ModifySQL.Strings = (
      'UPDATE orca_grupo SET'
      '  descri = :descri,'
      '  reqmat = :reqmat,'
      '  reqsrv = :reqsrv,'
      '  reqmo = :reqmo,'
      '  mat_bdi = :mat_bdi,'
      '  mat_comissao = :mat_comissao,'
      '  serv_bdi = :serv_bdi,'
      '  serv_comissao = :serv_comissao,'
      '  atividade = :atividade,'
      '  validade = :validade'
      'WHERE'
      '  orca_grupo.recno = :OLD_recno')
    UseSequenceFieldForRefreshSQL = False
    Left = 176
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'descri'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'reqmat'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'reqsrv'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'reqmo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mat_bdi'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mat_comissao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'serv_bdi'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'serv_comissao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'atividade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'validade'
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
end
