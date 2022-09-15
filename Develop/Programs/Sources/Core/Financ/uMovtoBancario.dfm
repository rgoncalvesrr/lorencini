inherited MovtoBancario: TMovtoBancario
  Caption = 'Movimenta'#231#227'o Banc'#225'ria'
  ClientHeight = 364
  Constraints.MinWidth = 853
  ExplicitLeft = 8
  ExplicitHeight = 403
  PixelsPerInch = 96
  TextHeight = 15
  inherited ToolBar1: TToolBar
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 831
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
  inherited StatusBar1: TStatusBar
    Top = 340
    ExplicitTop = 340
  end
  inherited Panel1: TPanel
    inherited pctlFind: TPageControl
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 819
        ExplicitHeight = 65
        object Label1: TLabel [0]
          Left = 4
          Top = 3
          Width = 80
          Height = 15
          Caption = 'Conta Banc'#225'ria'
        end
        object Label3: TLabel [1]
          Left = 167
          Top = 3
          Width = 24
          Height = 15
          Caption = 'Data'
        end
        object Label4: TLabel [2]
          Left = 167
          Top = 48
          Width = 156
          Height = 15
          Alignment = taCenter
          AutoSize = False
        end
        object ComboBox1: TComboBox
          Left = 4
          Top = 23
          Width = 156
          Height = 23
          Style = csDropDownList
          ItemHeight = 15
          TabOrder = 1
          OnChange = ComboBox1Change
        end
        inline FrameData1: TFrameData
          Left = 167
          Top = 23
          Width = 156
          Height = 23
          TabOrder = 2
          ExplicitLeft = 167
          ExplicitTop = 23
          ExplicitWidth = 156
          ExplicitHeight = 23
          inherited ComboBox1: TComboBox
            Width = 155
            Height = 23
            ItemHeight = 15
            ExplicitWidth = 155
            ExplicitHeight = 23
          end
          inherited CCalendarDiff1: TCCalendarDiff
            Date = 42347.753272199070000000
            DisplayInterval = Label4
            OnChange = FrameData1CCalendarDiff1Change
          end
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
    Height = 221
    ExplicitLeft = 0
    ExplicitTop = 119
    ExplicitWidth = 837
    ExplicitHeight = 221
    inherited PageControl1: TPageControl
      Height = 215
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 831
      ExplicitHeight = 215
      inherited TabSheet1: TTabSheet
        Caption = 'Lan'#231'amentos'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 823
        ExplicitHeight = 185
        inherited DBGrid1: TDBGrid
          Height = 185
        end
      end
    end
  end
  inherited alDef: TActionList
    Left = 118
    Top = 272
  end
  inherited pmRel: TPopupMenu
    Left = 153
    Top = 272
  end
  inherited pmOrder: TPopupMenu
    Left = 187
    Top = 272
  end
  inherited alRunTime: TActionList
    Left = 221
    Top = 272
  end
  inherited DataSource1: TDataSource
    Left = 50
    Top = 272
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SortedFields = 'cc;data'
    UpdateObject = ZUpdateSQL1
    AfterInsert = IBrwSrcAfterInsert
    SQL.Strings = (
      'select a.recno, a.cc, a.data, a.docto, a.historico, a.tipo,'
      '       a.valor, a.compensado, a.natureza,  b.descri,'
      '      case when a.tipo = '#39'E'#39' then a.valor end as entrada,'
      '      case when a.tipo = '#39'S'#39' then a.valor end as saida,'
      '      a.obs'
      '  from fin_banco a'
      '       join fin_naturezas b'
      '         on b.natureza = a.natureza')
    IndexFieldNames = 'cc Asc;data Asc'
    Sequence = sBrwSrc
    SequenceField = 'recno'
    Left = 16
    Top = 272
    object IBrwSrcrecno: TIntegerField
      FieldName = 'recno'
      ProviderFlags = [pfInWhere, pfInKey]
      Visible = False
    end
    object IBrwSrccc: TStringField
      DisplayLabel = 'Conta'
      DisplayWidth = 10
      FieldName = 'cc'
      Required = True
      Size = 25
    end
    object IBrwSrcdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'data'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object IBrwSrcdocto: TStringField
      DisplayLabel = 'Documento'
      DisplayWidth = 10
      FieldName = 'docto'
      Size = 25
    end
    object IBrwSrchistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      DisplayWidth = 40
      FieldName = 'historico'
      Required = True
      Size = 80
    end
    object IBrwSrcentrada: TFloatField
      DisplayLabel = 'Entrada'
      FieldName = 'entrada'
      ReadOnly = True
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcsaida: TFloatField
      DisplayLabel = 'Sa'#237'da'
      FieldName = 'saida'
      ReadOnly = True
      DisplayFormat = ',0.#0'
    end
    object IBrwSrctipo: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 10
      FieldName = 'tipo'
      Required = True
      Visible = False
      OnGetText = IBrwSrctipoGetText
      OnSetText = IBrwSrctipoSetText
      Size = 1
    end
    object IBrwSrcvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Required = True
      Visible = False
      DisplayFormat = ',0.#0'
    end
    object IBrwSrccompensado: TBooleanField
      DisplayLabel = 'Compensado'
      FieldName = 'compensado'
      Required = True
      OnGetText = IBrwSrccompensadoGetText
      OnSetText = IBrwSrccompensadoSetText
    end
    object IBrwSrcnatureza: TIntegerField
      DisplayLabel = 'Natureza'
      DisplayWidth = 7
      FieldName = 'natureza'
      Required = True
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 40
      FieldName = 'descri'
      Required = True
      Size = 60
    end
    object IBrwSrcobs: TMemoField
      FieldName = 'obs'
      Visible = False
      BlobType = ftMemo
    end
  end
  inherited pmOpcao: TPopupMenu
    Left = 256
    Top = 272
  end
  inherited zIBrwSrc: TZUpdateSQL
    Left = 136
  end
  object ZUpdateSQL1: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM fin_banco'
      'WHERE'
      '  fin_banco.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO fin_banco'
      
        '  (cc, data, docto, historico, tipo, valor, compensado, natureza' +
        ', obs, recno)'
      'VALUES'
      
        '  (:cc, :data, :docto, :historico, :tipo, :valor, :compensado, :' +
        'natureza, :obs, :recno)')
    ModifySQL.Strings = (
      'UPDATE fin_banco SET'
      '  cc = :cc,'
      '  data = :data,'
      '  docto = :docto,'
      '  historico = :historico,'
      '  tipo = :tipo,'
      '  valor = :valor,'
      '  compensado = :compensado,'
      '  natureza = :natureza,'
      '  obs = :obs'
      'WHERE'
      '  fin_banco.recno = :OLD_recno')
    UseSequenceFieldForRefreshSQL = False
    Left = 84
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'docto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'historico'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'valor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'compensado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'natureza'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'obs'
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
  object sBrwSrc: TZSequence
    Connection = DM.Design
    SequenceName = 'public.fin_banco_recno_seq'
    Left = 84
    Top = 240
  end
end
