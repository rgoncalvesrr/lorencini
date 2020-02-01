inherited FinCC: TFinCC
  Caption = 'Bancos e Contas Corrente'
  ClientHeight = 349
  Constraints.MinWidth = 853
  ExplicitLeft = 8
  ExplicitHeight = 388
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
    Top = 325
    ExplicitTop = 325
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
    Height = 200
    ExplicitLeft = 0
    ExplicitTop = 119
    ExplicitWidth = 837
    ExplicitHeight = 206
    object Splitter1: TSplitter [0]
      Left = 256
      Top = 0
      Width = 6
      Height = 200
      Beveled = True
      ExplicitLeft = 250
      ExplicitHeight = 197
    end
    inherited PageControl1: TPageControl
      Left = 265
      Width = 563
      Height = 194
      TabOrder = 1
      ExplicitLeft = 259
      ExplicitTop = 3
      ExplicitWidth = 575
      ExplicitHeight = 200
      inherited TabSheet1: TTabSheet
        Caption = 'Contas'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 567
        ExplicitHeight = 170
        inherited DBGrid1: TDBGrid
          Width = 555
          Height = 164
        end
      end
    end
    object PageControl2: TPageControl
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 250
      Height = 194
      ActivePage = TabSheet2
      Align = alLeft
      MultiLine = True
      TabOrder = 0
      TabStop = False
      OnMouseDown = PageControl1MouseDown
      ExplicitTop = -1
      ExplicitHeight = 200
      object TabSheet2: TTabSheet
        Caption = 'Bancos'
        ExplicitHeight = 176
        object DBGrid2: TDBGrid
          Tag = 1
          Left = 0
          Top = 0
          Width = 242
          Height = 164
          Align = alClient
          BorderStyle = bsNone
          Ctl3D = False
          DataSource = dsBancos
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
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    AfterInsert = IBrwSrcAfterInsert
    SQL.Strings = (
      'select cc, banco, agencia, descri, conciliacao, recno'
      '  from cc'
      'where banco = :banco')
    Params = <
      item
        DataType = ftUnknown
        Name = 'banco'
        ParamType = ptUnknown
      end>
    Sequence = ZSequence1
    SequenceField = 'recno'
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'banco'
        ParamType = ptUnknown
      end>
    object IBrwSrccc: TStringField
      DisplayLabel = 'Conta'
      FieldName = 'cc'
      Required = True
      Size = 25
    end
    object IBrwSrcbanco: TIntegerField
      DisplayLabel = 'Banco'
      FieldName = 'banco'
      Required = True
      Visible = False
    end
    object IBrwSrcagencia: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      DisplayWidth = 10
      FieldName = 'agencia'
      Size = 25
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Size = 60
    end
    object IBrwSrcconciliacao: TDateField
      DisplayLabel = 'Concilia'#231#227'o'
      FieldName = 'conciliacao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object IBrwSrcrecno: TIntegerField
      FieldName = 'recno'
      Required = True
      Visible = False
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM cc'
      'WHERE'
      '  cc.cc = :OLD_cc')
    InsertSQL.Strings = (
      'INSERT INTO cc'
      '  (cc, banco, agencia, descri, conciliacao, recno)'
      'VALUES'
      '  (:cc, :banco, :agencia, :descri, :conciliacao, :recno)')
    ModifySQL.Strings = (
      'UPDATE cc SET'
      '  cc = :cc,'
      '  banco = :banco,'
      '  agencia = :agencia,'
      '  descri = :descri,'
      '  conciliacao = :conciliacao'
      'WHERE'
      '  cc.cc = :OLD_cc')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'banco'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'agencia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'descri'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'conciliacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_cc'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end>
  end
  object dsBancos: TDataSource
    AutoEdit = False
    DataSet = zBancos
    Left = 208
    Top = 80
  end
  object zBancos: TZQuery
    Tag = 1
    Connection = DM.Design
    SortedFields = 'banco'
    AfterScroll = zBancosAfterScroll
    UpdateObject = uBanco
    SQL.Strings = (
      'select banco, descri, recno'
      '  from bancos')
    Params = <>
    IndexFieldNames = 'banco Asc'
    Options = []
    Sequence = sBanco
    SequenceField = 'recno'
    Left = 176
    Top = 80
    object zBancosbanco: TIntegerField
      DisplayLabel = 'Banco'
      DisplayWidth = 5
      FieldName = 'banco'
      Required = True
    end
    object zBancosdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 25
      FieldName = 'descri'
      Required = True
      Size = 60
    end
    object zBancosrecno: TIntegerField
      FieldName = 'recno'
    end
  end
  object uBanco: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM bancos'
      'WHERE'
      '  bancos.banco = :OLD_banco')
    InsertSQL.Strings = (
      'INSERT INTO bancos'
      '  (banco, descri, recno)'
      'VALUES'
      '  (:banco, :descri, :recno)')
    ModifySQL.Strings = (
      'UPDATE bancos SET'
      '  banco = :banco,'
      '  descri = :descri'
      'WHERE'
      '  bancos.banco = :OLD_banco')
    UseSequenceFieldForRefreshSQL = False
    Left = 144
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'banco'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'descri'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_banco'
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
    SequenceName = 'public.cc_recno_seq'
    Left = 112
    Top = 48
  end
  object sBanco: TZSequence
    Connection = DM.Design
    SequenceName = 'public.bancos_recno_seq'
    Left = 112
    Top = 80
  end
end
