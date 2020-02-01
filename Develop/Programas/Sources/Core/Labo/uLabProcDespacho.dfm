inherited LabProcDespacho: TLabProcDespacho
  Caption = 'Preparar Despacho/Expedir Remessas'
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
          Left = 422
          Top = 3
          Width = 90
          Height = 15
          Caption = 'Vizualizar cliente:'
          Transparent = True
        end
        object Label3: TLabel [1]
          Left = 270
          Top = 3
          Width = 43
          Height = 15
          Caption = 'Emiss'#227'o'
        end
        object Label4: TLabel [2]
          Left = 270
          Top = 47
          Width = 128
          Height = 15
          Caption = '01/07/2019 a 30/09/2019'
        end
        object Label1: TLabel [3]
          Left = 130
          Top = 3
          Width = 32
          Height = 15
          Caption = 'Status'
        end
        object Label5: TLabel [4]
          Left = 3
          Top = 3
          Width = 37
          Height = 15
          Caption = 'Pedido'
        end
        object Label6: TLabel [5]
          Left = 67
          Top = 3
          Width = 44
          Height = 15
          Caption = 'Cota'#231#227'o'
        end
        inherited BitBtn2: TBitBtn
          Left = 706
          Top = 15
          ExplicitLeft = 706
          ExplicitTop = 15
        end
        object ComboBox1: TComboBox
          Left = 422
          Top = 21
          Width = 264
          Height = 23
          DropDownCount = 30
          ItemHeight = 15
          TabOrder = 1
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
          Left = 270
          Top = 21
          Width = 148
          Height = 23
          TabOrder = 2
          ExplicitLeft = 270
          ExplicitTop = 21
          ExplicitWidth = 148
          ExplicitHeight = 23
          inherited ComboBox1: TComboBox
            Width = 148
            Height = 23
            ItemHeight = 15
            ExplicitWidth = 148
            ExplicitHeight = 23
          end
          inherited CCalendarDiff1: TCCalendarDiff
            Interval = diQuarterly
            Date = 43658.115802881940000000
            DisplayInterval = Label4
            OnChange = ComboBox1Change
          end
        end
        object cbStatus: TComboBox
          Left = 130
          Top = 21
          Width = 133
          Height = 23
          Style = csDropDownList
          ItemHeight = 15
          ItemIndex = 0
          TabOrder = 3
          Text = 'Preparar Despacho'
          OnChange = cbStatusChange
          Items.Strings = (
            'Preparar Despacho'
            'Liberado Expedi'#231#227'o'
            'Todos')
        end
        object edPedido: TJvCalcEdit
          Left = 3
          Top = 21
          Width = 58
          Height = 23
          DecimalPlaces = 0
          DisplayFormat = '#'
          FormatOnEditing = True
          ShowButton = False
          TabOrder = 4
          DecimalPlacesAlwaysShown = False
          OnChange = ComboBox1Change
        end
        object edCota: TJvCalcEdit
          Left = 67
          Top = 21
          Width = 58
          Height = 23
          DecimalPlaces = 0
          DisplayFormat = '#'
          FormatOnEditing = True
          ShowButton = False
          TabOrder = 5
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
      Images = Resources.medium_n
      ExplicitHeight = 390
      inherited TabSheet1: TTabSheet
        Caption = 'Preparar Despacho'
        ImageIndex = 214
        ExplicitLeft = 4
        ExplicitTop = 33
        ExplicitWidth = 823
        ExplicitHeight = 353
        inherited DBGrid1: TDBGrid
          Top = 46
          Height = 307
          OnDrawColumnCell = DBGrid1DrawColumnCell
        end
        object ControlBar1: TControlBar
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 817
          Height = 40
          Align = alTop
          AutoSize = True
          BevelEdges = []
          BevelKind = bkNone
          BorderWidth = 1
          DrawingStyle = dsGradient
          TabOrder = 1
          object ToolBar2: TToolBar
            AlignWithMargins = True
            Left = 11
            Top = 2
            Width = 800
            Height = 34
            AutoSize = True
            BorderWidth = 1
            ButtonHeight = 30
            ButtonWidth = 122
            Caption = 'ToolBar1'
            DisabledImages = Resources.medium_d
            DrawingStyle = dsGradient
            HotImages = Resources.medium_h
            Images = Resources.medium_n
            List = True
            ParentShowHint = False
            AllowTextButtons = True
            ShowHint = True
            TabOrder = 0
            object ToolButton31: TToolButton
              Left = 0
              Top = 0
              Action = actRemessa
              Style = tbsTextButton
            end
            object ToolButton32: TToolButton
              Left = 94
              Top = 0
              Action = actExpedir
              Style = tbsTextButton
            end
          end
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'Liberado Expedi'#231#227'o'
        ImageIndex = 208
        object Splitter1: TSplitter
          Left = 0
          Top = 156
          Width = 823
          Height = 6
          Cursor = crVSplit
          Align = alBottom
          ExplicitTop = 191
          ExplicitWidth = 617
        end
        object Panel3: TPanel
          Left = 0
          Top = 162
          Width = 823
          Height = 191
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 0
          object PageControl2: TPageControl
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 817
            Height = 185
            ActivePage = TabSheet3
            Align = alClient
            TabOrder = 0
            object TabSheet3: TTabSheet
              Caption = 'Volumes Prontos para Envio'
              object DBGrid2: TDBGrid
                Tag = 1
                Left = 0
                Top = 0
                Width = 809
                Height = 155
                Align = alClient
                BorderStyle = bsNone
                Ctl3D = False
                DataSource = dsVolumes
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
                OnEnter = DBGridEnter
                OnKeyPress = DBGridKeyPress
              end
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Todos'
        ImageIndex = -1
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
      inherited ToolButton11: TToolButton
        Enabled = False
      end
      inherited ToolButton10: TToolButton
        Enabled = False
        ExplicitWidth = 32
      end
    end
  end
  inherited alDef: TActionList
    Left = 24
    Top = 240
    inherited actNew: TAction
      Visible = False
    end
    inherited actEdit: TAction
      Visible = False
    end
    inherited actDel: TAction
      Visible = False
    end
    object actRemessa: TAction
      Caption = 'Remessa...'
      Enabled = False
      Hint = 'Gerar Remessa para o processo selecionado'
      ImageIndex = 94
      OnExecute = actRemessaExecute
    end
    object actExpedir: TAction
      Caption = 'Registrar Envio...'
      Enabled = False
      ImageIndex = 268
      OnExecute = actExpedirExecute
    end
  end
  inherited pmRel: TPopupMenu
    Left = 64
    Top = 240
  end
  inherited pmOrder: TPopupMenu
    Left = 98
    Top = 238
  end
  inherited alRunTime: TActionList
    Left = 130
    Top = 238
  end
  inherited DataSource1: TDataSource
    Left = 432
    Top = 273
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    AfterScroll = IBrwSrcAfterScroll
    SQL.Strings = (
      
        'select p.recno, p.descri, p.criacao, p.emissao, p.remessa, c.cod' +
        'igo, c.nome_chave, c.cnpj, c.telefone,'
      
        '       c.estado, p.volumes, p.frascos, p.seringas, po.tipo, p.co' +
        'tacao, p.situacao'
      '  from labproc p'
      '       left join labport po'
      '         on po.labproc_recno = p.recno'
      '        and po.operac = 1'
      '       left join tbclientes c'
      '         on c.codigo = p.codigo')
    FetchRow = 100
    Sequence = ZSequence1
    SequenceField = 'recno'
    Left = 368
    Top = 272
    object IBrwSrcsituacao: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = ' '
      FieldName = 'situacao'
      Required = True
      OnGetText = IBrwSrcsituacaoGetText
      OnSetText = IBrwSrcsituacaoSetText
    end
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Processo'
      DisplayWidth = 7
      FieldName = 'recno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 25
      FieldName = 'descri'
      Required = True
      Size = 60
    end
    object IBrwSrccotacao: TIntegerField
      DisplayLabel = 'Cota'#231#227'o'
      FieldName = 'cotacao'
    end
    object IBrwSrccriacao: TDateTimeField
      DisplayLabel = 'Cria'#231#227'o'
      FieldName = 'criacao'
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object IBrwSrcemissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'emissao'
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object IBrwSrcremessa: TDateTimeField
      DisplayLabel = 'Remessa'
      FieldName = 'remessa'
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object IBrwSrcvolumes: TIntegerField
      DisplayLabel = 'Volumes'
      FieldName = 'volumes'
    end
    object IBrwSrcfrascos: TIntegerField
      DisplayLabel = 'Frascos'
      FieldName = 'frascos'
    end
    object IBrwSrcseringas: TIntegerField
      DisplayLabel = 'Seringas'
      FieldName = 'seringas'
    end
    object IBrwSrctipo: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Portador'
      DisplayWidth = 15
      FieldName = 'tipo'
      Required = True
      OnGetText = IBrwSrctipoGetText
    end
    object IBrwSrccodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 5
      FieldName = 'codigo'
    end
    object IBrwSrcnome_chave: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 15
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
      DisplayLabel = 'UF'
      DisplayWidth = 4
      FieldName = 'estado'
      Size = 2
    end
  end
  inherited pmOpcao: TPopupMenu
    Left = 168
    Top = 240
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labproc'
      'WHERE'
      '  labproc.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO labproc'
      '  (recno, descri, criacao, emissao, remessa, '
      '     retorno, situacao, codigo, os)'
      'VALUES'
      '  (:recno, :descri, :criacao, :emissao, :remessa, '
      '      :retorno, :situacao, :codigo, :os)')
    ModifySQL.Strings = (
      'UPDATE labproc SET'
      '  descri = :descri,'
      '  emissao = :emissao,'
      '  remessa = :remessa,'
      '  retorno = :retorno,'
      '  situacao = :situacao,'
      '  os = :os,'
      '  codigo = :codigo'
      'WHERE'
      '  labproc.recno = :OLD_recno')
    Left = 312
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'descri'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emissao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'remessa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'retorno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'situacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'os'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
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
      end
      item
        DataType = ftUnknown
        Name = 'criacao'
        ParamType = ptUnknown
      end>
  end
  object ZSequence1: TZSequence
    SequenceName = 'public.labproc_recno_seq'
    Left = 248
    Top = 272
  end
  object qVolumes: TZQuery
    Connection = DM.Design
    AfterScroll = qVolumesAfterScroll
    OnCalcFields = qVolumesCalcFields
    ReadOnly = True
    SQL.Strings = (
      
        'select labproc_recno, volume, frascos, seringas, rastreio, recno' +
        ' '
      '  from labvol '
      ' where labproc_recno = :remessa'
      '   and exp_dh is not null')
    Params = <
      item
        DataType = ftUnknown
        Name = 'remessa'
        ParamType = ptUnknown
      end>
    FetchRow = 100
    Left = 368
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'remessa'
        ParamType = ptUnknown
      end>
    object qVolumeslabproc_recno: TIntegerField
      FieldName = 'labproc_recno'
      Required = True
      Visible = False
    end
    object qVolumesetiqueta: TStringField
      DisplayLabel = 'Etiqueta'
      DisplayWidth = 15
      FieldKind = fkCalculated
      FieldName = 'etiqueta'
      EditMask = '000.000.000.000;0;'
      Size = 12
      Calculated = True
    end
    object qVolumesvolume: TIntegerField
      DisplayLabel = 'Volume'
      FieldName = 'volume'
      Required = True
    end
    object qVolumesfrascos: TIntegerField
      DisplayLabel = 'Frascos'
      FieldName = 'frascos'
    end
    object qVolumesseringas: TIntegerField
      DisplayLabel = 'Seringas'
      FieldName = 'seringas'
    end
    object qVolumesrastreio: TStringField
      DisplayLabel = 'Rastreamento'
      FieldName = 'rastreio'
      Size = 30
    end
    object qVolumesrecno: TIntegerField
      DisplayLabel = 'Etiqueta'
      FieldName = 'recno'
      Visible = False
    end
  end
  object dsVolumes: TDataSource
    AutoEdit = False
    DataSet = qVolumes
    Left = 432
    Top = 320
  end
end
