object dmCore: TdmCore
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 169
  Width = 458
  object pgConn: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = True
    Properties.Strings = (
      'AutoEncodeStrings=ON')
    UseMetadata = False
    Port = 0
    Left = 24
    Top = 16
  end
  object Monitor: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = MonitorTimer
    Left = 120
    Top = 16
  end
  object zQry: TZReadOnlyQuery
    Connection = pgConn
    Params = <>
    Left = 72
    Top = 16
  end
  object IdCompressorZLib1: TIdCompressorZLib
    Left = 228
    Top = 64
  end
end
