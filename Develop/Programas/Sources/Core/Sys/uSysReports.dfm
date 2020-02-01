inherited SysReports: TSysReports
  Caption = 'Relat'#243'rios'
  ClientHeight = 423
  ExplicitHeight = 452
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Height = 379
    ExplicitHeight = 379
    inherited Panel3: TPanel
      Top = 144
      ExplicitTop = 144
      inherited PageControl3: TPageControl
        inherited tsDet: TTabSheet
          Caption = 'Disponibilidade'
          inherited DBGrid1: TDBGrid
            DataSource = DM.dsqSysFormRpt
          end
        end
      end
    end
    inherited PageControl1: TPageControl
      Height = 138
      ExplicitHeight = 138
      inherited TabSheet1: TTabSheet
        Caption = 'Relat'#243'rio'
        ExplicitHeight = 108
        object Label1: TLabel
          Left = 3
          Top = 9
          Width = 47
          Height = 15
          Caption = 'Relat'#243'rio'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 70
          Top = 11
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 3
          Top = 56
          Width = 32
          Height = 15
          Caption = 'Filtros'
          FocusControl = dbeForm
        end
        object Label4: TLabel
          Left = 231
          Top = 56
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit4
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 26
          Width = 60
          Height = 23
          DataField = 'report'
          DataSource = DM.dsSysReports
          Enabled = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 70
          Top = 26
          Width = 407
          Height = 23
          DataField = 'descri'
          DataSource = DM.dsSysReports
          TabOrder = 1
        end
        object dbeForm: TDBEdit
          Left = 3
          Top = 73
          Width = 194
          Height = 23
          DataField = 'form'
          DataSource = DM.dsSysReports
          TabOrder = 2
          OnExit = dbeFormExit
        end
        object DBEdit4: TDBEdit
          Left = 231
          Top = 73
          Width = 364
          Height = 23
          DataField = 'descri_1'
          DataSource = DM.dsSysReports
          TabOrder = 3
        end
        object Button1: TButton
          Left = 200
          Top = 73
          Width = 23
          Height = 23
          Action = actLookup
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
      end
    end
  end
  inherited alDef: TActionList
    Left = 192
    object actLookup: TAction
      Caption = '...'
      OnExecute = actLookupExecute
    end
  end
end
