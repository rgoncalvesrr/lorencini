unit uSysDump;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIForm, ActnList, ExtCtrls, ComCtrls, ToolWin, StdCtrls, ZAbstractConnection, ZConnection, ZSqlProcessor, DB,
  ZAbstractRODataset, ZDataset;

type
  TSysDump = class(TIForm)
    ControlBar1: TControlBar;
    ToolBar1: TToolBar;
    Bevel1: TBevel;
    ToolButton3: TToolButton;
    GroupBox1: TGroupBox;
    lbTask: TLabel;
    ToolButton2: TToolButton;
    actDump: TAction;
    ToolButton5: TToolButton;
    zConn: TZConnection;
    pStmt: TZSQLProcessor;
    ToolButton4: TToolButton;
    ProgressBar1: TProgressBar;
    qCat: TZReadOnlyQuery;
    GroupBox2: TGroupBox;
    log: TMemo;
    procedure actCancelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actDumpExecute(Sender: TObject);
  private
    { Private declarations }
    FOldCursor: TCursor;
    procedure LockEnvironment;
    procedure ReleaseEnvironment;
  public
    { Public declarations }
  end;

var
  SysDump: TSysDump;

implementation

uses uDM, DateUtils, uIUtils, uResources, uHelpers, uSysFnLoader;

{$R *.dfm}

procedure TSysDump.actCancelExecute(Sender: TObject);
begin
  if not U.Out.ConfQues('Atualizar sistema agora?') then
    Exit;

  LockEnvironment;
  try
    if not FileExists(zConn.Database) then
    begin
      U.Out.ShowErro('Catalogo "%s" não foi localizado! Importação não pode prosseguir.', [zConn.Database]);
      Exit;
    end;


    lbTask.Caption := 'Criando estrutura no banco alvo...';
    Application.ProcessMessages;

    with U.Data.Stmt do
    begin
      Script.Clear;

      {$REGION 'Estrutuda das Tabelas'}
      log.Lines.Insert(0, 'Criando estrutura das tabelas...');
      Script.Add(
        'set session authorization lorencini; '+
        'drop schema if exists sync cascade; '+
        'create schema sync; '+
        'set search_path to sync, public;');

      Script.Add(
        'CREATE TABLE sys_forms ( '+
          'form form$ NOT NULL, '+
          'descri descri$ NULL, '+
          'recno serial NOT NULL, '+
          'modification timestamp NOT NULL DEFAULT clock_timestamp(), '+
          'CONSTRAINT pk_forms PRIMARY KEY (form));');

      Script.Add(
        'CREATE TABLE sys_reports ( '+
          'report serial NOT NULL, '+
          'descri varchar(60) NOT NULL, '+
          'form varchar(60) NULL, '+
          'recno serial NOT NULL, '+
          'modification timestamp NOT NULL DEFAULT clock_timestamp(), '+
          'CONSTRAINT pk_sys_reports PRIMARY KEY (report), '+
          'CONSTRAINT uk_sys_reports_descri UNIQUE (descri), '+
          'CONSTRAINT uk_sys_reports_recno UNIQUE (recno) '+
        '); '+
        'CREATE INDEX sys_reports_idx ON sys_reports USING btree (form); ');

      Script.Add(
        'CREATE TABLE sys_menu ( '+
          'id serial NOT NULL, '+
          'descri varchar(150) NOT NULL, '+
          '"level" int4 NOT NULL DEFAULT 0, '+
          'parent int4 NULL, '+
          'form form$ NULL, '+
          'order_ int4 NOT NULL, '+
          'recno serial NOT NULL, '+
          'report int4 NULL, '+
          'modification timestamp NOT NULL DEFAULT clock_timestamp(), '+
          'CONSTRAINT pk_sys_menu PRIMARY KEY (id), '+
          'CONSTRAINT uk_sys_menu UNIQUE (parent, form), '+
          'CONSTRAINT fk_sys_menu FOREIGN KEY (form) REFERENCES sys_forms(form), '+
          'CONSTRAINT fk_sys_menu_a FOREIGN KEY (parent) REFERENCES sys_menu(id), '+
          'CONSTRAINT fk_sys_menu_report FOREIGN KEY (report) REFERENCES sys_reports(report));');

      Script.Add(
        'CREATE TABLE sys_forms_rpt ( '+
          'form varchar(60) NOT NULL, '+
          'report int4 NOT NULL, '+
          'ordem int4 NOT NULL DEFAULT 10, '+
          'recno serial NOT NULL, '+
          '"label" varchar(150) NOT NULL, '+
          'modification timestamp NOT NULL DEFAULT clock_timestamp(), '+
          'CONSTRAINT pk_sys_forms_rpt PRIMARY KEY (form, report), '+
          'CONSTRAINT uk_sys_forms_rpt UNIQUE (recno), '+
          'CONSTRAINT fk_sys_forms_rpt_form FOREIGN KEY (form) REFERENCES sys_forms(form) ON UPDATE CASCADE ON DELETE CASCADE, '+
          'CONSTRAINT fk_sys_forms_rpt_prt FOREIGN KEY (report) REFERENCES sys_reports(report) ON UPDATE CASCADE ON DELETE CASCADE);');

      Script.Add(
        'CREATE TABLE sys_tables ( '+
          'recno serial NOT NULL, '+
          'tabela varchar(100) NOT NULL, '+
          'descri varchar(60) NOT NULL, '+
          'modification timestamp NOT NULL DEFAULT clock_timestamp(), '+
          'CONSTRAINT pk_sys_tables PRIMARY KEY (recno), '+
          'CONSTRAINT uk_sys_tables_descri UNIQUE (descri), '+
          'CONSTRAINT uk_sys_tables_tabela UNIQUE (tabela));');

      Script.Add(
        'CREATE TABLE sys_fn ( '+
          'fn varchar(100) NOT NULL, '+
          'descri varchar(150) NOT NULL, '+
          'tipo int4 NOT NULL DEFAULT 1, '+
          'table_recno int4 NULL, '+
          'evento int4 NOT NULL DEFAULT 1, '+
          'ins bool NOT NULL DEFAULT true, '+
          'upd bool NOT NULL DEFAULT true, '+
          'del bool NOT NULL DEFAULT true, '+
          'recno serial NOT NULL, '+
          'modification timestamp NOT NULL DEFAULT clock_timestamp(), '+
          'status int4 NOT NULL DEFAULT 1, '+
          'stmt text NULL, '+
          'checksum varchar(32) NULL, '+
          'CONSTRAINT ck_sys_fn_1 CHECK ((tipo = ANY (ARRAY[1, 2]))), '+
          'CONSTRAINT ck_sys_fn_2 CHECK ((evento = ANY (ARRAY[1, 2]))), '+
          'CONSTRAINT pk_sys_fn PRIMARY KEY (fn), '+
          'CONSTRAINT uk_sys_fn_1 UNIQUE (recno), '+
          'CONSTRAINT fk_sys_fn_1 FOREIGN KEY (table_recno) REFERENCES sys_tables(recno) ON UPDATE CASCADE ON DELETE CASCADE);');

      Script.Add(
        'set session authorization lorencini; '+
        'set search_path to "$user", public;');

      try
        Execute;
        log.Lines[0] := 'Criando estrutura das tabelas... OK';
      except
        on E: Exception do
        begin
          U.Out.ShowErro('Não foi possível importar catalogo! Erro: %s', [E.Message]);
          Exit;
        end;
      end;
      {$ENDREGION}

      {$REGION 'Formulários'}
      lbTask.Caption := 'Importando formulários...';
      log.Lines.Insert(0, lbTask.Caption);
      Application.ProcessMessages;

      Script.Clear;
      Script.Add(
        'INSERT INTO sync.sys_forms(form, descri, modification) VALUES (:form, :descri, :modification);');

      qCat.SQL.Text :=
        'SELECT form, descri, modification FROM sys_forms;';

      qCat.Open;
      ProgressBar1.Max := qCat.RecordCount;

      while not qCat.Eof do
      begin
        ParamByName('form').AsString := qCat.FieldByName('form').AsString;
        ParamByName('descri').AsString := qCat.FieldByName('descri').AsString;
        ParamByName('modification').AsDateTime := qCat.FieldByName('modification').AsDateTime;
        Execute;

        ProgressBar1.Position := qCat.RecNo;
        Sleep(1);

        qCat.Next;
      end;

      ProgressBar1.Position := 0;
      log.Lines[0] := lbTask.Caption + ' OK';
      {$ENDREGION}

      {$REGION 'Relatórios'}
      lbTask.Caption := 'Importando relatórios...';
      log.Lines.Insert(0, lbTask.Caption);
      Application.ProcessMessages;

      Script.Clear;
      Script.Add(
        'INSERT INTO sync.sys_reports(report, descri, form, modification) VALUES (:report, :descri, :form, :modification);');

      qCat.SQL.Text :=
        'SELECT report, descri, form, modification FROM sys_reports;';

      qCat.Open;
      ProgressBar1.Max := qCat.RecordCount;

      while not qCat.Eof do
      begin
        ParamByName('form').Clear;
        ParamByName('descri').Clear;

        ParamByName('report').AsInteger := qCat.FieldByName('report').AsInteger;
        ParamByName('modification').AsDateTime := qCat.FieldByName('modification').AsDateTime;
        
        if not qCat.FieldByName('form').IsNull then
          ParamByName('form').AsString := qCat.FieldByName('form').AsString;

        if not qCat.FieldByName('descri').IsNull then
          ParamByName('descri').AsString := qCat.FieldByName('descri').AsString;

        Execute;

        ProgressBar1.Position := qCat.RecNo;
        Sleep(1);

        qCat.Next;
      end;

      ProgressBar1.Position := 0;
      log.Lines[0] := lbTask.Caption + ' OK';
      {$ENDREGION}

      {$REGION 'Relatórios por Formulário'}
      lbTask.Caption := 'Importando relatórios por formulário...';
      log.Lines.Insert(0, lbTask.Caption);
      Application.ProcessMessages;

      Script.Clear;
      Script.Add(
        'INSERT INTO sync.sys_forms_rpt(form, report, ordem, label, modification) '+
             'VALUES (:form, :report, :ordem, :label, :modification);');

      qCat.SQL.Text :=
        'SELECT form, report, ordem, label, modification FROM sys_forms_rpt;';

      qCat.Open;
      ProgressBar1.Max := qCat.RecordCount;

      while not qCat.Eof do
      begin
        ParamByName('form').AsString := qCat.FieldByName('form').AsString;
        ParamByName('report').AsInteger := qCat.FieldByName('report').AsInteger;
        ParamByName('ordem').AsInteger := qCat.FieldByName('ordem').AsInteger;
        ParamByName('label').AsString := qCat.FieldByName('label').AsString;
        ParamByName('modification').AsDateTime := qCat.FieldByName('modification').AsDateTime;
        Execute;

        ProgressBar1.Position := qCat.RecNo;
        Sleep(1);

        qCat.Next;
      end;

      ProgressBar1.Position := 0;
      log.Lines[0] := lbTask.Caption + ' OK';
      {$ENDREGION}

      {$REGION 'Menus'}
      lbTask.Caption := 'Importando menus...';
      log.Lines.Insert(0, lbTask.Caption);
      Application.ProcessMessages;

      Script.Clear;
      Script.Add(
        'INSERT INTO sync.sys_menu(id, descri, level, parent, form, order_, report, modification) '+
             'VALUES (:id, :descri, :level, :parent, :form, :order_, :report, :modification);');

      qCat.SQL.Text :=
        'SELECT id, descri, level, parent, form, order_, report, modification FROM sys_menu;';

      qCat.Open;
      ProgressBar1.Max := qCat.RecordCount;

      while not qCat.Eof do
      begin
        ParamByName('report').Clear;
        ParamByName('parent').Clear;
        ParamByName('form').Clear;

        ParamByName('id').AsInteger := qCat.FieldByName('id').AsInteger;
        ParamByName('order_').AsInteger := qCat.FieldByName('order_').AsInteger;
        ParamByName('level').AsInteger := qCat.FieldByName('level').AsInteger;
        ParamByName('descri').AsString := qCat.FieldByName('descri').AsString;


        if not qCat.FieldByName('form').IsNull then
          ParamByName('form').AsString := qCat.FieldByName('form').AsString;

        if not qCat.FieldByName('report').IsNull then
          ParamByName('report').AsInteger := qCat.FieldByName('report').AsInteger;

        if not qCat.FieldByName('parent').IsNull then
          ParamByName('parent').AsInteger := qCat.FieldByName('parent').AsInteger;

        ParamByName('modification').AsDateTime := qCat.FieldByName('modification').AsDateTime;
        Execute;

        ProgressBar1.Position := qCat.RecNo;
        Sleep(1);

        qCat.Next;
      end;

      ProgressBar1.Position := 0;
      log.Lines[0] := lbTask.Caption + ' OK';
      {$ENDREGION}

      {$REGION 'Tabelas'}
      lbTask.Caption := 'Importando tabelas...';
      log.Lines.Insert(0, lbTask.Caption);
      Application.ProcessMessages;

      Script.Clear;
      Script.Add(
        'INSERT INTO sync.sys_tables(recno, tabela, descri, modification) VALUES (:recno, :tabela, :descri, :modification);');

      qCat.SQL.Text :=
        'SELECT recno, tabela, descri, modification FROM sys_tables;';

      qCat.Open;
      ProgressBar1.Max := qCat.RecordCount;

      while not qCat.Eof do
      begin
        ParamByName('recno').AsInteger := qCat.FieldByName('recno').AsInteger;
        ParamByName('tabela').AsString := qCat.FieldByName('tabela').AsString;
        ParamByName('descri').AsString := qCat.FieldByName('descri').AsString;
        ParamByName('modification').AsDateTime := qCat.FieldByName('modification').AsDateTime;
        Execute;

        ProgressBar1.Position := qCat.RecNo;
        Sleep(1);

        qCat.Next;
      end;

      ProgressBar1.Position := 0;
      log.Lines[0] := lbTask.Caption + ' OK';
      {$ENDREGION}

      {$REGION 'Rotinas'}
      lbTask.Caption := 'Importando Rotinas...';
      log.Lines.Insert(0, lbTask.Caption);
      Application.ProcessMessages;

      Script.Clear;
      Script.Add(
        'INSERT INTO sync.sys_fn(fn, descri, tipo, table_recno, evento, ins, upd, del, modification, status, stmt, checksum) '+
        'VALUES (:fn, :descri, :tipo, :table_recno, :evento, :ins, :upd, :del, :modification, :status, :stmt, :checksum);');

      qCat.SQL.Text :=
        'SELECT fn, descri, tipo, table_recno, evento, ins, upd, del, modification, status, stmt, checksum FROM sys_fn;';

      qCat.Open;
      ProgressBar1.Max := qCat.RecordCount;

      while not qCat.Eof do
      begin
        ParamByName('table_recno').Clear;

        ParamByName('fn').AsString := qCat.FieldByName('fn').AsString;
        ParamByName('descri').AsString := qCat.FieldByName('descri').AsString;
        ParamByName('tipo').AsInteger := qCat.FieldByName('tipo').AsInteger;
        ParamByName('evento').AsInteger := qCat.FieldByName('evento').AsInteger;
        ParamByName('ins').AsBoolean := qCat.FieldByName('ins').AsBoolean;
        ParamByName('upd').AsBoolean := qCat.FieldByName('upd').AsBoolean;
        ParamByName('del').AsBoolean := qCat.FieldByName('del').AsBoolean;
        ParamByName('status').AsInteger := qCat.FieldByName('status').AsInteger;
        ParamByName('checksum').AsString := qCat.FieldByName('checksum').AsString;
        ParamByName('stmt').AsString := qCat.FieldByName('stmt').AsString;

        if not qCat.FieldByName('table_recno').IsNull then
          ParamByName('table_recno').AsInteger := qCat.FieldByName('table_recno').AsInteger;

        ParamByName('modification').AsDateTime := qCat.FieldByName('modification').AsDateTime;
        Execute;

        ProgressBar1.Position := qCat.RecNo;
        Sleep(1);

        qCat.Next;
      end;

      ProgressBar1.Position := 0;
      log.Lines[0] :=lbTask.Caption + ' OK';
      {$ENDREGION}

      lbTask.Caption := 'Aplicando Rotinas...';
      log.Lines.Insert(0, lbTask.Caption);
      Application.ProcessMessages;

      with U.Data.Query do
      try
        SQL.Clear;
        SQL.Add('select public.sys_sincroniza();');
        Open;

        log.Lines[0] := lbTask.Caption + ' OK';
        log.Lines.Insert(0, Fields[0].AsString);
      finally
        Close;
      end;

      lbTask.Caption := 'Importação concluída com sucesso!';
      Application.ProcessMessages;
    end;
  finally
    qCat.Close;
    ReleaseEnvironment;
  end;

end;

procedure TSysDump.actDumpExecute(Sender: TObject);
var
  Loader: TSYSFNLoader;
begin
  inherited;

  if not U.Out.ConfQues('Gerar catalogo para atualização de sistema remoto?') then
    Exit;
  
  LockEnvironment;
  try
    zConn.Disconnect;

    if FileExists(zConn.Database) then
      DeleteFile(zConn.Database);

    zConn.Connect;

    lbTask.Caption := 'Exportando Estrutura...';
    Application.ProcessMessages;

    pStmt.Script.Clear;
    pStmt.Script.Add(
      'create table sys_forms( '+
        'form varchar(100) not null primary key, '+
        'descri varchar(60), '+
        'modification datetime);');

    pStmt.Script.Add(
      'create table sys_reports( '+
        'report integer not null primary key, '+
        'descri varchar(60), '+
        'form varchar(60), '+
        'modification datetime);');

    pStmt.Script.Add(
      'create table sys_menu ('+
        'id integer not null primary key, '+
        'descri varchar(150), '+
        'level integer, '+
        'parent integer, '+
        'form varchar(60), '+
        'report integer, '+
        'order_ integer, '+
        'modification datetime);');
      
    pStmt.Script.Add(
    'create table sys_forms_rpt ('+
      'form varchar(60) not null, '+
      'report integer not null, '+
      'ordem integer, '+
      'label varchar(150), '+
      'modification datetime, '+
      'constraint pk_sys_forms_rpt primary key(form, report));');

    pStmt.Script.Add(
    'create table sys_fn ('+
      'fn varchar(100) not null, '+
      'descri varchar(150), '+
      'tipo integer, '+
      'table_recno integer, '+
      'evento integer, '+
      'ins boolean, '+
      'upd boolean, '+
      'del boolean, '+
      'status integer, '+
      'stmt text, '+
      'modification datetime, '+
      'checksum varchar(36), '+
      'constraint pk_sys_fn primary key(fn));');

    pStmt.Script.Add(
      'create table sys_tables( '+
        'recno integer not null primary key, '+
        'tabela varchar(100), '+
        'descri varchar(60), '+
        'modification datetime);');

    pStmt.Execute;

    with U.Query do
    try
      lbTask.Caption := 'Exportando tabelas...';
      Application.ProcessMessages;

      SQL.Text := 'select recno, tabela, descri, modification from sys_tables';
      Open;
      ProgressBar1.Max := RecordCount;

      pStmt.Clear;
      pStmt.Script.Add('insert into sys_tables (recno, tabela, descri, modification) values (:recno, :tabela, :descri, :modification);');

      while not EOF do
      begin
        pStmt.ParamByName('recno').AsInteger := FieldByName('recno').AsInteger;
        pStmt.ParamByName('tabela').AsString := FieldByName('tabela').AsString;
        pStmt.ParamByName('descri').AsString := FieldByName('descri').AsString;
        pStmt.ParamByName('modification').AsDateTime := FieldByName('modification').AsDateTime;
        pStmt.Execute;

        ProgressBar1.Position := RecNo;
        Sleep(1);

        Next;
      end;

      {$REGION 'Formulários'}
      ProgressBar1.Position := 0;

      lbTask.Caption := 'Exportando formulários...';
      Application.ProcessMessages;

      SQL.Text := 'select form, descri, modification from sys_forms';
      Open;
      ProgressBar1.Max := RecordCount;

      pStmt.Clear;
      pStmt.Script.Add('insert into sys_forms (form, descri, modification) values (:form, :descri, datetime(:modification));');

      while not EOF do
      begin
        pStmt.ParamByName('form').AsString := FieldByName('form').AsString;
        pStmt.ParamByName('descri').AsString := FieldByName('descri').AsString;
        pStmt.ParamByName('modification').AsString := FormatDateTime('yyyy-mm-dd hh:nn:ss', FieldByName('modification').AsDateTime);
        pStmt.Execute;

        ProgressBar1.Position := RecNo;
        Sleep(1);

        Next;
      end;
      {$ENDREGION}

      {$REGION 'Relatórios'}
      ProgressBar1.Position := 0;

      lbTask.Caption := 'Exportando relatórios...';
      Application.ProcessMessages;
      SQL.Text := 'select report, descri, form, modification from sys_reports';
      Open;
      ProgressBar1.Max := RecordCount;

      pStmt.Clear;
      pStmt.Script.Add('insert into sys_reports (report, descri, form, modification) values (:report, :descri, :form, datetime(:modification));');

      while not EOF do
      begin
        pStmt.ParamByName('report').AsInteger := FieldByName('report').AsInteger;
        pStmt.ParamByName('descri').AsString := FieldByName('descri').AsString;
        pStmt.ParamByName('modification').AsString := FormatDateTime('yyyy-mm-dd hh:nn:ss', FieldByName('modification').AsDateTime);
        pStmt.ParamByName('form').Clear;

        if not FieldByName('form').IsNull then
          pStmt.ParamByName('form').AsString := FieldByName('form').AsString;

        pStmt.Execute;
        ProgressBar1.Position := RecNo;
        Sleep(1);

        Next;
      end;
      {$ENDREGION}

      {$REGION 'Menus'}
      ProgressBar1.Position := 0;
      lbTask.Caption := 'Exportando menus...';
      Application.ProcessMessages;
      SQL.Text :=
      'select id, descri, level, parent, form, report, order_, modification '+
        'from sys_menu order by coalesce(parent,0), id';
      Open;
      ProgressBar1.Max := RecordCount;

      pStmt.Clear;
      pStmt.Script.Add(
        'insert into sys_menu (id, descri, level, parent, form, report, order_, modification) values '+
       '(:id, :descri, :level, :parent, :form, :report, :order_, datetime(:modification));');

      while not EOF do
      begin
        pStmt.ParamByName('id').AsInteger := FieldByName('id').AsInteger;
        pStmt.ParamByName('descri').AsString := FieldByName('descri').AsString;
        pStmt.ParamByName('level').AsInteger := FieldByName('level').AsInteger;
        pStmt.ParamByName('order_').AsInteger := FieldByName('order_').AsInteger;
        pStmt.ParamByName('modification').AsString := FormatDateTime('yyyy-mm-dd hh:nn:ss', FieldByName('modification').AsDateTime);
        pStmt.ParamByName('parent').Clear;
        pStmt.ParamByName('form').Clear;
        pStmt.ParamByName('report').Clear;

        if not FieldByName('parent').IsNull then
          pStmt.ParamByName('parent').AsInteger := FieldByName('parent').AsInteger;

        if not FieldByName('form').IsNull then
          pStmt.ParamByName('form').AsString := FieldByName('form').AsString;

        if not FieldByName('report').IsNull then
          pStmt.ParamByName('report').AsInteger := FieldByName('report').AsInteger;

        pStmt.Execute;
        ProgressBar1.Position := RecNo;
        Sleep(1);

        Next;
      end;
      {$ENDREGION}

      {$REGION 'Relatórios x Formulários'}
      ProgressBar1.Position := 0;

      lbTask.Caption := 'Exportando relatórios x formulários...';
      Application.ProcessMessages;

      SQL.Text :=
      'select form, report, ordem, label, modification '+
        'from sys_forms_rpt '+
       'order by form, report; ';
      Open;
      ProgressBar1.Max := RecordCount;

      pStmt.Clear;
      pStmt.Script.Add(
        'insert into sys_forms_rpt (form, report, ordem, label, modification) values '+
       '(:form, :report, :ordem, :label, datetime(:modification));');

      while not EOF do
      begin
        pStmt.ParamByName('form').AsString := FieldByName('form').AsString;
        pStmt.ParamByName('report').AsInteger := FieldByName('report').AsInteger;
        pStmt.ParamByName('ordem').AsInteger := FieldByName('ordem').AsInteger;
        pStmt.ParamByName('label').AsString := FieldByName('label').AsString;
        pStmt.ParamByName('modification').AsString := FormatDateTime('yyyy-mm-dd hh:nn:ss', FieldByName('modification').AsDateTime);
        pStmt.Execute;
        ProgressBar1.Position := RecNo;
        Sleep(1);

        Next;
      end;
      {$ENDREGION}

      {$REGION 'Rotinas'}
      ProgressBar1.Position := 0;
      lbTask.Caption := 'Exportando rotinas...';
      Application.ProcessMessages;

      Loader := TSYSFNLoader.Create;
      try
        Loader.LoadAll;
      finally
        FreeAndNil(Loader);
      end;

      SQL.Text :=
      'select fn, descri, tipo, table_recno, evento, ins, upd, del, modification, status, stmt, modification, checksum '+
        'from sys_fn '+
       'where status = 2 ';
      Open;
      ProgressBar1.Max := RecordCount;

      pStmt.Clear;
      pStmt.Script.Add(
        'insert into sys_fn '+
          '(fn, descri, tipo, table_recno, evento, ins, upd, del, modification, status, stmt, checksum, modification) '+
        'values ('+
          ':fn, :descri, :tipo, :table_recno, :evento, :ins, :upd, :del, :modification, :status, :stmt, :checksum, datetime(:modification));');

      while not EOF do
      begin
        pStmt.ParamByName('table_recno').Clear;

        pStmt.ParamByName('fn').AsString := FieldByName('fn').AsString;
        pStmt.ParamByName('descri').AsString := FieldByName('descri').AsString;
        pStmt.ParamByName('tipo').AsInteger := FieldByName('tipo').AsInteger;
        
        if not FieldByName('table_recno').IsNull then
          pStmt.ParamByName('table_recno').AsInteger := FieldByName('table_recno').AsInteger;
          
        pStmt.ParamByName('evento').AsInteger := FieldByName('evento').AsInteger;
        pStmt.ParamByName('ins').AsBoolean := FieldByName('ins').AsBoolean;
        pStmt.ParamByName('upd').AsBoolean := FieldByName('upd').AsBoolean;
        pStmt.ParamByName('del').AsBoolean := FieldByName('del').AsBoolean;
        pStmt.ParamByName('status').AsInteger := FieldByName('status').AsInteger;
        pStmt.ParamByName('stmt').AsString := FieldByName('stmt').AsString;
        pStmt.ParamByName('checksum').AsString := FieldByName('checksum').AsString;
        pStmt.ParamByName('modification').AsString := FormatDateTime('yyyy-mm-dd hh:nn:ss', FieldByName('modification').AsDateTime);
        pStmt.Execute;
        ProgressBar1.Position := RecNo;
        Sleep(1);

        Next;
      end;
      {$ENDREGION}

      ProgressBar1.Position := 0;

      lbTask.Caption := 'Exportação concluída com sucesso!';
      Application.ProcessMessages;
    finally
      Close;
    end;
  finally
    ReleaseEnvironment;
  end;
end;

procedure TSysDump.FormCreate(Sender: TObject);
begin
  inherited;
  ZConn.Protocol := 'sqlite-3';
  zConn.LibraryLocation := TEnvironment.Lib + 'sqlite3.dll';
  zConn.Database := TEnvironment.Data + 'catalog.db';
  pStmt.Connection := zConn;
  qCat.Connection := zConn;
end;

procedure TSysDump.FormDestroy(Sender: TObject);
begin
  zConn.Disconnect;
  inherited;
end;

procedure TSysDump.LockEnvironment;
begin
  actDump.Enabled := False;
  actCancel.Enabled := False;
  actClose.Enabled := False;
  FOldCursor := Screen.Cursor;
  Screen.Cursor := crHourGlass;
end;

procedure TSysDump.ReleaseEnvironment;
begin
  actDump.Enabled := True;
  actCancel.Enabled := True;
  actClose.Enabled := True;
  Screen.Cursor := FOldCursor;
end;

initialization
  RegisterClass(TSysDump);

finalization
  UnRegisterClass(TSysDump);

end.
