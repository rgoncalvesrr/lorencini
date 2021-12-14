inherited LabLaudoBloq: TLabLaudoBloq
  Caption = 'Laudos Bloqueados'
  ClientHeight = 500
  ClientWidth = 1288
  ExplicitWidth = 1304
  ExplicitHeight = 539
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 473
    Width = 1282
    ExplicitTop = 473
    ExplicitWidth = 1282
  end
  inherited Panel1: TPanel
    Width = 1288
    ExplicitWidth = 1288
    inherited pctlFind: TPageControl
      Width = 1278
      ExplicitWidth = 1278
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1270
        ExplicitHeight = 75
        inherited BitBtn2: TBitBtn
          Left = 1169
          ExplicitLeft = 1169
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 80
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Label6: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 74
            Height = 15
            Align = alTop
            Caption = 'Laudo'
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
          end
        end
        object Panel4: TPanel
          Left = 80
          Top = 0
          Width = 80
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object Label5: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 74
            Height = 15
            Align = alTop
            Caption = 'Pedido'
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
          end
        end
        object Panel5: TPanel
          Left = 160
          Top = 0
          Width = 80
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 3
          object Label7: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 74
            Height = 15
            Align = alTop
            Caption = 'Amostra'
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
          end
        end
        object Panel6: TPanel
          Left = 240
          Top = 0
          Width = 80
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 4
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
          end
        end
        object Panel7: TPanel
          Left = 320
          Top = 0
          Width = 80
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 5
          object Label4: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 74
            Height = 15
            Align = alTop
            Caption = 'OS'
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
          end
        end
        object Panel8: TPanel
          Left = 400
          Top = 0
          Width = 140
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 6
          object Label10: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 134
            Height = 15
            Align = alTop
            Caption = 'Data de Entrada'
            Transparent = True
            ExplicitWidth = 83
          end
          object Label11: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 54
            Width = 134
            Height = 15
            Align = alTop
            ExplicitWidth = 3
          end
          inline FrameData2: TFrameData
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 134
            Height = 24
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
            ExplicitWidth = 134
            ExplicitHeight = 24
            inherited ComboBox1: TComboBox
              Width = 134
              ExplicitWidth = 134
            end
            inherited CCalendarDiff1: TCCalendarDiff
              Date = 44544.672459085650000000
              DisplayInterval = Label11
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
          TabOrder = 7
          object Label1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 53
            Width = 134
            Height = 15
            Align = alTop
            Caption = '01/12/2021 a 31/12/2021'
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
            ExplicitWidth = 43
          end
          inline FrameData1: TFrameData
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 134
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
            ExplicitWidth = 134
            inherited ComboBox1: TComboBox
              Width = 134
              ItemIndex = 1
              Text = 'Mensalmente'
              ExplicitWidth = 134
            end
            inherited CCalendarDiff1: TCCalendarDiff
              Interval = diMonthly
              Date = 44544.672459085650000000
              DisplayInterval = Label1
              Left = 96
            end
          end
        end
        object Panel12: TPanel
          Left = 680
          Top = 0
          Width = 193
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 8
          object Label13: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 187
            Height = 15
            Align = alTop
            Caption = 'Nome Fantasia'
            ExplicitWidth = 79
          end
          object edEmpresa: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 187
            Height = 23
            Align = alTop
            TabOrder = 0
          end
        end
        object Panel13: TPanel
          Left = 873
          Top = 0
          Width = 133
          Height = 75
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 9
          object Label14: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 127
            Height = 15
            Align = alTop
            Caption = 'Nome Empresarial'
            ExplicitWidth = 97
          end
          object edRazao: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 127
            Height = 23
            Align = alTop
            TabOrder = 0
          end
        end
        object Panel11: TPanel
          Left = 1006
          Top = 0
          Width = 80
          Height = 75
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 10
          object Label9: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 74
            Height = 15
            Align = alTop
            Caption = 'Tag Equip.'
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
          end
        end
        object Panel10: TPanel
          Left = 1086
          Top = 0
          Width = 80
          Height = 75
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 11
          object Label8: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 74
            Height = 15
            Align = alTop
            Caption = 'S'#233'rie Equip.'
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
          end
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1270
        ExplicitHeight = 75
      end
    end
  end
  inherited Panel2: TPanel
    Width = 1288
    Height = 341
    ExplicitWidth = 1288
    ExplicitHeight = 341
    inherited PageControl1: TPageControl
      Width = 1282
      Height = 335
      ExplicitWidth = 1282
      ExplicitHeight = 335
      inherited TabSheet1: TTabSheet
        Caption = 'Laudos'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 1274
        ExplicitHeight = 305
        inherited DBGrid1: TDBGrid
          Width = 1268
          Height = 127
        end
        object GroupBox1: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 136
          Width = 1268
          Height = 166
          Align = alBottom
          Caption = ' Pend'#234'ncias '
          TabOrder = 1
          object DBMemo1: TDBMemo
            AlignWithMargins = True
            Left = 5
            Top = 20
            Width = 1258
            Height = 141
            Align = alClient
            DataField = 'pendencia'
            DataSource = DataSource1
            ReadOnly = True
            ScrollBars = ssBoth
            TabOrder = 0
          end
        end
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Width = 1282
    ExplicitWidth = 1282
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
    BeforeOpen = IBrwSrcBeforeOpen
    SQL.Strings = (
      'select'
      '  r.recno, r.pedido, r.amostra, r.os, a.comodato,'
      
        '  a.recebimento entrada, r.emissao, a.local, a.labsubest_recno, ' +
        'a.codigo, c.empresa, c.nome_chave, c.cnpj, c.cpf,'
      
        '  c.telefone, c.cidade, c.estado, c.email, e.serie, a.tag, r.pen' +
        'dencia'
      '  from labamostras_rel r'
      '       join labamostras a'
      '         on a.recno = r.amostra'
      '       join tbclientes c'
      '         on c.codigo = a.codigo'
      '       left join vequip e'
      '         on e.recno = a.equip_recno'
      ' where r.status = 3'
      '   and r.assinatura is not null')
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Laudo'
      FieldName = 'recno'
      Required = True
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
    object IBrwSrcos: TIntegerField
      DisplayLabel = 'OS'
      FieldName = 'os'
      Required = True
    end
    object IBrwSrccomodato: TIntegerField
      DisplayLabel = 'Etiqueta'
      FieldName = 'comodato'
      Required = True
    end
    object IBrwSrcentrada: TDateTimeField
      DisplayLabel = 'Entrada'
      FieldName = 'entrada'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object IBrwSrcemissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'emissao'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object IBrwSrclocal: TStringField
      DisplayLabel = 'Local'
      FieldName = 'local'
      Size = 50
    end
    object IBrwSrclabsubest_recno: TIntegerField
      FieldName = 'labsubest_recno'
      Visible = False
    end
    object IBrwSrccodigo: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'codigo'
      Required = True
    end
    object IBrwSrcempresa: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 25
      FieldName = 'empresa'
      Size = 100
    end
    object IBrwSrcnome_chave: TStringField
      DisplayLabel = 'Nome Fantasia'
      DisplayWidth = 20
      FieldName = 'nome_chave'
      Size = 45
    end
    object IBrwSrccnpj: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object IBrwSrccpf: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'cpf'
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object IBrwSrctelefone: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 20
      FieldName = 'telefone'
      Size = 100
    end
    object IBrwSrccidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cidade'
      Size = 100
    end
    object IBrwSrcestado: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'estado'
      Size = 2
    end
    object IBrwSrcemail: TStringField
      DisplayLabel = 'E-mail'
      DisplayWidth = 40
      FieldName = 'email'
      Size = 100
    end
    object IBrwSrcserie: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'serie'
      Size = 30
    end
    object IBrwSrctag: TStringField
      DisplayLabel = 'TAG'
      FieldName = 'tag'
      Size = 50
    end
    object IBrwSrcpendencia: TMemoField
      FieldName = 'pendencia'
      Visible = False
      BlobType = ftMemo
    end
  end
end
