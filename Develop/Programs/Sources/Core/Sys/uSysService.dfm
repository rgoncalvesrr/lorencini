inherited SysService: TSysService
  Caption = 'Servi'#231'os'
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    inherited pctlFind: TPageControl
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 819
        ExplicitHeight = 75
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 121
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Label1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 115
            Height = 15
            Align = alTop
            Caption = 'Status'
            ExplicitWidth = 32
          end
          object cbStatus: TComboBox
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 115
            Height = 23
            Align = alTop
            Style = csDropDownList
            ItemHeight = 15
            ItemIndex = 0
            TabOrder = 0
            Text = 'Todos'
            OnChange = cbStatusChange
            Items.Strings = (
              'Todos'
              'Ativos'
              'Inativos')
          end
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 819
        ExplicitHeight = 75
      end
    end
  end
  inherited Panel2: TPanel
    inherited PageControl1: TPageControl
      Images = Resources.medium_n
      inherited TabSheet1: TTabSheet
        Caption = 'Todos'
        ImageIndex = -1
        ExplicitLeft = 4
        ExplicitTop = 33
        ExplicitWidth = 823
        ExplicitHeight = 140
        inherited DBGrid1: TDBGrid
          Height = 134
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Ativos'
        ImageIndex = 208
      end
      object TabSheet3: TTabSheet
        Caption = 'Inativos'
        ImageIndex = 213
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
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      'select recno, name, status, maxprocs'
      '  from sys_services')
    Sequence = sIBrwSrc
    SequenceField = 'recno'
    object IBrwSrcstatus: TIntegerField
      DisplayLabel = ' '
      FieldName = 'status'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'recno'
    end
    object IBrwSrcname: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'name'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 60
    end
    object IBrwSrcmaxprocs: TIntegerField
      DisplayLabel = 'Processos Concorrentes'
      FieldName = 'maxprocs'
      Required = True
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM sys_services'
      'WHERE'
      '  sys_services.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO sys_services'
      '  (recno, name, status, maxprocs)'
      'VALUES'
      '  (:recno, :name, :status, :maxprocs)')
    ModifySQL.Strings = (
      'UPDATE sys_services SET'
      '  name = :name,'
      '  status = :status,'
      '  maxprocs = :maxprocs'
      'WHERE'
      '  sys_services.recno = :OLD_recno')
    Left = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'name'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'status'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'maxprocs'
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
  object sIBrwSrc: TZSequence
    Connection = DM.Design
    SequenceName = 'public.sys_services_recno_seq'
    Left = 64
    Top = 128
  end
end
