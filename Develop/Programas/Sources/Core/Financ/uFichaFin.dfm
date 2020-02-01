inherited FichaFin: TFichaFin
  Caption = 'Ficha Financeira'
  ClientHeight = 547
  ClientWidth = 905
  ExplicitWidth = 921
  ExplicitHeight = 586
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 520
    Width = 899
    ExplicitTop = 452
    ExplicitWidth = 823
  end
  inherited Panel1: TPanel
    Width = 905
    ExplicitWidth = 829
    inherited pctlFind: TPageControl
      Width = 895
      ExplicitWidth = 819
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 811
        ExplicitHeight = 65
        object Label3: TLabel [0]
          Left = 5
          Top = 3
          Width = 24
          Height = 15
          Caption = 'Data'
        end
        object Label18: TLabel [1]
          Left = 166
          Top = 2
          Width = 90
          Height = 15
          Caption = 'Vizualizar cliente:'
          Transparent = True
        end
        object Label4: TLabel [2]
          Left = 5
          Top = 48
          Width = 128
          Height = 15
          Caption = '01/01/2019 a 28/02/2019'
        end
        inline FrameData1: TFrameData
          Left = 5
          Top = 23
          Width = 156
          Height = 23
          TabOrder = 1
          ExplicitLeft = 5
          ExplicitTop = 23
          ExplicitWidth = 156
          ExplicitHeight = 23
          inherited ComboBox1: TComboBox
            Width = 156
            Height = 23
            ItemHeight = 15
            ItemIndex = 6
            Text = 'Trimestralmente at'#233' hoje'
            ExplicitWidth = 156
            ExplicitHeight = 23
          end
          inherited CCalendarDiff1: TCCalendarDiff
            Interval = diQuarterlyToDate
            Date = 43524.835609409730000000
            DisplayInterval = Label4
            OnChange = FrameData1CCalendarDiff1Change
          end
        end
        object ComboBox1: TComboBox
          Left = 167
          Top = 23
          Width = 264
          Height = 23
          Style = csDropDownList
          DropDownCount = 30
          ItemHeight = 15
          TabOrder = 2
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
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 811
        ExplicitHeight = 65
      end
    end
  end
  inherited Panel2: TPanel
    Width = 905
    Height = 398
    ExplicitWidth = 829
    ExplicitHeight = 330
    inherited PageControl1: TPageControl
      Width = 899
      Height = 392
      ExplicitWidth = 823
      ExplicitHeight = 324
      inherited TabSheet1: TTabSheet
        Caption = 'Extrato Financeiro'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 815
        ExplicitHeight = 294
        inherited DBGrid1: TDBGrid
          Top = 110
          Width = 891
          Height = 168
          OnDrawColumnCell = DBGrid1DrawColumnCell
        end
        object Panel3: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 33
          Width = 885
          Height = 30
          Margins.Top = 0
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          ExplicitWidth = 809
          object lbSaldoAntValor: TLabel
            AlignWithMargins = True
            Left = 530
            Top = 3
            Width = 37
            Height = 24
            Margins.Right = 15
            Align = alRight
            Caption = 'R$ 0,00'
            Layout = tlCenter
            ExplicitLeft = 454
            ExplicitHeight = 15
          end
          object lbSaldoAnt: TLabel
            AlignWithMargins = True
            Left = 446
            Top = 3
            Width = 78
            Height = 24
            Align = alRight
            Caption = 'Saldo Anterior:'
            Layout = tlCenter
            ExplicitLeft = 370
            ExplicitHeight = 15
          end
          object lbSaldo: TLabel
            AlignWithMargins = True
            Left = 585
            Top = 3
            Width = 113
            Height = 24
            Align = alRight
            Caption = 'Saldo em 29/07/2016:'
            Layout = tlCenter
            ExplicitLeft = 509
            ExplicitHeight = 15
          end
          object lbSaldoValor: TLabel
            AlignWithMargins = True
            Left = 704
            Top = 3
            Width = 37
            Height = 24
            Margins.Right = 15
            Align = alRight
            Caption = 'R$ 0,00'
            Layout = tlCenter
            ExplicitLeft = 628
            ExplicitHeight = 15
          end
          object lbSaldoFut: TLabel
            AlignWithMargins = True
            Left = 759
            Top = 3
            Width = 68
            Height = 24
            Align = alRight
            Caption = 'Saldo futuro:'
            Layout = tlCenter
            ExplicitLeft = 683
            ExplicitHeight = 15
          end
          object lbSaldoFutValor: TLabel
            AlignWithMargins = True
            Left = 833
            Top = 3
            Width = 37
            Height = 24
            Margins.Right = 15
            Align = alRight
            Caption = 'R$ 0,00'
            Layout = tlCenter
            ExplicitLeft = 757
            ExplicitHeight = 15
          end
          object lbSaldoCobrar: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 80
            Height = 24
            Align = alLeft
            Caption = 'Saldo a Cobrar:'
            Layout = tlCenter
            ExplicitHeight = 15
          end
          object lbSaldoCobrarValor: TLabel
            AlignWithMargins = True
            Left = 89
            Top = 3
            Width = 37
            Height = 24
            Margins.Right = 15
            Align = alLeft
            Caption = 'R$ 0,00'
            Layout = tlCenter
            ExplicitHeight = 15
          end
        end
        object Panel4: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 885
          Height = 30
          Margins.Bottom = 0
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 2
          ExplicitWidth = 809
          object lbCliente: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 40
            Height = 24
            Align = alLeft
            Caption = 'Cliente:'
            Layout = tlCenter
            ExplicitHeight = 15
          end
          object lbCliCodigo: TLabel
            AlignWithMargins = True
            Left = 49
            Top = 3
            Width = 3
            Height = 24
            Align = alLeft
            Layout = tlCenter
            ExplicitHeight = 15
          end
          object lbCliEmpresa: TLabel
            AlignWithMargins = True
            Left = 58
            Top = 3
            Width = 3
            Height = 24
            Align = alLeft
            Layout = tlCenter
            ExplicitHeight = 15
          end
          object lbCliInsc: TLabel
            AlignWithMargins = True
            Left = 67
            Top = 3
            Width = 3
            Height = 24
            Align = alLeft
            Layout = tlCenter
            ExplicitHeight = 15
          end
        end
        object GroupBox1: TGroupBox
          Left = 0
          Top = 278
          Width = 891
          Height = 84
          Align = alBottom
          Caption = ' Hist'#243'rico '
          TabOrder = 3
          ExplicitTop = 210
          ExplicitWidth = 815
          object DBMemo1: TDBMemo
            AlignWithMargins = True
            Left = 5
            Top = 20
            Width = 881
            Height = 59
            Align = alClient
            DataField = 'historico'
            DataSource = DataSource1
            TabOrder = 0
            ExplicitWidth = 805
          end
        end
        object ControlBar1: TControlBar
          AlignWithMargins = True
          Left = 3
          Top = 69
          Width = 885
          Height = 38
          Align = alTop
          AutoSize = True
          BevelEdges = []
          BevelKind = bkNone
          DrawingStyle = dsGradient
          TabOrder = 4
          ExplicitWidth = 809
          object ToolBar2: TToolBar
            Left = 11
            Top = 2
            Width = 796
            Height = 34
            AutoSize = True
            BorderWidth = 1
            ButtonHeight = 30
            ButtonWidth = 147
            Caption = 'ToolBar2'
            DisabledImages = Resources.medium_d
            DrawingStyle = dsGradient
            EdgeInner = esNone
            EdgeOuter = esNone
            HotImages = Resources.medium_h
            Images = Resources.medium_n
            List = True
            AllowTextButtons = True
            TabOrder = 0
            object ToolButton17: TToolButton
              Left = 0
              Top = 0
              Action = actEstorno
              Style = tbsTextButton
            end
          end
        end
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Width = 899
    ExplicitWidth = 823
    inherited ToolBar1: TToolBar
      Width = 810
      ExplicitWidth = 810
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
    object actEstorno: TAction
      Caption = 'Estornar Lan'#231'amento'
      Enabled = False
      ImageIndex = 318
      OnExecute = actEstornoExecute
    end
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SortedFields = 'data;recno;valor'
    AfterScroll = IBrwSrcAfterScroll
    OnCalcFields = IBrwSrcCalcFields
    AfterInsert = IBrwSrcAfterInsert
    AfterPost = IBrwSrcAfterPost
    SQL.Strings = (
      
        'select  codigo, data, historico, cast(docto as varchar(20)) doct' +
        'o, valor, sum(valor) over (order by data, recno, valor) saldo, r' +
        'ecno,'
      
        '        _tabela = sys_origem('#39'fin_caixa'#39') editavel, pedido, os, ' +
        'titulo, recno_pai, tipo'
      '  from ('
      
        'select cast(:codigo as integer) as codigo, data, historico, doct' +
        'o, valor, recno,'
      '       _tabela, pedido, os, titulo, recno_pai, tipo'
      '  from fin_caixa'
      ' where codigo = :codigo'
      '   and data between :de and :ate'
      'union all'
      
        'select cast(:codigo as integer) as codigo, :datasaldo, '#39'Saldo An' +
        'terior'#39', null,'
      '       sum(valor) valor, 0, null, null, null, null, null, 0'
      '  from fin_caixa'
      ' where codigo = :codigo'
      '   and data < :de) a'
      ' order by data, recno, valor')
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
        Value = '293'
      end
      item
        DataType = ftDate
        Name = 'de'
        ParamType = ptUnknown
        Value = '01/01/2008'
      end
      item
        DataType = ftDate
        Name = 'ate'
        ParamType = ptUnknown
        Value = '31/12/2016'
      end
      item
        DataType = ftUnknown
        Name = 'datasaldo'
        ParamType = ptUnknown
      end>
    IndexFieldNames = 'data Asc;recno Asc;valor Asc'
    ParamData = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
        Value = '293'
      end
      item
        DataType = ftDate
        Name = 'de'
        ParamType = ptUnknown
        Value = '01/01/2008'
      end
      item
        DataType = ftDate
        Name = 'ate'
        ParamType = ptUnknown
        Value = '31/12/2016'
      end
      item
        DataType = ftUnknown
        Name = 'datasaldo'
        ParamType = ptUnknown
      end>
    object IBrwSrcdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'data'
      Required = True
    end
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Lan'#231'amento'
      FieldName = 'recno'
      ReadOnly = True
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldKind = fkCalculated
      FieldName = 'descri'
      Size = 150
      Calculated = True
    end
    object IBrwSrchistorico: TMemoField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'historico'
      Required = True
      Visible = False
      BlobType = ftMemo
    end
    object IBrwSrcdocto: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'docto'
    end
    object IBrwSrcventrada: TFloatField
      DisplayLabel = 'Entrada'
      FieldKind = fkCalculated
      FieldName = 'ventrada'
      DisplayFormat = ',0.#0'
      Calculated = True
    end
    object IBrwSrcvsaida: TFloatField
      DisplayLabel = 'Sa'#237'da'
      FieldKind = fkCalculated
      FieldName = 'vsaida'
      DisplayFormat = ',0.#0'
      Calculated = True
    end
    object IBrwSrcvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Required = True
      Visible = False
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcsaldo: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'saldo'
      ReadOnly = True
      DisplayFormat = ',0.#0'
    end
    object IBrwSrceditavel: TBooleanField
      FieldName = 'editavel'
      ReadOnly = True
      Visible = False
    end
    object IBrwSrccodigo: TIntegerField
      FieldName = 'codigo'
      Required = True
      Visible = False
    end
    object IBrwSrcpedido: TIntegerField
      DisplayLabel = 'Pedido'
      FieldName = 'pedido'
      ReadOnly = True
      Visible = False
    end
    object IBrwSrcos: TIntegerField
      DisplayLabel = 'O.S.'
      FieldName = 'os'
      ReadOnly = True
      Visible = False
    end
    object IBrwSrctitulo: TIntegerField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'titulo'
      ReadOnly = True
    end
    object IBrwSrcrecno_pai: TIntegerField
      FieldName = 'recno_pai'
      ReadOnly = True
    end
    object IBrwSrctipo: TIntegerField
      FieldName = 'tipo'
      ReadOnly = True
      Visible = False
    end
  end
  inherited pmOpcao: TPopupMenu
    object EstornarLanamento1: TMenuItem
      Action = actEstorno
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM fin_caixa'
      'WHERE'
      '  fin_caixa.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO fin_caixa'
      '  (codigo, data, historico, docto, valor)'
      'VALUES'
      '  (:codigo, :data, :historico, :docto, :valor)')
    ModifySQL.Strings = (
      'UPDATE fin_caixa SET'
      '  data = :data,'
      '  historico = :historico,'
      '  docto = :docto,'
      '  valor = :valor,'
      '  codigo = :codigo'
      'WHERE'
      '  fin_caixa.recno = :OLD_recno')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'historico'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'docto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'valor'
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
      end>
  end
  object zSaldos: TZQuery
    Connection = DM.Design
    OnCalcFields = zSaldosCalcFields
    SQL.Strings = (
      
        'select codigo, empresa, nome_chave, cnpj, cpf, telefone,  atual,' +
        ' '
      '       futuro, debitos, creditos, acobrar'
      '  from vclicaixa'
      ' where codigo = :codigo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    Left = 176
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object zSaldoscodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo'
    end
    object zSaldosempresa: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 25
      FieldName = 'empresa'
      Size = 100
    end
    object zSaldosnome_chave: TStringField
      DisplayLabel = 'Nome Curto'
      DisplayWidth = 20
      FieldName = 'nome_chave'
      Size = 45
    end
    object zSaldoscnpj: TStringField
      DisplayLabel = 'C.N.P.J.'
      DisplayWidth = 18
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object zSaldoscpf: TStringField
      DisplayLabel = 'C.P.F.'
      DisplayWidth = 14
      FieldName = 'cpf'
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object zSaldostelefone: TStringField
      DisplayLabel = 'Telefone'
      DisplayWidth = 15
      FieldName = 'telefone'
      Size = 100
    end
    object zSaldosAnterior: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Anterior'
      DisplayFormat = ',0.#0'
      Calculated = True
    end
    object zSaldosatual: TFloatField
      DisplayLabel = 'Saldo Atual'
      FieldName = 'atual'
      DisplayFormat = ',0.#0'
    end
    object zSaldosfuturo: TFloatField
      DisplayLabel = 'Saldo Futuro'
      FieldName = 'futuro'
      DisplayFormat = ',0.#0'
    end
    object zSaldosdebitos: TFloatField
      DisplayLabel = 'D'#233'bitos'
      FieldName = 'debitos'
      DisplayFormat = ',0.#0'
    end
    object zSaldoscreditos: TFloatField
      DisplayLabel = 'Cr'#233'ditos'
      FieldName = 'creditos'
      DisplayFormat = ',0.#0'
    end
    object zSaldosacobrar: TFloatField
      DisplayLabel = 'A Cobrar'
      FieldName = 'acobrar'
      DisplayFormat = ',0.#0'
    end
  end
  object dsSaldos: TDataSource
    DataSet = zSaldos
    Left = 208
    Top = 80
  end
end
