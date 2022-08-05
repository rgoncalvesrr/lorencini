inherited LabDiag: TLabDiag
  Caption = 'Manuten'#231#227'o de Diagn'#243'sticos'
  ClientHeight = 434
  Constraints.MinWidth = 853
  ExplicitLeft = 8
  ExplicitHeight = 473
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
    Top = 410
    ExplicitTop = 410
  end
  inherited Panel1: TPanel
    inherited pctlFind: TPageControl
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 819
        ExplicitHeight = 65
        object Label1: TLabel [0]
          Left = 3
          Top = 1
          Width = 120
          Height = 15
          Caption = 'Grupo de Diagn'#243'sticos'
        end
        object ComboBox1: TComboBox
          Left = 3
          Top = 23
          Width = 187
          Height = 23
          Style = csDropDownList
          ItemHeight = 15
          TabOrder = 1
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
    Height = 291
    ExplicitLeft = 0
    ExplicitTop = 119
    ExplicitWidth = 837
    ExplicitHeight = 291
    inherited PageControl1: TPageControl
      Height = 285
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 831
      ExplicitHeight = 285
      inherited TabSheet1: TTabSheet
        Caption = 'Diagn'#243'sticos'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 823
        ExplicitHeight = 255
        object Splitter1: TSplitter [0]
          Left = 0
          Top = 118
          Width = 823
          Height = 6
          Cursor = crVSplit
          Align = alBottom
          Beveled = True
          ExplicitTop = 114
          ExplicitWidth = 891
        end
        inherited DBGrid1: TDBGrid
          Height = 118
        end
        object Panel3: TPanel
          Left = 0
          Top = 124
          Width = 823
          Height = 131
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 823
            Height = 27
            Align = alTop
            Alignment = taLeftJustify
            Caption = '  Diagn'#243'stico'
            TabOrder = 0
          end
          object DBMemo1: TDBMemo
            Left = 0
            Top = 27
            Width = 823
            Height = 104
            Align = alClient
            DataField = 'diag'
            DataSource = DataSource1
            TabOrder = 1
          end
        end
      end
    end
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    AfterScroll = IBrwSrcAfterScroll
    SQL.Strings = (
      'select d.recno, d.descri, d.diag, d.dias, d.labdiag_gp_recno,'
      '       g.descri as grupo'
      '  from labdiag d'
      '       join labdiag_gp g'
      '         on g.recno = d.labdiag_gp_recno')
    Sequence = ZSequence1
    SequenceField = 'recno'
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'recno'
      Required = True
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Required = True
      Size = 60
    end
    object IBrwSrcdiag: TMemoField
      DisplayLabel = 'Diagn'#243'stico'
      FieldName = 'diag'
      Required = True
      Visible = False
      BlobType = ftMemo
    end
    object IBrwSrcdias: TIntegerField
      DisplayLabel = 'Pr'#243'xima An'#225'lise'
      FieldName = 'dias'
      Required = True
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
      Size = 60
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labdiag'
      'WHERE'
      '  labdiag.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO labdiag'
      '  (recno, descri, diag, dias, labdiag_gp_recno)'
      'VALUES'
      '  (:recno, :descri, :diag, :dias, :labdiag_gp_recno)')
    ModifySQL.Strings = (
      'UPDATE labdiag SET'
      '  descri = :descri,'
      '  diag = :diag, '
      '  dias = :dias,'
      '  labdiag_gp_recno = :labdiag_gp_recno'
      'WHERE'
      '  labdiag.recno = :OLD_recno')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'descri'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'diag'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dias'
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
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end>
  end
  object ZSequence1: TZSequence
    Connection = DM.Design
    SequenceName = 'public.labdiag_recno_seq'
    Left = 112
    Top = 48
  end
  object sLaudos: TZSequence
    Connection = DM.Design
    SequenceName = 'public.labdiagrel_recno_seq'
    Left = 112
    Top = 80
  end
  object uLaudos: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labdiagrel'
      'WHERE'
      '  labdiagrel.relato_recno = :OLD_relato_recno AND'
      '  labdiagrel.labdiag_recno = :OLD_labdiag_recno')
    InsertSQL.Strings = (
      'INSERT INTO labdiagrel'
      '  (relato_recno, labdiag_recno, recno)'
      'VALUES'
      '  (:relato_recno, :labdiag_recno, :recno)')
    ModifySQL.Strings = (
      'UPDATE labdiagrel SET'
      '  relato_recno = :relato_recno,'
      '  labdiag_recno = :labdiag_recno, '
      '  recno = :recno'
      'WHERE'
      '  labdiagrel.relato_recno = :OLD_relato_recno AND'
      '  labdiagrel.labdiag_recno = :OLD_labdiag_recno')
    UseSequenceFieldForRefreshSQL = False
    Left = 144
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'relato_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'labdiag_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_relato_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_labdiag_recno'
        ParamType = ptUnknown
      end>
  end
  object qLaudos: TZQuery
    Tag = 1
    Connection = DM.Design
    UpdateObject = uLaudos
    AfterInsert = qLaudosAfterInsert
    SQL.Strings = (
      
        'select d.labdiag_recno, d.relato_recno, r.descri, r.ativo, d.rec' +
        'no'
      '  from labdiagrel d'
      '       join labrel r'
      '         on r.recno = d.relato_recno'
      ' where d.labdiag_recno = :diag')
    Params = <
      item
        DataType = ftUnknown
        Name = 'diag'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    Sequence = sLaudos
    SequenceField = 'recno'
    Left = 176
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'diag'
        ParamType = ptUnknown
      end>
    object qLaudoslabdiag_recno: TIntegerField
      FieldName = 'labdiag_recno'
      Required = True
      Visible = False
    end
    object qLaudosrelato_recno: TIntegerField
      DisplayLabel = 'Laudo'
      FieldName = 'relato_recno'
      Required = True
    end
    object qLaudosdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Required = True
      Size = 30
    end
    object qLaudosativo: TBooleanField
      DisplayLabel = 'Ativo'
      FieldName = 'ativo'
      Required = True
    end
    object qLaudosrecno: TIntegerField
      FieldName = 'recno'
      Required = True
      Visible = False
    end
  end
  object dsLaudos: TDataSource
    AutoEdit = False
    DataSet = qLaudos
    Left = 208
    Top = 80
  end
  object dsRec: TDataSource
    AutoEdit = False
    DataSet = qRec
    Left = 208
    Top = 112
  end
  object qRec: TZQuery
    Tag = 2
    Connection = DM.Design
    UpdateObject = uRec
    AfterInsert = qRecAfterInsert
    SQL.Strings = (
      
        'select d.labdiag_recno, d.labrec_recno, r.descri, r.recomenda, d' +
        '.recno'
      '  from labdiagrec d'
      '       join labrec r'
      '         on r.recno = d.labrec_recno'
      ' where d.labdiag_recno = :diag')
    Params = <
      item
        DataType = ftUnknown
        Name = 'diag'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    Sequence = sRec
    SequenceField = 'recno'
    Left = 176
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'diag'
        ParamType = ptUnknown
      end>
    object qReclabdiag_recno: TIntegerField
      FieldName = 'labdiag_recno'
      Required = True
      Visible = False
    end
    object qReclabrec_recno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'labrec_recno'
      Required = True
    end
    object qRecdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Required = True
      Size = 60
    end
    object qRecrecomenda: TMemoField
      DisplayLabel = 'Recomenda'#231#227'o'
      FieldName = 'recomenda'
      Required = True
      Visible = False
      BlobType = ftMemo
    end
    object qRecrecno: TIntegerField
      FieldName = 'recno'
      Required = True
      Visible = False
    end
  end
  object uRec: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labdiagrec'
      'WHERE'
      '  labdiagrec.labdiag_recno = :OLD_labdiag_recno AND'
      '  labdiagrec.labrec_recno = :OLD_labrec_recno')
    InsertSQL.Strings = (
      'INSERT INTO labdiagrec'
      '  (labdiag_recno, labrec_recno, recno)'
      'VALUES'
      '  (:labdiag_recno, :labrec_recno, :recno)')
    ModifySQL.Strings = (
      'UPDATE labdiagrec SET'
      '  labdiag_recno = :labdiag_recno,'
      '  labrec_recno = :labrec_recno,'
      '  recno = :recno'
      'WHERE'
      '  labdiagrec.labdiag_recno = :OLD_labdiag_recno AND'
      '  labdiagrec.labrec_recno = :OLD_labrec_recno')
    UseSequenceFieldForRefreshSQL = False
    Left = 144
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'labdiag_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'labrec_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_labdiag_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_labrec_recno'
        ParamType = ptUnknown
      end>
  end
  object sRec: TZSequence
    Connection = DM.Design
    SequenceName = 'public.labdiagrec_recno_seq'
    Left = 112
    Top = 112
  end
end
