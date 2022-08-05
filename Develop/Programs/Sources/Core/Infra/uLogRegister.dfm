inherited LogRegister: TLogRegister
  Caption = 'Registro de Ocorr'#234'ncias'
  ClientHeight = 401
  ExplicitHeight = 440
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 374
    ExplicitTop = 374
  end
  inherited Panel1: TPanel
    inherited pctlFind: TPageControl
      inherited tsQuery: TTabSheet
        ExplicitLeft = 3
        ExplicitTop = 7
      end
    end
  end
  inherited Panel2: TPanel
    Height = 242
    ExplicitHeight = 242
    inherited PageControl1: TPageControl
      Height = 236
      ExplicitHeight = 236
      inherited TabSheet1: TTabSheet
        Caption = 'Hist'#243'rico'
        ExplicitHeight = 206
        inherited DBGrid1: TDBGrid
          Height = 111
        end
        object DBMemo1: TDBMemo
          Left = 0
          Top = 117
          Width = 823
          Height = 89
          Align = alBottom
          DataField = 'historico'
          DataSource = DataSource1
          ReadOnly = True
          TabOrder = 1
        end
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    inherited ToolBar1: TToolBar
      inherited ToolButton2: TToolButton
        Visible = False
      end
      inherited ToolButton5: TToolButton
        Visible = False
      end
      inherited ToolButton9: TToolButton
        Visible = False
      end
      inherited ToolButton6: TToolButton
        Visible = False
      end
      inherited ToolButton7: TToolButton
        Visible = False
      end
    end
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SortedFields = 'data'
    SortType = stDescending
    SQL.Strings = (
      
        'select l.recno, l.data, l.descri, l.historico, l.username, l.tip' +
        'o, l.nivel,'
      '       l.origem, l.origem_recno, u.name, u.email, u.active'
      '  from sys_log l'
      '       left join sys_users u'
      '         on u.username = l.username'
      ' where l.origem = :tabela'
      '   and l.origem_Recno = :registro'
      ' order by l.data desc')
    Params = <
      item
        DataType = ftUnknown
        Name = 'tabela'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'registro'
        ParamType = ptUnknown
      end>
    IndexFieldNames = 'data Desc'
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tabela'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'registro'
        ParamType = ptUnknown
      end>
    object IBrwSrcrecno: TIntegerField
      FieldName = 'recno'
      Required = True
      Visible = False
    end
    object IBrwSrcdata: TDateTimeField
      DisplayLabel = 'Ocorr'#234'ncia'
      DisplayWidth = 20
      FieldName = 'data'
      Required = True
      DisplayFormat = 'dd/mm/yyyy hh:nn:ss'
    end
    object IBrwSrcnivel: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'N'#237'vel'
      FieldName = 'nivel'
      Required = True
      OnGetText = IBrwSrcnivelGetText
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      DisplayWidth = 40
      FieldName = 'descri'
      Required = True
      Size = 255
    end
    object IBrwSrchistorico: TMemoField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'historico'
      Visible = False
      BlobType = ftMemo
    end
    object IBrwSrcusername: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'username'
      Required = True
    end
    object IBrwSrcname: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'name'
      Required = True
      Size = 40
    end
    object IBrwSrcemail: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'email'
      Size = 40
    end
    object IBrwSrcactive: TBooleanField
      DisplayLabel = 'Ativo'
      FieldName = 'active'
      Required = True
    end
    object IBrwSrctipo: TIntegerField
      FieldName = 'tipo'
      Required = True
      Visible = False
    end
    object IBrwSrcorigem: TIntegerField
      FieldName = 'origem'
      Visible = False
    end
    object IBrwSrcorigem_recno: TIntegerField
      FieldName = 'origem_recno'
      Visible = False
    end
  end
end
