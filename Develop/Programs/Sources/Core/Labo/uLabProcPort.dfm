inherited LabProcPort: TLabProcPort
  Caption = 'Registro de Remessa'
  ClientHeight = 653
  ClientWidth = 779
  Constraints.MinWidth = 691
  ExplicitWidth = 785
  ExplicitHeight = 682
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 779
    Height = 609
    ExplicitTop = 44
    ExplicitWidth = 779
    ExplicitHeight = 609
    inherited pnLookup: TPanel
      Top = 1
      ExplicitTop = 1
    end
    inherited Panel3: TPanel
      Top = 320
      Width = 779
      Height = 289
      ExplicitTop = 320
      ExplicitWidth = 779
      ExplicitHeight = 289
      inherited PageControl3: TPageControl
        Top = 47
        Width = 773
        Height = 239
        ExplicitLeft = 3
        ExplicitTop = 47
        ExplicitWidth = 773
        ExplicitHeight = 239
        inherited tsDet: TTabSheet
          Caption = 'Itens Retornados'
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 765
          ExplicitHeight = 209
          inherited DBGrid1: TDBGrid
            Width = 765
            Height = 209
            DataSource = dsPortItens
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 773
        Height = 38
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 773
        ExplicitHeight = 38
        inherited ToolBar3: TToolBar
          Width = 760
          ButtonWidth = 129
          ExplicitWidth = 760
          inherited ToolButton10: TToolButton
            ExplicitWidth = 32
          end
          inherited ToolButton11: TToolButton
            ExplicitWidth = 32
          end
          inherited ToolButton17: TToolButton
            ExplicitWidth = 32
          end
          inherited ToolButton12: TToolButton
            ExplicitWidth = 32
          end
          inherited ToolButton13: TToolButton
            ExplicitWidth = 32
          end
          inherited tbSQLDet: TToolButton
            ExplicitWidth = 32
          end
          inherited tbRefazGrid: TToolButton
            ExplicitWidth = 32
          end
        end
      end
    end
    inherited PageControl1: TPageControl
      Width = 773
      Height = 314
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 773
      ExplicitHeight = 314
      inherited TabSheet1: TTabSheet
        Caption = 'Portador'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 765
        ExplicitHeight = 284
        object Label8: TLabel
          Left = 75
          Top = 5
          Width = 65
          Height = 15
          Caption = 'Raz'#227'o Social'
          FocusControl = DBEdit8
        end
        object Label9: TLabel
          Left = 356
          Top = 5
          Width = 40
          Height = 15
          Caption = 'C.N.P.J.'
          FocusControl = DBEdit9
        end
        object Label10: TLabel
          Left = 485
          Top = 5
          Width = 44
          Height = 15
          Caption = 'Telefone'
          FocusControl = DBEdit10
        end
        object Label5: TLabel
          Left = 606
          Top = 5
          Width = 51
          Height = 15
          Caption = 'Opera'#231#227'o'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 3
          Top = 51
          Width = 43
          Height = 15
          Caption = 'Emiss'#227'o'
          FocusControl = DBEdit6
        end
        object Label11: TLabel
          Left = 137
          Top = 51
          Width = 88
          Height = 15
          Caption = 'Tipo de Portador'
          FocusControl = DBEdit6
        end
        object Label12: TLabel
          Left = 256
          Top = 51
          Width = 36
          Height = 15
          Caption = 'Outros'
          FocusControl = DBEdit11
        end
        object Label13: TLabel
          Left = 3
          Top = 98
          Width = 41
          Height = 15
          Caption = 'C.N.P.J.'
          FocusControl = DBEdit12
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 247
          Top = 98
          Width = 51
          Height = 15
          Caption = 'Empresa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 3
          Top = 145
          Width = 28
          Height = 15
          Caption = 'C.P.F.'
          FocusControl = DBEdit14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label16: TLabel
          Left = 133
          Top = 145
          Width = 50
          Height = 15
          Caption = 'Portador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 3
          Top = 193
          Width = 67
          Height = 15
          Caption = 'Observa'#231#245'es'
          FocusControl = DBMemo1
        end
        object Label1: TLabel
          Left = 3
          Top = 5
          Width = 39
          Height = 15
          Caption = 'Cliente'
          FocusControl = DBEdit1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SpeedButton3: TSpeedButton
          Left = 48
          Top = 23
          Width = 25
          Height = 24
          Action = actFindCli
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000A0A
            0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A00FF00FF00FF00FF000A0A
            0A000A0A0A000A0A0A000A0A0A000A0A0A000A0A0A00FF00FF00FF00FF000A0A
            0A00A9A9A900C4C4C400696969002C2C2C000A0A0A00FF00FF00FF00FF000A0A
            0A00A9A9A900C4C4C400696969002C2C2C000A0A0A00FF00FF00FF00FF000A0A
            0A00A9A9A900C4C4C400696969002C2C2C000A0A0A00FF00FF00FF00FF000A0A
            0A00A9A9A900C4C4C400696969002C2C2C000A0A0A00FF00FF00FF00FF000A0A
            0A00121212001E1E1E000B0B0B000A0A0A000A0A0A00FF00FF00FF00FF000A0A
            0A0015151500222222000B0B0B000A0A0A000A0A0A00FF00FF00FF00FF007549
            4900A0725E00EFE1D200EBC8A3009F674D0070414000FF00FF00FF00FF007549
            4900A0725E00EFE1D200EBC8A3009F674D0070414000FF00FF00FF00FF008461
            610085554C00F5E5D400EAC5A000865043007D565500FF00FF00FF00FF008461
            610085554C00F5E5D400EAC5A000865043007D565500FF00FF00FF00FF009A82
            820074444000F5E4D300E1B488007443400093777700FF00FF00FF00FF009A82
            820074444000F5E4D300E1B488007443400093777700FF00FF00FF00FF00B7AE
            AE006C3C3C00E9C8A800D19669006C3C3C00B2A7A700FF00FF00FF00FF00B7AE
            AE006C3C3C00E9C8A800D19669006C3C3C00B2A7A700FF00FF00FF00FF00FF00
            FF006E3E3E00734444006B3B3B006B3B3B000B0B0B000A0A0A000A0A0A000E0D
            0D006C3C3C006B3B3B006B3B3B006C3B3B00FF00FF00FF00FF00FF00FF00FF00
            FF006C3B3B00F1D8BE00E8BF9300C78657000A0A0A00C4C4C400696969001010
            1000F9DEB700E2B38600BD7B51006C3B3B00FF00FF00FF00FF00FF00FF00FF00
            FF006C3B3B00F6E6D600E9BF9500C88759000A0A0A00C4C4C400696969000C0C
            0C00E3C6A900CA9B7600A5694B006C3B3B00FF00FF00FF00FF00FF00FF00FF00
            FF006D3D3D00724343006B3B3B006B3B3B00141010000A0A0A000A0A0A002416
            14006C3B3B006C3B3B006C3B3B006C3B3B00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000A0A0A00C4C4C400696969000A0A0A00FF00FF00FF00FF000A0A
            0A00C4C4C400696969000A0A0A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF000A0A0A000A0A0A000A0A0A001D1D1D00FF00FF00FF00FF000A0A
            0A000A0A0A000A0A0A001D1D1D00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        end
        object Label2: TLabel
          Left = 445
          Top = 51
          Width = 14
          Height = 15
          Caption = 'NF'
          FocusControl = DBEdit2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 495
          Top = 51
          Width = 47
          Height = 15
          Caption = 'NF S'#233'rie'
          FocusControl = DBEdit3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 558
          Top = 51
          Width = 66
          Height = 15
          Caption = 'NF Emiss'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 651
          Top = 51
          Width = 46
          Height = 15
          Caption = 'NF Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 675
          Top = 5
          Width = 35
          Height = 15
          Caption = 'Estado'
        end
        object Label19: TLabel
          Left = 130
          Top = 97
          Width = 28
          Height = 15
          Caption = 'C.P.F.'
          FocusControl = DBEdit4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBEdit8: TDBEdit
          Left = 75
          Top = 23
          Width = 274
          Height = 23
          TabStop = False
          DataField = 'nome_chave'
          DataSource = dsPort
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit9: TDBEdit
          Left = 356
          Top = 23
          Width = 123
          Height = 23
          TabStop = False
          DataField = 'cnpj_1'
          DataSource = dsPort
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit10: TDBEdit
          Left = 485
          Top = 23
          Width = 117
          Height = 23
          TabStop = False
          DataField = 'telefone'
          DataSource = dsPort
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 606
          Top = 23
          Width = 64
          Height = 23
          TabStop = False
          DataField = 'operac'
          DataSource = dsPort
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 3
          Top = 69
          Width = 128
          Height = 23
          TabStop = False
          DataField = 'emissao'
          DataSource = dsPort
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit11: TDBEdit
          Left = 256
          Top = 69
          Width = 182
          Height = 23
          DataField = 'tipo_outros'
          DataSource = dsPort
          Enabled = False
          TabOrder = 8
        end
        object DBEdit12: TDBEdit
          Left = 3
          Top = 116
          Width = 121
          Height = 23
          DataField = 'cnpj'
          DataSource = dsPort
          Enabled = False
          TabOrder = 13
          OnExit = DBEdit12Exit
        end
        object DBEdit14: TDBEdit
          Left = 1
          Top = 164
          Width = 123
          Height = 23
          DataField = 'cpf'
          DataSource = dsPort
          TabOrder = 16
          OnExit = DBEdit14Exit
        end
        object DBComboBox2: TDBComboBox
          Left = 247
          Top = 116
          Width = 503
          Height = 23
          CharCase = ecUpperCase
          DataField = 'empresa'
          DataSource = dsPort
          Enabled = False
          ItemHeight = 15
          TabOrder = 15
          OnExit = DBComboBox3Exit
        end
        object DBComboBox3: TDBComboBox
          Tag = 1
          Left = 133
          Top = 164
          Width = 618
          Height = 23
          CharCase = ecUpperCase
          DataField = 'portador'
          DataSource = dsPort
          ItemHeight = 15
          TabOrder = 17
          OnExit = DBComboBox3Exit
        end
        object DBMemo1: TDBMemo
          Left = 2
          Top = 214
          Width = 748
          Height = 57
          DataField = 'obs'
          DataSource = dsPort
          TabOrder = 18
        end
        object DBComboBox1: TDBComboBox
          Left = 137
          Top = 69
          Width = 113
          Height = 23
          Style = csDropDownList
          DataField = 'tipo'
          DataSource = dsPort
          ItemHeight = 15
          Items.Strings = (
            'Transportadora'
            'Correios'
            'Lorencini'
            'Cliente'
            'Outros')
          TabOrder = 7
          OnChange = DBComboBox1Change
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 23
          Width = 42
          Height = 23
          DataField = 'codigo'
          DataSource = dsPort
          TabOrder = 0
          OnExit = DBEdit1Exit
        end
        object DBEdit2: TDBEdit
          Left = 445
          Top = 69
          Width = 41
          Height = 23
          DataField = 'nf'
          DataSource = dsPort
          TabOrder = 9
        end
        object DBEdit3: TDBEdit
          Left = 493
          Top = 69
          Width = 59
          Height = 23
          DataField = 'nf_serie'
          DataSource = dsPort
          TabOrder = 10
        end
        object JvDBDateEdit1: TJvDBDateEdit
          Left = 558
          Top = 69
          Width = 90
          Height = 23
          DataField = 'nf_emissao'
          DataSource = dsPort
          ButtonWidth = 23
          ShowNullDate = False
          TabOrder = 11
        end
        object JvDBCalcEdit1: TJvDBCalcEdit
          Left = 651
          Top = 69
          Width = 100
          Height = 23
          DisplayFormat = ',0.#0'
          ButtonWidth = 23
          TabOrder = 12
          DecimalPlacesAlwaysShown = False
          DataField = 'nf_valor'
          DataSource = dsPort
        end
        object DBComboBox4: TDBComboBox
          Left = 675
          Top = 23
          Width = 75
          Height = 23
          Style = csDropDownList
          DataField = 'status'
          DataSource = dsPort
          ItemHeight = 15
          Items.Strings = (
            'Digita'#231#227'o'
            'Encerrado')
          TabOrder = 5
        end
        object DBEdit4: TDBEdit
          Left = 130
          Top = 116
          Width = 111
          Height = 23
          DataField = 'cpf'
          DataSource = dsPort
          Enabled = False
          TabOrder = 14
          OnExit = DBEdit12Exit
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 773
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 773
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      Width = 760
      ButtonWidth = 115
      ExplicitWidth = 760
      inherited ToolButton6: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton4: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton7: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton1: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton2: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton8: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton9: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton14: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton16: TToolButton
        ExplicitWidth = 32
      end
      inherited tbSQL: TToolButton
        ExplicitWidth = 32
      end
      inherited tbClose: TToolButton
        ExplicitWidth = 32
      end
    end
  end
  inherited alDef: TActionList
    Left = 208
    object actFindCli: TAction
      ImageIndex = 332
      OnExecute = actFindCliExecute
    end
  end
  object sPort: TZSequence
    Connection = DM.Design
    SequenceName = 'public.labport_recno_seq'
    Left = 352
    Top = 456
  end
  object uPort: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labport'
      'WHERE'
      '  labport.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO labport'
      
        '  (recno, operac, tipo, tipo_outros, empresa, cnpj, portador, st' +
        'atus,'
      
        '   cpf, obs, labproc_recno, codigo, nf, nf_serie, nf_emissao, nf' +
        '_valor)'
      'VALUES'
      
        '  (:recno, :operac, :tipo, :tipo_outros, :empresa, :cnpj, :porta' +
        'dor, :status, '
      
        '   :cpf, :obs, :labproc_recno, :codigo, :nf, :nf_serie, :nf_emis' +
        'sao, :nf_valor)')
    ModifySQL.Strings = (
      'UPDATE labport SET'
      '  recno = :recno,'
      '  emissao = :emissao,'
      '  operac = :operac,'
      '  tipo = :tipo,'
      '  tipo_outros = :tipo_outros,'
      '  empresa = :empresa,'
      '  cnpj = :cnpj,'
      '  portador = :portador,'
      '  cpf = :cpf,'
      '  obs = :obs,'
      '  labproc_recno = :labproc_recno,'
      '  codigo = :codigo,'
      '  nf = :nf,'
      '  nf_serie = :nf_serie,'
      '  nf_emissao = :nf_emissao,'
      '  nf_valor = :nf_valor,'
      '  status = :status'
      'WHERE'
      '  labport.recno = :OLD_recno')
    UseSequenceFieldForRefreshSQL = False
    Left = 400
    Top = 456
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'emissao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'operac'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo_outros'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'empresa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'portador'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cpf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'obs'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'labproc_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nf_serie'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nf_emissao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'nf_valor'
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
  object qPort: TZQuery
    Connection = DM.Design
    AfterRefresh = qPortAfterRefresh
    AfterScroll = qPortAfterScroll
    UpdateObject = uPort
    AfterInsert = qPortAfterInsert
    SQL.Strings = (
      'select p.recno,   p.emissao,  p.tipo,       p.tipo_outros,'
      '       p.empresa, p.cnpj,     p.portador,   p.cpf,'
      '       p.obs,     p.operac,   p.codigo,     p.labproc_recno,'
      '       p.nf,      p.nf_serie, p.nf_emissao, p.nf_valor,'
      '       p.status,'
      '       c.cnpj,    c.telefone, c.nome_chave, c.cpf'
      '  from labport p'
      '       join tbclientes c'
      '         on c.codigo = p.codigo'
      ' where p.operac = :operac'
      '   and p.status = 1')
    Params = <
      item
        DataType = ftInteger
        Name = 'operac'
        ParamType = ptUnknown
        Value = 2
      end>
    Sequence = sPort
    SequenceField = 'recno'
    Left = 456
    Top = 456
    ParamData = <
      item
        DataType = ftInteger
        Name = 'operac'
        ParamType = ptUnknown
        Value = 2
      end>
    object qPortrecno: TIntegerField
      FieldName = 'recno'
      Required = True
      Visible = False
    end
    object qPortoperac: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Opera'#231#227'o'
      DisplayWidth = 7
      FieldName = 'operac'
      OnGetText = qPortoperacGetText
      OnSetText = qPortoperacSetText
    end
    object qPortemissao: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'emissao'
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object qPorttipo: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Tipo'
      DisplayWidth = 15
      FieldName = 'tipo'
      Required = True
      OnGetText = qPorttipoGetText
      OnSetText = qPorttipoSetText
    end
    object qPorttipo_outros: TStringField
      DisplayLabel = 'Outros'
      FieldName = 'tipo_outros'
      Visible = False
      Size = 30
    end
    object qPortcnpj: TStringField
      DisplayLabel = 'C.N.P.J.'
      DisplayWidth = 18
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object qPortempresa: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 25
      FieldName = 'empresa'
      Required = True
      Size = 100
    end
    object qPortcpf: TStringField
      DisplayLabel = 'C.P.F.'
      DisplayWidth = 14
      FieldName = 'cpf'
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object qPortportador: TStringField
      DisplayLabel = 'Portador'
      DisplayWidth = 25
      FieldName = 'portador'
      Required = True
      Size = 60
    end
    object qPortobs: TMemoField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'obs'
      Visible = False
      BlobType = ftMemo
    end
    object qPortlabproc_recno: TIntegerField
      DisplayLabel = 'Processo'
      FieldName = 'labproc_recno'
      Visible = False
    end
    object qPortcodigo: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'codigo'
      Required = True
      Visible = False
      OnChange = qPortcodigoChange
    end
    object qPortnf: TIntegerField
      DisplayLabel = 'NF'
      DisplayWidth = 7
      FieldName = 'nf'
      Required = True
    end
    object qPortnf_serie: TIntegerField
      DisplayLabel = 'NF S'#233'rie'
      DisplayWidth = 7
      FieldName = 'nf_serie'
      Required = True
    end
    object qPortnf_emissao: TDateField
      DisplayLabel = 'NF Emiss'#227'o'
      FieldName = 'nf_emissao'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qPortnf_valor: TFloatField
      DisplayLabel = 'NF Valor'
      FieldName = 'nf_valor'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object qPortnome_chave: TStringField
      DisplayLabel = 'Empresa'
      DisplayWidth = 25
      FieldName = 'nome_chave'
      Visible = False
      Size = 45
    end
    object qPortcnpj_1: TStringField
      DefaultExpression = '99.999.999/9999-99;0;'
      DisplayLabel = 'C.N.P.J.'
      DisplayWidth = 18
      FieldName = 'cnpj_1'
      Visible = False
      Size = 14
    end
    object qPorttelefone: TStringField
      DisplayLabel = 'Fone'
      DisplayWidth = 20
      FieldName = 'telefone'
      Visible = False
      Size = 100
    end
    object qPortstatus: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Estado'
      FieldName = 'status'
      Required = True
      OnGetText = qPortstatusGetText
      OnSetText = qPortstatusSetText
    end
    object qPortcpf_1: TStringField
      FieldName = 'cpf_1'
      Size = 11
    end
  end
  object dsPort: TDataSource
    AutoEdit = False
    DataSet = qPort
    Left = 512
    Top = 457
  end
  object sPortItens: TZSequence
    Connection = DM.Design
    SequenceName = 'public.labret_recno_seq'
    Left = 352
    Top = 504
  end
  object uPortItens: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labret'
      'WHERE'
      '  labret.recno = :OLD_recno')
    InsertSQL.Strings = (
      'INSERT INTO labret'
      '  (recno, labport_recno, amostra, status, qtd)'
      'VALUES'
      '  (:recno, :labport_recno, :amostra, :status, :qtd)')
    ModifySQL.Strings = (
      'UPDATE labret SET'
      '  recno = :recno,'
      '  labport_recno = :labport_recno,'
      '  amostra = :amostra,'
      '  status = :status,'
      '  qtd = :qtd'
      'WHERE'
      '  labret.recno = :OLD_recno')
    UseSequenceFieldForRefreshSQL = False
    Left = 400
    Top = 504
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'labport_recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'amostra'
        ParamType = ptUnknown
      end
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
  object qPortItens: TZQuery
    Connection = DM.Design
    UpdateObject = uPortItens
    AfterInsert = qPortItensAfterInsert
    SQL.Strings = (
      
        'select r.recno,  r.labport_recno, r.amostra, r.status, c.comodat' +
        'o,'
      
        '       ah.ocorrencia rem_dh, ah.historico rem_tr,  e.labproc_rec' +
        'no,'
      '       r.qtd, e.tipo'
      '  from labret r'
      '       join labport p'
      '         on p.recno = r.labport_recno'
      '       join labamostras c'
      '         on c.recno = r.amostra'
      '        and c.codigo = p.codigo'
      '       left join labamostras_hist ah'
      '         on ah.amostra = c.recno'
      '        and ah.estado = 30'
      '       join labprocxequip e'
      '         on e.amostra = r.amostra'
      ' where r.labport_recno = :port'
      '')
    Params = <
      item
        DataType = ftInteger
        Name = 'port'
        ParamType = ptUnknown
      end>
    Sequence = sPortItens
    SequenceField = 'recno'
    Left = 456
    Top = 504
    ParamData = <
      item
        DataType = ftInteger
        Name = 'port'
        ParamType = ptUnknown
      end>
    object qPortItensamostra: TIntegerField
      DisplayLabel = 'Amostra'
      FieldName = 'amostra'
    end
    object qPortItenscomodato: TIntegerField
      DisplayLabel = 'Etiqueta'
      FieldName = 'comodato'
    end
    object qPortItenstipo: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Tipo'
      FieldName = 'tipo'
      Required = True
      OnGetText = qPortItenstipoGetText
      OnSetText = qPortItenstipoSetText
    end
    object qPortItenslabport_recno: TIntegerField
      FieldName = 'labport_recno'
      Required = True
      Visible = False
    end
    object qPortItensstatus: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Status'
      FieldName = 'status'
      Required = True
      OnGetText = qPortItensstatusGetText
      OnSetText = qPortItensstatusSetText
    end
    object qPortItensrem_dh: TDateTimeField
      DisplayLabel = 'Remessa'
      FieldName = 'rem_dh'
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object qPortItensrem_tr: TMemoField
      DisplayLabel = 'Portador Remessa'
      FieldName = 'rem_tr'
      Visible = False
      BlobType = ftMemo
    end
    object qPortItenslabproc_recno: TIntegerField
      DisplayLabel = 'Processo'
      FieldName = 'labproc_recno'
    end
    object qPortItensqtd: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'qtd'
      Required = True
      DisplayFormat = ',0.####0 ml'
    end
    object qPortItensrecno: TIntegerField
      DisplayLabel = 'Item'
      DisplayWidth = 7
      FieldName = 'recno'
      Required = True
    end
  end
  object dsPortItens: TDataSource
    AutoEdit = False
    DataSet = qPortItens
    Left = 512
    Top = 505
  end
end
