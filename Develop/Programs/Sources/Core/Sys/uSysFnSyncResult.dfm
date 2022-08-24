inherited SysFnSyncResult: TSysFnSyncResult
  BorderStyle = bsSizeable
  Caption = 'Resultado'
  ClientHeight = 556
  ClientWidth = 979
  KeyPreview = False
  ExplicitWidth = 995
  ExplicitHeight = 595
  PixelsPerInch = 96
  TextHeight = 15
  inherited bvDiv: TBevel
    Width = 979
    ExplicitWidth = 979
  end
  inherited Panel1: TPanel
    Width = 979
    ExplicitWidth = 979
    inherited Shape1: TShape
      Width = 918
      ExplicitWidth = 918
    end
    inherited pnTitle: TPanel
      Width = 918
      ExplicitWidth = 918
      inherited Label1: TLabel
        Width = 912
        Caption = 'Processamento de Rotinas'
        ExplicitWidth = 206
      end
      inherited Label2: TLabel
        Width = 905
        Caption = 
          'Resultado da sincroniza'#231#227'o de rotinas e gatilhos com o banco de ' +
          'dados local'
        ExplicitWidth = 905
      end
    end
  end
  object Memo1: TMemo [2]
    AlignWithMargins = True
    Left = 3
    Top = 78
    Width = 973
    Height = 475
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Consolas'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 1
    OnKeyPress = Memo1KeyPress
  end
end
