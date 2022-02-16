inherited LabAmostraAssBloq: TLabAmostraAssBloq
  ActiveControl = DBGrid1
  Caption = 'Laudos Bloqueados'
  ClientHeight = 670
  ClientWidth = 1078
  KeyPreview = False
  ExplicitWidth = 1094
  ExplicitHeight = 709
  PixelsPerInch = 96
  TextHeight = 15
  inherited ControlBar1: TControlBar
    Width = 1072
    inherited ToolBar1: TToolBar
      inherited ToolButton1: TToolButton
        Action = actClose
      end
    end
  end
  object PageControl1: TPageControl [1]
    AlignWithMargins = True
    Left = 3
    Top = 47
    Width = 1072
    Height = 620
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    TabStop = False
    ExplicitLeft = -2
    object TabSheet1: TTabSheet
      Caption = 'Laudos com Pend'#234'ncia'
      ExplicitLeft = 0
      object DBGrid1: TDBGrid
        Tag = 1
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1058
        Height = 426
        Align = alClient
        BorderStyle = bsNone
        Ctl3D = False
        DataSource = dsLaudos
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
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnKeyPress = DBGrid1KeyPress
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 432
        Width = 1064
        Height = 158
        Align = alBottom
        Caption = ' Pend'#234'ncia '
        TabOrder = 1
        object DBMemo1: TDBMemo
          AlignWithMargins = True
          Left = 5
          Top = 20
          Width = 1054
          Height = 133
          Align = alClient
          DataField = 'pendencia'
          DataSource = dsLaudos
          TabOrder = 0
          ExplicitLeft = 7
          ExplicitTop = 22
        end
      end
    end
  end
  inherited alDef: TActionList
    Left = 432
    inherited actOk: TAction
      Caption = 'Fechar'
    end
    inherited actCancel: TAction
      Visible = False
    end
  end
  object qLaudos: TZReadOnlyQuery
    Connection = DM.Design
    BeforeOpen = qLaudosBeforeOpen
    SQL.Strings = (
      
        'select r.recno, r.amostra, a.comodato, r.pedido, r.os, r.pendenc' +
        'ia, c.nome_chave '
      '  from labamostras_rel r'
      '       join sys_flags f'
      '         on f.session = :session'
      '        and f.table_ = 85'
      '        and f.recno = r.recno'
      '       join labamostras a'
      '         on a.recno = r.amostra'
      '       join tbclientes c'
      '         on c.codigo = a.codigo '
      ' where r.status = 3;')
    Params = <
      item
        DataType = ftUnknown
        Name = 'session'
        ParamType = ptUnknown
      end>
    Left = 216
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'session'
        ParamType = ptUnknown
      end>
    object qLaudosrecno: TIntegerField
      DisplayLabel = 'Laudo'
      FieldName = 'recno'
      ReadOnly = True
    end
    object qLaudosamostra: TIntegerField
      DisplayLabel = 'Amostra'
      FieldName = 'amostra'
      ReadOnly = True
    end
    object qLaudoscomodato: TIntegerField
      DisplayLabel = 'Etiqueta'
      FieldName = 'comodato'
      ReadOnly = True
    end
    object qLaudospedido: TIntegerField
      DisplayLabel = 'Pedido'
      FieldName = 'pedido'
      ReadOnly = True
    end
    object qLaudosos: TIntegerField
      DisplayLabel = 'OS'
      FieldName = 'os'
      ReadOnly = True
    end
    object qLaudospendencia: TMemoField
      FieldName = 'pendencia'
      ReadOnly = True
      Visible = False
      BlobType = ftMemo
    end
    object qLaudosnome_chave: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'nome_chave'
      ReadOnly = True
      Size = 45
    end
  end
  object dsLaudos: TDataSource
    DataSet = qLaudos
    Left = 280
    Top = 152
  end
end
