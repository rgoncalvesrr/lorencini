inherited ReceberContatosM: TReceberContatosM
  Caption = 'Contatos'
  ClientHeight = 363
  ExplicitHeight = 392
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Height = 319
    ExplicitHeight = 319
    inherited Panel3: TPanel
      Align = alNone
    end
    inherited PageControl1: TPageControl
      Height = 313
      ExplicitHeight = 313
      inherited TabSheet1: TTabSheet
        Caption = 'Manuten'#231#227'o de Contatos'
        ExplicitHeight = 283
        object Label1: TLabel
          Left = 3
          Top = 9
          Width = 37
          Height = 15
          Caption = 'Cliente'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 71
          Top = 9
          Width = 45
          Height = 15
          Caption = 'Empresa'
          FocusControl = DBEdit2
        end
        object Bevel6: TBevel
          Left = 3
          Top = 56
          Width = 609
          Height = 15
          Shape = bsTopLine
        end
        object Label3: TLabel
          Left = 3
          Top = 74
          Width = 33
          Height = 15
          Caption = 'Nome'
          FocusControl = DBEdit3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 3
          Top = 104
          Width = 39
          Height = 15
          Caption = 'Fun'#231#227'o'
          FocusControl = DBEdit4
        end
        object Label5: TLabel
          Left = 3
          Top = 136
          Width = 48
          Height = 15
          Caption = 'Telefone'
          FocusControl = DBEdit5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 3
          Top = 166
          Width = 37
          Height = 15
          Caption = 'Celular'
          FocusControl = DBEdit6
        end
        object Label7: TLabel
          Left = 3
          Top = 196
          Width = 31
          Height = 15
          Caption = 'Email'
          FocusControl = DBEdit7
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 3
          Top = 226
          Width = 33
          Height = 15
          Caption = 'Nextel'
          FocusControl = DBEdit8
        end
        object Label9: TLabel
          Left = 3
          Top = 256
          Width = 56
          Height = 15
          Caption = 'Nextel Cel.'
          FocusControl = DBEdit9
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 26
          Width = 61
          Height = 23
          TabStop = False
          DataField = 'cliente'
          DataSource = Receber.dsContatos
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 71
          Top = 26
          Width = 541
          Height = 23
          TabStop = False
          DataField = 'empresa'
          DataSource = Receber.dsContatos
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 71
          Top = 65
          Width = 304
          Height = 23
          DataField = 'nome'
          DataSource = Receber.dsContatos
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 71
          Top = 95
          Width = 229
          Height = 23
          DataField = 'funcao'
          DataSource = Receber.dsContatos
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 71
          Top = 128
          Width = 229
          Height = 23
          DataField = 'telefone'
          DataSource = Receber.dsContatos
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 71
          Top = 158
          Width = 229
          Height = 23
          DataField = 'celular'
          DataSource = Receber.dsContatos
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 71
          Top = 188
          Width = 454
          Height = 23
          DataField = 'email'
          DataSource = Receber.dsContatos
          TabOrder = 6
        end
        object DBEdit8: TDBEdit
          Left = 71
          Top = 218
          Width = 229
          Height = 23
          DataField = 'contato_nextel'
          DataSource = Receber.dsContatos
          TabOrder = 7
        end
        object DBEdit9: TDBEdit
          Left = 71
          Top = 248
          Width = 229
          Height = 23
          DataField = 'contato_nextelcel'
          DataSource = Receber.dsContatos
          TabOrder = 8
        end
      end
    end
  end
  inherited alDef: TActionList
    Left = 208
  end
end
