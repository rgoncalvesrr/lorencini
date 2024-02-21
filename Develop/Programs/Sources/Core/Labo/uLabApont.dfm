inherited LabApont: TLabApont
  Caption = 'Apontamento de Resultado'
  ClientHeight = 671
  ClientWidth = 1133
  Constraints.MinWidth = 851
  ExplicitWidth = 1149
  ExplicitHeight = 710
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 644
    Width = 1127
    ExplicitTop = 644
    ExplicitWidth = 1127
  end
  inherited Panel1: TPanel
    Width = 1133
    ExplicitWidth = 1133
    inherited pctlFind: TPageControl
      Width = 1123
      ExplicitWidth = 1123
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1115
        ExplicitHeight = 75
        inherited BitBtn2: TBitBtn
          Left = 1014
          Anchors = [akTop, akRight]
          TabOrder = 6
          ExplicitLeft = 1014
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 90
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object Label3: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 84
            Height = 15
            Align = alTop
            Caption = 'Laudo'
            ExplicitWidth = 33
          end
          object edLaudo: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 84
            Height = 23
            Align = alTop
            DecimalPlaces = 0
            DisplayFormat = '#'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
            OnChange = edPedidoChange
          end
        end
        object Panel4: TPanel
          Left = 90
          Top = 0
          Width = 90
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Label4: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 84
            Height = 15
            Align = alTop
            Caption = 'Pedido'
            ExplicitWidth = 37
          end
          object edPedido: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 84
            Height = 23
            Align = alTop
            DecimalPlaces = 0
            DisplayFormat = '#'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
            OnChange = edPedidoChange
          end
        end
        object Panel5: TPanel
          Left = 180
          Top = 0
          Width = 90
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 2
          object Label5: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 84
            Height = 15
            Align = alTop
            Caption = 'Amostra'
            ExplicitWidth = 45
          end
          object edAmostra: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 84
            Height = 23
            Align = alTop
            DecimalPlaces = 0
            DisplayFormat = '#'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
            OnChange = edPedidoChange
          end
        end
        object Panel7: TPanel
          Left = 450
          Top = 0
          Width = 199
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 5
          object Label1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 193
            Height = 15
            Align = alTop
            Caption = 'Tipo de Laudo'
            ExplicitWidth = 75
          end
          object cbTpLaudo: TComboBox
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 193
            Height = 23
            Align = alTop
            Style = csDropDownList
            ItemHeight = 15
            TabOrder = 0
            OnChange = cbTpLaudoChange
          end
        end
        object Panel8: TPanel
          Left = 270
          Top = 0
          Width = 90
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 3
          object Label7: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 84
            Height = 15
            Align = alTop
            Caption = 'Etiqueta'
            ExplicitWidth = 43
          end
          object edEtiqueta: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 84
            Height = 23
            Align = alTop
            DecimalPlaces = 0
            DisplayFormat = '#'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
            OnChange = edPedidoChange
          end
        end
        object Panel6: TPanel
          Left = 360
          Top = 0
          Width = 90
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 4
          object Label6: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 84
            Height = 15
            Align = alTop
            Caption = 'OS'
            ExplicitWidth = 15
          end
          object edOS: TJvCalcEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 84
            Height = 23
            Align = alTop
            DecimalPlaces = 0
            DisplayFormat = '#'
            FormatOnEditing = True
            ShowButton = False
            TabOrder = 0
            DecimalPlacesAlwaysShown = False
            OnChange = edPedidoChange
          end
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1115
        ExplicitHeight = 75
      end
    end
  end
  inherited Panel2: TPanel
    Width = 1133
    Height = 512
    ExplicitWidth = 1133
    ExplicitHeight = 512
    inherited PageControl1: TPageControl
      Width = 1127
      Height = 506
      ExplicitWidth = 1127
      ExplicitHeight = 506
      inherited TabSheet1: TTabSheet
        Caption = 'Amostras'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 1119
        ExplicitHeight = 476
        inherited DBGrid1: TDBGrid
          Width = 1113
          Height = 470
        end
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Width = 1127
    ExplicitWidth = 1127
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
    Left = 312
    inherited actNew: TAction
      Enabled = False
      Visible = False
    end
    inherited actDel: TAction
      Enabled = False
      Visible = False
    end
  end
  inherited pmRel: TPopupMenu
    Left = 360
  end
  inherited alRunTime: TActionList
    Left = 466
  end
  inherited DataSource1: TDataSource
    Left = 248
    Top = 136
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    AfterScroll = IBrwSrcAfterScroll
    AfterPost = IBrwSrcAfterPost
    SQL.Strings = (
      'select'
      
        '  r.status,       r.amostra,  r.relato_recno, re.descri as laudo' +
        '_de,'
      '  a.codigo,       a.umidade,  a.equip_recno,  a.comodato,'
      '  h.ocorrencia entrada,  a.coleta,   a.tpamostra_recno,'
      '  a.amostrador,   a.tamb,     a.toleo,    a.labsubest_recno,'
      '  a.tensao,       a.estado,   a.origem,'
      '  a.tag,          a.local,'
      '  a.destinatario, r.recno,'
      '  e.fabricante,   e.serie,    e.tipo,     e.descri,'
      '  e.potencia,     e.imped,    e.tensao,   e.fases,'
      '  e.ano,          e.lote,     e.isolante, e.volume,'
      '  e.drenos,       e.familia,  tp.descri,  tp.inf_te,'
      '  s.sigla,        s.nome,     s.regional, s.reg_nome,'
      '  r.pedido,       e.tensao_un, e.potencia_un,'
      '  r.os'
      'from'
      '  labamostras_rel r'
      'join'
      '  labrel re on'
      '  re.recno = r.relato_recno'
      'join'
      '  labamostras a on'
      '  a.recno = r.amostra'
      'join'
      '  labamostras_hist h on'
      '  h.amostra = r.amostra and'
      '  h.estado = 40'
      'left join'
      '  vequip e on'
      '  e.recno = a.equip_recno'
      'left join'
      '  vsubest s on'
      '  s.codigo = a.codigo and'
      '  s.recno = a.labsubest_recno'
      'join'
      '  labtipo tp on'
      '  tp.recno = a.tpamostra_recno'
      'where'
      '  r.status = 1 and'
      '  r.revisao is null')
    Left = 184
    Top = 136
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Laudo'
      FieldName = 'recno'
    end
    object IBrwSrcpedido: TIntegerField
      DisplayLabel = 'Pedido'
      FieldName = 'pedido'
    end
    object IBrwSrcamostra: TIntegerField
      DisplayLabel = 'Amostra'
      FieldName = 'amostra'
    end
    object IBrwSrccomodato: TIntegerField
      DisplayLabel = 'Etiqueta'
      FieldName = 'comodato'
    end
    object IBrwSrcos: TIntegerField
      DisplayLabel = 'OS'
      FieldName = 'os'
    end
    object IBrwSrcentrada: TDateTimeField
      DisplayLabel = 'Entrada'
      FieldName = 'entrada'
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object IBrwSrcumidade: TIntegerField
      FieldName = 'umidade'
      Visible = False
    end
    object IBrwSrcequip_recno: TIntegerField
      FieldName = 'equip_recno'
      Visible = False
    end
    object IBrwSrccoleta: TDateField
      FieldName = 'coleta'
      Visible = False
    end
    object IBrwSrcrelato_recno: TIntegerField
      DisplayLabel = 'Laudo'
      DisplayWidth = 7
      FieldName = 'relato_recno'
      Required = True
    end
    object IBrwSrclaudo_de: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'laudo_de'
      Required = True
      Size = 30
    end
    object IBrwSrctpamostra_recno: TIntegerField
      FieldName = 'tpamostra_recno'
      Visible = False
    end
    object IBrwSrccoletor: TStringField
      DisplayLabel = 'Amostrador'
      FieldName = 'amostrador'
      Visible = False
      Size = 60
    end
    object IBrwSrctamb: TIntegerField
      FieldName = 'tamb'
      Visible = False
    end
    object IBrwSrctoleo: TIntegerField
      FieldName = 'toleo'
      Visible = False
    end
    object IBrwSrclabsubest_recno: TIntegerField
      FieldName = 'labsubest_recno'
      Visible = False
    end
    object IBrwSrctensao: TFloatField
      FieldName = 'tensao'
      Visible = False
    end
    object IBrwSrcestado: TIntegerField
      FieldName = 'estado'
      Required = True
      Visible = False
    end
    object IBrwSrcorigem: TIntegerField
      FieldName = 'origem'
      Required = True
      Visible = False
    end
    object IBrwSrctag: TStringField
      FieldName = 'tag'
      Visible = False
      Size = 50
    end
    object IBrwSrclocal: TStringField
      FieldName = 'local'
      Visible = False
      Size = 50
    end
    object IBrwSrcfabricante: TStringField
      FieldName = 'fabricante'
      Visible = False
      Size = 255
    end
    object IBrwSrcserie: TStringField
      FieldName = 'serie'
      Visible = False
      Size = 30
    end
    object IBrwSrctipo: TStringField
      FieldName = 'tipo'
      Visible = False
      Size = 255
    end
    object IBrwSrcdescri: TStringField
      FieldName = 'descri'
      Visible = False
      Size = 60
    end
    object IBrwSrcpotencia: TFloatField
      FieldName = 'potencia'
      Visible = False
    end
    object IBrwSrcimped: TFloatField
      FieldName = 'imped'
      Visible = False
    end
    object IBrwSrctensao_1: TFloatField
      FieldName = 'tensao_1'
      Visible = False
    end
    object IBrwSrcfases: TIntegerField
      FieldName = 'fases'
      Visible = False
    end
    object IBrwSrcano: TIntegerField
      FieldName = 'ano'
      Visible = False
    end
    object IBrwSrclote: TStringField
      FieldName = 'lote'
      Visible = False
      Size = 15
    end
    object IBrwSrcisolante: TStringField
      FieldName = 'isolante'
      Visible = False
      Size = 255
    end
    object IBrwSrcvolume: TIntegerField
      FieldName = 'volume'
      Visible = False
    end
    object IBrwSrcdrenos: TStringField
      FieldName = 'drenos'
      Visible = False
      Size = 5
    end
    object IBrwSrcfamilia: TStringField
      FieldName = 'familia'
      Visible = False
      Size = 255
    end
    object IBrwSrcdescri_1: TStringField
      FieldName = 'descri_1'
      Required = True
      Visible = False
      Size = 60
    end
    object IBrwSrcinf_te: TBooleanField
      FieldName = 'inf_te'
      Required = True
      Visible = False
    end
    object IBrwSrcsigla: TStringField
      FieldName = 'sigla'
      Visible = False
      Size = 3
    end
    object IBrwSrcnome: TStringField
      FieldName = 'nome'
      Visible = False
      Size = 60
    end
    object IBrwSrcregional: TIntegerField
      FieldName = 'regional'
      Visible = False
    end
    object IBrwSrcreg_nome: TStringField
      FieldName = 'reg_nome'
      Visible = False
      Size = 60
    end
    object IBrwSrcstatus: TIntegerField
      FieldName = 'status'
      Required = True
      Visible = False
      OnGetText = IBrwSrcstatusGetText
      OnSetText = IBrwSrcstatusSetText
    end
    object IBrwSrcdestinatario: TStringField
      FieldName = 'destinatario'
      Visible = False
      Size = 100
    end
    object IBrwSrctensao_un: TStringField
      FieldName = 'tensao_un'
      Visible = False
      Size = 3
    end
    object IBrwSrcpotencia_un: TStringField
      FieldName = 'potencia_un'
      Visible = False
      Size = 3
    end
  end
  inherited pmOpcao: TPopupMenu
    Left = 528
  end
  inherited zIBrwSrc: TZUpdateSQL
    ModifySQL.Strings = (
      'UPDATE labamostras_rel SET'
      '  status = :status'
      'WHERE'
      '  labamostras_rel.recno = :OLD_recno')
    Left = 136
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'status'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_recno'
        ParamType = ptUnknown
      end>
  end
end
