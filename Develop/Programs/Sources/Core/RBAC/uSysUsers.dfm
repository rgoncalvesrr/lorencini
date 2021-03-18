inherited SysUsers: TSysUsers
  Caption = 'Usu'#225'rios'
  Constraints.MinWidth = 634
  PixelsPerInch = 96
  TextHeight = 15
  inherited Panel1: TPanel
    ExplicitTop = 35
    inherited pctlFind: TPageControl
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 819
        ExplicitHeight = 75
        object Label1: TLabel [0]
          Left = 9
          Top = 6
          Width = 45
          Height = 15
          Caption = 'Situa'#231#227'o'
        end
        object ComboBox1: TComboBox
          Left = 9
          Top = 26
          Width = 82
          Height = 23
          Style = csDropDownList
          ItemHeight = 15
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
        ExplicitWidth = 819
        ExplicitHeight = 75
      end
    end
  end
  inherited Panel2: TPanel
    ExplicitTop = 120
    ExplicitHeight = 192
    inherited PageControl1: TPageControl
      ExplicitHeight = 186
      inherited TabSheet1: TTabSheet
        Caption = 'Usu'#225'rios'
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 823
        ExplicitHeight = 156
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    inherited ToolBar1: TToolBar
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
        ExplicitWidth = 76
      end
      inherited tbReport: TToolButton
        ExplicitWidth = 32
      end
      inherited tbOpcao: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton10: TToolButton
        ExplicitWidth = 32
      end
    end
  end
  inherited DataSource1: TDataSource
    Left = 248
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
    Left = 176
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
