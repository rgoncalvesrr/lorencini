inherited FichaFinPos: TFichaFinPos
  Caption = 'Posi'#231#227'o Financeira'
  ClientHeight = 381
  ExplicitHeight = 420
  PixelsPerInch = 96
  TextHeight = 15
  inherited ToolBar1: TToolBar
    inherited ToolButton2: TToolButton
      Visible = False
      ExplicitWidth = 32
    end
    inherited ToolButton5: TToolButton
      ExplicitWidth = 32
    end
    inherited ToolButton9: TToolButton
      ExplicitWidth = 32
    end
    inherited ToolButton6: TToolButton
      Visible = False
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
  inherited StatusBar1: TStatusBar
    Top = 357
    ExplicitTop = 357
  end
  inherited Panel1: TPanel
    inherited pctlFind: TPageControl
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 819
        ExplicitHeight = 65
        object Label1: TLabel [0]
          Left = 7
          Top = 3
          Width = 45
          Height = 15
          Caption = 'Situa'#231#227'o'
        end
        object Label18: TLabel [1]
          Left = 240
          Top = 3
          Width = 90
          Height = 15
          Caption = 'Vizualizar cliente:'
          Transparent = True
        end
        object Label5: TLabel [2]
          Left = 510
          Top = 3
          Width = 90
          Height = 15
          Caption = 'Bloqueio Manual'
        end
        inherited BitBtn2: TBitBtn
          Left = 710
          ExplicitLeft = 710
        end
        object cbStatus: TComboBox
          Left = 7
          Top = 21
          Width = 227
          Height = 23
          Style = csDropDownList
          ItemHeight = 15
          ItemIndex = 1
          TabOrder = 1
          Text = 'Inadimplentes'
          OnChange = cbStatusChange
          Items.Strings = (
            'Todos'
            'Inadimplentes'
            'Adimplentes')
        end
        object ComboBox1: TComboBox
          Left = 240
          Top = 21
          Width = 264
          Height = 23
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
        object ComboBox2: TComboBox
          Left = 510
          Top = 21
          Width = 90
          Height = 23
          Style = csDropDownList
          ItemHeight = 15
          ItemIndex = 0
          TabOrder = 3
          Text = 'Todos'
          OnChange = ComboBox2Change
          Items.Strings = (
            'Todos'
            'SIM'
            'N'#195'O')
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
    Height = 238
    ExplicitHeight = 238
    inherited PageControl1: TPageControl
      Height = 232
      ActivePage = TabSheet2
      Images = Resources.medium_n
      ExplicitHeight = 232
      inherited TabSheet1: TTabSheet
        Caption = 'Todos'
        ImageIndex = -1
        ExplicitLeft = 4
        ExplicitTop = 33
        ExplicitWidth = 823
        ExplicitHeight = 195
        inherited DBGrid1: TDBGrid
          Height = 195
          OnDrawColumnCell = DBGrid1DrawColumnCell
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Inadimplentes'
        ImageIndex = 213
        object Panel3: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 817
          Height = 30
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Label3: TLabel
            AlignWithMargins = True
            Left = 33
            Top = 3
            Width = 180
            Height = 24
            Align = alLeft
            Caption = 'Quantidade de t'#237'tulos em atraso:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitHeight = 15
          end
          object lbQtdTitulos: TLabel
            AlignWithMargins = True
            Left = 219
            Top = 3
            Width = 7
            Height = 24
            Align = alLeft
            Caption = '0'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitHeight = 15
          end
          object Label4: TLabel
            AlignWithMargins = True
            Left = 232
            Top = 3
            Width = 89
            Height = 24
            Align = alLeft
            Caption = 'Valor em atraso:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitHeight = 15
          end
          object lbVlTitulos: TLabel
            AlignWithMargins = True
            Left = 327
            Top = 3
            Width = 24
            Height = 24
            Align = alLeft
            Caption = '0,00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            ExplicitHeight = 15
          end
          object BitBtn3: TBitBtn
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 24
            Height = 24
            Cursor = crHandPoint
            Action = actGraph
            Align = alLeft
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00C3C3C3009B8D8500756E5100247E95001A75
              9A001B6C98002C668F00516685009595A000FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00B8B8B80073513D00B4935D009C9763000CA8BB000A9B
              BB000A90BB000A88BA000A80B0000A62940066698200FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF0079747400A2714600D2B78C00CBB385005BD9E90040DC
              F70034D3F70022C7EF0012AFDC000B93C2000B578700ACACAC00FF00FF00FF00
              FF00FF00FF00FF00FF0076666600CBA07200F0C48E00EFAC6600B4B58A0045E3
              F40039EAFC002DE4FC001FE0FC000FD7F7000D769B0097979700FF00FF00FF00
              FF00FF00FF00FF00FF007C686800DDB27800EEBC7E00E8B17000FBAB51008C98
              86001786D5001782D7001380D6000E7FD6000A37930025255700FF00FF00FF00
              FF00FF00FF00FF00FF009F9E9E00B2865800F9C98C00F5BC7400C08D62002B18
              84000A0AA9000C1BC6000B18C5000B17C4000A15B80012127500FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00A69D9D00B1966E00B68E5600443B61000A15
              B400255FEF002869FC001D59FC00164EFC000D3DF9003E3E74006B3B3B006B3B
              3B006B3B3B006B3B3B006B3B3B006B3B3B006B3B3B00693A3A002C1B1B001519
              2D003781FC002A6BFC001F58F6001C44D50052589400B4B4B4006B3B3B000A0A
              9A005969FB000A0A9A000A6B0A0058E980000A6B0A009A3B0A00B58349005F28
              0A006C71A7007276A6008789A700AEAEB200FF00FF00FF00FF006B3B3B000A0A
              9A006371FB000A0A9A000A6B0A005FEF89000A6B0A009A3B0A00E4A560009A3B
              0A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006B3B3B000A0A
              9A005969FB000A0A9A000A6B0A0058E980000A6B0A009A3B0A00E1A159009A3B
              0A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006B3B3B000A0A
              9A006371FB000A0A9A000A6B0A005FEF89000A6B0A009A3B0A00E4A560009A3B
              0A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006B3B3B000A0A
              9A007077FB000A0A9A000A6B0A000A6B0A000A6B0A009A3B0A00E4AB66009A3B
              0A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006B3B3B000A0A
              9A008786FB000A0A9A00FF00FF00FF00FF00FF00FF009A3B0A00E7AF6E009A3B
              0A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006B3B3B000A0A
              9A000A0A9A000A0A9A00FF00FF00FF00FF00FF00FF009A3B0A009A3B0A009A3B
              0A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006B3B3B00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Adimplentes'
        ImageIndex = 208
      end
    end
  end
  inherited alDef: TActionList
    object actGraph: TAction
      GroupIndex = 2
      Hint = 'Exibe gr'#225'fico de inadimpl'#234'ncia'
      ImageIndex = 66
      OnExecute = actGraphExecute
    end
    object actFichaFin: TAction
      Caption = 'Ficha Financeira...'
      ImageIndex = 310
      OnExecute = actFichaFinExecute
    end
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    AfterRefresh = IBrwSrcAfterRefresh
    AfterScroll = IBrwSrcAfterScroll
    OnCalcFields = IBrwSrcCalcFields
    SQL.Strings = (
      'select c.codigo, c.empresa, c.nome_chave, c.cnpj, c.cpf,'
      
        '       c.telefone, c.email, c.situacao, c.restricao, c.restrmoti' +
        'v,'
      '       c.recno, f.titulos, f.saldo'
      '  from tbclientes c       '
      
        '       join (select f.id_cli, count(*) titulos, sum(f.valor) sal' +
        'do'
      '               from fin_receber f'
      '              where f.vencimento_real < current_date'
      '                and f.baixa is null'
      '              group by f.id_cli) f'
      '         on f.id_cli = c.codigo')
    object IBrwSrcstatus: TIntegerField
      DisplayLabel = ' '
      FieldKind = fkCalculated
      FieldName = 'status'
      Calculated = True
    end
    object IBrwSrccodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo'
      Required = True
    end
    object IBrwSrcempresa: TStringField
      DisplayLabel = 'Nome Empresarial'
      DisplayWidth = 25
      FieldName = 'empresa'
      Size = 100
    end
    object IBrwSrcnome_chave: TStringField
      DisplayLabel = 'Nome Curto'
      DisplayWidth = 25
      FieldName = 'nome_chave'
      Size = 45
    end
    object IBrwSrcrestricao: TStringField
      Alignment = taCenter
      DisplayLabel = 'Restri'#231#227'o Manual'
      DisplayWidth = 10
      FieldName = 'restricao'
      OnGetText = IBrwSrcrestricaoGetText
      Size = 100
    end
    object IBrwSrctitulos: TLargeintField
      DisplayLabel = 'T'#237'tulos'
      DisplayWidth = 10
      FieldName = 'titulos'
      ReadOnly = True
    end
    object IBrwSrcsaldo: TFloatField
      DisplayLabel = 'Saldo Devedor'
      DisplayWidth = 15
      FieldName = 'saldo'
      ReadOnly = True
      DisplayFormat = ',0.#0'
    end
    object IBrwSrccnpj: TStringField
      DisplayLabel = 'C.N.P.J.'
      DisplayWidth = 18
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object IBrwSrccpf: TStringField
      DisplayLabel = 'CPF'
      DisplayWidth = 14
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
    object IBrwSrcemail: TStringField
      DisplayLabel = 'E-mail'
      DisplayWidth = 40
      FieldName = 'email'
      Size = 100
    end
    object IBrwSrcrestrmotiv: TMemoField
      FieldName = 'restrmotiv'
      Visible = False
      BlobType = ftMemo
    end
    object IBrwSrcrecno: TIntegerField
      FieldName = 'recno'
      Visible = False
    end
  end
  inherited pmOpcao: TPopupMenu
    object FichaFinanceira1: TMenuItem
      Action = actFichaFin
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM tbclientes'
      'WHERE'
      '  tbclientes.codigo = :OLD_codigo')
    InsertSQL.Strings = (
      'INSERT INTO tbclientes'
      '  (restricao, restrmotiv)'
      'VALUES'
      '  (:restricao, :restrmotiv)')
    ModifySQL.Strings = (
      'UPDATE tbclientes SET'
      '  restricao = :restricao,'
      '  restrmotiv = :restrmotiv'
      'WHERE'
      '  tbclientes.codigo = :OLD_codigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'restricao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'restrmotiv'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_codigo'
        ParamType = ptUnknown
      end>
  end
  object qTitulos: TZQuery
    Connection = DM.Design
    OnCalcFields = qTitulosCalcFields
    SQL.Strings = (
      
        'select t.recno, t.os, t.natureza, n.descri, t.id_cli, t.docto, t' +
        '.emissao, t.vencimento, '
      
        '       t.vencimento_real, t.baixa, t.valor, t.valor_baixado, t.o' +
        'bs, t.cc, '
      '       t.historico, t.juros, t.multa, t.descto, t.total'
      '  from fin_receber t'
      '       join fin_naturezas n'
      '         on n.natureza = t.natureza'
      ' where t.id_cli = :codigo')
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
    object qTitulosrecno: TIntegerField
      DisplayLabel = 'T'#237'tulo'
      DisplayWidth = 8
      FieldName = 'recno'
      Required = True
    end
    object qTitulosos: TIntegerField
      FieldName = 'os'
      Visible = False
    end
    object qTitulosnatureza: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'natureza'
      Visible = False
    end
    object qTitulosdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 40
      FieldName = 'descri'
      Required = True
      Size = 60
    end
    object qTitulosid_cli: TIntegerField
      FieldName = 'id_cli'
      Required = True
      Visible = False
    end
    object qTitulosdocto: TStringField
      DisplayLabel = 'Documento'
      DisplayWidth = 15
      FieldName = 'docto'
      Size = 50
    end
    object qTitulosemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'emissao'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qTitulosvencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'vencimento'
      Required = True
      Visible = False
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qTitulosvencimento_real: TDateField
      DisplayLabel = 'Vencimento Real'
      FieldName = 'vencimento_real'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qTitulosbaixa: TDateField
      DisplayLabel = 'Baixa'
      FieldName = 'baixa'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qTitulosdiasatraso: TIntegerField
      DisplayLabel = 'Dias Em Atraso'
      DisplayWidth = 7
      FieldKind = fkCalculated
      FieldName = 'diasatraso'
      Calculated = True
    end
    object qTitulosvalor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'valor'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object qTitulosvalor_baixado: TFloatField
      FieldName = 'valor_baixado'
      Required = True
      Visible = False
      DisplayFormat = ',0.#0'
    end
    object qTitulosobs: TMemoField
      FieldName = 'obs'
      Visible = False
      BlobType = ftMemo
    end
    object qTituloscc: TStringField
      FieldName = 'cc'
      Visible = False
      Size = 25
    end
    object qTituloshistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      DisplayWidth = 25
      FieldName = 'historico'
      Required = True
      Visible = False
      Size = 100
    end
    object qTitulosjuros: TFloatField
      DisplayLabel = 'Juros'
      FieldName = 'juros'
      Required = True
      Visible = False
      DisplayFormat = ',0.#0'
    end
    object qTitulosmulta: TFloatField
      DisplayLabel = 'Multa'
      FieldName = 'multa'
      Required = True
      Visible = False
      DisplayFormat = ',0.#0'
    end
    object qTitulosdescto: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'descto'
      Required = True
      Visible = False
      DisplayFormat = ',0.#0'
    end
    object qTitulostotal: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'total'
      Required = True
      DisplayFormat = ',0.#0'
    end
  end
  object dsTit: TDataSource
    AutoEdit = False
    DataSet = qTitulos
    Left = 208
    Top = 80
  end
end
