object dmCore: TdmCore
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 150
  Width = 215
  object pgConn: TZConnection
    ControlsCodePage = cGET_ACP
    AutoEncodeStrings = False
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
end
