inherited ServicosF: TServicosF
  Caption = 'Naturezas Financeiras'
  ClientHeight = 432
  ClientWidth = 770
  ExplicitWidth = 786
  ExplicitHeight = 471
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 770
    ExplicitWidth = 770
    inherited GroupBox1: TGroupBox
      Width = 764
      Height = 48
      ExplicitWidth = 764
      ExplicitHeight = 48
      inherited Label2: TLabel
        Left = 262
        Height = 23
        ExplicitLeft = 262
      end
      object Label1: TLabel [1]
        AlignWithMargins = True
        Left = 5
        Top = 20
        Width = 33
        Height = 23
        Align = alLeft
        Caption = 'Grupo'
        Transparent = True
        Layout = tlCenter
        ExplicitHeight = 15
      end
      inherited edSearch: TMaskEdit
        Left = 352
        Width = 304
        Height = 23
        ExplicitLeft = 352
        ExplicitWidth = 304
      end
      inherited BitBtn1: TBitBtn
        Left = 662
        Height = 23
        ExplicitLeft = 662
        ExplicitHeight = 22
      end
      object ComboBox1: TComboBox
        AlignWithMargins = True
        Left = 44
        Top = 20
        Width = 212
        Height = 23
        Align = alLeft
        Style = csDropDownList
        ItemHeight = 15
        TabOrder = 2
        OnChange = ComboBox1Change
      end
    end
  end
  inherited PageControl1: TPageControl
    Width = 764
    Height = 321
    ExplicitWidth = 764
    ExplicitHeight = 321
    inherited TabSheet1: TTabSheet
      Caption = 'Naturezas'
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 756
      ExplicitHeight = 291
      inherited DBGrid1: TDBGrid
        Width = 756
        Height = 291
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 764
    ExplicitWidth = 764
    inherited ToolBar1: TToolBar
      Width = 719
      ExplicitWidth = 719
      inherited tbOrder: TToolButton
        ExplicitWidth = 76
      end
      inherited ToolButton1: TToolButton
        ExplicitWidth = 93
      end
      inherited ToolButton2: TToolButton
        ExplicitWidth = 85
      end
    end
  end
  inherited alDef: TActionList
    Left = 496
  end
  inherited IBrwSrc: TZReadOnlyQuery
    Connection = DM.Design
    SQL.Strings = (
      'select *'
      '  from servicos'
      'where grupo = :grupo')
    Params = <
      item
        DataType = ftInteger
        Name = 'grupo'
        ParamType = ptUnknown
      end>
    Left = 392
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'grupo'
        ParamType = ptUnknown
      end>
    object IBrwSrccodserv: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'codserv'
      Required = True
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Required = True
      Size = 80
    end
    object IBrwSrctipo: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'tipo'
      Required = True
    end
  end
  inherited pmOrder: TPopupMenu
    Left = 426
    Top = 6
  end
  inherited alRunTime: TActionList
    Left = 458
    Top = 6
  end
  inherited dsIBrowse: TDataSource
    Left = 352
    Top = 8
  end
end
