inherited GestaoEntradas: TGestaoEntradas
  Caption = 'Entradas de Frascos e Seringas'
  ClientHeight = 697
  ClientWidth = 979
  ExplicitWidth = 995
  ExplicitHeight = 736
  PixelsPerInch = 96
  TextHeight = 15
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 346
    Width = 979
    Height = 6
    Cursor = crVSplit
    Align = alBottom
    Beveled = True
    ExplicitTop = 333
  end
  inherited StatusBar1: TStatusBar
    Top = 670
    Width = 973
    ExplicitTop = 670
    ExplicitWidth = 973
  end
  inherited Panel1: TPanel
    Width = 979
    ExplicitWidth = 979
    inherited pctlFind: TPageControl
      Width = 969
      ExplicitWidth = 969
      inherited tsQuery: TTabSheet
        ExplicitLeft = 5
        ExplicitTop = 7
        ExplicitWidth = 961
        ExplicitHeight = 75
        inherited BitBtn2: TBitBtn
          Left = 860
          ExplicitLeft = 860
          ExplicitTop = 11
        end
        object Panel8: TPanel
          Left = 0
          Top = 0
          Width = 191
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Label5: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 185
            Height = 15
            Align = alTop
            Caption = 'Entrada'
            Transparent = True
            ExplicitWidth = 40
          end
          object Label6: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 53
            Width = 185
            Height = 15
            Align = alTop
            Caption = '01/01/2021 a 31/01/2021'
            Transparent = True
            ExplicitWidth = 128
          end
          inline FrameData1: TFrameData
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 185
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
            ExplicitWidth = 185
            inherited ComboBox1: TComboBox
              Width = 185
              ItemIndex = 2
              Text = 'Trimestralmente'
              ExplicitWidth = 185
            end
            inherited CCalendarDiff1: TCCalendarDiff
              Interval = diMonthly
              Date = 44222.952348564820000000
              DisplayInterval = Label6
              OnChange = FrameData1CCalendarDiff1Change
            end
          end
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 961
        ExplicitHeight = 75
      end
    end
  end
  inherited Panel2: TPanel
    Width = 979
    Height = 217
    ExplicitWidth = 979
    ExplicitHeight = 538
    inherited PageControl1: TPageControl
      Width = 973
      Height = 211
      ExplicitWidth = 973
      ExplicitHeight = 221
      inherited TabSheet1: TTabSheet
        Caption = 'Entradas (Mensais)'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 965
        ExplicitHeight = 191
        inherited DBGrid1: TDBGrid
          Width = 959
          Height = 175
        end
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Width = 973
    ExplicitWidth = 973
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
  object pnDetalhe: TPanel [5]
    Left = 0
    Top = 352
    Width = 979
    Height = 315
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'pnDetalhe'
    TabOrder = 4
    object PageControl2: TPageControl
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 973
      Height = 309
      ActivePage = TabSheet2
      Align = alClient
      TabOrder = 0
      TabStop = False
      OnChange = PageControl1Change
      OnMouseDown = PageControl1MouseDown
      ExplicitTop = 189
      ExplicitHeight = 299
      object TabSheet2: TTabSheet
        Caption = 'Entradas (Di'#225'rias)'
        ExplicitHeight = 269
        object DBGrid2: TDBGrid
          Tag = 1
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 959
          Height = 273
          Align = alClient
          BorderStyle = bsNone
          Ctl3D = False
          DataSource = dsDiaria
          DefaultDrawing = False
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          ParentCtl3D = False
          PopupMenu = pmOpcao
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Segoe UI'
          TitleFont.Pitch = fpVariable
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
    AfterScroll = IBrwSrcAfterScroll
    OnCalcFields = IBrwSrcCalcFields
    SQL.Strings = (
      
        'select cast(to_char(p.emissao, '#39'yyyymm'#39') as varchar(6)) competen' +
        'cia, '
      '       min(p.emissao) emissaode, max(p.emissao) emissaoate,'
      
        '       sum(sys_iif(r.status = 1 and e.tipo = 1, 1, 0)) frascos_c' +
        'onformes,'
      
        '       sum(sys_iif(r.status = 2 and e.tipo = 1, 1, 0)) frascos_n' +
        'aoconformes,'
      
        '       sum(sys_iif(r.status = 3 and e.tipo = 1, 1, 0)) frascos_v' +
        'azios,'
      
        '       sum(sys_iif(r.status = 4 and e.tipo = 1, 1, 0)) frascos_q' +
        'uebrados, '
      
        '       sum(sys_iif(r.status = 1 and e.tipo = 2, 1, 0)) seringas_' +
        'conformes, '
      
        '       sum(sys_iif(r.status = 2 and e.tipo = 2, 1, 0)) seringas_' +
        'naoconformes, '
      
        '       sum(sys_iif(r.status = 3 and e.tipo = 2, 1, 0)) seringas_' +
        'vazios, '
      
        '       sum(sys_iif(r.status = 4 and e.tipo = 2, 1, 0)) seringas_' +
        'quebrados'
      '  from labport p'
      '       join labret r'
      '         on r.labport_recno = p.recno'
      '       join labprocxequip e'
      '         on e.amostra = r.amostra'
      ' where p.operac = 2'
      '   and p.status = 2'
      
        '   and cast(p.emissao as date) between :emissaode and :emissaoat' +
        'e'
      ' group by cast(to_char(p.emissao, '#39'yyyymm'#39') as varchar(6))')
    Params = <
      item
        DataType = ftUnknown
        Name = 'emissaode'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emissaoate'
        ParamType = ptUnknown
      end>
    Left = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emissaode'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emissaoate'
        ParamType = ptUnknown
      end>
    object IBrwSrccompetencia: TStringField
      FieldName = 'competencia'
      ReadOnly = True
      Visible = False
      Size = 6
    end
    object IBrwSrccompet: TStringField
      DisplayLabel = 'Compet'#234'ncia'
      FieldKind = fkCalculated
      FieldName = 'compet'
      EditMask = '99/9999;0;'
      Size = 6
      Calculated = True
    end
    object IBrwSrcconformes: TLargeintField
      DisplayLabel = 'Conformes'
      FieldKind = fkCalculated
      FieldName = 'conformes'
      Calculated = True
    end
    object IBrwSrcnaoconformes: TLargeintField
      DisplayLabel = 'N'#227'o Conformes'
      FieldKind = fkCalculated
      FieldName = 'naoconformes'
      Calculated = True
    end
    object IBrwSrcvalidas: TLargeintField
      DisplayLabel = 'Entradas V'#225'lidas'
      FieldKind = fkCalculated
      FieldName = 'validas'
      Calculated = True
    end
    object IBrwSrcvazios: TLargeintField
      DisplayLabel = 'Vazios'
      FieldKind = fkCalculated
      FieldName = 'vazios'
      Calculated = True
    end
    object IBrwSrcquebrados: TLargeintField
      DisplayLabel = 'Quebrados'
      FieldKind = fkCalculated
      FieldName = 'quebrados'
      Calculated = True
    end
    object IBrwSrciperda: TFloatField
      DisplayLabel = #205'ndice de Perda'
      FieldKind = fkCalculated
      FieldName = 'iperda'
      DisplayFormat = ',0.#0%'
      Calculated = True
    end
    object IBrwSrcivazios: TFloatField
      DisplayLabel = #205'ndice de Vazios'
      FieldKind = fkCalculated
      FieldName = 'ivazios'
      DisplayFormat = ',0.#0%'
      Calculated = True
    end
    object IBrwSrcfrascos_conformes: TLargeintField
      DisplayLabel = 'Frascos Conformes'
      FieldName = 'frascos_conformes'
      ReadOnly = True
    end
    object IBrwSrcseringas_conformes: TLargeintField
      DisplayLabel = 'Seringas Conformes'
      FieldName = 'seringas_conformes'
      ReadOnly = True
    end
    object IBrwSrcfrascos_naoconformes: TLargeintField
      DisplayLabel = 'Frascos N'#227'o-Conformes'
      FieldName = 'frascos_naoconformes'
      ReadOnly = True
    end
    object IBrwSrcseringas_naoconformes: TLargeintField
      DisplayLabel = 'Seringas N'#227'o-Conformes'
      FieldName = 'seringas_naoconformes'
      ReadOnly = True
    end
    object IBrwSrcfrascos_vazios: TLargeintField
      DisplayLabel = 'Frascos Vazios'
      FieldName = 'frascos_vazios'
      ReadOnly = True
    end
    object IBrwSrcseringas_vazios: TLargeintField
      DisplayLabel = 'Seringas Vazias'
      FieldName = 'seringas_vazios'
      ReadOnly = True
    end
    object IBrwSrcfrascos_quebrados: TLargeintField
      DisplayLabel = 'Frascos Quebrados'
      FieldName = 'frascos_quebrados'
      ReadOnly = True
    end
    object IBrwSrcseringas_quebrados: TLargeintField
      DisplayLabel = 'Seringas Quebradas'
      FieldName = 'seringas_quebrados'
      ReadOnly = True
    end
    object IBrwSrcemissaode: TDateTimeField
      FieldName = 'emissaode'
      ReadOnly = True
      Visible = False
    end
    object IBrwSrcemissaoate: TDateTimeField
      FieldName = 'emissaoate'
      ReadOnly = True
      Visible = False
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    Left = 136
  end
  object qDiaria: TZQuery
    Connection = DM.Design
    OnCalcFields = qDiariaCalcFields
    SQL.Strings = (
      'select cast(p.emissao as date) emissao, '
      
        '       sum(sys_iif(r.status = 1 and e.tipo = 1, 1, 0)) frascos_c' +
        'onformes,'
      
        '       sum(sys_iif(r.status = 2 and e.tipo = 1, 1, 0)) frascos_n' +
        'aoconformes,'
      
        '       sum(sys_iif(r.status = 3 and e.tipo = 1, 1, 0)) frascos_v' +
        'azios,'
      
        '       sum(sys_iif(r.status = 4 and e.tipo = 1, 1, 0)) frascos_q' +
        'uebrados,'
      
        '       sum(sys_iif(r.status = 1 and e.tipo = 2, 1, 0)) seringas_' +
        'conformes,'
      
        '       sum(sys_iif(r.status = 2 and e.tipo = 2, 1, 0)) seringas_' +
        'naoconformes, '
      
        '       sum(sys_iif(r.status = 3 and e.tipo = 2, 1, 0)) seringas_' +
        'vazios, '
      
        '       sum(sys_iif(r.status = 4 and e.tipo = 2, 1, 0)) seringas_' +
        'quebrados'
      '  from labport p'
      '       join labret r'
      '         on r.labport_recno = p.recno'
      '       join labprocxequip e'
      '         on e.amostra = r.amostra'
      ' where p.operac = 2'
      '   and p.status = 2'
      
        '   and cast(p.emissao as date) between :emissaode and :emissaoat' +
        'e'
      ' group by cast(p.emissao as date)')
    Params = <
      item
        DataType = ftUnknown
        Name = 'emissaode'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emissaoate'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    Left = 192
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'emissaode'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emissaoate'
        ParamType = ptUnknown
      end>
    object qDiariaemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'emissao'
      ReadOnly = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qDiariaconformes: TLargeintField
      DisplayLabel = 'Conformes'
      FieldKind = fkCalculated
      FieldName = 'conformes'
      Calculated = True
    end
    object qDiarianaoconformes: TLargeintField
      DisplayLabel = 'N'#227'o Conformes'
      FieldKind = fkCalculated
      FieldName = 'naoconformes'
      Calculated = True
    end
    object qDiariavalidas: TLargeintField
      DisplayLabel = 'Entradas V'#225'lidas'
      FieldKind = fkCalculated
      FieldName = 'validas'
      Calculated = True
    end
    object qDiariavazios: TLargeintField
      DisplayLabel = 'Vazios'
      FieldKind = fkCalculated
      FieldName = 'vazios'
      Calculated = True
    end
    object qDiariaquebrados: TLargeintField
      DisplayLabel = 'Quebrados'
      FieldKind = fkCalculated
      FieldName = 'quebrados'
      Calculated = True
    end
    object qDiariaiperda: TFloatField
      DisplayLabel = #205'ndice de Perda'
      FieldKind = fkCalculated
      FieldName = 'iperda'
      DisplayFormat = ',0.#0%'
      Calculated = True
    end
    object qDiariaivazios: TFloatField
      DisplayLabel = #205'ndices Vazios'
      FieldKind = fkCalculated
      FieldName = 'ivazios'
      DisplayFormat = ',0.#0%'
      Calculated = True
    end
    object qDiariafrascos_conformes: TLargeintField
      DisplayLabel = 'Frascos Conformes'
      FieldName = 'frascos_conformes'
      ReadOnly = True
    end
    object qDiariaseringas_conformes: TLargeintField
      DisplayLabel = 'Seringas Conformes'
      FieldName = 'seringas_conformes'
      ReadOnly = True
    end
    object qDiariafrascos_naoconformes: TLargeintField
      DisplayLabel = 'Frascos N'#227'o-Conformes'
      FieldName = 'frascos_naoconformes'
      ReadOnly = True
    end
    object qDiariaseringas_naoconformes: TLargeintField
      DisplayLabel = 'Seringas N'#227'o-Conformes'
      FieldName = 'seringas_naoconformes'
      ReadOnly = True
    end
    object qDiariafrascos_vazios: TLargeintField
      DisplayLabel = 'Frascos Vazios'
      FieldName = 'frascos_vazios'
      ReadOnly = True
    end
    object qDiariaseringas_vazios: TLargeintField
      DisplayLabel = 'Seringas Vazios'
      FieldName = 'seringas_vazios'
      ReadOnly = True
    end
    object qDiariafrascos_quebrados: TLargeintField
      DisplayLabel = 'Frascos Quebrados'
      FieldName = 'frascos_quebrados'
      ReadOnly = True
    end
    object qDiariaseringas_quebrados: TLargeintField
      DisplayLabel = 'Seringas Quebrados'
      FieldName = 'seringas_quebrados'
      ReadOnly = True
    end
  end
  object dsDiaria: TDataSource
    AutoEdit = False
    DataSet = qDiaria
    Left = 256
    Top = 184
  end
end
