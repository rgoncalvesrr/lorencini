inherited DocM: TDocM
  BorderStyle = bsSingle
  Caption = 'Manuten'#231#227'o de Se'#231#227'o do Documento'
  PixelsPerInch = 96
  TextHeight = 15
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
  inherited Panel1: TPanel
    inherited Panel3: TPanel
      Align = alNone
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
      inherited PageControl3: TPageControl
        inherited tsDet: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 620
          ExplicitHeight = 163
        end
      end
    end
    inherited PageControl1: TPageControl
      Height = 422
      ExplicitHeight = 422
      inherited TabSheet1: TTabSheet
        Caption = 'Se'#231#227'o'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 620
        ExplicitHeight = 392
        object Label2: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 59
          Width = 614
          Height = 15
          Align = alTop
          Caption = 'Conte'#250'do'
          ExplicitWidth = 53
        end
        object Splitter2: TSplitter
          Left = 0
          Top = 155
          Width = 620
          Height = 3
          Cursor = crVSplit
          Align = alBottom
          ExplicitTop = 77
          ExplicitWidth = 81
        end
        object Panel2: TPanel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 614
          Height = 50
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 52
            Height = 50
            Align = alLeft
            BevelOuter = bvNone
            TabOrder = 0
            object Label3: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 46
              Height = 15
              Align = alTop
              Caption = 'Ordem'
              FocusControl = DBEdit2
              ExplicitWidth = 37
            end
            object DBEdit2: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 46
              Height = 23
              Align = alClient
              DataField = 'ordem'
              DataSource = Doc.DataSource1
              TabOrder = 0
            end
          end
          object Panel5: TPanel
            Left = 52
            Top = 0
            Width = 562
            Height = 50
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object Label1: TLabel
              AlignWithMargins = True
              Left = 3
              Top = 3
              Width = 556
              Height = 15
              Align = alTop
              Caption = 'T'#237'tulo'
              FocusControl = DBEdit1
              ExplicitWidth = 31
            end
            object DBEdit1: TDBEdit
              AlignWithMargins = True
              Left = 3
              Top = 24
              Width = 556
              Height = 23
              Align = alClient
              DataField = 'titulo'
              DataSource = Doc.DataSource1
              TabOrder = 0
            end
          end
        end
        object DBRichEdit1: TDBRichEdit
          AlignWithMargins = True
          Left = 3
          Top = 80
          Width = 614
          Height = 72
          Align = alClient
          DataField = 'conteudo'
          DataSource = Doc.DataSource1
          HideScrollBars = False
          ScrollBars = ssVertical
          TabOrder = 1
        end
        object Panel6: TPanel
          Left = 0
          Top = 158
          Width = 620
          Height = 234
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          OnResize = Panel6Resize
          object Splitter1: TSplitter
            Left = 284
            Top = 0
            Height = 234
            ExplicitLeft = 312
            ExplicitTop = 40
            ExplicitHeight = 100
          end
          object GroupBox1: TGroupBox
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 278
            Height = 228
            Align = alLeft
            Caption = ' Imagem 1 '
            TabOrder = 0
            inline FrameImage1: TFrameImage
              Left = 2
              Top = 17
              Width = 274
              Height = 209
              Align = alClient
              TabOrder = 0
              ExplicitLeft = 2
              ExplicitTop = 17
              ExplicitWidth = 274
              ExplicitHeight = 209
              inherited FrameImage: TJvDBImage
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 268
                Height = 203
                DataField = 'img1'
                DataSource = Doc.DataSource1
                ExplicitLeft = 3
                ExplicitTop = 3
                ExplicitWidth = 268
                ExplicitHeight = 203
              end
            end
          end
          object GroupBox2: TGroupBox
            AlignWithMargins = True
            Left = 290
            Top = 3
            Width = 327
            Height = 228
            Align = alClient
            Caption = ' Imagem 2 '
            TabOrder = 1
            inline FrameImage2: TFrameImage
              Left = 2
              Top = 17
              Width = 323
              Height = 209
              Align = alClient
              TabOrder = 0
              ExplicitLeft = 2
              ExplicitTop = 17
              ExplicitWidth = 323
              ExplicitHeight = 209
              inherited FrameImage: TJvDBImage
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 317
                Height = 203
                DataField = 'img2'
                DataSource = Doc.DataSource1
                ExplicitLeft = 3
                ExplicitTop = 3
                ExplicitWidth = 317
                ExplicitHeight = 203
              end
            end
          end
        end
      end
    end
  end
end
