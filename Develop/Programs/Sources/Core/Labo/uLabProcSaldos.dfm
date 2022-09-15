inherited LabProcSaldos: TLabProcSaldos
  Caption = 'Materiais com Cliente'
  ClientHeight = 527
  ClientWidth = 1035
  Constraints.MinWidth = 853
  ExplicitWidth = 1051
  ExplicitHeight = 566
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 500
    Width = 1029
    ExplicitTop = 500
    ExplicitWidth = 1029
  end
  inherited Panel1: TPanel
    Width = 1035
    ExplicitWidth = 1035
    inherited pctlFind: TPageControl
      Width = 1025
      ExplicitWidth = 1025
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1017
        ExplicitHeight = 75
        inherited BitBtn2: TBitBtn
          Left = 916
          ExplicitLeft = 916
        end
        object Panel8: TPanel
          Left = 0
          Top = 0
          Width = 212
          Height = 75
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 1
          object Label7: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 206
            Height = 15
            Align = alTop
            Caption = 'Nome Fantasia'
            ExplicitWidth = 79
          end
          object edEmpresa: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 206
            Height = 23
            Align = alTop
            TabOrder = 0
            OnChange = edEmpresaChange
          end
        end
        object Panel9: TPanel
          Left = 212
          Top = 0
          Width = 701
          Height = 75
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 2
          object Label8: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 695
            Height = 15
            Align = alTop
            Caption = 'Nome Empresarial'
            ExplicitWidth = 97
          end
          object edRazao: TEdit
            AlignWithMargins = True
            Left = 3
            Top = 24
            Width = 695
            Height = 23
            Align = alTop
            TabOrder = 0
            OnChange = edEmpresaChange
          end
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1017
        ExplicitHeight = 75
      end
    end
  end
  inherited Panel2: TPanel
    Width = 1035
    Height = 368
    ExplicitWidth = 1035
    ExplicitHeight = 368
    inherited PageControl1: TPageControl
      Width = 1029
      Height = 362
      ExplicitWidth = 1029
      ExplicitHeight = 362
      inherited TabSheet1: TTabSheet
        Caption = 'Saldo de Materiais com Clientes'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 1021
        ExplicitHeight = 332
        inherited DBGrid1: TDBGrid
          Width = 1015
          Height = 326
        end
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Width = 1029
    ExplicitWidth = 1029
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
    Left = 376
    Top = 184
  end
  inherited pmRel: TPopupMenu
    Left = 424
    Top = 184
  end
  inherited pmOrder: TPopupMenu
    Left = 474
    Top = 182
  end
  inherited alRunTime: TActionList
    Left = 530
    Top = 182
  end
  inherited DataSource1: TDataSource
    Left = 304
    Top = 184
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SortedFields = 'nome_chave'
    SQL.Strings = (
      
        'select cli.codigo,  cli.empresa, cli.nome_chave, cli.cnpj, cli.c' +
        'pf, com.seringas, com.frascos, com.seringas + com.frascos total'
      '  from tbclientes cli'
      
        '       join (select a.codigo, sum(sys_iif(p.tipo = 2, 1, 0)) ser' +
        'ingas, sum(sys_iif(p.tipo = 1, 1, 0)) frascos'
      '               from labamostras a'
      '                    join labprocxequip p'
      '                      on p.recno = a.origem_recno'
      '              where a.estado = 30'
      '                and a.origem = 11'
      '              group by a.codigo) com'
      '         on com.codigo = cli.codigo')
    IndexFieldNames = 'nome_chave Asc'
    Left = 248
    Top = 184
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
      DisplayWidth = 20
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
    object IBrwSrcseringas: TLargeintField
      DisplayLabel = 'Seringas'
      FieldName = 'seringas'
      ReadOnly = True
    end
    object IBrwSrcfrascos: TLargeintField
      DisplayLabel = 'Frascos'
      FieldName = 'frascos'
      ReadOnly = True
    end
    object IBrwSrctotal: TLargeintField
      DisplayLabel = 'Total'
      FieldName = 'total'
      ReadOnly = True
    end
  end
  inherited pmOpcao: TPopupMenu
    Left = 584
    Top = 184
  end
  inherited zIBrwSrc: TZUpdateSQL
    Left = 192
    Top = 184
  end
end
