inherited SysEmail: TSysEmail
  Caption = 'Mensageria - E-Mails'
  ClientHeight = 381
  ClientWidth = 1221
  ExplicitWidth = 1237
  ExplicitHeight = 420
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 354
    Width = 1215
    ExplicitTop = 354
    ExplicitWidth = 1215
  end
  inherited Panel1: TPanel
    Width = 1221
    ExplicitWidth = 1221
    inherited pctlFind: TPageControl
      Width = 1211
      ExplicitWidth = 1211
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1203
        ExplicitHeight = 75
        inherited BitBtn2: TBitBtn
          Left = 1102
          ExplicitLeft = 1102
        end
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 133
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Label1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 127
            Height = 15
            Align = alTop
            Caption = 'Status'
            ExplicitWidth = 32
          end
          object cbStatus: TComboBox
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 127
            Height = 23
            Align = alTop
            Style = csDropDownList
            ItemHeight = 15
            ItemIndex = 0
            TabOrder = 0
            Text = 'Enfileirando'
            OnChange = cbStatusChange
            Items.Strings = (
              'Enfileirando'
              'Agendadas'
              'Sucesso'
              'Falha')
          end
        end
        object Panel8: TPanel
          Left = 133
          Top = 0
          Width = 150
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object Label6: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 53
            Width = 144
            Height = 15
            Align = alTop
            Caption = '01/09/2022 a 30/09/2022'
            Transparent = True
            ExplicitWidth = 128
          end
          inline FrameData1: TFrameData
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 144
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
            ExplicitWidth = 144
            inherited ComboBox1: TComboBox
              Width = 144
              Enabled = False
              ItemIndex = 2
              Text = 'Trimestralmente'
              ExplicitWidth = 144
            end
            inherited CCalendarDiff1: TCCalendarDiff
              Interval = diMonthly
              Date = 44818.930204618050000000
              DisplayInterval = Label6
              OnChange = FrameData2CCalendarDiff1Change
            end
          end
          object ckEntrada: TCheckBox
            AlignWithMargins = True
            Left = 3
            Top = 2
            Width = 144
            Height = 17
            Margins.Top = 2
            Margins.Bottom = 2
            Align = alTop
            Caption = 'Entrada'
            Enabled = False
            TabOrder = 1
            OnClick = ckEntradaClick
          end
        end
        object Panel3: TPanel
          Left = 283
          Top = 0
          Width = 150
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 3
          object Label4: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 53
            Width = 144
            Height = 15
            Align = alTop
            Caption = '01/09/2022 a 30/09/2022'
            Transparent = True
            ExplicitWidth = 128
          end
          inline FrameData2: TFrameData
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 144
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
            ExplicitWidth = 144
            inherited ComboBox1: TComboBox
              Width = 144
              Enabled = False
              ItemIndex = 2
              Text = 'Trimestralmente'
              ExplicitWidth = 144
            end
            inherited CCalendarDiff1: TCCalendarDiff
              Interval = diMonthly
              Date = 44818.930204618050000000
              DisplayInterval = Label4
              OnChange = FrameData2CCalendarDiff1Change
            end
          end
          object ckAgendada: TCheckBox
            AlignWithMargins = True
            Left = 3
            Top = 2
            Width = 144
            Height = 17
            Margins.Top = 2
            Margins.Bottom = 2
            Align = alTop
            Caption = 'Agendada'
            Enabled = False
            TabOrder = 1
            OnClick = ckEntradaClick
          end
        end
        object Panel4: TPanel
          Left = 433
          Top = 0
          Width = 150
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 4
          object Label7: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 53
            Width = 144
            Height = 15
            Align = alTop
            Caption = '01/09/2022 a 30/09/2022'
            Transparent = True
            ExplicitWidth = 128
          end
          inline FrameData3: TFrameData
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 144
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
            ExplicitWidth = 144
            inherited ComboBox1: TComboBox
              Width = 144
              Enabled = False
              ItemIndex = 2
              Text = 'Trimestralmente'
              ExplicitWidth = 144
            end
            inherited CCalendarDiff1: TCCalendarDiff
              Interval = diMonthly
              Date = 44818.930204618050000000
              DisplayInterval = Label7
              OnChange = FrameData2CCalendarDiff1Change
            end
          end
          object ckEnviada: TCheckBox
            AlignWithMargins = True
            Left = 3
            Top = 2
            Width = 144
            Height = 17
            Margins.Top = 2
            Margins.Bottom = 2
            Align = alTop
            Caption = 'Enviada'
            Enabled = False
            TabOrder = 1
            OnClick = ckEntradaClick
          end
        end
        object Panel5: TPanel
          Left = 583
          Top = 0
          Width = 239
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 5
          object Label3: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 233
            Height = 15
            Align = alTop
            Caption = 'Para'
            ExplicitWidth = 23
          end
          object edTo_: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 233
            Height = 23
            Align = alTop
            TabOrder = 0
            OnChange = edTo_Change
          end
        end
        object Panel7: TPanel
          Left = 822
          Top = 0
          Width = 239
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 6
          object Label5: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 233
            Height = 15
            Align = alTop
            Caption = 'Nome'
            ExplicitWidth = 33
          end
          object edTo_Name: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 233
            Height = 23
            Align = alTop
            TabOrder = 0
            OnChange = edTo_Change
          end
        end
        object Panel9: TPanel
          Left = 1061
          Top = 0
          Width = 38
          Height = 75
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 7
          object Label8: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 32
            Height = 15
            Align = alTop
            Caption = 'T'#237'tulo'
            ExplicitWidth = 30
          end
          object edSubject: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 32
            Height = 23
            Align = alTop
            TabOrder = 0
            OnChange = edTo_Change
          end
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1203
        ExplicitHeight = 75
      end
    end
  end
  inherited Panel2: TPanel
    Width = 1221
    Height = 222
    ExplicitWidth = 1221
    ExplicitHeight = 222
    inherited PageControl1: TPageControl
      Width = 1215
      Height = 216
      Images = Resources.medium_n
      ExplicitWidth = 1215
      ExplicitHeight = 216
      inherited TabSheet1: TTabSheet
        Caption = 'Enfileirando'
        ImageIndex = 209
        ExplicitLeft = 4
        ExplicitTop = 33
        ExplicitWidth = 1207
        ExplicitHeight = 179
        inherited DBGrid1: TDBGrid
          Top = 47
          Width = 1201
          Height = 129
        end
        inline FrameCheckBar1: TFrameCheckBar
          Left = 0
          Top = 0
          Width = 1207
          Height = 44
          Align = alTop
          AutoSize = True
          TabOrder = 1
          ExplicitWidth = 1207
          inherited ControlBar1: TControlBar
            Width = 1201
            ExplicitWidth = 1201
            inherited ToolBar2: TToolBar
              ButtonWidth = 109
              inherited ToolButton13: TToolButton
                ExplicitWidth = 79
              end
              inherited ToolButton12: TToolButton
                ExplicitWidth = 113
              end
              inherited ToolButton17: TToolButton
                Left = 192
                ExplicitLeft = 192
                ExplicitWidth = 70
              end
              inherited ToolButton16: TToolButton
                Left = 262
                ExplicitLeft = 262
                ExplicitWidth = 86
              end
              inherited ToolButton1: TToolButton
                Left = 348
                ExplicitLeft = 348
              end
            end
          end
          inherited dsMark: TDataSource
            DataSet = IBrwSrc
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Agendadas'
        ImageIndex = 210
      end
      object TabSheet3: TTabSheet
        Caption = 'Sucesso'
        ImageIndex = 208
      end
      object TabSheet4: TTabSheet
        Caption = 'Falha'
        ImageIndex = 213
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Width = 1215
    ExplicitWidth = 1215
    inherited ToolBar1: TToolBar
      Width = 817
      ExplicitWidth = 817
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
  inherited DataSource1: TDataSource
    Left = 280
    Top = 184
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    BeforeRefresh = IBrwSrcBeforeRefresh
    SQL.Strings = (
      
        'select (m.recno is not null) mark, mt.status, mt.to_, mt.to_name' +
        ', mt.message, cast(substr(e.subject, 1, 150) as varchar(150)) ti' +
        'tle, e.subject,'
      '       mt.entry_, mt.schedule, mt.send_, mt.result_, mt.recno'
      '  from sys_emailto mt '
      '       join sys_email e'
      '         on e.recno = mt.message'
      '       left join sys_flags m'
      '         on m.recno = mt.recno'
      '        and m.session = :session'
      '        and m.table_ = :table')
    Params = <
      item
        DataType = ftUnknown
        Name = 'session'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'table'
        ParamType = ptUnknown
      end>
    Left = 224
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'session'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'table'
        ParamType = ptUnknown
      end>
    object IBrwSrcmark: TBooleanField
      DisplayLabel = ' '
      FieldName = 'mark'
    end
    object IBrwSrcstatus: TIntegerField
      DisplayLabel = ' '
      FieldName = 'status'
      Required = True
    end
    object IBrwSrcto_: TStringField
      DisplayLabel = 'Para'
      DisplayWidth = 40
      FieldName = 'to_'
      Size = 100
    end
    object IBrwSrcto_name: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 40
      FieldName = 'to_name'
      Size = 60
    end
    object IBrwSrcmessage: TIntegerField
      DisplayLabel = 'Mensagem'
      FieldName = 'message'
      Required = True
    end
    object IBrwSrctitle: TStringField
      DisplayLabel = 'T'#237'tulo'
      DisplayWidth = 50
      FieldName = 'title'
      ReadOnly = True
      Size = 150
    end
    object IBrwSrcsubject: TMemoField
      FieldName = 'subject'
      Required = True
      Visible = False
      BlobType = ftMemo
    end
    object IBrwSrcentry_: TDateTimeField
      DisplayLabel = 'Entrada'
      FieldName = 'entry_'
      Required = True
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object IBrwSrcschedule: TDateTimeField
      DisplayLabel = 'Agendada'
      FieldName = 'schedule'
      Required = True
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object IBrwSrcsend_: TDateTimeField
      DisplayLabel = 'Enviada'
      FieldName = 'send_'
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object IBrwSrcresult_: TStringField
      DisplayLabel = 'Resultado'
      DisplayWidth = 40
      FieldName = 'result_'
      Size = 100
    end
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
      Required = True
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    Left = 168
    Top = 184
  end
end
