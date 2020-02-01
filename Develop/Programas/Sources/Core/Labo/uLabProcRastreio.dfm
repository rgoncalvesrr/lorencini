inherited LabProcRastreio: TLabProcRastreio
  Caption = 'Registro de Rastreamento'
  ClientHeight = 545
  Constraints.MinWidth = 793
  ExplicitHeight = 584
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 518
    ExplicitTop = 518
  end
  inherited Panel1: TPanel
    inherited pctlFind: TPageControl
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 819
        ExplicitHeight = 65
        object Label18: TLabel [0]
          Left = 263
          Top = 3
          Width = 90
          Height = 15
          Caption = 'Vizualizar cliente:'
          Transparent = True
        end
        object Label3: TLabel [1]
          Left = 111
          Top = 3
          Width = 43
          Height = 15
          Caption = 'Emiss'#227'o'
        end
        object Label4: TLabel [2]
          Left = 111
          Top = 47
          Width = 128
          Height = 15
          Caption = '01/07/2019 a 30/09/2019'
        end
        object Label1: TLabel [3]
          Left = 3
          Top = 3
          Width = 46
          Height = 15
          Caption = 'Remessa'
        end
        object Label5: TLabel [4]
          Left = 55
          Top = 3
          Width = 40
          Height = 15
          Caption = 'Volume'
        end
        inherited BitBtn2: TBitBtn
          Left = 574
          Top = 21
          TabOrder = 4
          ExplicitLeft = 574
          ExplicitTop = 21
        end
        object ComboBox1: TComboBox
          Left = 263
          Top = 21
          Width = 264
          Height = 23
          DropDownCount = 30
          ItemHeight = 15
          TabOrder = 3
          OnChange = ComboBox1Change
          Items.Strings = (
            '<TODOS>'
            'JANEIRO'
            'FEVEREIRO'
            'MAR'#199'O'
            'ABRIL'
            'MAIO'
            'JUNHO'
            'JULHO'
            'AGOSTO'
            'SETEMBRO'
            'OUTUBRO'
            'NOVEMBRO'
            'DEZEMBRO')
        end
        inline FrameData1: TFrameData
          Left = 111
          Top = 21
          Width = 148
          Height = 23
          TabOrder = 2
          ExplicitLeft = 111
          ExplicitTop = 21
          ExplicitWidth = 148
          ExplicitHeight = 23
          inherited ComboBox1: TComboBox
            Width = 148
            Height = 23
            ItemHeight = 15
            ItemIndex = 1
            Text = 'Mensalmente'
            ExplicitWidth = 148
            ExplicitHeight = 23
          end
          inherited CCalendarDiff1: TCCalendarDiff
            Interval = diQuarterly
            Date = 43655.805077835650000000
            DisplayInterval = Label4
            OnChange = ComboBox1Change
          end
        end
        object edRemessa: TJvCalcEdit
          Left = 3
          Top = 21
          Width = 46
          Height = 23
          DecimalPlaces = 0
          DisplayFormat = '#'
          FormatOnEditing = True
          ShowButton = False
          TabOrder = 0
          DecimalPlacesAlwaysShown = False
          OnChange = ComboBox1Change
        end
        object edVol: TJvCalcEdit
          Left = 55
          Top = 21
          Width = 46
          Height = 23
          DecimalPlaces = 0
          DisplayFormat = '#'
          FormatOnEditing = True
          ShowButton = False
          TabOrder = 1
          DecimalPlacesAlwaysShown = False
          OnChange = ComboBox1Change
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
    Height = 396
    ExplicitHeight = 396
    inherited PageControl1: TPageControl
      Height = 390
      ExplicitHeight = 390
      inherited TabSheet1: TTabSheet
        Caption = 'Volumes sem Ratreamento'
        ImageIndex = 27
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 823
        ExplicitHeight = 360
        inherited DBGrid1: TDBGrid
          Height = 360
        end
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
  inherited alDef: TActionList
    Left = 176
    Top = 185
    inherited actNew: TAction
      Visible = False
    end
    inherited actDel: TAction
      Visible = False
    end
  end
  inherited pmRel: TPopupMenu
    Left = 240
    Top = 185
    object Etiquetas1: TMenuItem
      Caption = 'Etiquetas'
    end
  end
  inherited pmOrder: TPopupMenu
    Left = 304
    Top = 185
  end
  inherited alRunTime: TActionList
    Left = 368
    Top = 185
  end
  inherited DataSource1: TDataSource
    Left = 688
    Top = 185
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SortedFields = 'labproc_recno;volume'
    OnCalcFields = IBrwSrcCalcFields
    SQL.Strings = (
      
        'select v.labproc_recno, p.descri, v.exp_dh, v.volume, v.seringas' +
        ', v.frascos,'
      
        '       p.codigo, c.nome_chave, c.cnpj, c.telefone, c.estado, v.r' +
        'ecno,'
      '       v.rastreio'
      '  from labproc p'
      '       join tbclientes c'
      '         on c.codigo = p.codigo   '
      '       join labvol v'
      '         on v.labproc_recno = p.recno'
      '        and v.rastreio is null'
      '        and v.exp_dh is not null'
      ' where p.situacao = 5')
    FetchRow = 100
    IndexFieldNames = 'labproc_recno Asc;volume Asc'
    Sequence = ZSequence1
    SequenceField = 'recno'
    Left = 624
    Top = 185
    object IBrwSrclabproc_recno: TIntegerField
      DisplayLabel = 'Remessa'
      FieldName = 'labproc_recno'
      Required = True
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 20
      FieldName = 'descri'
      Size = 60
    end
    object IBrwSrcexp_dh: TDateTimeField
      DisplayLabel = 'Envio'
      FieldName = 'exp_dh'
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object IBrwSrcvolume: TIntegerField
      DisplayLabel = 'Volume'
      DisplayWidth = 7
      FieldName = 'volume'
      Required = True
    end
    object IBrwSrcetiqueta: TStringField
      DisplayLabel = 'Etiqueta'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'etiqueta'
      EditMask = '999.999.999.999;0;'
      Size = 12
      Calculated = True
    end
    object IBrwSrcseringas: TIntegerField
      DisplayLabel = 'Seringas'
      DisplayWidth = 7
      FieldName = 'seringas'
    end
    object IBrwSrcfrascos: TIntegerField
      DisplayLabel = 'Frascos'
      DisplayWidth = 7
      FieldName = 'frascos'
    end
    object IBrwSrcrastreio: TStringField
      DisplayLabel = 'Rastreamento'
      DisplayWidth = 15
      FieldName = 'rastreio'
      Size = 30
    end
    object IBrwSrccodigo: TIntegerField
      DisplayLabel = 'Cliente'
      DisplayWidth = 7
      FieldName = 'codigo'
    end
    object IBrwSrcnome_chave: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 20
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
    object IBrwSrctelefone: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 15
      FieldName = 'telefone'
      Size = 100
    end
    object IBrwSrcestado: TStringField
      DisplayLabel = 'Estado'
      DisplayWidth = 3
      FieldName = 'estado'
      Size = 2
    end
    object IBrwSrcrecno: TIntegerField
      FieldName = 'recno'
      Visible = False
    end
  end
  inherited pmOpcao: TPopupMenu
    Left = 432
    Top = 185
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labvol'
      'WHERE'
      '  labvol.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO labvol'
      '  (rastreio)'
      'VALUES'
      '  (:rastreio)')
    ModifySQL.Strings = (
      'UPDATE labvol SET'
      '  rastreio = :rastreio '
      'WHERE'
      '  labvol.recno = :OLD_recno')
    Left = 560
    Top = 185
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rastreio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_recno'
        ParamType = ptUnknown
      end>
  end
  object ZSequence1: TZSequence
    SequenceName = 'public.labproc_recno_seq'
    Left = 496
    Top = 185
  end
end
