inherited Ativos: TAtivos
  Margins.Left = 6
  Margins.Top = 6
  Margins.Right = 6
  Margins.Bottom = 6
  Caption = 'Ativos'
  ClientHeight = 535
  ClientWidth = 1308
  Constraints.MinWidth = 1066
  Font.Height = -24
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 1326
  ExplicitHeight = 582
  PixelsPerInch = 120
  TextHeight = 32
  inherited StatusBar1: TStatusBar
    Left = 5
    Top = 493
    Width = 1298
    Height = 37
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
    ExplicitTop = 493
    ExplicitWidth = 1298
    ExplicitHeight = 37
  end
  inherited Panel1: TPanel
    Top = 49
    Width = 1308
    Height = 132
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Padding.Left = 8
    Padding.Right = 8
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 58
    ExplicitWidth = 1308
    ExplicitHeight = 132
    inherited pctlFind: TPageControl
      Left = 8
      Width = 1292
      Height = 132
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ExplicitLeft = 8
      ExplicitWidth = 1292
      ExplicitHeight = 132
      inherited tsQuery: TTabSheet
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitWidth = 1284
        ExplicitHeight = 122
        object Label4: TLabel [0]
          Left = 13
          Top = 6
          Width = 90
          Height = 32
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Situa'#231#227'o'
        end
        object Label1: TLabel [1]
          Left = 201
          Top = 6
          Width = 143
          Height = 32
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Tipo de Ativo'
        end
        object Label3: TLabel [2]
          Left = 499
          Top = 6
          Width = 154
          Height = 32
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Caption = 'Departamento'
        end
        inherited BitBtn2: TBitBtn
          Left = 1126
          Top = 16
          Width = 153
          Height = 71
          Margins.Left = 5
          Margins.Top = 16
          Margins.Right = 5
          Margins.Bottom = 35
          ExplicitLeft = 1125
          ExplicitTop = 16
          ExplicitWidth = 153
          ExplicitHeight = 69
        end
        object cbStatus: TComboBox
          Left = 13
          Top = 33
          Width = 181
          Height = 33
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Style = csDropDownList
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
          Left = 201
          Top = 33
          Width = 290
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Style = csDropDownList
          TabOrder = 2
          OnChange = cbTipoChange
        end
        object cbDepto: TComboBox
          Left = 499
          Top = 33
          Width = 311
          Height = 23
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Style = csDropDownList
          TabOrder = 3
          OnChange = cbTipoChange
        end
      end
      inherited tsFind: TTabSheet
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        ExplicitWidth = 1284
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
    Width = 1308
    Height = 307
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    StyleElements = [seFont, seClient, seBorder]
    ExplicitTop = 190
    ExplicitWidth = 1308
    ExplicitHeight = 298
    inherited PageControl1: TPageControl
      Left = 5
      Top = 5
      Width = 1298
      Height = 297
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ActivePage = TabSheet2
      Images = Resources.medium_n
      ExplicitLeft = 5
      ExplicitTop = 5
      ExplicitWidth = 1298
      ExplicitHeight = 297
      inherited TabSheet1: TTabSheet
        Margins.Left = 5
        Margins.Top = 5
        Margins.Right = 5
        Margins.Bottom = 5
        Caption = 'Todos'
        ImageIndex = -1
        ExplicitTop = 43
        ExplicitWidth = 1290
        ExplicitHeight = 250
        inherited DBGrid1: TDBGrid
          Left = 5
          Top = 5
          Width = 1276
          Height = 195
          Margins.Left = 5
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 5
          TitleFont.Height = -24
          OnDrawColumnCell = DBGrid1DrawColumnCell
        end
      end
      object TabSheet2: TTabSheet
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Ativos'
        ImageIndex = 208
      end
      object TabSheet3: TTabSheet
        Margins.Left = 4
        Margins.Top = 4
        Margins.Right = 4
        Margins.Bottom = 4
        Caption = 'Inativos'
        ImageIndex = 209
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Left = 5
    Top = 5
    Width = 1298
    Height = 39
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    RowSize = 41
    ExplicitLeft = 5
    ExplicitTop = 5
    ExplicitWidth = 1298
    ExplicitHeight = 39
    inherited ToolBar1: TToolBar
      Left = 18
      Width = 1016
      Height = 35
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      ButtonHeight = 31
      ButtonWidth = 93
      ExplicitLeft = 18
      ExplicitWidth = 1016
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
