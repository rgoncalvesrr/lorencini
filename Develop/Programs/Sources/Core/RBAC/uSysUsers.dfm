inherited SysUsers: TSysUsers
  Caption = 'Usu'#225'rios'
  ExplicitWidth = 1134
  ExplicitHeight = 503
  PixelsPerInch = 120
  TextHeight = 20
  inherited StatusBar1: TStatusBar
    ExplicitTop = 429
    ExplicitWidth = 1110
  end
  inherited Panel1: TPanel
    Top = 44
    ExplicitTop = 44
    inherited pctlFind: TPageControl
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1098
        ExplicitHeight = 90
        object Label1: TLabel [0]
          Left = 12
          Top = 8
          Width = 57
          Height = 20
          Caption = 'Situa'#231#227'o'
        end
        object ComboBox1: TComboBox
          Left = 12
          Top = 34
          Width = 109
          Height = 28
          Style = csDropDownList
          ItemHeight = 20
          ItemIndex = 1
          TabOrder = 1
          Text = 'Ativos'
          OnChange = ComboBox1Change
          Items.Strings = (
            'Todos'
            'Ativos'
            'Inativos')
        end
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 1098
        ExplicitHeight = 90
      end
    end
  end
  inherited Panel2: TPanel
    Top = 144
    Height = 282
    ExplicitTop = 144
    ExplicitHeight = 282
    inherited PageControl1: TPageControl
      Height = 276
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 1110
      ExplicitHeight = 276
      inherited TabSheet1: TTabSheet
        Caption = 'Usu'#225'rios'
        ExplicitLeft = 4
        ExplicitTop = 31
        ExplicitWidth = 1102
        ExplicitHeight = 241
        inherited DBGrid1: TDBGrid
          Width = 1102
          Height = 241
        end
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Height = 38
    ExplicitLeft = 3
    ExplicitTop = 3
    ExplicitWidth = 1110
    ExplicitHeight = 38
    inherited ToolBar1: TToolBar
      ButtonWidth = 81
      inherited ToolButton2: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton5: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton9: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton6: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton1: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton8: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton3: TToolButton
        ExplicitWidth = 32
      end
      inherited tbOrder: TToolButton
        ExplicitWidth = 85
      end
      inherited tbReport: TToolButton
        Left = 325
        ExplicitLeft = 325
        ExplicitWidth = 32
      end
      inherited tbOpcao: TToolButton
        Left = 357
        ExplicitLeft = 357
        ExplicitWidth = 32
      end
      inherited ToolButton11: TToolButton
        Left = 389
        ExplicitLeft = 389
      end
      inherited ToolButton10: TToolButton
        Left = 397
        ExplicitLeft = 397
        ExplicitWidth = 32
      end
    end
  end
  inherited DataSource1: TDataSource
    Left = 256
    Top = 240
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    AfterInsert = IBrwSrcAfterInsert
    SQL.Strings = (
      
        'select u.active, username, name, password, email, changepass, u.' +
        'recno,'
      '       u.role, r.descri'
      '  from sys_users u'
      '       join sys_roles r'
      '         on r.recno = u.role')
    Sequence = sBrwSrc
    SequenceField = 'recno'
    Top = 240
    object IBrwSrcactive: TBooleanField
      DisplayLabel = 'Ativo'
      FieldName = 'active'
    end
    object IBrwSrcusername: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'username'
    end
    object IBrwSrcname: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'name'
      Size = 40
    end
    object IBrwSrcrole: TIntegerField
      DisplayLabel = 'Papel Padr'#227'o'
      FieldName = 'role'
      Required = True
      Visible = False
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Papel Padr'#227'o'
      DisplayWidth = 40
      FieldName = 'descri'
      Size = 60
    end
    object IBrwSrcpassword: TStringField
      FieldName = 'password'
      Visible = False
      OnSetText = IBrwSrcpasswordSetText
      Size = 32
    end
    object IBrwSrcemail: TStringField
      DisplayLabel = 'E-Mail'
      FieldName = 'email'
      Size = 40
    end
    object IBrwSrcchangepass: TBooleanField
      DisplayLabel = 'Alterar Senha'
      FieldName = 'changepass'
      Visible = False
    end
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM sys_users'
      'WHERE'
      
        '  ((sys_users.username IS NULL AND :OLD_username IS NULL) OR (sy' +
        's_users.username = :OLD_username))')
    InsertSQL.Strings = (
      'INSERT INTO sys_users'
      
        '  (active, username, name, password, email, changepass, recno, r' +
        'ole)'
      'VALUES'
      
        '  (:active, :username, :name, :password, :email, :changepass, :r' +
        'ecno, :role)')
    ModifySQL.Strings = (
      'UPDATE sys_users SET'
      '  active = :active,'
      '  username = :username,'
      '  name = :name,'
      '  password = :password,'
      '  email = :email,'
      '  changepass = :changepass,'
      '  recno = :recno,'
      '  role = :role'
      'WHERE'
      '  (sys_users.username = :OLD_username)')
    Left = 104
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'active'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'username'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'name'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'password'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'email'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'changepass'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'role'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_username'
        ParamType = ptUnknown
      end>
  end
  object sBrwSrc: TZSequence
    Connection = DM.Design
    SequenceName = 'public.sys_users_recno_seq'
    Left = 32
    Top = 240
  end
end
