inherited LabProcRastreioM: TLabProcRastreioM
  Caption = 'Registro de Rastreamento'
  ClientHeight = 239
  ExplicitHeight = 268
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Height = 195
    ExplicitHeight = 195
    inherited Panel3: TPanel
      Align = alNone
    end
    inherited PageControl1: TPageControl
      inherited TabSheet1: TTabSheet
        Caption = 'Rastreamento'
        object Label1: TLabel
          Left = 3
          Top = 8
          Width = 46
          Height = 15
          Caption = 'Remessa'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 55
          Top = 8
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 365
          Top = 8
          Width = 29
          Height = 15
          Caption = 'Envio'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 3
          Top = 56
          Width = 40
          Height = 15
          Caption = 'Volume'
          FocusControl = DBEdit4
        end
        object Label5: TLabel
          Left = 479
          Top = 8
          Width = 43
          Height = 15
          Caption = 'Etiqueta'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 55
          Top = 56
          Width = 39
          Height = 15
          Caption = 'Frascos'
          FocusControl = DBEdit6
        end
        object Label7: TLabel
          Left = 170
          Top = 56
          Width = 44
          Height = 15
          Caption = 'Seringas'
          FocusControl = DBEdit7
        end
        object Label8: TLabel
          Left = 285
          Top = 56
          Width = 131
          Height = 15
          Caption = 'C'#243'digo de Rastreamento'
          FocusControl = DBEdit8
        end
        object Label9: TLabel
          Left = 3
          Top = 104
          Width = 37
          Height = 15
          Caption = 'Cliente'
          FocusControl = DBEdit9
        end
        object Label10: TLabel
          Left = 55
          Top = 104
          Width = 33
          Height = 15
          Caption = 'Nome'
          FocusControl = DBEdit10
        end
        object Label11: TLabel
          Left = 365
          Top = 104
          Width = 27
          Height = 15
          Caption = 'CNPJ'
          FocusControl = DBEdit11
        end
        object Label12: TLabel
          Left = 457
          Top = 104
          Width = 45
          Height = 15
          Caption = 'Telefone'
          FocusControl = DBEdit12
        end
        object Label13: TLabel
          Left = 579
          Top = 104
          Width = 35
          Height = 15
          Caption = 'Estado'
          FocusControl = DBEdit13
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 24
          Width = 46
          Height = 23
          TabStop = False
          DataField = 'labproc_recno'
          DataSource = LabProcRastreio.DataSource1
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 55
          Top = 24
          Width = 304
          Height = 23
          TabStop = False
          DataField = 'descri'
          DataSource = LabProcRastreio.DataSource1
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 365
          Top = 24
          Width = 108
          Height = 23
          TabStop = False
          DataField = 'exp_dh'
          DataSource = LabProcRastreio.DataSource1
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 3
          Top = 72
          Width = 46
          Height = 23
          TabStop = False
          DataField = 'volume'
          DataSource = LabProcRastreio.DataSource1
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit5: TDBEdit
          Left = 479
          Top = 24
          Width = 135
          Height = 23
          TabStop = False
          DataField = 'etiqueta'
          DataSource = LabProcRastreio.DataSource1
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit6: TDBEdit
          Left = 55
          Top = 72
          Width = 109
          Height = 23
          TabStop = False
          DataField = 'frascos'
          DataSource = LabProcRastreio.DataSource1
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 170
          Top = 72
          Width = 109
          Height = 23
          TabStop = False
          DataField = 'seringas'
          DataSource = LabProcRastreio.DataSource1
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit8: TDBEdit
          Left = 285
          Top = 72
          Width = 329
          Height = 23
          DataField = 'rastreio'
          DataSource = LabProcRastreio.DataSource1
          TabOrder = 7
        end
        object DBEdit9: TDBEdit
          Left = 3
          Top = 120
          Width = 46
          Height = 23
          TabStop = False
          DataField = 'codigo'
          DataSource = LabProcRastreio.DataSource1
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit10: TDBEdit
          Left = 55
          Top = 120
          Width = 304
          Height = 23
          TabStop = False
          DataField = 'nome_chave'
          DataSource = LabProcRastreio.DataSource1
          ReadOnly = True
          TabOrder = 9
        end
        object DBEdit11: TDBEdit
          Left = 365
          Top = 120
          Width = 86
          Height = 23
          TabStop = False
          DataField = 'cnpj'
          DataSource = LabProcRastreio.DataSource1
          ReadOnly = True
          TabOrder = 10
        end
        object DBEdit12: TDBEdit
          Left = 457
          Top = 120
          Width = 116
          Height = 23
          TabStop = False
          DataField = 'telefone'
          DataSource = LabProcRastreio.DataSource1
          ReadOnly = True
          TabOrder = 11
        end
        object DBEdit13: TDBEdit
          Left = 579
          Top = 120
          Width = 35
          Height = 23
          TabStop = False
          DataField = 'estado'
          DataSource = LabProcRastreio.DataSource1
          ReadOnly = True
          TabOrder = 12
        end
      end
    end
  end
  inherited alDef: TActionList
    Left = 208
    inherited actNewMaster: TAction
      Visible = False
    end
    inherited actDelMaster: TAction
      Visible = False
    end
  end
end
