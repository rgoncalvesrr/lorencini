inherited IProgress: TIProgress
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'Progresso'
  ClientHeight = 126
  ClientWidth = 1142
  FormStyle = fsStayOnTop
  ExplicitWidth = 1148
  ExplicitHeight = 155
  PixelsPerInch = 96
  TextHeight = 15
  inherited bvDiv: TBevel
    Width = 1142
  end
  object Label3: TLabel [1]
    AlignWithMargins = True
    Left = 3
    Top = 78
    Width = 1136
    Height = 15
    Align = alTop
    ExplicitWidth = 3
  end
  inherited Panel1: TPanel
    Width = 1142
    inherited Shape1: TShape
      Width = 1081
    end
    inherited Image1: TImage
      Height = 64
    end
    inherited pnTitle: TPanel
      Width = 1081
      inherited Label1: TLabel
        Width = 1075
        Caption = 'Exporta'#231#227'o de Laudos'
        ExplicitWidth = 173
      end
      inherited Label2: TLabel
        Width = 1068
        Height = 33
        Caption = 'Exportando laudos para formato PDF'
        ExplicitWidth = 203
      end
    end
  end
  object ProgressBar1: TProgressBar [3]
    AlignWithMargins = True
    Left = 3
    Top = 99
    Width = 1136
    Height = 24
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 160
    ExplicitTop = 80
    ExplicitWidth = 150
    ExplicitHeight = 17
  end
end
