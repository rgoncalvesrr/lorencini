inherited Deptos: TDeptos
  Caption = 'Cadastro de Departamentos'
  Constraints.MinWidth = 853
  PixelsPerInch = 96
  TextHeight = 15
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
  end
  inherited Panel1: TPanel
    inherited pctlFind: TPageControl
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 819
        ExplicitHeight = 65
      end
    end
  end
  inherited Panel2: TPanel
    ExplicitLeft = 0
    ExplicitTop = 119
    ExplicitWidth = 837
    ExplicitHeight = 199
    inherited PageControl1: TPageControl
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 831
      ExplicitHeight = 193
      inherited TabSheet1: TTabSheet
        Caption = 'Departamentos'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 823
        ExplicitHeight = 163
      end
    end
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    UpdateObject = ZUpdateSQL1
    AfterInsert = IBrwSrcAfterInsert
    SQL.Strings = (
      'select * from deptos')
    object IBrwSrcdepto: TIntegerField
      DisplayLabel = 'Departamento'
      FieldName = 'depto'
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Required = True
      Size = 60
    end
    object IBrwSrcqtdativos: TFloatField
      DisplayLabel = 'Quantidade de Ativos'
      FieldName = 'qtdativos'
    end
    object IBrwSrcrecno: TIntegerField
      FieldName = 'recno'
      Visible = False
    end
  end
  object ZUpdateSQL1: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM deptos'
      'WHERE'
      '  depto = :OLD_depto')
    InsertSQL.Strings = (
      'INSERT INTO deptos'
      '  (descri)'
      'VALUES'
      '  (:descri)')
    ModifySQL.Strings = (
      'UPDATE deptos SET'
      '  descri = :descri'
      'WHERE'
      '  depto = :OLD_depto')
    UseSequenceFieldForRefreshSQL = False
    Left = 144
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'descri'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_depto'
        ParamType = ptUnknown
      end>
  end
end
