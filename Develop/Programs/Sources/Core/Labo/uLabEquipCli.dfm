inherited LabEquipCli: TLabEquipCli
  Caption = 'Equipamento x Cliente'
  ClientHeight = 356
  ExplicitWidth = 320
  ExplicitHeight = 395
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 329
    ExplicitTop = 329
  end
  inherited Panel1: TPanel
    inherited pctlFind: TPageControl
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 819
        ExplicitHeight = 75
        object Label7: TLabel [0]
          Left = 3
          Top = 6
          Width = 39
          Height = 15
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Pitch = fpVariable
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SpeedButton3: TSpeedButton [1]
          Left = 61
          Top = 24
          Width = 25
          Height = 23
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
        object Label8: TLabel [2]
          Left = 92
          Top = 6
          Width = 65
          Height = 15
          Caption = 'Raz'#227'o Social'
        end
        object Label9: TLabel [3]
          Left = 314
          Top = 6
          Width = 40
          Height = 15
          Caption = 'C.N.P.J.'
        end
        inherited BitBtn2: TBitBtn
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00BBB5B500988484009B878700FF00FF00FF00FF008F76
            760099848400BDB8B800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00957F7F00653737007445450063363600FF00FF00C0BCBC005F2E
            2E0072414100653939009B868600FF00FF00FF00FF00FF00FF00FF00FF00C3C3
            C300805F5F0071414100A0757500AF8787007648480094808000896F6F007849
            4900A3747400906060006A3B3B00876B6B00FF00FF00FF00FF00FF00FF00C4C4
            C4007A5F5F007A4D4D00B7939300B8949400A984840074474700784C4C00A57C
            7C00A87D7D00A1737300713F3F00826B6B00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00704C4C009E787800C3A6A600C3A6A600C5A7A700C1A1A100B895
            9500B18A8A008B5F5F0077545400FF00FF00FF00FF00FF00FF00A29292009680
            8000A7999900734F4F009D7A7A00D3BDBD00BDA0A000926D6D00936D6D00B594
            9400BE9C9C00895F5F007A595900A6989800957E7E00A99D9D006E4949007E53
            5300794F4F00936D6D00D1BCBC00C4ACAC00663939008468680082646400673A
            3A00B5949400B28F8F0080535300704040007140400078555500683D3D00C1A6
            A600D4BFBF00DBCACA00E4D6D6009472720090787800FF00FF00FF00FF00886B
            6B008E676700C1A2A200B48F8F00AB808000936363006F484800673C3C00C9AF
            AF00DECCCC00E4D7D700EEE4E4009371710098848400FF00FF00FF00FF008E75
            75008C666600C5A8A800B9969600B0878700976868006F4848006C454500936F
            6F00916D6D00AD929200F1EAEA00D3C6C600653A3A0097828200937C7C006438
            3800BB9D9D00C2A4A400906767007E5151007C4E4E00754F4F00978383008364
            6400937D7D0069434300BCA7A700FCFCFC00D2C5C5008D6969008C696900BFA6
            A600D4BFBF0099747400704C4C00957F7F0083646400A0939300FF00FF00FF00
            FF00FF00FF0076575700B1999900F7F3F300F6F1F100F5EEEE00EADFDF00D9C6
            C600CFB6B600936C6C007F646400FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF008E7676007F555500E0D2D200E9DEDE00DFD1D1009C7D7D009D7D7D00CEB7
            B700C9AEAE00BA9999007141410093808000FF00FF00FF00FF00FF00FF00C2C0
            C0006D46460088626200D8C6C600E6D9D900926F6F007B5C5C0075525200926D
            6D00CCB0B000B7959500774B4B0078555500FF00FF00FF00FF00FF00FF00FF00
            FF00C2BFBF007F606000704444009E7D7D0065393900C4C2C200BAB4B4006537
            3700916A6A00683A3A0085696900C4C2C200FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00A99C9C007D5D5D0083646400FF00FF00FF00FF007D5D
            5D0081626200ADA1A100FF00FF00FF00FF00FF00FF00FF00FF00}
          ExplicitLeft = 729
          ExplicitTop = 15
        end
        object edCliCod: TJvEdit
          Left = 3
          Top = 24
          Width = 56
          Height = 23
          Alignment = taRightJustify
          TabOrder = 1
          OnExit = edCliCodExit
          OnKeyPress = edCliCodKeyPress
        end
        object edCliNome: TEdit
          Left = 92
          Top = 24
          Width = 216
          Height = 23
          ReadOnly = True
          TabOrder = 2
        end
        object edCliCNPJ: TMaskEdit
          Left = 314
          Top = 24
          Width = 121
          Height = 23
          EditMask = '99.999.999/9999-99;0;'
          MaxLength = 18
          ReadOnly = True
          TabOrder = 3
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
    Height = 197
    ExplicitHeight = 207
    inherited PageControl1: TPageControl
      Height = 191
      ExplicitHeight = 201
      inherited TabSheet1: TTabSheet
        Caption = 'Equipamentos'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitHeight = 171
        inherited DBGrid1: TDBGrid
          Height = 171
        end
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
      inherited ToolButton10: TToolButton
        ExplicitWidth = 32
      end
    end
  end
  inherited alDef: TActionList
    Left = 312
    Top = 8
    inherited actQueryProcess: TAction
      ImageIndex = 79
    end
    object actFindCli: TAction
      ImageIndex = 332
      OnExecute = actFindCliExecute
    end
  end
  inherited pmRel: TPopupMenu
    Left = 352
    Top = 8
  end
  inherited pmOrder: TPopupMenu
    Left = 386
    Top = 6
  end
  inherited alRunTime: TActionList
    Left = 418
    Top = 6
  end
  inherited DataSource1: TDataSource
    Top = 8
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    AfterInsert = IBrwSrcAfterInsert
    SQL.Strings = (
      'select lec.codigo, c.nome_chave, c.cnpj, lec.equip, lec.tag,'
      
        '       lec.subest, lec.status, lec.energ, lec.recno, e.fabricant' +
        'e,'
      '       e.serie, e.tipo, e.descri, e.potencia,'
      '       e.fases, e.lote, e.imped, e.tensao, e.corr,'
      
        '       e.ano, e.isolante, e.volume, e.drenos, e.potencia_un, e.t' +
        'ensao_un,'
      '       se.sigla, se.nome as subest_nome, se.regional,'
      '       se.reg_nome, lec.local'
      '  from labequipxcli lec'
      '       join vequip e'
      '         on e.recno = lec.equip'
      '       left join vsubest se'
      '         on se.recno = lec.subest'
      '        and se.codigo = lec.codigo '
      '       join tbclientes c'
      '         on c.codigo = lec.codigo'
      ' where lec.codigo = :codigo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    Sequence = ZSequence1
    SequenceField = 'recno'
    Left = 224
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object IBrwSrccodigo: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'codigo'
      Required = True
      Visible = False
      OnChange = IBrwSrccodigoChange
    end
    object IBrwSrcnome_chave: TStringField
      FieldName = 'nome_chave'
      Visible = False
      Size = 45
    end
    object IBrwSrccnpj: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'cnpj'
      Visible = False
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object IBrwSrcequip: TIntegerField
      DisplayLabel = 'Equipamento'
      FieldName = 'equip'
      Required = True
      OnChange = IBrwSrcequipChange
    end
    object IBrwSrctipo: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 25
      FieldName = 'tipo'
      Size = 255
    end
    object IBrwSrcstatus: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'Status'
      FieldName = 'status'
      Required = True
      OnGetText = IBrwSrcstatusGetText
      OnSetText = IBrwSrcstatusSetText
    end
    object IBrwSrcfabricante: TStringField
      DisplayLabel = 'Fabricante'
      DisplayWidth = 25
      FieldName = 'fabricante'
      Size = 255
    end
    object IBrwSrcano: TIntegerField
      DisplayLabel = 'Fabrica'#231#227'o'
      DisplayWidth = 7
      FieldName = 'ano'
    end
    object IBrwSrcserie: TStringField
      DisplayLabel = 'S'#233'rie'
      DisplayWidth = 20
      FieldName = 'serie'
      Size = 30
    end
    object IBrwSrctag: TStringField
      DisplayLabel = 'Tag'
      DisplayWidth = 15
      FieldName = 'tag'
      Size = 60
    end
    object IBrwSrcsubest: TIntegerField
      DisplayLabel = 'Subesta'#231#227'o'
      FieldName = 'subest'
      Visible = False
      OnChange = IBrwSrcsubestChange
    end
    object IBrwSrcsigla: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'sigla'
      Visible = False
      Size = 3
    end
    object IBrwSrcsubest_nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'subest_nome'
      Visible = False
      Size = 60
    end
    object IBrwSrcregional: TIntegerField
      FieldName = 'regional'
      Visible = False
    end
    object IBrwSrcreg_nome: TStringField
      DisplayLabel = 'Regional'
      FieldName = 'reg_nome'
      Visible = False
      Size = 60
    end
    object IBrwSrcenerg: TDateField
      DisplayLabel = 'Energiza'#231#227'o'
      FieldName = 'energ'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object IBrwSrcrecno: TIntegerField
      FieldName = 'recno'
      Required = True
      Visible = False
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Visible = False
      Size = 60
    end
    object IBrwSrcpotencia: TFloatField
      DisplayLabel = 'Pot'#234'ncia'
      FieldName = 'potencia'
      DisplayFormat = ',0.#0'
    end
    object IBrwSrcpotencia_un: TStringField
      DisplayLabel = 'P. Unidade'
      FieldName = 'potencia_un'
      Size = 3
    end
    object IBrwSrcimped: TFloatField
      DisplayLabel = 'Imped'#226'ncia'
      FieldName = 'imped'
      DisplayFormat = ',0.#0 Z%'
    end
    object IBrwSrctensao: TFloatField
      DisplayLabel = 'Tens'#227'o'
      FieldName = 'tensao'
      DisplayFormat = ',0.#0'
    end
    object IBrwSrctensao_un: TStringField
      DisplayLabel = 'T. Unidade'
      FieldName = 'tensao_un'
      Size = 3
    end
    object IBrwSrccorr: TFloatField
      DisplayLabel = 'Corrente'
      FieldName = 'corr'
      DisplayFormat = ',0.#0 A'
    end
    object IBrwSrcfases: TIntegerField
      DisplayLabel = 'Fases'
      DisplayWidth = 5
      FieldName = 'fases'
    end
    object IBrwSrclote: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'lote'
      Visible = False
      Size = 15
    end
    object IBrwSrcisolante: TStringField
      DisplayLabel = 'Isolante'
      DisplayWidth = 25
      FieldName = 'isolante'
      Size = 255
    end
    object IBrwSrcvolume: TIntegerField
      DisplayLabel = 'Volume'
      FieldName = 'volume'
      DisplayFormat = '0 L'
    end
    object IBrwSrcdrenos: TStringField
      DisplayLabel = 'Drenos'
      FieldName = 'drenos'
      Size = 5
    end
    object IBrwSrclocal: TStringField
      DisplayLabel = 'Local'
      FieldName = 'local'
      Visible = False
      Size = 50
    end
  end
  inherited pmOpcao: TPopupMenu
    Left = 456
    Top = 8
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM labequipxcli'
      'WHERE'
      '  labequipxcli.codigo = :OLD_codigo AND'
      '  labequipxcli.equip = :OLD_equip')
    InsertSQL.Strings = (
      'INSERT INTO labequipxcli'
      '  (codigo, equip, subest, status, energ, recno, tag, local)'
      'VALUES'
      
        '  (:codigo, :equip, :subest, :status, :energ, :recno, :tag, :loc' +
        'al)')
    ModifySQL.Strings = (
      'UPDATE labequipxcli SET '
      '  subest = :subest,'
      '  status = :status,'
      '  energ = :energ,'
      '  tag = :tag,'
      '  local = :local'
      'WHERE'
      '  labequipxcli.codigo = :OLD_codigo AND'
      '  labequipxcli.equip = :OLD_equip')
    Left = 192
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'subest'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'status'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'energ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tag'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'local'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_equip'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'equip'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end>
  end
  object ZSequence1: TZSequence
    Connection = DM.Design
    SequenceName = 'public.labequipxcli_recno_seq'
    Left = 160
    Top = 8
  end
end
