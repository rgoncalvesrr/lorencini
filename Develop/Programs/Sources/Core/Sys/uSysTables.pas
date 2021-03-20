unit uSysTables;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, ZSequence;

type
  TSysTables = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrctabela: TStringField;
    IBrwSrcdescri: TStringField;
    ZSequence1: TZSequence;
    procedure actRegExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SysTables: TSysTables;

implementation

uses uDM, uIUtils;

{$R *.dfm}

procedure TSysTables.actRegExecute(Sender: TObject);
begin
  inherited;
  try
    try
      U.Data.ExecSQL(
      'insert into sys_tables(tabela, descri) '+
      'select a.tablename, a.tablename '+
        'from pg_catalog.pg_tables a '+
       'where a.schemaname = ''public'' '+
         'and a.tableowner = ''lorencini'' '+
         'and not exists( '+
          'select 1 '+
            'from sys_tables b '+
           'where b.tabela = a.tablename); ');

      U.Out.ShowInfo('Tabelas carregadas com sucesso!');
    except
      on E: Exception do
        U.Out.ShowErro(E.Message);
    end;
  finally
    G.RefreshDataSet(IBrwSrc);
    RefreshCtrl;
  end;
end;

initialization
  RegisterClass(TSysTables);

finalization
  UnRegisterClass(TSysTables);



end.
