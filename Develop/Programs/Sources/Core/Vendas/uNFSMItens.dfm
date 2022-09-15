inherited NFSMItens: TNFSMItens
  Caption = 'Itens da Nota Fiscal de Sa'#237'da'
  ClientHeight = 451
  ClientWidth = 783
  ExplicitWidth = 789
  ExplicitHeight = 480
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    Top = 44
    Width = 783
    Height = 407
    ExplicitTop = 44
    ExplicitWidth = 783
    ExplicitHeight = 407
    inherited Panel3: TPanel
      Align = alNone
      ExplicitTop = 204
      inherited PageControl3: TPageControl
        Top = 47
        Height = 185
        ExplicitLeft = 3
        ExplicitTop = 47
        ExplicitWidth = 633
        ExplicitHeight = 185
        inherited tsDet: TTabSheet
          ExplicitLeft = 4
          ExplicitTop = 26
          ExplicitWidth = 625
          ExplicitHeight = 155
          inherited DBGrid1: TDBGrid
            Width = 625
            Height = 155
          end
        end
      end
      inherited ControlBar2: TControlBar
        Height = 38
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitWidth = 633
        ExplicitHeight = 38
        inherited ToolBar3: TToolBar
          ButtonWidth = 129
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
      Width = 777
      Height = 401
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 777
      ExplicitHeight = 401
      inherited TabSheet1: TTabSheet
        Caption = 'Item'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 769
        ExplicitHeight = 371
        object Label1: TLabel
          Left = 3
          Top = 9
          Width = 21
          Height = 15
          Caption = 'O.S.'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 95
          Top = 9
          Width = 43
          Height = 15
          Caption = 'Emiss'#227'o'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 670
          Top = 9
          Width = 26
          Height = 15
          Caption = 'Valor'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 188
          Top = 9
          Width = 68
          Height = 15
          Caption = 'Faturamento'
          FocusControl = DBEdit2
        end
        object Label5: TLabel
          Left = 272
          Top = 9
          Width = 57
          Height = 15
          Caption = 'Com. Serv.'
          FocusControl = DBEdit4
        end
        object Label6: TLabel
          Left = 335
          Top = 9
          Width = 38
          Height = 15
          Caption = 'Servi'#231'o'
          FocusControl = DBEdit5
        end
        object Label7: TLabel
          Left = 490
          Top = 9
          Width = 48
          Height = 15
          Caption = 'Materiais'
          FocusControl = DBEdit6
        end
        object Label8: TLabel
          Left = 426
          Top = 9
          Width = 56
          Height = 15
          Caption = 'Com. Mat.'
          FocusControl = DBEdit7
        end
        object Label9: TLabel
          Left = 579
          Top = 9
          Width = 52
          Height = 15
          Caption = 'Comiss'#227'o'
          FocusControl = DBEdit8
        end
        object DBEdit1: TDBEdit
          Left = 3
          Top = 26
          Width = 86
          Height = 23
          DataField = 'idos'
          DataSource = NFS.dsqItens
          ReadOnly = True
          TabOrder = 0
          OnExit = DBEdit1Exit
        end
        object DBEdit2: TDBEdit
          Left = 95
          Top = 26
          Width = 86
          Height = 23
          DataField = 'data'
          DataSource = NFS.dsqItens
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 670
          Top = 26
          Width = 86
          Height = 23
          DataField = 'valor'
          DataSource = NFS.dsqItens
          ReadOnly = True
          TabOrder = 8
        end
        object DBComboBox1: TDBComboBox
          Left = 188
          Top = 26
          Width = 78
          Height = 23
          Style = csDropDownList
          DataField = 'tipo'
          DataSource = NFS.dsqItens
          ItemHeight = 15
          Items.Strings = (
            'Servi'#231'os'
            'Materiais'
            'Ambos')
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 272
          Top = 26
          Width = 57
          Height = 23
          DataField = 'com_srv'
          DataSource = NFS.dsqItens
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit5: TDBEdit
          Left = 335
          Top = 26
          Width = 85
          Height = 23
          DataField = 'vlsrv'
          DataSource = NFS.dsqItens
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 490
          Top = 26
          Width = 82
          Height = 23
          DataField = 'vlmat'
          DataSource = NFS.dsqItens
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit7: TDBEdit
          Left = 426
          Top = 26
          Width = 57
          Height = 23
          DataField = 'com_mat'
          DataSource = NFS.dsqItens
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit8: TDBEdit
          Left = 579
          Top = 26
          Width = 86
          Height = 23
          DataField = 'vlcom'
          DataSource = NFS.dsqItens
          ReadOnly = True
          TabOrder = 7
        end
        object GroupBox1: TGroupBox
          Left = 3
          Top = 60
          Width = 753
          Height = 305
          Caption = ' Ordens  Dispon'#237'veis para Faturamento '
          Padding.Left = 5
          Padding.Top = 5
          Padding.Right = 5
          Padding.Bottom = 3
          TabOrder = 9
          object DBGrid2: TDBGrid
            Tag = 1
            Left = 7
            Top = 22
            Width = 739
            Height = 278
            Align = alClient
            BorderStyle = bsNone
            Ctl3D = False
            DataSource = DataSource1
            DefaultDrawing = False
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
            OnDrawColumnCell = ChildGridDrawColumnCell
            OnDblClick = DBGrid2DblClick
          end
        end
      end
    end
  end
  inherited ControlBar1: TControlBar
    Width = 777
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 777
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      Width = 764
      ButtonWidth = 115
      ExplicitWidth = 764
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
    Left = 256
    Top = 24
  end
  object qOSDispFat: TZReadOnlyQuery
    Connection = DM.Design
    AfterScroll = qOSDispFatAfterScroll
    OnCalcFields = qOSDispFatCalcFields
    SQL.Strings = (
      
        'select a.idos, g.serv_comissao com_srv, (m.vlsrvfixo+m.vlsrvvar+' +
        'm.vlmobra+m.vldespe) pedvlaprov, g.mat_comissao com_mat, m.vlmat' +
        ' pedvlaprovmat,'
      '       a.os, a.data'
      '  from tb_orcamentos a'
      '       join markup m'
      '         on m.recno = a.markup'
      '       join (select cg.codigo'
      '               from tbclixgrupos g'
      '                    join tbclixgrupos cg'
      
        '                      on cg.tbcli_grupos_recno = g.tbcli_grupos_' +
        'recno'
      '                     and cg.codigo <> g.codigo'
      '              where g.codigo = :codigo'
      '              union'
      '             select :codigo) c'
      '         on c.codigo = a.idcliente'
      '       join orca_grupo g'
      '         on g.recno = a.grupo'
      '       left join nf_itens b'
      '         on b.os = a.os'
      '        and b.recno_nf = :nf'
      ' where a.status = 3'
      '   and (m.vlsrvfixo+m.vlsrvvar+m.vlmobra+m.vldespe > 0 or'
      '        m.vlmat  > 0)'
      '   and b.os is null'
      ' order by a.os desc')
    Params = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
        Value = '1482'
      end
      item
        DataType = ftUnknown
        Name = 'nf'
        ParamType = ptUnknown
      end>
    Left = 128
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'codigo'
        ParamType = ptUnknown
        Value = '1482'
      end
      item
        DataType = ftUnknown
        Name = 'nf'
        ParamType = ptUnknown
      end>
    object qOSDispFatidos: TStringField
      DisplayLabel = 'OS'
      FieldName = 'idos'
      Size = 10
    end
    object qOSDispFatdata: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'data'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object qOSDispFatcom_srv: TFloatField
      DisplayLabel = 'Com. Servi'#231'os'
      FieldName = 'com_srv'
      DisplayFormat = ',0.#0 %'
    end
    object qOSDispFatpedvlaprov: TFloatField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'pedvlaprov'
      DisplayFormat = ',0.#0'
    end
    object qOSDispFatcom_mat: TFloatField
      DisplayLabel = 'Com. Materiais'
      FieldName = 'com_mat'
      Required = True
      DisplayFormat = ',0.#0 %'
    end
    object qOSDispFatpedvlaprovmat: TFloatField
      DisplayLabel = 'Materiais'
      FieldName = 'pedvlaprovmat'
      Required = True
      DisplayFormat = ',0.#0'
    end
    object qOSDispFatvlcomsrv: TFloatField
      DisplayLabel = 'Comiss'#227'o'
      FieldKind = fkCalculated
      FieldName = 'vlcom'
      DisplayFormat = ',0.#0'
      Calculated = True
    end
    object qOSDispFattotal: TFloatField
      DisplayLabel = 'Valor Total'
      FieldKind = fkCalculated
      FieldName = 'total'
      DisplayFormat = ',0.#0'
      Calculated = True
    end
    object qOSDispFatos: TIntegerField
      FieldName = 'os'
      Visible = False
    end
  end
  object DataSource1: TDataSource
    AutoEdit = False
    DataSet = qOSDispFat
    Left = 192
    Top = 24
  end
end
