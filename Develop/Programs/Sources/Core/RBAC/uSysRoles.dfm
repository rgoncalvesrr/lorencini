inherited SysRoles: TSysRoles
  Caption = 'Manuten'#231#227'o de Papeis'
  ClientHeight = 533
  ExplicitWidth = 1134
  ExplicitHeight = 580
  PixelsPerInch = 120
  TextHeight = 20
  inherited StatusBar1: TStatusBar
    Top = 506
    ExplicitTop = 506
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
    Height = 359
    ExplicitTop = 144
    ExplicitHeight = 359
    inherited PageControl1: TPageControl
      Height = 353
      ExplicitLeft = 3
      ExplicitTop = 3
      ExplicitWidth = 1110
      ExplicitHeight = 353
      inherited TabSheet1: TTabSheet
        Caption = 'Pap'#233'is'
        ExplicitLeft = 4
        ExplicitTop = 31
        ExplicitWidth = 1102
        ExplicitHeight = 318
        inherited DBGrid1: TDBGrid
          Width = 1102
          Height = 318
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
    Left = 280
    Top = 232
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SortedFields = 'descri'
    AfterScroll = IBrwSrcAfterScroll
    SQL.Strings = (
      'select recno, descri, sys_'
      '  from sys_roles')
    IndexFieldNames = 'descri Asc'
    Sequence = sBrwSrc
    SequenceField = 'recno'
    Left = 192
    Top = 232
    object IBrwSrcrecno: TIntegerField
      DisplayLabel = 'Papel'
      FieldName = 'recno'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object IBrwSrcdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Size = 60
    end
    object IBrwSrcsys_: TBooleanField
      DisplayLabel = 'Interno'
      FieldName = 'sys_'
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM sys_roles'
      'WHERE'
      ' (sys_roles.recno = :OLD_recno)')
    InsertSQL.Strings = (
      'INSERT INTO sys_roles'
      '  (recno, descri)'
      'VALUES'
      '  (:recno, :descri)')
    ModifySQL.Strings = (
      'UPDATE sys_roles SET'
      '  recno = :recno,'
      '  descri = :descri'
      'WHERE'
      '  (sys_roles.recno = :OLD_recno)')
    Left = 120
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'descri'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_recno'
        ParamType = ptUnknown
      end>
  end
  object sBrwSrc: TZSequence
    Connection = DM.Design
    SequenceName = 'public.sys_roles_recno_seq'
    Left = 40
    Top = 232
  end
  object qUsers: TZQuery
    Connection = DM.Design
    UpdateObject = uUsers
    AfterInsert = qUsersAfterInsert
    SQL.Strings = (
      
        'select rlu.role, rlu.recno, rlu.username, u.name, u.active, u.em' +
        'ail'
      '  from sys_rlusers rlu'
      '       join sys_users u'
      '         on u.username = rlu.username'
      ' where rlu.role = :role')
    Params = <
      item
        DataType = ftUnknown
        Name = 'role'
        ParamType = ptUnknown
      end>
    Sequence = sUsers
    SequenceField = 'recno'
    Left = 192
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'role'
        ParamType = ptUnknown
      end>
    object qUsersrole: TIntegerField
      FieldName = 'role'
      Visible = False
    end
    object qUsersrecno: TIntegerField
      FieldName = 'recno'
      Visible = False
    end
    object qUsersusername: TStringField
      DisplayLabel = 'Usu'#225'rio'
      DisplayWidth = 25
      FieldName = 'username'
      Size = 60
    end
    object qUsersname: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'name'
      Size = 40
    end
    object qUsersemail: TStringField
      DisplayLabel = 'E-Mail'
      FieldName = 'email'
      Size = 40
    end
    object qUsersactive: TBooleanField
      DisplayLabel = 'Ativo'
      FieldName = 'active'
    end
  end
  object uUsers: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM sys_rlusers'
      'WHERE'
      
        '  ((sys_rlusers.role IS NULL AND :OLD_role IS NULL) OR (sys_rlus' +
        'ers.role = :OLD_role)) AND'
      
        '  ((sys_rlusers.username IS NULL AND :OLD_username IS NULL) OR (' +
        'sys_rlusers.username = :OLD_username))')
    InsertSQL.Strings = (
      'INSERT INTO sys_rlusers'
      '  (role, recno, username)'
      'VALUES'
      '  (:role, :recno, :username)')
    ModifySQL.Strings = (
      'UPDATE sys_rlusers SET'
      '  role = :role,'
      '  recno = :recno,'
      '  username = :username'
      'WHERE'
      
        '  ((sys_rlusers.role IS NULL AND :OLD_role IS NULL) OR (sys_rlus' +
        'ers.role = :OLD_role)) AND'
      
        '  ((sys_rlusers.username IS NULL AND :OLD_username IS NULL) OR (' +
        'sys_rlusers.username = :OLD_username))')
    UseSequenceFieldForRefreshSQL = False
    Left = 120
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'role'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'username'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_role'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_username'
        ParamType = ptUnknown
      end>
  end
  object sUsers: TZSequence
    Connection = DM.Design
    SequenceName = 'public.sys_rlusers_recno_seq'
    Left = 40
    Top = 296
  end
  object dsUsers: TDataSource
    AutoEdit = False
    DataSet = qUsers
    Left = 280
    Top = 296
  end
  object qGrants: TZQuery
    Connection = DM.Design
    SortedFields = 'Descri'
    AfterRefresh = qGrantsAfterRefresh
    UpdateObject = uGrants
    AfterInsert = qGrantsAfterInsert
    SQL.Strings = (
      'select rg.grant_, rg.role, rg.recno, g.descri, g.form'
      '  from sys_role_grant rg'
      '       join sys_grants g'
      '         on rg.grant_ = g.grant_'
      ' where rg.role = :role'
      '   and trim(g.descri) <> '#39#39)
    Params = <
      item
        DataType = ftUnknown
        Name = 'role'
        ParamType = ptUnknown
      end>
    IndexFieldNames = 'Descri Asc'
    Sequence = sGrants
    SequenceField = 'recno'
    Left = 192
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'role'
        ParamType = ptUnknown
      end>
    object qGrantsrole: TIntegerField
      FieldName = 'role'
      Required = True
      Visible = False
    end
    object qGrantsgrant_: TStringField
      DisplayLabel = 'Permiss'#227'o'
      FieldName = 'grant_'
      Required = True
      Size = 30
    end
    object qGrantsdescri: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descri'
      Required = True
      Size = 60
    end
    object qGrantsform: TStringField
      DisplayLabel = 'Objeto'
      FieldName = 'form'
      Visible = False
      Size = 60
    end
    object qGrantsrecno: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'recno'
      Required = True
    end
  end
  object dsGrants: TDataSource
    AutoEdit = False
    DataSet = qGrants
    Left = 280
    Top = 352
  end
  object uGrants: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM sys_role_grant'
      'WHERE'
      '  sys_role_grant.grant_ = :OLD_grant_ AND'
      '  sys_role_grant.role = :OLD_role')
    InsertSQL.Strings = (
      'INSERT INTO sys_role_grant'
      '  (grant_, role, recno)'
      'VALUES'
      '  (:grant_, :role, :recno)')
    ModifySQL.Strings = (
      'UPDATE sys_role_grant SET'
      '  grant_ = :grant_,'
      '  role = :role,'
      '  recno = :recno'
      'WHERE'
      '  sys_role_grant.grant_ = :OLD_grant_ AND'
      '  sys_role_grant.role = :OLD_role')
    UseSequenceFieldForRefreshSQL = False
    Left = 120
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'grant_'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'role'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'recno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_grant_'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_role'
        ParamType = ptUnknown
      end>
  end
  object sGrants: TZSequence
    Connection = DM.Design
    SequenceName = 'public.sys_role_grant_recno_seq'
    Left = 40
    Top = 352
  end
end
