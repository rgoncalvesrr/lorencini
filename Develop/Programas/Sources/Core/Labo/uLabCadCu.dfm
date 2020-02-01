inherited LabCadCu: TLabCadCu
  Caption = 'Cadeia de Cust'#243'dia'
  ClientHeight = 454
  ClientWidth = 1122
  ExplicitWidth = 1138
  ExplicitHeight = 493
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 427
    Width = 1116
    ExplicitWidth = 1080
  end
  inherited Panel1: TPanel
    Width = 1122
    ExplicitWidth = 1086
    inherited pctlFind: TPageControl
      Width = 1112
      ExplicitWidth = 1076
      inherited tsQuery: TTabSheet
        ExplicitLeft = 2
        ExplicitTop = 4
        ExplicitWidth = 1104
        ExplicitHeight = 75
        inherited BitBtn2: TBitBtn
          Left = 1003
          TabOrder = 10
          ExplicitLeft = 967
          ExplicitTop = 10
          ExplicitHeight = 43
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 80
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          ExplicitLeft = 654
          ExplicitTop = 10
          ExplicitHeight = 41
          object Label6: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 74
            Height = 15
            Align = alTop
            Caption = 'Laudo'
            ExplicitTop = -2
            ExplicitWidth = 33
          end
          object edLaudo: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 74
            Height = 23
            Align = alTop
            DecimalPlaces = 0
            DisplayFormat = '#'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
            OnChange = edLaudoChange
            ExplicitLeft = 10
            ExplicitTop = 18
            ExplicitWidth = 70
          end
        end
        object Panel4: TPanel
          Left = 80
          Top = 0
          Width = 80
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitLeft = 759
          ExplicitTop = 10
          ExplicitHeight = 41
          object Label5: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 74
            Height = 15
            Align = alTop
            Caption = 'Pedido'
            ExplicitLeft = 43
            ExplicitTop = 1
            ExplicitWidth = 37
          end
          object edPedido: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 74
            Height = 23
            Align = alTop
            DecimalPlaces = 0
            DisplayFormat = '#'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
            OnChange = edLaudoChange
            ExplicitLeft = 10
            ExplicitTop = 18
            ExplicitWidth = 70
          end
        end
        object Panel5: TPanel
          Left = 160
          Top = 0
          Width = 80
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          ExplicitLeft = 845
          ExplicitTop = 10
          ExplicitHeight = 41
          object Label7: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 74
            Height = 15
            Align = alTop
            Caption = 'Amostra'
            ExplicitLeft = 35
            ExplicitTop = 1
            ExplicitWidth = 45
          end
          object edAmostra: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 74
            Height = 23
            Align = alTop
            DecimalPlaces = 0
            DisplayFormat = '#'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
            OnChange = edLaudoChange
            ExplicitLeft = 10
            ExplicitTop = 18
            ExplicitWidth = 70
          end
        end
        object Panel6: TPanel
          Left = 240
          Top = 0
          Width = 80
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 3
          ExplicitLeft = 931
          ExplicitTop = 3
          ExplicitHeight = 41
          object Label12: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 74
            Height = 15
            Align = alTop
            Caption = 'Etiqueta'
            ExplicitWidth = 43
          end
          object edEtiqueta: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 74
            Height = 23
            Align = alTop
            DecimalPlaces = 0
            DisplayFormat = '#'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
            OnChange = edLaudoChange
          end
        end
        object Panel7: TPanel
          Left = 320
          Top = 0
          Width = 80
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 4
          ExplicitLeft = 1030
          ExplicitTop = 10
          ExplicitHeight = 41
          object Label4: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 74
            Height = 15
            Align = alTop
            Caption = 'OS'
            ExplicitLeft = 65
            ExplicitTop = 1
            ExplicitWidth = 15
          end
          object edOS: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 74
            Height = 23
            Align = alTop
            DecimalPlaces = 0
            DisplayFormat = '#'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
            OnChange = edLaudoChange
            ExplicitLeft = 10
            ExplicitTop = 18
            ExplicitWidth = 70
          end
        end
        object Panel8: TPanel
          Left = 400
          Top = 0
          Width = 140
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 5
          object Label10: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 134
            Height = 15
            Align = alTop
            Caption = 'Data de Entrada'
            Transparent = True
            ExplicitLeft = 110
            ExplicitTop = 1
            ExplicitWidth = 83
          end
          object Label11: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 54
            Width = 134
            Height = 15
            Align = alTop
            ExplicitLeft = 6
            ExplicitWidth = 164
          end
          inline FrameData2: TFrameData
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 134
            Height = 24
            Align = alTop
            TabOrder = 0
            ExplicitLeft = 65
            ExplicitTop = 19
            ExplicitWidth = 128
            ExplicitHeight = 24
            inherited ComboBox1: TComboBox
              Width = 134
              Height = 23
              ItemHeight = 15
              ExplicitWidth = 128
              ExplicitHeight = 23
            end
            inherited CCalendarDiff1: TCCalendarDiff
              Date = 43759.880198287040000000
              DisplayInterval = Label11
              OnChange = actQueryProcessExecute
            end
          end
        end
        object Panel9: TPanel
          Left = 540
          Top = 0
          Width = 140
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 6
          object Label1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 53
            Width = 134
            Height = 15
            Align = alTop
            Caption = '01/10/2019 a 31/10/2019'
            ExplicitLeft = 12
            ExplicitTop = 48
            ExplicitWidth = 128
          end
          object Label3: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 134
            Height = 15
            Align = alTop
            Caption = 'Emiss'#227'o'
            Transparent = True
            ExplicitLeft = 97
            ExplicitTop = 1
            ExplicitWidth = 43
          end
          inline FrameData1: TFrameData
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 134
            Height = 23
            Align = alTop
            TabOrder = 0
            ExplicitLeft = 12
            ExplicitTop = 19
            ExplicitWidth = 128
            ExplicitHeight = 23
            inherited ComboBox1: TComboBox
              Width = 134
              Height = 23
              ItemHeight = 15
              ItemIndex = 1
              Text = 'Mensalmente'
              OnChange = FrameData1ComboBox1Change
              ExplicitWidth = 128
              ExplicitHeight = 23
            end
            inherited CCalendarDiff1: TCCalendarDiff
              Interval = diMonthly
              Date = 43759.880198287040000000
              DisplayInterval = Label1
              OnChange = actQueryProcessExecute
              Left = 96
            end
          end
        end
        object Panel10: TPanel
          Left = 920
          Top = 0
          Width = 80
          Height = 75
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 9
          object Label8: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 74
            Height = 15
            Align = alTop
            Caption = 'S'#233'rie Equip.'
            ExplicitLeft = 19
            ExplicitTop = 1
            ExplicitWidth = 61
          end
          object edEquipSerie: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 74
            Height = 23
            Align = alTop
            TabOrder = 0
            OnChange = edLaudoChange
            ExplicitLeft = -2
            ExplicitTop = 19
            ExplicitWidth = 82
          end
        end
        object Panel11: TPanel
          Left = 840
          Top = 0
          Width = 80
          Height = 75
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 8
          ExplicitLeft = 920
          object Label9: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 74
            Height = 15
            Align = alTop
            Caption = 'Tag Equip.'
            ExplicitLeft = 26
            ExplicitTop = 1
            ExplicitWidth = 54
          end
          object edEquipTag: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 74
            Height = 23
            Align = alTop
            TabOrder = 0
            OnChange = edLaudoChange
            ExplicitLeft = -2
            ExplicitTop = 19
            ExplicitWidth = 82
          end
        end
        object Panel12: TPanel
          Left = 680
          Top = 0
          Width = 160
          Height = 75
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 7
          ExplicitLeft = 776
          ExplicitTop = 48
          ExplicitWidth = 185
          ExplicitHeight = 41
          object Label18: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 154
            Height = 15
            Align = alTop
            Caption = 'Cliente'
            Transparent = True
            ExplicitLeft = 123
            ExplicitTop = -2
            ExplicitWidth = 37
          end
          object cbCli: TComboBox
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 154
            Height = 23
            Align = alTop
            DropDownCount = 30
            ItemHeight = 15
            TabOrder = 0
            OnChange = actQueryProcessExecute
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
            ExplicitLeft = -33
            ExplicitTop = 19
            ExplicitWidth = 193
          end
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1068
        ExplicitHeight = 75
      end
    end
  end
  inherited Panel2: TPanel
    Width = 1122
    Height = 295
    ExplicitTop = 129
    ExplicitWidth = 1086
    ExplicitHeight = 183
    inherited PageControl1: TPageControl
      Width = 1116
      Height = 289
      ExplicitWidth = 1080
      ExplicitHeight = 177
      inherited TabSheet1: TTabSheet
        Caption = 'Laudos'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 1072
        ExplicitHeight = 147
        inherited DBGrid1: TDBGrid
          Width = 1108
          Height = 259
        end
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Width = 1116
    ExplicitWidth = 1080
    inherited ToolBar1: TToolBar
      Width = 1067
      ExplicitWidth = 1067
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
    Left = 290
    Top = 120
    inherited actNew: TAction
      Enabled = False
      Visible = False
    end
    inherited actEdit: TAction
      Enabled = False
      Visible = False
    end
    inherited actDel: TAction
      Enabled = False
      ShortCut = 16430
      Visible = False
    end
    object actExportToPDF: TAction
      Caption = 'Gerar Laudos em PDF...'
      ImageIndex = 357
      OnExecute = actExportToPDFExecute
    end
    object Action1: TAction
      Caption = 'Revis'#227'o do Laudo...'
      OnExecute = Action1Execute
    end
  end
  inherited pmRel: TPopupMenu
    Left = 341
    Top = 120
    object GerarLaudosemPDF1: TMenuItem
      Action = actExportToPDF
    end
  end
  inherited pmOrder: TPopupMenu
    Left = 393
    Top = 120
  end
  inherited alRunTime: TActionList
    Left = 444
    Top = 120
  end
  inherited DataSource1: TDataSource
    Left = 238
    Top = 120
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SortedFields = 'recno'
    BeforeOpen = IBrwSrcBeforeOpen
    SQL.Strings = (
      'select'
      
        '  r.recno, r.pedido, r.amostra, r.os, a.comodato, r.relato_recno' +
        ', re.titulo, cri.descri crit, r.pcoleta,'
      
        '  h.ocorrencia entrada, r.emissao, a.local, a.labsubest_recno, a' +
        '.codigo, c.empresa, c.nome_chave, c.cnpj, c.cpf,'
      '  c.telefone, c.cidade, c.estado, c.email, e.serie, a.tag'
      '  from labamostras_rel r'
      '       join labrel re'
      '         on re.recno = r.relato_recno'
      '       join labamostras a'
      '         on a.recno = r.amostra        '
      '        and a.codigo = :cliente '
      '       left join labamostras_hist h'
      '         on h.amostra = r.amostra'
      '        and h.estado = 40       '
      '       join tbclientes c'
      '         on c.codigo = a.codigo       '
      '       left join vequip e'
      '         on e.recno = a.equip_recno              '
      '       left join vlaudocrit cri'
      '         on cri.relato_recno = r.relato_recno'
      '        and cri.recno = r.labcrit_recno'
      ' where r.status = 3'
      '   and r.assinatura is not null'
      '   and r.revisao is null')
    Params = <
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end>
    IndexFieldNames = 'recno Asc'
    Left = 187
    Top = 120
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end>
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Laudo'
      FieldName = 'recno'
      Required = True
    end
    object IBrwSrctitulo: TStringField
      DisplayLabel = 'T'#237'tulo'
      DisplayWidth = 30
      FieldName = 'titulo'
      Required = True
      Size = 60
    end
    object IBrwSrcpedido: TIntegerField
      DisplayLabel = 'Pedido'
      FieldName = 'pedido'
    end
    object IBrwSrcamostra: TIntegerField
      DisplayLabel = 'Amostra'
      FieldName = 'amostra'
      Required = True
    end
    object IBrwSrccomodato: TIntegerField
      DisplayLabel = 'Etiqueta'
      FieldName = 'comodato'
    end
    object IBrwSrcos: TIntegerField
      DisplayLabel = 'OS'
      FieldName = 'os'
    end
    object IBrwSrccrit: TStringField
      FieldName = 'crit'
      Visible = False
      Size = 60
    end
    object IBrwSrcentrada: TDateTimeField
      DisplayLabel = 'Entrada'
      FieldName = 'entrada'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object IBrwSrcemissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'emissao'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object IBrwSrcpcoleta: TDateField
      DisplayLabel = 'Pr'#243'xima Coleta'
      FieldName = 'pcoleta'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object IBrwSrccodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
    end
    object IBrwSrcempresa: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 30
      FieldName = 'empresa'
      Size = 100
    end
    object IBrwSrcnome_chave: TStringField
      DisplayLabel = 'Nome Curto'
      DisplayWidth = 20
      FieldName = 'nome_chave'
      Size = 45
    end
    object IBrwSrccnpj: TStringField
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object IBrwSrccpf: TStringField
      FieldName = 'cpf'
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object IBrwSrctelefone: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 20
      FieldName = 'telefone'
      Visible = False
      Size = 100
    end
    object IBrwSrccidade: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 30
      FieldName = 'cidade'
      Visible = False
      Size = 100
    end
    object IBrwSrcestado: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'estado'
      Visible = False
      Size = 2
    end
    object IBrwSrcemail: TStringField
      DisplayLabel = 'E-mail'
      DisplayWidth = 25
      FieldName = 'email'
      Visible = False
      Size = 100
    end
    object IBrwSrclocal: TStringField
      DisplayLabel = 'Local'
      FieldName = 'local'
      Size = 50
    end
    object IBrwSrclabsubest_recno: TIntegerField
      DisplayLabel = 'Subesta'#231#227'o'
      FieldName = 'labsubest_recno'
    end
    object IBrwSrcserie: TStringField
      DisplayLabel = 'N'#186' de S'#233'rie'
      FieldName = 'serie'
      Size = 30
    end
    object IBrwSrctag: TStringField
      DisplayLabel = 'Tag'
      DisplayWidth = 25
      FieldName = 'tag'
      Size = 50
    end
    object IBrwSrcrelato_recno: TIntegerField
      FieldName = 'relato_recno'
    end
  end
  inherited pmOpcao: TPopupMenu
    Left = 496
    Top = 120
    object RevisodoLaudo1: TMenuItem
      Action = Action1
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    Left = 136
    Top = 120
  end
end
