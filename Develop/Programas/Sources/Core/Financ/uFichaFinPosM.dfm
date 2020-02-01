inherited FichaFinPosM: TFichaFinPosM
  Caption = 'Edi'#231#227'o Posi'#231#227'o Financeira'
  ClientHeight = 585
  ClientWidth = 907
  ExplicitWidth = 913
  ExplicitHeight = 614
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 907
    Height = 541
    ExplicitLeft = 0
    ExplicitWidth = 907
    ExplicitHeight = 541
    inherited Panel3: TPanel
      Top = 216
      Width = 907
      Height = 325
      ExplicitTop = 216
      ExplicitWidth = 907
      ExplicitHeight = 325
      inherited PageControl3: TPageControl
        Width = 901
        Height = 275
        Images = Resources.medium_n
        ExplicitLeft = 3
        ExplicitTop = 47
        ExplicitWidth = 901
        ExplicitHeight = 275
        inherited tsDet: TTabSheet
          Caption = 'Todos os T'#237'tulos'
          ImageIndex = -1
          ExplicitLeft = 4
          ExplicitTop = 33
          ExplicitWidth = 893
          ExplicitHeight = 238
          inherited DBGrid1: TDBGrid
            Width = 893
            Height = 238
            DataSource = FichaFinPos.dsTit
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Em Aberto'
          ImageIndex = 205
        end
        object TabSheet3: TTabSheet
          Caption = 'Quitados'
          ImageIndex = 208
        end
        object TabSheet4: TTabSheet
          Caption = 'Em Atraso'
          ImageIndex = 213
        end
      end
      inherited ControlBar2: TControlBar
        Width = 901
        ExplicitWidth = 901
        inherited ToolBar3: TToolBar
          Width = 888
          ExplicitWidth = 888
          inherited ToolButton10: TToolButton
            ExplicitWidth = 32
          end
          inherited ToolButton11: TToolButton
            ExplicitWidth = 32
          end
          inherited ToolButton17: TToolButton
            ExplicitWidth = 32
          end
          inherited ToolButton12: TToolButton
            ExplicitWidth = 32
          end
          inherited ToolButton13: TToolButton
            ExplicitWidth = 32
          end
          inherited tbSQLDet: TToolButton
            ExplicitWidth = 32
          end
          inherited tbRefazGrid: TToolButton
            ExplicitWidth = 32
          end
        end
      end
    end
    inherited PageControl1: TPageControl
      Width = 901
      Height = 210
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 901
      ExplicitHeight = 210
      inherited TabSheet1: TTabSheet
        Caption = 'Posi'#231#227'o Financeira'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 893
        ExplicitHeight = 180
        object Label1: TLabel
          Left = 3
          Top = 98
          Width = 157
          Height = 15
          Caption = 'Motivo para Bloqueio Manual'
          FocusControl = DBMemo1
        end
        object Label2: TLabel
          Left = 3
          Top = 52
          Width = 93
          Height = 15
          Caption = 'T'#237'tulos em Atraso'
          FocusControl = DBEdit1
        end
        object Label3: TLabel
          Left = 102
          Top = 52
          Width = 76
          Height = 15
          Caption = 'Saldo Devedor'
          FocusControl = DBEdit2
        end
        object Label4: TLabel
          Left = 3
          Top = 4
          Width = 39
          Height = 15
          Caption = 'C'#243'digo'
          FocusControl = DBEdit3
        end
        object Label5: TLabel
          Left = 66
          Top = 4
          Width = 97
          Height = 15
          Caption = 'Nome Empresarial'
          FocusControl = DBEdit4
        end
        object Label6: TLabel
          Left = 407
          Top = 4
          Width = 66
          Height = 15
          Caption = 'Nome Curto'
          FocusControl = DBEdit5
        end
        object Label7: TLabel
          Left = 671
          Top = 4
          Width = 40
          Height = 15
          Caption = 'C.N.P.J.'
          FocusControl = DBEdit6
        end
        object Label8: TLabel
          Left = 783
          Top = 4
          Width = 21
          Height = 15
          Caption = 'CPF'
          FocusControl = DBEdit7
        end
        object Label9: TLabel
          Left = 246
          Top = 49
          Width = 90
          Height = 15
          Caption = 'Bloqueio Manual'
          FocusControl = DBEdit2
        end
        object Label10: TLabel
          Left = 342
          Top = 52
          Width = 45
          Height = 15
          Caption = 'Telefone'
          FocusControl = DBEdit8
        end
        object Label11: TLabel
          Left = 502
          Top = 52
          Width = 34
          Height = 15
          Caption = 'E-mail'
          FocusControl = DBEdit9
        end
        object DBMemo1: TDBMemo
          Left = 3
          Top = 114
          Width = 880
          Height = 56
          DataField = 'restrmotiv'
          DataSource = FichaFinPos.DataSource1
          TabOrder = 0
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 68
          Width = 93
          Height = 23
          TabStop = False
          DataField = 'titulos'
          DataSource = FichaFinPos.DataSource1
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit2: TDBEdit
          Left = 102
          Top = 68
          Width = 138
          Height = 23
          TabStop = False
          DataField = 'saldo'
          DataSource = FichaFinPos.DataSource1
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit3: TDBEdit
          Left = 3
          Top = 20
          Width = 57
          Height = 23
          TabStop = False
          DataField = 'codigo'
          DataSource = FichaFinPos.DataSource1
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 66
          Top = 20
          Width = 335
          Height = 23
          TabStop = False
          DataField = 'empresa'
          DataSource = FichaFinPos.DataSource1
          TabOrder = 4
        end
        object DBEdit5: TDBEdit
          Left = 407
          Top = 20
          Width = 258
          Height = 23
          TabStop = False
          DataField = 'nome_chave'
          DataSource = FichaFinPos.DataSource1
          TabOrder = 5
        end
        object DBEdit6: TDBEdit
          Left = 671
          Top = 20
          Width = 106
          Height = 23
          TabStop = False
          DataField = 'cnpj'
          DataSource = FichaFinPos.DataSource1
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit7: TDBEdit
          Left = 783
          Top = 20
          Width = 100
          Height = 23
          TabStop = False
          DataField = 'cpf'
          DataSource = FichaFinPos.DataSource1
          ReadOnly = True
          TabOrder = 7
        end
        object DBComboBox1: TDBComboBox
          Left = 246
          Top = 68
          Width = 90
          Height = 23
          Style = csDropDownList
          DataField = 'restricao'
          DataSource = FichaFinPos.DataSource1
          ItemHeight = 15
          Items.Strings = (
            'SIM'
            'N'#195'O')
          TabOrder = 8
        end
        object DBEdit8: TDBEdit
          Left = 342
          Top = 68
          Width = 154
          Height = 23
          TabStop = False
          DataField = 'telefone'
          DataSource = FichaFinPos.DataSource1
          ReadOnly = True
          TabOrder = 9
        end
        object DBEdit9: TDBEdit
          Left = 502
          Top = 68
          Width = 381
          Height = 23
          TabStop = False
          DataField = 'email'
          DataSource = FichaFinPos.DataSource1
          ReadOnly = True
          TabOrder = 10
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 901
    ExplicitWidth = 901
    inherited ToolBar1: TToolBar
      Width = 888
      ExplicitWidth = 888
      inherited ToolButton6: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton4: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton7: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton1: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton2: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton8: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton9: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton14: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton16: TToolButton
        ExplicitWidth = 32
      end
      inherited tbSQL: TToolButton
        ExplicitWidth = 32
      end
      inherited tbClose: TToolButton
        ExplicitWidth = 32
      end
    end
  end
  inherited alDef: TActionList
    Left = 208
    inherited actNew: TAction
      Visible = False
    end
    inherited actEdit: TAction
      Visible = False
    end
    inherited actDel: TAction
      Visible = False
    end
    inherited actView: TAction
      Visible = False
    end
  end
end
