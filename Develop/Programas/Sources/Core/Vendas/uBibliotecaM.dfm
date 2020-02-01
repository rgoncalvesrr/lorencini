inherited BibliotecaM: TBibliotecaM
  BorderStyle = bsSingle
  Caption = 'Edi'#231#227'o de Modelos de Se'#231#227'o'
  ClientHeight = 700
  ExplicitWidth = 858
  ExplicitHeight = 735
  PixelsPerInch = 120
  TextHeight = 20
  inherited Panel1: TPanel
    Top = 44
    Height = 656
    ExplicitTop = 57
    ExplicitHeight = 643
    inherited Panel3: TPanel
      Align = alNone
      ExplicitTop = 262
      inherited PageControl3: TPageControl
        Top = 47
        Height = 263
        ExplicitLeft = 3
        ExplicitTop = 60
        ExplicitWidth = 846
        ExplicitHeight = 250
        inherited tsDet: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 31
          ExplicitWidth = 838
          ExplicitHeight = 215
          inherited DBGrid1: TDBGrid
            Width = 838
            Height = 228
          end
        end
      end
      inherited ControlBar2: TControlBar
        Height = 38
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 846
        ExplicitHeight = 38
        inherited ToolBar3: TToolBar
          ButtonWidth = 150
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
      Height = 650
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 846
      ExplicitHeight = 637
      inherited TabSheet1: TTabSheet
        Caption = 'Se'#231#227'o'
        ExplicitLeft = 4
        ExplicitTop = 31
        ExplicitWidth = 838
        ExplicitHeight = 602
        object Label2: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 69
          Width = 832
          Height = 20
          Align = alTop
          Caption = 'Conte'#250'do'
          ExplicitTop = 76
          ExplicitWidth = 65
        end
        object Splitter2: TSplitter
          Left = 0
          Top = 299
          Width = 838
          Height = 4
          Cursor = crVSplit
          Align = alBottom
          ExplicitTop = 277
          ExplicitWidth = 833
        end
        object Panel2: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 832
          Height = 60
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 69
            Height = 60
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            ExplicitHeight = 67
            object DBCheckBox1: TDBCheckBox
              AlignWithMargins = True
              Left = 3
              Top = 23
              Width = 63
              Height = 34
              Margins.Top = 23
              Align = alClient
              Caption = 'Ativo'
              DataField = 'ativo'
              DataSource = Biblioteca.DataSource1
              TabOrder = 0
              ValueChecked = 'True'
              ValueUnchecked = 'False'
              ExplicitHeight = 41
            end
          end
          object Panel5: TPanel
            Left = 69
            Top = 0
            Width = 763
            Height = 60
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            ExplicitHeight = 67
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 757
              Height = 20
              Align = alTop
              Caption = 'Se'#231#227'o'
              FocusControl = DBEdit1
              ExplicitLeft = 4
              ExplicitTop = 4
              ExplicitWidth = 40
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 29
              Width = 757
              Height = 28
              Align = alClient
              DataField = 'titulo'
              DataSource = Biblioteca.DataSource1
              TabOrder = 0
            end
          end
        end
        object DBRichEdit1: TDBRichEdit
          AlignWithMargins = True
          Left = 3
          Top = 95
          Width = 832
          Height = 201
          Align = alClient
          DataField = 'conteudo'
          DataSource = Biblioteca.DataSource1
          ScrollBars = ssVertical
          TabOrder = 1
          ExplicitTop = 102
          ExplicitHeight = 181
        end
        object Panel6: TPanel
          Left = 0
          Top = 303
          Width = 838
          Height = 312
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          OnResize = Panel6Resize
          ExplicitTop = 290
          object Splitter1: TSplitter
            Left = 377
            Top = 0
            Width = 4
            Height = 312
            ExplicitLeft = 379
          end
          object GroupBox1: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 371
            Height = 306
            Align = alLeft
            Caption = ' Imagem 1 '
            TabOrder = 0
            inline FrameImage1: TFrameImage
              Left = 2
              Top = 22
              Width = 367
              Height = 282
              Align = alClient
              TabOrder = 0
              ExplicitLeft = 2
              ExplicitTop = 22
              ExplicitWidth = 367
              ExplicitHeight = 282
              inherited FrameImage: TJvDBImage
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 361
                Height = 276
                DataField = 'img1'
                DataSource = Biblioteca.DataSource1
                ExplicitLeft = 3
                ExplicitTop = 3
                ExplicitWidth = 361
                ExplicitHeight = 276
              end
            end
          end
          object GroupBox2: TGroupBox
            AlignWithMargins = True
            Left = 384
            Top = 3
            Width = 451
            Height = 306
            Align = alClient
            Caption = ' Imagem 2 '
            TabOrder = 1
            inline FrameImage2: TFrameImage
              Left = 2
              Top = 22
              Width = 447
              Height = 282
              Align = alClient
              TabOrder = 0
              ExplicitLeft = 2
              ExplicitTop = 22
              ExplicitWidth = 447
              ExplicitHeight = 282
              inherited FrameImage: TJvDBImage
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 441
                Height = 276
                DataField = 'img2'
                DataSource = Biblioteca.DataSource1
                ExplicitLeft = 3
                ExplicitTop = 3
                ExplicitWidth = 441
                ExplicitHeight = 276
              end
            end
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 846
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      ButtonWidth = 133
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
    Left = 200
  end
end
