inherited ContratosM: TContratosM
  BorderStyle = bsSizeable
  Caption = 'Manuten'#231#227'o de Contratos'
  ClientHeight = 729
  ClientWidth = 1135
  ExplicitWidth = 1151
  ExplicitHeight = 768
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Width = 1135
    Height = 685
    ExplicitWidth = 1145
    ExplicitHeight = 695
    inherited Panel3: TPanel
      Top = 422
      Width = 1135
      Height = 263
      ExplicitTop = 432
      ExplicitWidth = 1145
      ExplicitHeight = 263
      inherited PageControl3: TPageControl
        Width = 1129
        Height = 213
        ExplicitWidth = 1139
        ExplicitHeight = 213
        inherited tsDet: TTabSheet
          Caption = 'Servi'#231'os'
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 1131
          ExplicitHeight = 183
          inherited DBGrid1: TDBGrid
            Width = 1121
            Height = 183
            DataSource = Contratos.dsServicos
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Contatos'
          ImageIndex = 1
          ExplicitWidth = 1131
          object DBGrid2: TDBGrid
            Tag = 1
            Left = 0
            Top = 0
            Width = 1121
            Height = 183
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = Contratos.dsContatos
            DefaultDrawing = False
            Enabled = False
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Segoe UI'
            TitleFont.Pitch = fpVariable
            TitleFont.Style = []
            OnDrawColumnCell = DBGrid2DrawColumnCell
            OnDblClick = ChildGridDblClick
            OnEnter = ChildGridEnter
            OnKeyPress = ChildGridKeyPress
          end
        end
      end
      inherited ControlBar2: TControlBar
        Width = 1129
        ExplicitWidth = 1129
        inherited ToolBar3: TToolBar
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
      Width = 1129
      Height = 416
      ExplicitTop = 5
      ExplicitWidth = 1139
      ExplicitHeight = 426
      inherited TabSheet1: TTabSheet
        Caption = 'Contrato'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 1131
        ExplicitHeight = 396
        object Label7: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 273
          Width = 1115
          Height = 15
          Align = alTop
          Caption = 'Observa'#231#227'o'
          FocusControl = DBMemo1
          ExplicitWidth = 62
        end
        object DBMemo1: TDBMemo
          AlignWithMargins = True
          Left = 3
          Top = 294
          Width = 1115
          Height = 89
          Align = alClient
          DataField = 'obs'
          DataSource = Contratos.DataSource1
          TabOrder = 2
          ExplicitWidth = 1125
          ExplicitHeight = 99
        end
        object GroupBox1: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 135
          Width = 1115
          Height = 132
          Align = alTop
          Caption = ' Cliente '
          TabOrder = 1
          ExplicitWidth = 1125
          inline FrameCliente1: TFrameCliente
            Left = 2
            Top = 17
            Width = 1111
            Height = 113
            Align = alClient
            AutoSize = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Pitch = fpVariable
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            ExplicitLeft = 2
            ExplicitTop = 17
            ExplicitWidth = 1121
            ExplicitHeight = 113
            inherited Panel1: TPanel
              Width = 1111
              ExplicitWidth = 1121
              inherited Panel2: TPanel
                inherited DBEdit8: TDBEdit
                  DataField = 'cliente'
                end
              end
              inherited Panel35: TPanel
                inherited SpeedButton1: TSpeedButton
                  OnClick = nil
                end
              end
              inherited Panel4: TPanel
                Width = 512
                ExplicitWidth = 522
                inherited Label10: TLabel
                  Width = 506
                end
                inherited DBEdit9: TDBEdit
                  Width = 506
                  ExplicitWidth = 516
                end
              end
              inherited Panel5: TPanel
                Left = 617
                ExplicitLeft = 627
              end
              inherited Panel6: TPanel
                Left = 871
                ExplicitLeft = 881
              end
              inherited Panel7: TPanel
                Left = 999
                ExplicitLeft = 1009
              end
            end
            inherited Panel3: TPanel
              Width = 1111
              ExplicitWidth = 1121
              inherited Panel8: TPanel
                Width = 610
                ExplicitWidth = 620
                inherited Label1: TLabel
                  Width = 604
                end
                inherited DBEdit1: TDBEdit
                  Width = 604
                  ExplicitWidth = 614
                end
              end
              inherited Panel9: TPanel
                Left = 931
                ExplicitLeft = 941
              end
              inherited Panel30: TPanel
                inherited DBEdit17: TDBEdit
                  DataField = 'email_1'
                end
              end
              inherited Panel10: TPanel
                Left = 983
                ExplicitLeft = 993
              end
            end
            inherited dsCliente: TDataSource
              DataSet = Contratos.IBrwSrc
              OnDataChange = FrameCliente1dsClienteDataChange
            end
          end
        end
        object GroupBox2: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 1115
          Height = 126
          Align = alTop
          Caption = ' Contrato '
          TabOrder = 0
          ExplicitWidth = 1125
          object Panel2: TPanel
            Left = 2
            Top = 17
            Width = 1111
            Height = 50
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitWidth = 1121
            object Panel4: TPanel
              Left = 0
              Top = 0
              Width = 210
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label1: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 204
                Height = 15
                Align = alTop
                Caption = 'Contrato'
                FocusControl = dbeContrato
                ExplicitWidth = 47
              end
              object dbeContrato: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 204
                Height = 23
                Align = alClient
                CharCase = ecUpperCase
                DataField = 'contrato'
                DataSource = Contratos.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel5: TPanel
              Left = 210
              Top = 0
              Width = 135
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object Label2: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 129
                Height = 15
                Align = alTop
                Caption = 'Emiss'#227'o'
                FocusControl = DBEdit2
                ExplicitWidth = 43
              end
              object DBEdit2: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 129
                Height = 23
                TabStop = False
                Align = alClient
                DataField = 'emissao'
                DataSource = Contratos.DataSource1
                ReadOnly = True
                TabOrder = 0
              end
            end
            object Panel6: TPanel
              Left = 345
              Top = 0
              Width = 100
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 2
              object Label3: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 94
                Height = 15
                Align = alTop
                Caption = 'In'#237'cio'
                FocusControl = dbeInicio
                ExplicitWidth = 29
              end
              object dbeInicio: TJvDBDateEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 94
                Height = 23
                Align = alClient
                DataField = 'inicio'
                DataSource = Contratos.DataSource1
                CheckOnExit = True
                ShowNullDate = False
                TabOrder = 0
              end
            end
            object Panel7: TPanel
              Left = 445
              Top = 0
              Width = 100
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 3
              object Label4: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 94
                Height = 15
                Align = alTop
                Caption = 'T'#233'rmino'
                FocusControl = dbeTermino
                ExplicitWidth = 43
              end
              object dbeTermino: TJvDBDateEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 94
                Height = 23
                Align = alClient
                DataField = 'termino'
                DataSource = Contratos.DataSource1
                CheckOnExit = True
                ShowNullDate = False
                TabOrder = 0
              end
            end
            object Panel8: TPanel
              Left = 545
              Top = 0
              Width = 110
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 4
              object Label5: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 104
                Height = 15
                Align = alTop
                Caption = 'Valor'
                FocusControl = dbeValor
                ExplicitWidth = 26
              end
              object dbeValor: TJvDBCalcEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 104
                Height = 23
                Align = alClient
                CheckOnExit = True
                DisplayFormat = ',0.00'
                FormatOnEditing = True
                TabOrder = 0
                DecimalPlacesAlwaysShown = True
                DataField = 'valor'
                DataSource = Contratos.DataSource1
              end
            end
            object Panel9: TPanel
              Left = 655
              Top = 0
              Width = 110
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 5
              object Label6: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 104
                Height = 15
                Align = alTop
                Caption = 'Valor Por Coleta'
                FocusControl = dbeValorColeta
                ExplicitWidth = 84
              end
              object dbeValorColeta: TJvDBCalcEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 104
                Height = 23
                Align = alClient
                CheckOnExit = True
                DisplayFormat = ',0.00'
                FormatOnEditing = True
                TabOrder = 0
                DecimalPlacesAlwaysShown = True
                DataField = 'valor_coleta'
                DataSource = Contratos.DataSource1
              end
            end
            object Panel10: TPanel
              Left = 765
              Top = 0
              Width = 110
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 6
              object Label8: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 104
                Height = 15
                Align = alTop
                Caption = 'Prazo Recebimento'
                FocusControl = dbePrazo
                ExplicitWidth = 102
              end
              object dbePrazo: TJvDBCalcEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 104
                Height = 23
                Align = alClient
                CheckOnExit = True
                DecimalPlaces = 0
                DisplayFormat = ',0'
                FormatOnEditing = True
                ShowButton = False
                TabOrder = 0
                DecimalPlacesAlwaysShown = False
                DataField = 'prazo_rec'
                DataSource = Contratos.DataSource1
              end
            end
            object Panel11: TPanel
              Left = 875
              Top = 0
              Width = 100
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 7
              object Label9: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 94
                Height = 15
                Align = alTop
                Caption = 'Status'
                FocusControl = cbStatus
                ExplicitWidth = 32
              end
              object cbStatus: TDBComboBox
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 94
                Height = 23
                Style = csDropDownList
                Align = alClient
                AutoDropDown = True
                DataField = 'status'
                DataSource = Contratos.DataSource1
                Enabled = False
                ItemHeight = 15
                Items.Strings = (
                  'Elabora'#231#227'o'
                  'Vigente'
                  'Encerrado')
                ReadOnly = True
                TabOrder = 0
              end
            end
          end
          object Panel13: TPanel
            Left = 2
            Top = 67
            Width = 1111
            Height = 50
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitWidth = 1121
            object Panel20: TPanel
              Left = 0
              Top = 0
              Width = 110
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 0
              object Label17: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 104
                Height = 15
                Align = alTop
                Caption = 'Transporte'
                ExplicitWidth = 55
              end
              object DBComboBox3: TDBComboBox
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 104
                Height = 23
                Style = csDropDownList
                Align = alClient
                AutoDropDown = True
                DataField = 'transporte'
                DataSource = Contratos.DataSource1
                ItemHeight = 15
                Items.Strings = (
                  'Lorencini'
                  'Cliente')
                TabOrder = 0
              end
            end
            object Panel21: TPanel
              Left = 110
              Top = 0
              Width = 100
              Height = 50
              Align = alLeft
              BevelOuter = bvNone
              TabOrder = 1
              object Label18: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 94
                Height = 15
                Align = alTop
                Caption = 'Coleta'
                ExplicitWidth = 34
              end
              object DBComboBox4: TDBComboBox
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 94
                Height = 23
                Style = csDropDownList
                Align = alClient
                AutoDropDown = True
                DataField = 'coleta'
                DataSource = Contratos.DataSource1
                ItemHeight = 15
                Items.Strings = (
                  'Lorencini'
                  'Cliente')
                TabOrder = 0
              end
            end
            object Panel22: TPanel
              Left = 210
              Top = 0
              Width = 901
              Height = 50
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 2
              ExplicitWidth = 911
              object Label19: TLabel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 895
                Height = 15
                Align = alTop
                Caption = 'E-mail'
                FocusControl = DBEdit6
                ExplicitWidth = 34
              end
              object DBEdit6: TDBEdit
                AlignWithMargins = True
                Left = 3
                Top = 24
                Width = 895
                Height = 23
                Align = alClient
                DataField = 'email'
                DataSource = FrameCliente1.dsCliente
                TabOrder = 0
                ExplicitWidth = 905
              end
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 1129
    ExplicitWidth = 1129
    inherited ToolBar1: TToolBar
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
end
