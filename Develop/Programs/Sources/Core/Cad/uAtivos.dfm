inherited Ativos: TAtivos
  Caption = 'Ativos'
  Constraints.MinWidth = 853
  PixelsPerInch = 96
  TextHeight = 15
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
  inherited Panel1: TPanel
    inherited pctlFind: TPageControl
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 819
        ExplicitHeight = 65
        object Label4: TLabel [0]
          Left = 10
          Top = 5
          Width = 45
          Height = 15
          Caption = 'Situa'#231#227'o'
        end
        object Label1: TLabel [1]
          Left = 161
          Top = 5
          Width = 71
          Height = 15
          Caption = 'Tipo de Ativo'
        end
        object Label3: TLabel [2]
          Left = 399
          Top = 5
          Width = 76
          Height = 15
          Caption = 'Departamento'
        end
        inherited BitBtn2: TBitBtn
          Left = 654
          ExplicitLeft = 654
        end
        object cbStatus: TComboBox
          Left = 10
          Top = 26
          Width = 145
          Height = 23
          Style = csDropDownList
          ItemHeight = 15
          ItemIndex = 1
          TabOrder = 1
          Text = 'Ativos'
          OnChange = cbStatusChange
          Items.Strings = (
            'Todos'
            'Ativos'
            'Inativos')
        end
        object cbTipo: TComboBox
          Left = 161
          Top = 26
          Width = 232
          Height = 23
          Style = csDropDownList
          ItemHeight = 15
          TabOrder = 2
          OnChange = cbTipoChange
        end
        object cbDepto: TComboBox
          Left = 399
          Top = 26
          Width = 249
          Height = 23
          Style = csDropDownList
          ItemHeight = 15
          TabOrder = 3
          OnChange = cbTipoChange
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
    inherited PageControl1: TPageControl
      ActivePage = TabSheet2
      Images = Resources.medium_n
      inherited TabSheet1: TTabSheet
        Caption = 'Todos'
        ImageIndex = -1
        ExplicitLeft = 4
        ExplicitTop = 33
        ExplicitWidth = 823
        ExplicitHeight = 156
        inherited DBGrid1: TDBGrid
          Height = 156
          OnDrawColumnCell = DBGrid1DrawColumnCell
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Ativos'
        ImageIndex = 208
      end
      object TabSheet3: TTabSheet
        Caption = 'Inativos'
        ImageIndex = 209
      end
    end
  end
  inherited alDef: TActionList
    inherited actFind: TAction
      GroupIndex = 200
    end
    inherited actQuery: TAction
      Enabled = False
      GroupIndex = 200
    end
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    AfterInsert = IBrwSrcAfterInsert
    SQL.Strings = (
      
        'select a.id, a.descri, a.tipo, c.descri, a.depto, b.descri, a.st' +
        'atus, a.baixa, '
      '       a.motivo, a.comodato, a.vlcompra, a.vlvenda, a.recno '
      '  from ativos a'
      '       left join deptos b'
      '         on b.depto = a.depto         '
      '       left join ativos_tipo c'
      '         on c.tipo = a.tipo')
    Sequence = ZSequence1
    SequenceField = 'id'
    object IBrwSrcstatus: TIntegerField
      DisplayLabel = ' '
      FieldName = 'status'
      OnGetText = IBrwSrcstatusGetText
      OnSetText = IBrwSrcstatusSetText
    end
    object IBrwSrcid: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Ativo'
      FieldName = 'id'
    end
    object IBrwSrcdescri: TMemoField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Required = True
      Visible = False
      BlobType = ftMemo
    end
    object IBrwSrctipo: TIntegerField
      FieldName = 'tipo'
      Required = True
      Visible = False
    end
    object IBrwSrcdescri_1: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'descri_1'
      Size = 60
    end
    object IBrwSrcdepto: TIntegerField
      FieldName = 'depto'
      Visible = False
    end
    object IBrwSrcdescri_2: TStringField
      DisplayLabel = 'Departamento'
      FieldName = 'descri_2'
      Size = 60
    end
    object IBrwSrcbaixa: TDateTimeField
      DisplayLabel = 'Baixa'
      FieldName = 'baixa'
      Visible = False
    end
    object IBrwSrcmotivo: TMemoField
      DisplayLabel = 'Motivo'
      FieldName = 'motivo'
      Visible = False
      BlobType = ftMemo
    end
    object IBrwSrccomodato: TBooleanField
      DisplayLabel = 'Comodato'
      FieldName = 'comodato'
      Visible = False
    end
    object IBrwSrcvlcompra: TFloatField
      DisplayLabel = 'Valor de Compra'
      FieldName = 'vlcompra'
      currency = True
    end
    object IBrwSrcvlvenda: TFloatField
      DisplayLabel = 'Valor de Venda'
      FieldName = 'vlvenda'
      currency = True
    end
    object IBrwSrcrecno: TIntegerField
      FieldName = 'recno'
      Visible = False
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM ativos'
      'WHERE'
      '  ativos.id = :OLD_id')
    InsertSQL.Strings = (
      'INSERT INTO ativos'
      
        '  (id, descri, tipo, depto, status, baixa, motivo, comodato, vlc' +
        'ompra, '
      '   vlvenda)'
      'VALUES'
      
        '  (:id, :descri, :tipo, :depto, :status, :baixa, :motivo, :comod' +
        'ato, :vlcompra, '
      '   :vlvenda)')
    ModifySQL.Strings = (
      'UPDATE ativos SET'
      '  id = :id,'
      '  descri = :descri,'
      '  tipo = :tipo,'
      '  depto = :depto,'
      '  status = :status,'
      '  baixa = :baixa,'
      '  motivo = :motivo,'
      '  comodato = :comodato,'
      '  vlcompra = :vlcompra,'
      '  vlvenda = :vlvenda'
      'WHERE'
      '  ativos.id = :OLD_id')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'id'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'descri'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'depto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'status'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'baixa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'motivo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'comodato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vlcompra'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vlvenda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_id'
        ParamType = ptUnknown
      end>
  end
  object ZSequence1: TZSequence
    Connection = DM.Design
    SequenceName = 'public.ativos_id_seq'
    Left = 112
    Top = 48
  end
end
