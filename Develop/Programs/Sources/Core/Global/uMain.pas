unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uidefform, Menus, ActnList, StdActns;

type
  TMain = class(TIDefForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Apontamento1: TMenuItem;
    Laboratrio1: TMenuItem;
    Job1: TMenuItem;
    Oramentos1: TMenuItem;
    Relatrios1: TMenuItem;
    actFunc: TAction;
    actCli: TAction;
    actForn: TAction;
    actGrpPro: TAction;
    actPro: TAction;
    actFuncao: TAction;
    actEquip: TAction;
    actSGrpPro: TAction;
    Funcionrios1: TMenuItem;
    Clientes1: TMenuItem;
    Fornecedores1: TMenuItem;
    GrupodeProdutos1: TMenuItem;
    SubgrupodeProdutos1: TMenuItem;
    Produtos1: TMenuItem;
    FunesModeObra1: TMenuItem;
    EquipamentosLocaes1: TMenuItem;
    actVend: TAction;
    Vendedores1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    actClose: TWindowClose;
    Fechar1: TMenuItem;
    procedure actFuncExecute(Sender: TObject);
    procedure actFornExecute(Sender: TObject);
    procedure actGrpProExecute(Sender: TObject);
    procedure actProExecute(Sender: TObject);
    procedure actFuncaoExecute(Sender: TObject);
    procedure actEquipExecute(Sender: TObject);
    procedure actSGrpProExecute(Sender: TObject);
    procedure actVendExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
  private
    FLoad: Boolean;
  protected
  public
    { Public declarations }
  end;

var
  Main: TMain;

implementation

uses uCadFuncionario, Ufornecedor, uGrupos, uProdutos,
  uCadFuncoes, uCadEquipamentos, prgProdutosSubGrupos, prgCadVendedores;

{$R *.dfm}

procedure TMain.actFuncExecute(Sender: TObject);
begin
  if not Assigned(Application.FindComponent('frmCadFuncionario')) then
    Application.CreateForm(TfrmCadFuncionario,frmCadFuncionario);

  frmCadFuncionario.Show;
end;

procedure TMain.actFornExecute(Sender: TObject);
begin
  if not Assigned(Application.FindComponent('frmCadFornecedor')) then
    Application.CreateForm(TfrmCadFornecedor, frmCadFornecedor);

  frmCadFornecedor.Show;
end;

procedure TMain.actGrpProExecute(Sender: TObject);
begin
  if not Assigned(Application.FindComponent('frmCadGrupos')) then
    Application.CreateForm(TfrmCadGrupos, frmCadGrupos);

  frmCadGrupos.Show;
end;

procedure TMain.actProExecute(Sender: TObject);
begin
  if not Assigned(Application.FindComponent('frmCadProdutos')) then
    Application.CreateForm(TfrmCadProdutos, frmCadProdutos);

  frmCadProdutos.Show;
end;

procedure TMain.actFuncaoExecute(Sender: TObject);
begin
  if not Assigned(Application.FindComponent('frmCadFuncoes')) then
    Application.CreateForm(TfrmCadFuncoes, frmCadFuncoes);

  frmCadFuncoes.Show;
end;

procedure TMain.actEquipExecute(Sender: TObject);
begin
  if not Assigned(Application.FindComponent('frmCadEquipamentos')) then
    Application.CreateForm(TfrmCadEquipamentos, frmCadEquipamentos);

  frmCadEquipamentos.Show;
end;

procedure TMain.actSGrpProExecute(Sender: TObject);
begin
  if not Assigned(Application.FindComponent('frmProdutosSubGrupos')) then
    Application.CreateForm(TfrmProdutosSubGrupos, frmProdutosSubGrupos);

  frmProdutosSubGrupos.Show;
end;

procedure TMain.actVendExecute(Sender: TObject);
begin
  if not Assigned(Application.FindComponent('frmCadVendedores')) then
    Application.CreateForm(TfrmCadVendedores, frmCadVendedores);
end;

procedure TMain.FormCreate(Sender: TObject);
begin
  inherited;
  FLoad:= True;
end;

procedure TMain.FormActivate(Sender: TObject);
begin
  inherited;
  if FLoad then
  begin
    WindowState:= wsMaximized;
  end;
end;

procedure TMain.actCloseExecute(Sender: TObject);
begin
  Close;
end;

end.
