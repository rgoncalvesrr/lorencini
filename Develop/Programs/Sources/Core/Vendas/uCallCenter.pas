unit uCallCenter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Menus,
  ActnList, Grids, DBGrids, ComCtrls, StdCtrls, Buttons, Mask, ExtCtrls, ToolWin,
  ZSqlUpdate, DBCtrls, uOSClass, uIUtils, uFrameData;

type
  TCallCenter = class(TIDefBrowse)
    Splitter2: TSplitter;
    actAttach: TAction;
    pmNovo: TPopupMenu;
    AnexarOramento1: TMenuItem;
    Panel5: TPanel;
    Splitter3: TSplitter;
    GroupBox2: TGroupBox;
    DBMemo2: TDBMemo;
    FrameData1: TFrameData;
    Label4: TLabel;
    Label1: TLabel;
    cbEmpresa: TComboBox;
    Label3: TLabel;
    cbUsername: TComboBox;
    Label5: TLabel;
    DBText1: TDBText;
    Label61: TLabel;
    Novo1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbEmpresaChange(Sender: TObject);
    procedure cbUsernameChange(Sender: TObject);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure FrameData1CCalendarDiff1Change(Sender: TObject);
  private
    FDataAte: TDateTime;
    FDataDe: TDateTime;
    FCliente: Integer;
    FAtendenteDe: String;
    FAtendenteAte: String;
    FCLEmpresas: TComboList;
    FCLAtendentes: TComboList;
    procedure OnEdit; override;
    procedure RefreshCtrl; override;
    procedure SetDataSet(const Value: TZQuery); Override;
    function GetDataAte: TDateTime;
    function GetDataDe: TDateTime;
    function GetCliente: Integer;
    procedure SetCliente(const Value: Integer);
    function GetAtendenteAte: String;
    function GetAtendenteDe: String;
    procedure SetAtendenteAte(const Value: String);
    procedure SetAtendenteDe(const Value: String);
  public
    { Public declarations }
    procedure ApplyFilter;
    property Cliente: Integer read GetCliente write SetCliente;
    property AtendenteAte: String read GetAtendenteAte write SetAtendenteAte;
    property AtendenteDe: String read GetAtendenteDe write SetAtendenteDe;
  end;

var
  CallCenter: TCallCenter;

implementation

{$R *.dfm}
uses uDM, uCallCenterM, mcUtils, uSysAgenda, uCallCenterAttach, dateutils;

{ TCallCenter }

procedure TCallCenter.actQueryProcessExecute(Sender: TObject);
begin
  inherited;
  with DM.qCallCenter, FrameData1.CCalendarDiff1 do
  begin
    {** Recuperando o código do cliente *}
    ParamByName('Cliente').AsInteger := Cliente;
    ParamByName('DataDe').AsDate := BeginDate;
    ParamByName('DataAte').AsDate := EndDate;
    ParamByName('UserNameDe').AsString := AtendenteDe;
    ParamByName('UserNameAte').AsString := AtendenteAte;

    G.RefreshDataSet(DM.qCallCenter);
  end;
end;

procedure TCallCenter.ApplyFilter;
begin
  actQueryProcessExecute(actQueryProcess);
end;

procedure TCallCenter.cbEmpresaChange(Sender: TObject);
begin
  Cliente := FCLEmpresas.Selected.Value;
end;

procedure TCallCenter.cbUsernameChange(Sender: TObject);
begin
  inherited;
  AtendenteDe := FCLAtendentes.Selected.Value;
  AtendenteAte := FCLAtendentes.Selected.Value;
end;

procedure TCallCenter.FormCreate(Sender: TObject);
begin
  inherited;
  with DM.qCallCenter do
    SQL.Text:=
    'select a.id,       a.codigo, d.empresa,  d.nome_chave, a.data, '+
           'a.username, c.name,   a.descri,   a.os,         a.contato, '+
           'b.nome,     b.funcao, b.telefone, b.celular,    b.email '+
      'from callcenter a '+
           'left join tbclientes_contatos b '+
             'on b.cliente = a.codigo '+
            'and b.item = a.contato '+
           'join sys_users c '+
             'on c.username = a.username '+
           'join tbclientes d '+
             'on d.codigo = a.codigo '+
     'where a.codigo = :cliente '+
       'and a.data between :datade and  :dataate '+
       'and a.username between :usernamede and :usernameate ';

  CallCenter:= Self;
    
  AtendenteDe:= '-';
  AtendenteAte:= '-';
end;

procedure TCallCenter.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FCLEmpresas);
  FreeAndNil(FCLAtendentes);
  inherited;
end;

procedure TCallCenter.FormShow(Sender: TObject);
begin
  inherited;
  {** Preenche combo de clientes *}
  FCLEmpresas := TComboList.Create(cbEmpresa, 'tbclientes', 'codigo',
    'nome_chave');
  cbEmpresaChange(cbEmpresa);

  {** Preenche lista de atendentes *}
  FCLAtendentes:= TComboList.Create(cbUsername, 'sys_users', 'username',
    'name', false);
  FCLAtendentes.Criteria.Add('type_ = 1'); // Somente usuários
  FCLAtendentes.UpdateList;

  cbUsername.Items.Insert(0, '(Todos)');
  cbUsername.ItemIndex := 0;
  cbUsernameChange(cbUsername);

  actQueryProcessExecute(actQueryProcess);
end;

procedure TCallCenter.FrameData1CCalendarDiff1Change(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQueryProcess);
end;

function TCallCenter.GetAtendenteAte: String;
begin
  Result := FAtendenteAte;
end;

function TCallCenter.GetAtendenteDe: String;
begin
  Result := FAtendenteDe;
end;

function TCallCenter.GetCliente: Integer;
begin
  Result := FCliente;
end;

function TCallCenter.GetDataAte: TDateTime;
begin
  Result := FDataAte;
end;

function TCallCenter.GetDataDe: TDateTime;
begin
  Result := FDataDe;
end;

procedure TCallCenter.OnEdit;
begin
  with DM do
    if DataSet = qCallCenter then
    begin
      Application.CreateForm(TCallCenterM, CallCenterM);
      CallCenterM.DataSet := DataSet;
      CallCenterM.Cliente := Cliente;
      CallCenterM.ShowModal;
    end;
end;

procedure TCallCenter.RefreshCtrl;
begin
  inherited;
  actQueryProcess.Enabled:= True;
end;

procedure TCallCenter.SetAtendenteAte(const Value: String);
begin
  FAtendenteAte := StringOfChar('Z', 15);
  if not mcEmpty(Value) then
    FAtendenteAte := Value;
end;

procedure TCallCenter.SetAtendenteDe(const Value: String);
begin
  FAtendenteDe := 'a';
  if not mcEmpty(Value) then
    FAtendenteDe := Value;
end;

procedure TCallCenter.SetCliente(const Value: Integer);
begin
  FCliente := Value;
end;

procedure TCallCenter.SetDataSet(const Value: TZQuery);
begin
  inherited;
  ToolButton2.DropdownMenu:= nil;
  ToolButton2.Style:= tbsButton;
  actAttach.Enabled:= False;

  case Value.Tag of
    3: begin
      AllowEdit:= False;
      AllowView:= False;
      AllowDelete:= True;
      actAttach.Enabled:= True;
      ToolButton2.Style:= tbsDropDown;
      ToolButton2.DropdownMenu:= pmNovo;
    end;
  else
    AllowDelete:= False;
  end;
  
end;

initialization
  RegisterClass(TCallCenter);

finalization
  UnRegisterClass(TCallCenter);

end.
