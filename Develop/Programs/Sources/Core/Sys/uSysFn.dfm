inherited SysFn: TSysFn
  Caption = 'Rotinas'
  ClientHeight = 416
  Constraints.MinWidth = 853
  ExplicitHeight = 455
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 389
    ExplicitTop = 389
  end
  inherited Panel1: TPanel
    inherited pctlFind: TPageControl
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 819
        ExplicitHeight = 75
        object Panel7: TPanel
          Left = 274
          Top = 0
          Width = 153
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Label4: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 147
            Height = 15
            Align = alTop
            Caption = 'Modifica'#231#227'o'
            Transparent = True
            ExplicitWidth = 66
          end
          object Label5: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 53
            Width = 147
            Height = 15
            Align = alTop
            ExplicitWidth = 3
          end
          inline FrameData1: TFrameData
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 147
            Height = 23
            Align = alTop
            AutoSize = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Pitch = fpVariable
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            ExplicitLeft = 3
            ExplicitTop = 24
            ExplicitWidth = 147
            inherited ComboBox1: TComboBox
              Width = 147
              ExplicitWidth = 147
            end
            inherited CCalendarDiff1: TCCalendarDiff
              Date = 44264.087962372690000000
              DisplayInterval = Label5
              OnChange = FrameData1CCalendarDiff1Change
            end
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 137
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object Label1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 131
            Height = 15
            Align = alTop
            Caption = 'Status'
            ExplicitWidth = 32
          end
          object cbStatus: TComboBox
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 131
            Height = 23
            Align = alTop
            Style = csDropDownList
            ItemHeight = 15
            ItemIndex = 0
            TabOrder = 0
            Text = 'Todas'
            OnChange = cbStatusChange
            Items.Strings = (
              'Todas'
              'Desenvolvimento'
              'Pronta')
          end
        end
        object Panel4: TPanel
          Left = 137
          Top = 0
          Width = 137
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 3
          object Label3: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 131
            Height = 15
            Align = alTop
            Caption = 'Tipo de Rotina'
            ExplicitWidth = 76
          end
          object cbTipo: TComboBox
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 131
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
              'Procedure '
              'Trigger')
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
    Height = 257
    ExplicitHeight = 257
    inherited PageControl1: TPageControl
      Height = 251
      Images = Resources.medium_n
      ExplicitHeight = 251
      inherited TabSheet1: TTabSheet
        Caption = 'Todas'
        ImageIndex = -1
        ExplicitLeft = 4
        ExplicitTop = 33
        ExplicitWidth = 823
        ExplicitHeight = 214
        inherited DBGrid1: TDBGrid
          Top = 47
          Height = 164
        end
        inline FrameCheckBar1: TFrameCheckBar
          Left = 0
          Top = 0
          Width = 823
          Height = 44
          Align = alTop
          AutoSize = True
          TabOrder = 1
          ExplicitWidth = 823
          inherited ControlBar1: TControlBar
            Width = 817
            ExplicitWidth = 817
            inherited ToolBar2: TToolBar
              Width = 798
              ButtonWidth = 109
              ExplicitWidth = 798
              inherited ToolButton12: TToolButton
                ExplicitWidth = 113
              end
              inherited ToolButton17: TToolButton
                Left = 192
                ExplicitLeft = 192
                ExplicitWidth = 70
              end
              inherited ToolButton1: TToolButton
                Left = 262
                ExplicitLeft = 262
              end
              inherited ToolButton16: TToolButton
                Left = 270
                ExplicitLeft = 270
                ExplicitWidth = 86
              end
            end
          end
          inherited dsMark: TDataSource
            DataSet = IBrwSrc
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Desenvolvimento'
        ImageIndex = 213
      end
      object TabSheet3: TTabSheet
        Caption = 'Pronta'
        ImageIndex = 208
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
    Left = 400
    Top = 240
    object actFilesLoad: TAction
      Caption = 'Carregar/Atualizar Rotinas...'
      ImageIndex = 90
      OnExecute = actFilesLoadExecute
    end
    object actSync: TAction
      Caption = 'Sincronizar Rotinas...'
      Enabled = False
      ImageIndex = 309
      OnExecute = actSyncExecute
    end
  end
  inherited pmRel: TPopupMenu
    Left = 248
    Top = 232
  end
  inherited pmOrder: TPopupMenu
    Left = 290
    Top = 238
  end
  inherited alRunTime: TActionList
    Left = 346
    Top = 238
  end
  inherited DataSource1: TDataSource
    Left = 192
    Top = 232
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SortedFields = 'fn'
    AfterScroll = IBrwSrcAfterScroll
    AfterInsert = IBrwSrcAfterInsert
    SQL.Strings = (
      
        'select (m.recno is not null) mark, f.fn, f.descri, f.tipo, f.tab' +
        'le_recno, t.tabela, t.descri table_name, f.evento, f.ins, f.upd,' +
        ' f.del, f.recno,'
      '       f.status, f.modification, f.stmt, f.checksum'
      '  from sys_fn f'
      '       left join sys_tables t'
      '         on t.recno = f.table_recno'
      '       left join sys_flags m'
      '         on m.recno = f.recno'
      '        and m.session = sys_session()'
      '        and m.table_ = sys_origem('#39'sys_fn'#39') ')
    IndexFieldNames = 'fn Asc'
    Left = 136
    Top = 232
    object IBrwSrcmark: TBooleanField
      DisplayLabel = ' '
      FieldName = 'mark'
      Required = True
    end
    object IBrwSrcstatus: TIntegerField
      DisplayLabel = ' '
      FieldName = 'status'
      Required = True
    end
    object IBrwSrcfn: TStringField
      DisplayLabel = 'Fun'#231#227'o'
      DisplayWidth = 40
      FieldName = 'fn'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
      Size = 100
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 40
      FieldName = 'descri'
      Required = True
      Visible = False
      Size = 150
    end
    object IBrwSrctipo: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Tipo'
      FieldName = 'tipo'
      Required = True
      OnGetText = IBrwSrctipoGetText
      OnSetText = IBrwSrctipoSetText
    end
    object IBrwSrctable_recno: TIntegerField
      FieldName = 'table_recno'
      Visible = False
    end
    object IBrwSrctabela: TStringField
      DisplayLabel = 'Tabela'
      DisplayWidth = 25
      FieldName = 'tabela'
      Required = True
      Size = 100
    end
    object IBrwSrctable_name: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'table_name'
      Required = True
      Visible = False
      Size = 60
    end
    object IBrwSrcevento: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Evento'
      FieldName = 'evento'
      Required = True
      OnGetText = IBrwSrceventoGetText
      OnSetText = IBrwSrceventoSetText
    end
    object IBrwSrcins: TBooleanField
      DisplayLabel = 'Inser'#231#227'o'
      FieldName = 'ins'
      Required = True
    end
    object IBrwSrcupd: TBooleanField
      DisplayLabel = 'Atualiza'#231#227'o'
      FieldName = 'upd'
      Required = True
    end
    object IBrwSrcdel: TBooleanField
      DisplayLabel = 'Dele'#231#227'o'
      FieldName = 'del'
      Required = True
    end
    object IBrwSrcmodification: TDateTimeField
      DisplayLabel = 'Modifica'#231#227'o'
      FieldName = 'modification'
      ReadOnly = True
      Required = True
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object IBrwSrcchecksum: TStringField
      DisplayLabel = 'Soma de Verifica'#231#227'o'
      DisplayWidth = 36
      FieldName = 'checksum'
      ReadOnly = True
      Size = 32
    end
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
      Required = True
    end
    object IBrwSrcstmt: TMemoField
      FieldName = 'stmt'
      ReadOnly = True
      Visible = False
      BlobType = ftMemo
    end
  end
  inherited pmOpcao: TPopupMenu
    Left = 456
    Top = 240
    object Sincronizar1: TMenuItem
      Action = actSync
    end
    object CarregarAtualizarRotinas1: TMenuItem
      Action = actFilesLoad
    end
    object N2: TMenuItem
      Caption = '-'
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM sys_fn'
      'WHERE'
      '  sys_fn.fn = :OLD_fn')
    InsertSQL.Strings = (
      'INSERT INTO sys_fn'
      
        '  (fn, descri, tipo, table_recno, evento, ins, upd, del, recno, ' +
        'status)'
      'VALUES'
      
        '  (:fn, :descri, :tipo, :table_recno, :evento, :ins, :upd, :del,' +
        ' :recno, '
      '   :status)')
    ModifySQL.Strings = (
      'UPDATE sys_fn SET'
      '  fn = :fn,'
      '  descri = :descri,'
      '  tipo = :tipo,'
      '  table_recno = :table_recno,'
      '  evento = :evento,'
      '  ins = :ins,'
      '  upd = :upd,'
      '  del = :del,'
      '  recno = :recno,'
      '  status = :status'
      'WHERE'
      '  sys_fn.fn = :OLD_fn')
    Left = 88
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fn'
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
        Name = 'table_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'evento'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ins'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'upd'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'del'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'status'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_fn'
        ParamType = ptUnknown
      end>
  end
end
