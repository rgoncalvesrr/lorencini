inherited RecebimentoLote: TRecebimentoLote
  Caption = 'Lotes de Entrada'
  ClientHeight = 580
  ClientWidth = 976
  ExplicitWidth = 992
  ExplicitHeight = 619
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 553
    Width = 970
    ExplicitTop = 553
    ExplicitWidth = 970
  end
  inherited Panel1: TPanel
    Width = 976
    ExplicitWidth = 976
    inherited pctlFind: TPageControl
      Width = 966
      ExplicitWidth = 966
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 958
        ExplicitHeight = 75
        inherited BitBtn2: TBitBtn
          Left = 857
          ExplicitLeft = 857
        end
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 141
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Label1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 135
            Height = 15
            Align = alTop
            Caption = 'Status'
            FocusControl = cbStatus
            ExplicitWidth = 32
          end
          object cbStatus: TComboBox
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 135
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
              'Conforme'
              'N'#227'o Conforme'
              'Vazio'
              'Quebrado')
          end
        end
        object Panel3: TPanel
          Left = 141
          Top = 0
          Width = 75
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object Label3: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 69
            Height = 15
            Align = alTop
            Caption = 'Amostra'
            Transparent = True
            ExplicitWidth = 45
          end
          object edAmostra: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 69
            Height = 23
            Align = alTop
            DecimalPlaces = 0
            DisplayFormat = ',#'
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
            OnChange = edAmostraChange
          end
        end
        object Panel7: TPanel
          Left = 216
          Top = 0
          Width = 75
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 3
          object Label7: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 69
            Height = 15
            Align = alTop
            Caption = 'Etiqueta'
            Transparent = True
            ExplicitWidth = 43
          end
          object edEtiqueta: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 69
            Height = 23
            Align = alTop
            DecimalPlaces = 0
            DisplayFormat = ',#'
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
            OnChange = edAmostraChange
          end
        end
        object Panel4: TPanel
          Left = 291
          Top = 0
          Width = 124
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 4
          object Label4: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 118
            Height = 15
            Align = alTop
            Caption = 'CNPJ'
            ExplicitWidth = 27
          end
          object edCNPJ: TMaskEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 118
            Height = 23
            Align = alTop
            EditMask = '99.999.999/9999-99;0;'
            MaxLength = 18
            TabOrder = 0
            OnChange = edAmostraChange
          end
        end
        object Panel5: TPanel
          Left = 415
          Top = 0
          Width = 124
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 5
          object Label5: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 118
            Height = 15
            Align = alTop
            Caption = 'CPF'
            ExplicitWidth = 21
          end
          object edCPF: TMaskEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 118
            Height = 23
            Align = alTop
            EditMask = '999.999.999-99;0;'
            MaxLength = 14
            TabOrder = 0
            OnChange = edAmostraChange
          end
        end
        object Panel8: TPanel
          Left = 539
          Top = 0
          Width = 315
          Height = 75
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 6
          object Label6: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 309
            Height = 15
            Align = alTop
            Caption = 'Nome Fantasia'
            ExplicitWidth = 79
          end
          object edEmpresa: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 309
            Height = 23
            Align = alTop
            TabOrder = 0
            OnChange = edAmostraChange
          end
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 958
        ExplicitHeight = 75
      end
    end
  end
  inherited Panel2: TPanel
    Width = 976
    Height = 421
    ExplicitWidth = 976
    ExplicitHeight = 421
    inherited PageControl1: TPageControl
      Width = 970
      Height = 415
      Images = Resources.medium_n
      ExplicitWidth = 970
      ExplicitHeight = 415
      inherited TabSheet1: TTabSheet
        Caption = 'Todas'
        ImageIndex = -1
        ExplicitLeft = 4
        ExplicitTop = 33
        ExplicitWidth = 962
        ExplicitHeight = 378
        inherited DBGrid1: TDBGrid
          Top = 47
          Width = 956
          Height = 328
        end
        inline FrameCheckBar1: TFrameCheckBar
          Left = 0
          Top = 0
          Width = 962
          Height = 44
          Align = alTop
          AutoSize = True
          TabOrder = 1
          ExplicitWidth = 962
          inherited ControlBar1: TControlBar
            Width = 956
            ExplicitWidth = 956
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
        Caption = 'Conforme'
        ImageIndex = 208
      end
      object TabSheet3: TTabSheet
        Caption = 'N'#227'o Conforme'
        ImageIndex = 210
      end
      object TabSheet4: TTabSheet
        Caption = 'Vazio'
        ImageIndex = 214
      end
      object TabSheet5: TTabSheet
        Caption = 'Quebrado'
        ImageIndex = 213
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Width = 970
    ExplicitWidth = 970
    inherited ToolBar1: TToolBar
      Left = 134
      Width = 433
      ExplicitLeft = 134
      ExplicitWidth = 433
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
    object ToolBar2: TToolBar
      Left = 11
      Top = 2
      Width = 110
      Height = 34
      AutoSize = True
      BorderWidth = 1
      ButtonHeight = 30
      ButtonWidth = 103
      Caption = 'ToolBar1'
      DisabledImages = Resources.medium_d
      DrawingStyle = dsGradient
      EdgeInner = esNone
      EdgeOuter = esNone
      HotImages = Resources.medium_h
      Images = Resources.medium_n
      List = True
      ParentShowHint = False
      ShowCaptions = True
      ShowHint = True
      TabOrder = 1
      object ToolButton12: TToolButton
        Left = 0
        Top = 0
        Action = actGerarLotes
        Style = tbsTextButton
      end
    end
  end
  inherited alDef: TActionList
    Left = 368
    Top = 232
    object actGerarLotes: TAction
      Caption = 'Gerar Lotes...'
      ImageIndex = 268
      OnExecute = actGerarLotesExecute
    end
  end
  inherited pmRel: TPopupMenu
    Left = 408
    Top = 232
  end
  inherited pmOrder: TPopupMenu
    Left = 458
    Top = 230
  end
  inherited alRunTime: TActionList
    Left = 514
    Top = 230
  end
  inherited DataSource1: TDataSource
    Left = 304
    Top = 232
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    AfterRefresh = IBrwSrcAfterRefresh
    SQL.Strings = (
      
        'select (m.recno is not null) mark, r.recno, r.amostra, a.comodat' +
        'o, r.status, r.expirado, r.qtd, r.entrada,'
      '        c.empresa, c.cnpj, c.cpf, c.cidade, c.estado '
      '  from labret r'
      '        join labamostras a'
      '          on a.recno = r.amostra'
      '        join tbclientes c'
      '          on c.codigo = a.codigo '
      '        left join sys_flags m'
      '          on m.recno = r.recno'
      '         and m.session = sys_session()'
      '         and m.table_ = 105  '
      ' where r.labport_recno is null')
    Sequence = sIBrwSrc
    SequenceField = 'recno'
    Left = 248
    Top = 232
    object IBrwSrcmark: TBooleanField
      DisplayLabel = ' '
      FieldName = 'mark'
      ReadOnly = True
    end
    object IBrwSrcstatus: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Status'
      FieldName = 'status'
      Required = True
      OnGetText = IBrwSrcstatusGetText
      OnSetText = IBrwSrcstatusSetText
    end
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
      Required = True
      Visible = False
    end
    object IBrwSrcamostra: TIntegerField
      DisplayLabel = 'Amostra'
      FieldName = 'amostra'
      Required = True
    end
    object IBrwSrccomodato: TIntegerField
      DisplayLabel = 'Etiqueta'
      FieldName = 'comodato'
      Required = True
    end
    object IBrwSrcexpirado: TBooleanField
      DisplayLabel = 'Expirado'
      FieldName = 'expirado'
      Required = True
    end
    object IBrwSrcqtd: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'qtd'
      Required = True
      DisplayFormat = '#,0.#0'
    end
    object IBrwSrcentrada: TDateTimeField
      DisplayLabel = 'Entrada'
      FieldName = 'entrada'
      Required = True
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object IBrwSrcempresa: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 40
      FieldName = 'empresa'
      Size = 100
    end
    object IBrwSrccnpj: TStringField
      DisplayLabel = 'C.N.P.J.'
      DisplayWidth = 18
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object IBrwSrccpf: TStringField
      DisplayLabel = 'C.P.F.'
      DisplayWidth = 14
      FieldName = 'cpf'
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object IBrwSrccidade: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 30
      FieldName = 'cidade'
      Size = 100
    end
    object IBrwSrcestado: TStringField
      DisplayLabel = 'UF'
      FieldName = 'estado'
      Size = 2
    end
  end
  inherited pmOpcao: TPopupMenu
    Left = 568
    Top = 232
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labret'
      'WHERE'
      '  labret.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO labret'
      '  (status, qtd)'
      'VALUES'
      '  (:status, :qtd)')
    ModifySQL.Strings = (
      'UPDATE labret SET'
      '  status = :status,'
      '  qtd = :qtd'
      'WHERE'
      '  labret.recno = :OLD_recno')
    Left = 200
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'status'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'qtd'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_recno'
        ParamType = ptUnknown
      end>
  end
  object sIBrwSrc: TZSequence
    Connection = DM.Design
    SequenceName = 'public.labret_recno_seq'
    Left = 144
    Top = 232
  end
  object dsLotes: TDataSource
    AutoEdit = False
    DataSet = qLotes
    Left = 304
    Top = 280
  end
  object qLotes: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      
        'select c.codigo, c.nome_chave, c.cnpj, c.cpf, x.frascos, x.serin' +
        'gas, x.conformes, x.naoconformes, x.vazios, x.quebrados '
      '  from tbclientes c'
      
        '       join (select a.codigo, sum(sys_iif(tipo = 1, 1, 0)) frasc' +
        'os, sum(sys_iif(tipo = 2, 1, 0)) seringas,'
      
        '               sum(sys_iif(status = 1, 1, 0)) conformes, sum(sys' +
        '_iif(status = 2, 1, 0)) naoconformes,'
      
        '               sum(sys_iif(status = 3, 1, 0)) vazios, sum(sys_ii' +
        'f(status = 4, 1, 0)) quebrados'
      '               from labamostras a'
      '                    join labret r'
      '                      on r.amostra = a.recno'
      '                     and r.labport_recno is null  '
      '                    join labprocxequip e'
      '                      on e.amostra = a.recno  '
      '                    join sys_flags f'
      '                      on f.recno  = r.recno '
      '                     and f.table_ = 105'
      '                     and f.session = sys_session()'
      '              group by a.codigo) x'
      '         on x.codigo = c.codigo;')
    Params = <>
    Left = 248
    Top = 280
    object qLotescodigo: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'codigo'
      Required = True
    end
    object qLotesnome_chave: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome_chave'
      Size = 45
    end
    object qLotescnpj: TStringField
      DisplayLabel = 'C.N.P.J.'
      FieldName = 'cnpj'
      Visible = False
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object qLotescpf: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'cpf'
      Visible = False
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object qLotesfrascos: TLargeintField
      DisplayLabel = 'Frascos'
      FieldName = 'frascos'
      ReadOnly = True
    end
    object qLotesseringas: TLargeintField
      DisplayLabel = 'Seringas'
      FieldName = 'seringas'
      ReadOnly = True
    end
    object qLotesconformes: TLargeintField
      DisplayLabel = 'Conformes'
      FieldName = 'conformes'
      ReadOnly = True
    end
    object qLotesnaoconformes: TLargeintField
      DisplayLabel = 'N'#227'o Conformes'
      FieldName = 'naoconformes'
      ReadOnly = True
    end
    object qLotesvazios: TLargeintField
      DisplayLabel = 'Vazios'
      FieldName = 'vazios'
      ReadOnly = True
    end
    object qLotesquebrados: TLargeintField
      DisplayLabel = 'Quebrados'
      FieldName = 'quebrados'
      ReadOnly = True
    end
  end
end
