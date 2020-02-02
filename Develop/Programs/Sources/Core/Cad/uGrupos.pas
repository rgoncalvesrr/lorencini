unit uGrupos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  jpeg, ExtCtrls, StdCtrls, Grids, DBGrids, Db, DBTables,
  ZAbstractRODataset, ZDataset;

type
  TfrmCadGrupos = class(TForm)
    Panel1: TPanel;
    Label20: TLabel;
    Image6: TImage;
    Label6: TLabel;
    Image3: TImage;
    Label4: TLabel;
    Image1: TImage;
    Label1: TLabel;
    Image4: TImage;
    Label3: TLabel;
    Image5: TImage;
    Label5: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Image8: TImage;
    Label25: TLabel;
    q1: TZReadOnlyQuery;
    q2: TZReadOnlyQuery;
    procedure Image3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Image5Click(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadGrupos: TfrmCadGrupos;
  novoGrupo: Boolean;
  codigoGrupo:  String;
  i : Integer;

implementation

uses ufuncoes, prgProdutosSubGrupos, uIUtils;

{$R *.DFM}

procedure TfrmCadGrupos.Image3Click(Sender: TObject);
begin
     Close;
end;

procedure TfrmCadGrupos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     q1.active := false;
     action := cafree;
end;

procedure TfrmCadGrupos.FormShow(Sender: TObject);
begin
     edit1.clear;    activecontrol := edit1;    novoGrupo := true;

     with q1 do begin
          active:=false;
          sql.clear;
          sql.add('SELECT * FROM grupo_produto ORDER BY descricao');
          active:=true;
     end;
end;

procedure TfrmCadGrupos.Image4Click(Sender: TObject);
begin


     if edit1.text = '' then
        begin Mensagem('Não é possível salvar este cadastro, pois não contém dados.');
              exit;
        end;

     if novoGrupo = true then 
        begin with q2 do begin
                   active := false;
                   sql.clear;
                   sql.add('SELECT codigo FROM grupo_produto ORDER By codigo DESC');
                   active := true;
                   codigoGrupo := format('%5.5d',[ fieldbyname('codigo').asinteger +1 ]);
                   active := false;
              end;
     end;

     with q2 do begin
          active:=false;
          sql.clear;
          sql.add('DELETE FROM grupo_produto WHERE codigo='+codigogrupo);
          U.ExecuteSQL(SQL.Text);

          sql.clear;
          sql.add('INSERT INTO grupo_produto (codigo, descricao)');
          sql.add('VALUES ('+codigogrupo);
          sql.add(',"'+edit1.text+'"');
          sql.add(')');
          U.ExecuteSQL(SQL.Text);
     end;

     Mensagem('OK..'+#13+#13+'O cadastro deste grupo foi salvo com sucesso.');

     FormShow( sender );

end;

procedure TfrmCadGrupos.DBGrid1CellClick(Column: TColumn);
begin
     DBGrid1Enter(DBGrid1);
end;

procedure TfrmCadGrupos.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     DBGrid1Enter(DBGrid1);
end;

procedure TfrmCadGrupos.Image5Click(Sender: TObject);
begin

     i := Perguntar('Atenção !!!'+#13+#13+
                                      'Tem certeza que deseja excluir este grupo de produto ?');

     if i <> 6 then Exit;

     with q2 do begin
          active:=false;
          sql.clear;
          sql.add('DELETE FROM grupo_produto WHERE codigo='+codigogrupo);
          U.ExecuteSQL(SQL.Text);
     end;

     Mensagem('OK..'+#13+#13+'O cadastro deste grupo de produto foi excluido com sucesso.');

     FormShow( sender );

end;

procedure TfrmCadGrupos.DBGrid1Enter(Sender: TObject);
begin
     with q1 do
          begin codigoGrupo := fieldbyname('codigo').asstring;
                edit1.text := fieldbyname('descricao').asstring;
          end;
     novoGrupo := false;

end;

procedure TfrmCadGrupos.Image8Click(Sender: TObject);
begin
     application.createform( TfrmProdutosSubGrupos, frmProdutosSubGrupos );
     frmProdutosSubGrupos.showmodal;
     frmProdutosSubGrupos.free;
end;

procedure TfrmCadGrupos.FormCreate(Sender: TObject);
begin
  q1.Connection:= U.Data;
  q2.Connection:= U.Data;
end;

initialization
  RegisterClass(TfrmCadGrupos);


end.
