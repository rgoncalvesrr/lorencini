inherited LabAmostraAss: TLabAmostraAss
  Caption = 'Assinatura de Laudos'
  ClientHeight = 556
  ClientWidth = 1123
  Constraints.MinWidth = 919
  ExplicitWidth = 1139
  ExplicitHeight = 595
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 529
    Width = 1117
    ExplicitTop = 529
    ExplicitWidth = 1117
  end
  inherited Panel1: TPanel
    Width = 1123
    ExplicitWidth = 1123
    inherited pctlFind: TPageControl
      Width = 1113
      ExplicitWidth = 1113
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1105
        ExplicitHeight = 75
        inherited BitBtn2: TBitBtn
          Left = 996
          Width = 106
          ExplicitLeft = 996
          ExplicitWidth = 106
        end
        object Panel3: TPanel
          Left = 0
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
            OnChange = edLaudoChange
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
            OnChange = edLaudoChange
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
          object Label6: TLabel
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
            OnChange = edLaudoChange
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
          object Label8: TLabel
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
          TabOrder = 5
          object Label7: TLabel
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
            OnChange = edLaudoChange
          end
        end
        object Panel8: TPanel
          Left = 400
          Top = 0
          Width = 199
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 6
          object Label1: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 54
            Width = 193
            Height = 15
            Align = alTop
            ExplicitWidth = 3
          end
          object Label3: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 193
            Height = 15
            Align = alTop
            Caption = 'Data de Entrada'
            Transparent = True
            ExplicitWidth = 83
          end
          inline FrameData1: TFrameData
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 193
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
            ExplicitWidth = 193
            ExplicitHeight = 24
            inherited ComboBox1: TComboBox
              Width = 193
              ExplicitWidth = 193
            end
            inherited CCalendarDiff1: TCCalendarDiff
              Date = 44012.535176828710000000
              DisplayInterval = Label1
              OnChange = actQueryProcessExecute
            end
          end
        end
        object Panel9: TPanel
          Left = 599
          Top = 0
          Width = 268
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 7
          object Label18: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 262
            Height = 15
            Align = alTop
            Caption = 'Cliente'
            Transparent = True
            ExplicitWidth = 37
          end
          object cbCli: TComboBox
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 262
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
          end
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1105
        ExplicitHeight = 75
      end
    end
  end
  inherited Panel2: TPanel
    Width = 1123
    Height = 397
    ExplicitWidth = 1123
    ExplicitHeight = 397
    inherited PageControl1: TPageControl
      Width = 1117
      Height = 391
      ExplicitWidth = 1117
      ExplicitHeight = 391
      inherited TabSheet1: TTabSheet
        Caption = 'Laudos Aguardando Assinatura'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 1109
        ExplicitHeight = 361
        inherited DBGrid1: TDBGrid
          Width = 1103
          Height = 355
        end
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Width = 1117
    ExplicitWidth = 1117
    inherited ToolBar1: TToolBar
      Width = 902
      ExplicitWidth = 902
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
    Left = 296
    Top = 152
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
    Left = 336
    Top = 152
  end
  inherited pmOrder: TPopupMenu
    Left = 378
    Top = 153
  end
  inherited alRunTime: TActionList
    Left = 434
    Top = 153
  end
  inherited DataSource1: TDataSource
    Left = 240
    Top = 152
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    AfterScroll = IBrwSrcAfterScroll
    SQL.Strings = (
      
        'select r.amostra, r.relato_recno, re.descri laudo, r.status, r.r' +
        'ecno, a.comodato, r.labcrit_recno, r.idcodigo,'
      
        '       cri.descri crit, r.labdiag_recno, diag.descri diag_descri' +
        ', diag.diag diag_diag, diag.dias diag_dias,'
      
        '       r.labrec_recno, rec.descri rec_descri, rec.recomenda, r.d' +
        'iagnostico, r.recomendacao, r.pcoleta, r.obs, r.revisao,'
      
        '       r.os, h.ocorrencia entrada, a.coleta, a.amostrador, cast(' +
        'initcap(re.descri) as varchar(30)) laudodesc, a.tamb,'
      
        '       a.toleo, a.umidade, a.tensao, a.local, a.labsubest_recno,' +
        ' a.codigo, c.empresa, c.nome_chave, c.cnpj, c.cpf,'
      
        '       c.telefone, a.destinatario, r.pedido, a.tpamostra_recno, ' +
        'tp.descri atipo, a.equip_recno, e.fabricante, e.serie,'
      
        '       e.tipo, e.descri, e.potencia, e.imped, e.tensao, e.fases,' +
        ' e.ano, e.lote, e.isolante, e.volume, e.drenos,'
      
        '       e.familia, a.tag, e.tensao_un, e.potencia_un, se.sigla, s' +
        'e.nome, se.regional, se.reg_nome,'
      '       cast(Initcap(f.nome) as varchar(60)) nome, f.crq'
      '  from labamostras_rel r'
      '       join labrel re'
      '         on re.recno = r.relato_recno'
      '       join labamostras a'
      '         on a.recno = r.amostra        '
      '       join labamostras_hist h'
      '         on h.amostra = r.amostra'
      '        and h.estado = 40'
      '       join tbclientes c'
      '         on c.codigo = a.codigo'
      '       left join vequip e'
      '         on e.recno = a.equip_recno'
      '       join labtipo tp'
      '         on tp.recno = a.tpamostra_recno       '
      '       left join vsubest se'
      '         on se.codigo = a.codigo'
      '        and se.recno = a.labsubest_recno'
      '       left join vlaudocrit cri'
      '         on cri.relato_recno = r.relato_recno'
      '        and cri.recno = r.labcrit_recno'
      '       left join vlaudodiags diag'
      '         on diag.relato_recno = r.relato_recno'
      '        and diag.recno = r.labdiag_recno'
      '       left join vlaudorec rec'
      '         on rec.relato_recno = r.relato_recno'
      '        and rec.labdiag_recno = r.labdiag_recno'
      '        and rec.recno = r.labrec_recno'
      '       left join tbfuncionarios f'
      '         on f.idcodigo = r.idcodigo'
      '        and f.situacao = '#39'Ativo'#39
      ' where r.status = 2'
      '   and r.assinatura is null')
    Sequence = ZSequence1
    SequenceField = 'recno'
    Left = 184
    Top = 152
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Laudo'
      FieldName = 'recno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object IBrwSrccomodato: TIntegerField
      DisplayLabel = 'Etiqueta'
      FieldName = 'comodato'
    end
    object IBrwSrcos: TIntegerField
      DisplayLabel = 'OS'
      FieldName = 'os'
      Visible = False
    end
    object IBrwSrcentrada: TDateTimeField
      DisplayLabel = 'Entrada'
      DisplayWidth = 10
      FieldName = 'entrada'
    end
    object IBrwSrcrelato_recno: TIntegerField
      DisplayLabel = 'Tipo de Laudo'
      FieldName = 'relato_recno'
      Required = True
      Visible = False
    end
    object IBrwSrclaudo: TStringField
      DisplayLabel = 'Laudo'
      DisplayWidth = 20
      FieldName = 'laudo'
      Required = True
      Size = 30
    end
    object IBrwSrcrevisao: TIntegerField
      DisplayLabel = 'Revis'#227'o'
      FieldName = 'revisao'
    end
    object IBrwSrcstatus: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'status'
      Required = True
      Visible = False
    end
    object IBrwSrclabcrit_recno: TIntegerField
      FieldName = 'labcrit_recno'
      Visible = False
    end
    object IBrwSrccrit: TStringField
      DisplayLabel = 'Criticidade'
      DisplayWidth = 15
      FieldName = 'crit'
      Size = 60
    end
    object IBrwSrclabdiag_recno: TIntegerField
      FieldName = 'labdiag_recno'
      Visible = False
      OnChange = IBrwSrclabdiag_recnoChange
    end
    object IBrwSrcdiag_descri: TStringField
      FieldName = 'diag_descri'
      Visible = False
      Size = 60
    end
    object IBrwSrcdiag_diag: TMemoField
      FieldName = 'diag_diag'
      Visible = False
      BlobType = ftMemo
    end
    object IBrwSrcdiag_dias: TIntegerField
      FieldName = 'diag_dias'
      Visible = False
    end
    object IBrwSrcdiagnostico: TMemoField
      FieldName = 'diagnostico'
      Visible = False
      BlobType = ftMemo
    end
    object IBrwSrclabrec_recno: TIntegerField
      FieldName = 'labrec_recno'
      Visible = False
      OnChange = IBrwSrclabrec_recnoChange
    end
    object IBrwSrcrec_descri: TStringField
      FieldName = 'rec_descri'
      Visible = False
      Size = 60
    end
    object IBrwSrcrecomenda: TMemoField
      FieldName = 'recomenda'
      Visible = False
      BlobType = ftMemo
    end
    object IBrwSrcrecomendacao: TMemoField
      FieldName = 'recomendacao'
      Visible = False
      BlobType = ftMemo
    end
    object IBrwSrccoleta: TDateField
      FieldName = 'coleta'
      Visible = False
    end
    object IBrwSrcamostrador: TStringField
      DisplayLabel = 'Amostrador'
      FieldName = 'amostrador'
      Visible = False
      Size = 60
    end
    object IBrwSrclaudodesc: TStringField
      FieldName = 'laudodesc'
      ReadOnly = True
      Visible = False
      Size = 30
    end
    object IBrwSrctamb: TIntegerField
      FieldName = 'tamb'
      Visible = False
      DisplayFormat = '0 '#186'C'
    end
    object IBrwSrctoleo: TIntegerField
      FieldName = 'toleo'
      Visible = False
      DisplayFormat = '0 '#186'C'
    end
    object IBrwSrcumidade: TIntegerField
      FieldName = 'umidade'
      Visible = False
    end
    object IBrwSrctensao: TFloatField
      DisplayLabel = 'Tens'#227'o'
      FieldName = 'tensao'
    end
    object IBrwSrccodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo'
      Required = True
      Visible = False
    end
    object IBrwSrcempresa: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'empresa'
      Visible = False
      Size = 100
    end
    object IBrwSrcnome_chave: TStringField
      DisplayLabel = 'Cliente'
      DisplayWidth = 15
      FieldName = 'nome_chave'
      Size = 45
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
      FieldName = 'cpf'
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object IBrwSrctelefone: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 10
      FieldName = 'telefone'
      Size = 100
    end
    object IBrwSrctpamostra_recno: TIntegerField
      FieldName = 'tpamostra_recno'
      Visible = False
    end
    object IBrwSrcatipo: TStringField
      FieldName = 'atipo'
      Required = True
      Visible = False
      Size = 60
    end
    object IBrwSrcequip_recno: TIntegerField
      FieldName = 'equip_recno'
      Visible = False
    end
    object IBrwSrcfabricante: TStringField
      FieldName = 'fabricante'
      Visible = False
      Size = 255
    end
    object IBrwSrcserie: TStringField
      DisplayLabel = 'S'#233'rie'
      DisplayWidth = 10
      FieldName = 'serie'
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
    object IBrwSrctag: TStringField
      DisplayLabel = 'Tag'
      DisplayWidth = 10
      FieldName = 'tag'
      Size = 50
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
    object IBrwSrclabsubest_recno: TIntegerField
      FieldName = 'labsubest_recno'
      Visible = False
    end
    object IBrwSrclocal: TStringField
      DisplayLabel = 'Local'
      FieldName = 'local'
      Size = 50
    end
    object IBrwSrcpcoleta: TDateField
      DisplayLabel = 'Pr'#243'xima Coleta'
      FieldName = 'pcoleta'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object IBrwSrcobs: TMemoField
      FieldName = 'obs'
      Visible = False
      BlobType = ftMemo
    end
    object IBrwSrcidcodigo: TIntegerField
      FieldName = 'idcodigo'
      Visible = False
    end
    object IBrwSrcnome_1: TStringField
      FieldName = 'nome_1'
      ReadOnly = True
      Visible = False
      Size = 60
    end
    object IBrwSrccrq: TStringField
      FieldName = 'crq'
      Visible = False
      Size = 15
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
    Left = 489
    Top = 153
    object Registro2: TMenuItem
      Action = actReg
      Caption = 'Gerar Revis'#227'o do Laudo...'
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    ModifySQL.Strings = (
      'UPDATE labamostras_rel SET'
      '  diagnostico = :diagnostico,'
      '  recomendacao = :recomendacao,'
      '  obs = :obs,'
      '  recno = :recno,'
      '  status = :status,'
      '  labcrit_recno = :labcrit_recno,'
      '  labdiag_recno = :labdiag_recno,'
      '  labrec_recno = :labrec_recno,'
      '  pcoleta = :pcoleta,'
      '  idcodigo = :idcodigo '
      'WHERE'
      '  labamostras_rel.recno = :OLD_recno')
    Left = 128
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'diagnostico'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recomendacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'obs'
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
        Name = 'labcrit_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'labdiag_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'labrec_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pcoleta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'idcodigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_recno'
        ParamType = ptUnknown
      end>
  end
  object qDiag: TZQuery
    Connection = DM.Design
    AfterScroll = qDiagAfterScroll
    SQL.Strings = (
      'select *'
      '  from vlaudodiags'
      ' where relato_recno = :tipolaudo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tipolaudo'
        ParamType = ptUnknown
      end>
    Left = 184
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tipolaudo'
        ParamType = ptUnknown
      end>
    object qDiagrelato_recno: TIntegerField
      FieldName = 'relato_recno'
    end
    object qDiagdescri: TStringField
      FieldName = 'descri'
      Size = 60
    end
    object qDiagdiag: TMemoField
      FieldName = 'diag'
      BlobType = ftMemo
    end
    object qDiagdias: TIntegerField
      FieldName = 'dias'
    end
    object qDiagrecno: TIntegerField
      FieldName = 'recno'
    end
  end
  object dsDiag: TDataSource
    AutoEdit = False
    DataSet = qDiag
    Left = 240
    Top = 200
  end
  object ZSequence1: TZSequence
    Connection = DM.Design
    SequenceName = 'public.labamostras_rel_recno_seq'
    Left = 72
    Top = 152
  end
  object qCrit: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      'select *'
      ' from vlaudocrit'
      'where relato_recno = :tipolaudo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tipolaudo'
        ParamType = ptUnknown
      end>
    Left = 184
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tipolaudo'
        ParamType = ptUnknown
      end>
    object qCritrelato_recno: TIntegerField
      FieldName = 'relato_recno'
    end
    object qCritdescri: TStringField
      FieldName = 'descri'
      Size = 60
    end
    object qCritrecno: TIntegerField
      FieldName = 'recno'
    end
  end
  object dsCrit: TDataSource
    AutoEdit = False
    DataSet = qCrit
    Left = 240
    Top = 248
  end
  object dsRec: TDataSource
    AutoEdit = False
    DataSet = qRec
    Left = 240
    Top = 296
  end
  object qRec: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      'select *'
      '  from vlaudorec'
      ' where relato_recno = :tipolaudo'
      '   and labdiag_recno = :diag')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tipolaudo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'diag'
        ParamType = ptUnknown
      end>
    Left = 184
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tipolaudo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'diag'
        ParamType = ptUnknown
      end>
    object qRecrelato_recno: TIntegerField
      FieldName = 'relato_recno'
    end
    object qReclabdiag_recno: TIntegerField
      FieldName = 'labdiag_recno'
    end
    object qRecdescri: TStringField
      FieldName = 'descri'
      Size = 60
    end
    object qRecrecomenda: TMemoField
      FieldName = 'recomenda'
      BlobType = ftMemo
    end
    object qRecrecno: TIntegerField
      FieldName = 'recno'
    end
  end
  object qCRQ: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      'select idcodigo, cast(Initcap(nome) as varchar(60)) as nome, crq'
      '  from tbfuncionarios '
      ' where crq is not null'
      '   and situacao = '#39'Ativo'#39
      ' order by 2;')
    Params = <>
    Left = 184
    Top = 344
    object qCRQidcodigo: TIntegerField
      FieldName = 'idcodigo'
      Required = True
    end
    object qCRQnome: TStringField
      FieldName = 'nome'
      ReadOnly = True
      Size = 60
    end
    object qCRQcrq: TStringField
      FieldName = 'crq'
      Size = 15
    end
  end
  object dsCRQ: TDataSource
    AutoEdit = False
    DataSet = qCRQ
    Left = 240
    Top = 344
  end
end
