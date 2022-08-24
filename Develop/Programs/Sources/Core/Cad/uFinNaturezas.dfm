inherited FinNaturezas: TFinNaturezas
  Caption = 'Manuten'#231#227'o de Naturezas Financeiras'
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
    AlignWithMargins = True
    Left = 3
    Top = 122
    Width = 831
    Height = 193
    object Splitter1: TSplitter [0]
      Left = 350
      Top = 0
      Width = 6
      Height = 193
      Beveled = True
      ExplicitLeft = 344
      ExplicitHeight = 213
    end
    inherited PageControl1: TPageControl
      AlignWithMargins = False
      Left = 356
      Top = 0
      Width = 475
      TabOrder = 1
      ExplicitLeft = 353
      ExplicitTop = 3
      ExplicitWidth = 481
      ExplicitHeight = 193
      inherited TabSheet1: TTabSheet
        Caption = 'Naturezas'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 473
        ExplicitHeight = 163
        inherited DBGrid1: TDBGrid
          Width = 467
        end
      end
    end
    object PageControl2: TPageControl
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 344
      Height = 187
      ActivePage = TabSheet2
      Align = alLeft
      TabOrder = 0
      TabStop = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitHeight = 199
      object TabSheet2: TTabSheet
        Caption = 'Categorias'
        ExplicitHeight = 169
        object DBGrid2: TDBGrid
          Tag = 1
          Left = 0
          Top = 0
          Width = 336
          Height = 157
          Align = alClient
          BorderStyle = bsNone
          Ctl3D = False
          DataSource = dsCategoria
          DefaultDrawing = False
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Style = []
          OnDrawColumnCell = DBGridDrawColumnCell
          OnDblClick = DBGridDblClick
          OnEnter = DBGridEnter
          OnKeyPress = DBGridKeyPress
        end
      end
    end
  end
  inherited DataSource1: TDataSource
    Left = 224
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SortedFields = 'natureza'
    AfterInsert = IBrwSrcAfterInsert
    SQL.Strings = (
      'select a.natureza, a.descri, a.tipo, a.categoria, a.recno'
      '  from fin_naturezas a'
      'where a.categoria = :categoria')
    Params = <
      item
        DataType = ftUnknown
        Name = 'categoria'
        ParamType = ptUnknown
      end>
    IndexFieldNames = 'natureza Asc'
    Sequence = sIBrwSrc
    SequenceField = 'recno'
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'categoria'
        ParamType = ptUnknown
      end>
    object IBrwSrcnatureza: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'natureza'
      Required = True
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Required = True
      Size = 60
    end
    object IBrwSrctipo: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 15
      FieldName = 'tipo'
      Required = True
      OnGetText = IBrwSrctipoGetText
      OnSetText = IBrwSrctipoSetText
      Size = 1
    end
    object IBrwSrccategoria: TIntegerField
      FieldName = 'categoria'
      Required = True
      Visible = False
    end
    object IBrwSrcrecno: TIntegerField
      FieldName = 'recno'
      Required = True
      Visible = False
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM fin_naturezas'
      'WHERE'
      '  fin_naturezas.natureza = :OLD_natureza')
    InsertSQL.Strings = (
      'INSERT INTO fin_naturezas'
      '  (natureza, categoria, descri, tipo, recno)'
      'VALUES'
      '  (:natureza, :categoria, :descri, :tipo, :recno)')
    ModifySQL.Strings = (
      'UPDATE fin_naturezas SET'
      '  categoria = :categoria,'
      '  descri = :descri,'
      '  tipo = :tipo'
      'WHERE'
      '  fin_naturezas.natureza = :OLD_natureza')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'categoria'
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
        Name = 'OLD_natureza'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'natureza'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end>
  end
  object zCategoria: TZQuery
    Tag = 1
    AfterScroll = zCategoriaAfterScroll
    SQL.Strings = (
      'select categoria, descri'
      '  from fin_categorias')
    Params = <>
    Options = []
    Left = 80
    Top = 48
    object zCategoriacategoria: TIntegerField
      DisplayLabel = 'Categoria'
      DisplayWidth = 7
      FieldName = 'categoria'
      Required = True
    end
    object zCategoriadescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 25
      FieldName = 'descri'
      Required = True
      Size = 60
    end
  end
  object dsCategoria: TDataSource
    AutoEdit = False
    DataSet = zCategoria
    Left = 112
    Top = 48
  end
  object sIBrwSrc: TZSequence
    Connection = DM.Design
    SequenceName = 'public.fin_naturezas_recno_seq'
    Left = 144
    Top = 80
  end
end
