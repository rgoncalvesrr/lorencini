inherited LabAmostraCorr: TLabAmostraCorr
  Caption = 'Corre'#231#227'o de Amostras'
  ClientHeight = 184
  ClientWidth = 313
  ExplicitWidth = 329
  ExplicitHeight = 223
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel [0]
    Left = 9
    Top = 9
    Width = 292
    Height = 35
    AutoSize = False
    Caption = 
      'Informe os n'#250'mero das etiquetas separados por v'#237'gurla. Ex: 25768' +
      ',25749,25347'
    WordWrap = True
  end
  object Label2: TLabel [1]
    Left = 9
    Top = 50
    Width = 56
    Height = 15
    Caption = 'Etiqueta(s)'
  end
  object mEtiquetas: TMemo [2]
    Left = 9
    Top = 69
    Width = 292
    Height = 66
    TabOrder = 0
    OnChange = mEtiquetasChange
    OnKeyPress = mEtiquetasKeyPress
  end
  object BitBtn1: TBitBtn [3]
    Left = 201
    Top = 141
    Width = 103
    Height = 35
    Action = actCancel
    Caption = 'Cancelar'
    TabOrder = 2
    Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000FF00FF00A9A9
      C0003D3FAA004748AD00BDBDC500FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00C3C3C7004C4DAC000E0E9C006363B100FF00FF00191B
      A2000A21C800101DB8003234A800C3C3C700FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00C3C3C7003B3CA9001117A9000A1ABC000F0F9D00FF00FF001012
      A1000A32EC000A32E900111EB5003D3FAA00FF00FF00FF00FF00FF00FF00FF00
      FF00C3C3C7003B3CA9001118AB000A1FC5000A1ABC0011129E00FF00FF004042
      AC001120BA000A32EC000A30E800121BB1004A4BAC00FF00FF00FF00FF00C3C3
      C7003B3CA9001119AD000A23CC000A1EC2001112A0008989B900FF00FF00C1C1
      C6003335A9001120BA000A32EC000A30E6001118AB005859AF00C3C3C7003B3C
      A900111AAE000A27D2000A22CB001113A2007D7DB700FF00FF00FF00FF00FF00
      FF00C1C1C6003335A9001120BA000A32EC000A2FE4001116A7002021A200111A
      B0000A2AD9000A25D2001316A6006B6CB300FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00C1C1C6003335A9001120BA000A32EB000A2EE3000A21CA000A2D
      E1000A2ADC001217A7005E5FB100FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00C1C1C6003335A9001121BC000A32EC000A31E8000A2F
      E4001119AD005051AE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00C3C3C7003B3DAA001120BA000A34EF000A32EB000A2F
      E5001012A1008E8EBB00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00C3C3C7003B3DAA001120B8000A37F6000A36F3000A2BDE000A32
      EA000A29D7001113A0009B9BBD00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00C3C3C7003B3DAA001120BA000A3AFB000A39F9001024C3000F109E001120
      B8000A32EA000A27D3001314A000A4A4C000FF00FF00FF00FF00FF00FF00C3C3
      C7003B3DAA001120BA000A3AFB000A3BFC000E27CE002325A500B6B6C3003335
      A9001120B8000A32E9000A25D0001516A100ADADC200FF00FF00FF00FF004446
      AC001120BA000A3AFB000A3BFC000D28D3001D1FA300B6B6C300FF00FF00C1C1
      C6003335A900111FB8000A31E9000C22CA002223A500C3C3C700FF00FF001216
      A5000A3AFA000A3BFC000A2ADA00181AA300ADADC200FF00FF00FF00FF00FF00
      FF00C1C1C6003335A900111FB8000A31E8001417A600A4A4C000FF00FF001012
      A1000A34F0000A2DE1001416A100A6A6C000FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00C1C1C6003538A9001316A5001E20A300C1C1C600FF00FF00797A
      B7001011A0001213A000A0A0BE00FF00FF00FF00FF00FF00FF00FF00FF00FF00
      FF00FF00FF00FF00FF00FF00FF00A2A2C000C1C1C600FF00FF00}
  end
  object BitBtn2: TBitBtn [4]
    Left = 90
    Top = 141
    Width = 103
    Height = 35
    Action = actOk
    Caption = 'Confirmar'
    TabOrder = 1
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
  end
  inherited alDef: TActionList
    inherited actOk: TAction
      Enabled = False
    end
  end
end
