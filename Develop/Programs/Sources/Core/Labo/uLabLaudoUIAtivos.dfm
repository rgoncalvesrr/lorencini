inherited LabLaudoUIAtivos: TLabLaudoUIAtivos
  Caption = 'Sele'#231#227'o de Ativos'
  ClientHeight = 501
  ClientWidth = 855
  StyleElements = [seFont, seClient, seBorder]
  ExplicitWidth = 873
  ExplicitHeight = 548
  PixelsPerInch = 120
  TextHeight = 20
  object GroupBox1: TGroupBox [0]
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 849
    Height = 100
    Align = alTop
    Caption = ' Informa'#231#245'es do Ensaio '
    TabOrder = 0
    object Panel1: TPanel
      AlignWithMargins = True
      Left = 5
      Top = 25
      Width = 839
      Height = 70
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 108
        Height = 70
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object Label1: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 102
          Height = 20
          Align = alTop
          Caption = 'Ensaio'
          ExplicitLeft = 4
          ExplicitTop = 4
          ExplicitWidth = 43
        end
        object edEnsaio: TEdit
          AlignWithMargins = True
          Left = 3
          Top = 29
          Width = 102
          Height = 38
          TabStop = False
          Align = alClient
          ReadOnly = True
          TabOrder = 0
          ExplicitHeight = 28
        end
      end
      object Panel3: TPanel
        Left = 679
        Top = 0
        Width = 160
        Height = 70
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        object Label3: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 154
          Height = 20
          Align = alTop
          Caption = 'Valor'
          ExplicitWidth = 34
        end
        object edValor: TJvEdit
          AlignWithMargins = True
          Left = 3
          Top = 29
          Width = 154
          Height = 38
          TabStop = False
          Align = alClient
          Alignment = taRightJustify
          ReadOnly = True
          TabOrder = 0
          Text = ''
          ExplicitHeight = 28
        end
      end
      object Panel4: TPanel
        Left = 108
        Top = 0
        Width = 571
        Height = 70
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 2
        object Label2: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 565
          Height = 20
          Align = alTop
          Caption = 'Nome'
          ExplicitLeft = 4
          ExplicitTop = 4
          ExplicitWidth = 41
        end
        object edNome: TEdit
          AlignWithMargins = True
          Left = 3
          Top = 29
          Width = 565
          Height = 38
          TabStop = False
          Align = alClient
          ReadOnly = True
          TabOrder = 0
          ExplicitHeight = 28
        end
      end
    end
  end
  object Panel6: TPanel [1]
    AlignWithMargins = True
    Left = 3
    Top = 448
    Width = 849
    Height = 50
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    object BitBtn1: TBitBtn
      AlignWithMargins = True
      Left = 699
      Top = 3
      Width = 147
      Height = 44
      Action = actOk
      Align = alRight
      Caption = 'Confirmar'
      ImageIndex = 166
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0097AF97001C741C00BDC3
        BD00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00A2B5A20014721500157C1B0078A1
        7900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF009EB39E001674170025A8400024A83E00277D
        2A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF008CAA8C001271140028AC460030C156002CBE4F001676
        1800A0B5A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00C3C5C30061966100167619002DB54F0032C35A002AB64C002CBE4E001C95
        2B004E8F4F00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00ABBA
        AB00317F31002789310035C25F0029AC47001E8627000A6B0A001F9E330025B2
        400012711300B6C0B600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF002177
        2100107314001E8B2D00127315002A7F2C007CA37C0097AF97001474160026B6
        42001A8C25005B945C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00ADBB
        AD007CA37C0085A78500B4BEB400FF00FF00FF00FF00FF00FF003E873F001B95
        2B0020AC360012711300B8C0B800FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A9B9A9001272
        140021AF3700188A21005B945C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00508F
        5000198E24001CA82D0012711200B4BEB400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B4BE
        B400137214001BA72B0015891C0053915400FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF006197620017841C0017A5260012711200ADBBAD00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00BFC4BF0018741800159D210012891700488B4900FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0078A17800157B170014A21C0011711200ABBAAB00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00267B2600108F1500107D11006F9C6F00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00A4B6A40017731700277C2700B4BEB400}
      TabOrder = 0
    end
  end
  object PageControl1: TPageControl [2]
    AlignWithMargins = True
    Left = 3
    Top = 109
    Width = 849
    Height = 333
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    TabStop = False
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object CheckListBox1: TCheckListBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 835
        Height = 292
        Align = alClient
        ItemHeight = 21
        TabOrder = 0
        OnClickCheck = CheckListBox1ClickCheck
      end
    end
  end
  inherited alDef: TActionList
    Left = 384
    Top = 104
  end
  object qTipos: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      'select t.tipo, t.descri '
      '  from ativos_tipo t'
      '       join labens_ativo e'
      '         on e.tipoativo = t.tipo'
      '        and e.labens_recno = :ensaio'
      ' where t.qtd > 0'
      ' order by t.descri')
    Params = <
      item
        DataType = ftUnknown
        Name = 'ensaio'
        ParamType = ptUnknown
      end>
    Left = 256
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ensaio'
        ParamType = ptUnknown
      end>
    object qTipostipo: TIntegerField
      FieldName = 'tipo'
      Required = True
    end
    object qTiposdescri: TStringField
      FieldName = 'descri'
      Required = True
      Size = 60
    end
  end
  object qAtivos: TZQuery
    Connection = DM.Design
    SQL.Strings = (
      'select a.id, a.descri, e.ativo'
      '  from ativos a'
      '       left join labamostras_res_ativos e'
      '         on e.ativo = a.id'
      '        and e.relato_recno = :relato'
      '        and e.ensaio_recno = :ensaio'
      '        and e.laudo = :laudo'
      ' where a.tipo = :tipo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'relato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ensaio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'laudo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end>
    Left = 312
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'relato'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ensaio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'laudo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end>
    object qAtivosid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object qAtivosdescri: TMemoField
      FieldName = 'descri'
      Required = True
      BlobType = ftMemo
    end
    object qAtivosativo: TIntegerField
      FieldName = 'ativo'
      Required = True
    end
  end
end
