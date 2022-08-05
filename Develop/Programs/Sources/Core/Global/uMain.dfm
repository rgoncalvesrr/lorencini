inherited Main: TMain
  Left = 712
  Top = 199
  Caption = 'Gerenciador Lorencini'
  ClientHeight = 113
  ClientWidth = 418
  Menu = MainMenu1
  OldCreateOrder = True
  OnActivate = FormActivate
  ExplicitWidth = 426
  ExplicitHeight = 159
  PixelsPerInch = 96
  TextHeight = 14
  inherited alDef: TActionList
    inherited actOk: TAction
      Enabled = False
    end
    inherited actCancel: TAction
      Enabled = False
    end
    object actFunc: TAction
      Caption = 'Funcion'#225'rios...'
      OnExecute = actFuncExecute
    end
    object actCli: TAction
      Caption = 'Clientes...'
    end
    object actForn: TAction
      Caption = 'Fornecedores...'
      OnExecute = actFornExecute
    end
    object actGrpPro: TAction
      Caption = 'Grupo de Produtos...'
      OnExecute = actGrpProExecute
    end
    object actPro: TAction
      Caption = 'Produtos...'
      OnExecute = actProExecute
    end
    object actFuncao: TAction
      Caption = 'Fun'#231#245'es (M'#227'o-de-Obra)...'
      OnExecute = actFuncaoExecute
    end
    object actEquip: TAction
      Caption = 'Equipamentos (Loca'#231#245'es)...'
      OnExecute = actEquipExecute
    end
    object actSGrpPro: TAction
      Caption = 'Subgrupo de Produtos...'
      OnExecute = actSGrpProExecute
    end
    object actVend: TAction
      Caption = 'Vendedores...'
      OnExecute = actVendExecute
    end
    object actClose: TWindowClose
      Category = 'Window'
      Caption = 'Fechar'
      Hint = 'Close'
      ShortCut = 32883
      OnExecute = actCloseExecute
    end
  end
  object MainMenu1: TMainMenu
    Left = 72
    Top = 24
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Funcionrios1: TMenuItem
        Action = actFunc
      end
      object Clientes1: TMenuItem
        Action = actCli
      end
      object Fornecedores1: TMenuItem
        Action = actForn
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object GrupodeProdutos1: TMenuItem
        Action = actGrpPro
      end
      object SubgrupodeProdutos1: TMenuItem
        Action = actSGrpPro
      end
      object Produtos1: TMenuItem
        Action = actPro
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object FunesModeObra1: TMenuItem
        Action = actFuncao
      end
      object EquipamentosLocaes1: TMenuItem
        Action = actEquip
      end
      object Vendedores1: TMenuItem
        Action = actVend
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Fechar1: TMenuItem
        Action = actClose
      end
    end
    object Apontamento1: TMenuItem
      Caption = 'Apontamento'
    end
    object Laboratrio1: TMenuItem
      Caption = 'Laborat'#243'rio'
    end
    object Job1: TMenuItem
      Caption = 'Job'
    end
    object Oramentos1: TMenuItem
      Caption = 'Or'#231'amentos'
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
    end
  end
end
