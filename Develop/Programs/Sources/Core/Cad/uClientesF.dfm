inherited ClientesF: TClientesF
  Caption = 'Pesquisa de Clientes'
  ClientHeight = 454
  ClientWidth = 818
  ExplicitWidth = 834
  ExplicitHeight = 493
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 818
    ExplicitTop = 35
    ExplicitWidth = 818
    inherited GroupBox1: TGroupBox
      Width = 812
      ExplicitWidth = 812
      inherited Label2: TLabel
        Height = 23
        ExplicitLeft = 4
        ExplicitTop = 19
      end
      inherited edSearch: TMaskEdit
        Width = 609
        ExplicitWidth = 609
      end
      inherited BitBtn1: TBitBtn
        Left = 710
        ExplicitLeft = 710
        ExplicitHeight = 23
      end
    end
  end
  inherited PageControl1: TPageControl
    Width = 812
    Height = 343
    ExplicitTop = 99
    ExplicitWidth = 812
    ExplicitHeight = 284
    inherited TabSheet1: TTabSheet
      Caption = 'Clientes'
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 804
      ExplicitHeight = 254
      inherited DBGrid1: TDBGrid
        Width = 804
        Height = 313
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 812
    ExplicitWidth = 812
    inherited ToolBar1: TToolBar
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
    Left = 40
    Top = 16
  end
  inherited IBrwSrc: TZReadOnlyQuery
    Connection = DM.Design
    SortedFields = 'nome_chave'
    SQL.Strings = (
      
        'select codigo, empresa, nome_chave, cnpj, cpf, email, cidade, es' +
        'tado '
      '  from tbclientes'
      'where situacao = '#39'ATIVO'#39)
    IndexFieldNames = 'nome_chave Asc'
    Left = 160
    object IBrwSrccodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'codigo'
      Required = True
    end
    object IBrwSrcempresa: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      DisplayWidth = 25
      FieldName = 'empresa'
      Size = 100
    end
    object IBrwSrcnome_chave: TStringField
      DisplayLabel = 'Apelido'
      DisplayWidth = 25
      FieldName = 'nome_chave'
      Size = 45
    end
    object IBrwSrccnpj: TStringField
      DisplayLabel = 'C.N.P.J.'
      DisplayWidth = 18
      FieldName = 'cnpj'
      EditMask = '99.999.999/9999-99;0;'
      Size = 14
    end
    object IBrwSrccpf: TStringField
      DisplayLabel = 'C.P.F.'
      DisplayWidth = 14
      FieldName = 'cpf'
      EditMask = '999.999.999-99;0;'
      Size = 11
    end
    object IBrwSrcemail: TStringField
      DisplayLabel = 'EMail'
      DisplayWidth = 25
      FieldName = 'email'
      Size = 100
    end
    object IBrwSrccidade: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 20
      FieldName = 'cidade'
      Size = 100
    end
    object IBrwSrcestado: TStringField
      DisplayLabel = 'Estado'
      DisplayWidth = 4
      FieldName = 'estado'
      Size = 2
    end
  end
  inherited pmOrder: TPopupMenu
    Left = 218
  end
  inherited alRunTime: TActionList
    Left = 282
  end
  inherited dsIBrowse: TDataSource
    Left = 104
  end
end
