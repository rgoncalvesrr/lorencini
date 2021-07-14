inherited LaudoRev: TLaudoRev
  Caption = 'Revis'#227'o de Laudos'
  ClientHeight = 520
  ClientWidth = 1069
  ExplicitWidth = 1085
  ExplicitHeight = 559
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 493
    Width = 1063
    ExplicitTop = 493
    ExplicitWidth = 1063
  end
  inherited Panel1: TPanel
    Width = 1069
    ExplicitWidth = 1069
    inherited pctlFind: TPageControl
      Width = 1059
      ExplicitWidth = 1059
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1051
        ExplicitHeight = 75
        inherited BitBtn2: TBitBtn
          Left = 950
          TabOrder = 8
          ExplicitLeft = 950
        end
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 80
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object Label1: TLabel
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
            OnChange = edPedidoChange
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
          object Label4: TLabel
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
            OnChange = edPedidoChange
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
          object Label3: TLabel
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
            OnChange = edPedidoChange
          end
        end
        object Panel6: TPanel
          Left = 320
          Top = 0
          Width = 80
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 4
          object Label6: TLabel
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
            OnChange = edPedidoChange
          end
        end
        object Panel7: TPanel
          Left = 400
          Top = 0
          Width = 250
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 5
          object Label5: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 244
            Height = 15
            Align = alTop
            Caption = 'Tipo de Laudo'
            ExplicitWidth = 75
          end
          object cbTpLaudo: TComboBox
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 244
            Height = 23
            Align = alTop
            Style = csDropDownList
            ItemHeight = 15
            TabOrder = 0
            OnChange = cbTpLaudoChange
          end
        end
        object Panel9: TPanel
          Left = 240
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
            OnChange = edPedidoChange
          end
        end
        object Panel8: TPanel
          Left = 650
          Top = 0
          Width = 212
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 6
          object Label8: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 206
            Height = 15
            Align = alTop
            Caption = 'Nome Fantasia'
            ExplicitWidth = 79
          end
          object edEmpresa: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 206
            Height = 23
            Align = alTop
            TabOrder = 0
            OnChange = edPedidoChange
          end
        end
        object Panel10: TPanel
          Left = 862
          Top = 0
          Width = 85
          Height = 75
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 7
          object Label9: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 79
            Height = 15
            Align = alTop
            Caption = 'Nome Empresarial'
            ExplicitWidth = 97
          end
          object edRazao: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 79
            Height = 23
            Align = alTop
            TabOrder = 0
            OnChange = edPedidoChange
          end
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1051
        ExplicitHeight = 75
      end
    end
  end
  inherited Panel2: TPanel
    Width = 1069
    Height = 361
    ExplicitWidth = 1069
    ExplicitHeight = 361
    inherited PageControl1: TPageControl
      Width = 1063
      Height = 355
      ExplicitWidth = 1063
      ExplicitHeight = 355
      inherited TabSheet1: TTabSheet
        Caption = 'Laudos em Revis'#227'o'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 1055
        ExplicitHeight = 325
        inherited DBGrid1: TDBGrid
          Width = 1049
          Height = 319
        end
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Width = 1063
    ExplicitWidth = 1063
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
    Left = 248
    Top = 160
  end
  inherited pmRel: TPopupMenu
    Left = 296
    Top = 160
  end
  inherited pmOrder: TPopupMenu
    Left = 354
    Top = 158
  end
  inherited alRunTime: TActionList
    Left = 410
    Top = 158
  end
  inherited DataSource1: TDataSource
    Left = 192
    Top = 160
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SortedFields = 'recno'
    AfterRefresh = IBrwSrcAfterRefresh
    AfterScroll = IBrwSrcAfterScroll
    AfterPost = IBrwSrcAfterPost
    SQL.Strings = (
      
        'select l.recno, l.idcodigo, l.pedido, l.amostra, l.os, l.relato_' +
        'recno, l.codserv, l.cliente, c.empresa, c.nome_chave,'
      
        '       c.cnpj, c.cpf, c.telefone, c.email, c.cidade, c.estado, l' +
        'r.descri, lr.titulo, s.descri servico, l.obs,'
      '       l.criacao, h.ocorrencia entrada, l.status, a.comodato'
      '  from labamostras_rel l'
      '       join pedido p'
      '         on p.recno = l.pedido'
      '        and p.status = 60 '
      '       join labamostras a'
      '         on a.recno = l.amostra'
      '       join tbclientes c'
      '         on c.codigo = a.cliente'
      '       left join labrel lr'
      '         on lr.recno = l.relato_recno'
      '       join servicos s'
      '         on s.codserv = l.codserv'
      '       join labamostras_hist h'
      '         on h.amostra = l.amostra'
      '        and h.estado = 50'
      ' where l.status = 0'
      '   and l.revisao is null')
    IndexFieldNames = 'recno Asc'
    Sequence = sIBrwSrc
    Left = 128
    Top = 160
    object IBrwSrcstatus: TIntegerField
      FieldName = 'status'
      Required = True
      Visible = False
      OnGetText = IBrwSrcstatusGetText
      OnSetText = IBrwSrcstatusSetText
    end
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Laudo'
      FieldName = 'recno'
      Required = True
    end
    object IBrwSrcpedido: TIntegerField
      DisplayLabel = 'Pedido'
      FieldName = 'pedido'
      Required = True
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
    end
    object IBrwSrcentrada: TDateTimeField
      DisplayLabel = 'Entrada'
      FieldName = 'entrada'
      DisplayFormat = 'dd/mm/yyyy hh:nn'
    end
    object IBrwSrcrelato_recno: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'relato_recno'
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Required = True
      Size = 30
    end
    object IBrwSrctitulo: TStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'titulo'
      Required = True
      Visible = False
      Size = 60
    end
    object IBrwSrccodserv: TIntegerField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'codserv'
      Required = True
      Visible = False
    end
    object IBrwSrcservico: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'servico'
      Required = True
      Visible = False
      Size = 80
    end
    object IBrwSrccliente: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'cliente'
    end
    object IBrwSrcnome_chave: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'nome_chave'
      Size = 45
    end
    object IBrwSrcempresa: TStringField
      DisplayLabel = 'Nome Empresarial'
      DisplayWidth = 60
      FieldName = 'empresa'
      Size = 100
    end
    object IBrwSrccnpj: TStringField
      DisplayLabel = 'CNPJ'
      DisplayWidth = 18
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
      FieldName = 'telefone'
      Size = 100
    end
    object IBrwSrcemail: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'email'
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
    object IBrwSrcobs: TMemoField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'obs'
      Visible = False
      BlobType = ftMemo
    end
    object IBrwSrccriacao: TDateTimeField
      FieldName = 'criacao'
    end
    object IBrwSrcidcodigo: TIntegerField
      FieldName = 'idcodigo'
      Visible = False
    end
  end
  inherited pmOpcao: TPopupMenu
    Left = 472
    Top = 160
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labamostras_rel'
      'WHERE'
      '  labamostras_rel.recno = :OLD_recno')
    ModifySQL.Strings = (
      'UPDATE labamostras_rel SET'
      '  relato_recno = :relato_recno,'
      '  obs = :obs,'
      '  status = :status'
      'WHERE'
      '  labamostras_rel.recno = :OLD_recno')
    Left = 72
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'relato_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'obs'
        ParamType = ptUnknown
      end
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
  object sIBrwSrc: TZSequence
    Connection = DM.Design
    SequenceName = 'public.labamostras_rel_recno_seq'
    Left = 16
    Top = 160
  end
  object qTipoLaudo: TZQuery
    Connection = DM.Design
    SortedFields = 'descri'
    SQL.Strings = (
      'select recno, descri, titulo '
      '  from vtplaudo'
      ' where codserv = :servico'
      '   and ativo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'servico'
        ParamType = ptUnknown
      end>
    FetchRow = 50
    IndexFieldNames = 'descri Asc'
    Sequence = sIBrwSrc
    Left = 128
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'servico'
        ParamType = ptUnknown
      end>
    object qTipoLaudorecno: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'recno'
    end
    object qTipoLaudodescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Size = 30
    end
    object qTipoLaudotitulo: TStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'titulo'
      Size = 60
    end
  end
  object dsQTipoLaudo: TDataSource
    AutoEdit = False
    DataSet = qTipoLaudo
    Left = 192
    Top = 208
  end
end
