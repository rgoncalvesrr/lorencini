unit uIConst;

interface

uses classes, sysutils, comctrls;

Type
  {Ponteiro que armazena informações do cliente}
  PCliente = ^TCliente;
  TCliente = record
    codigo: string;
    situacao: string;
    empresa: string;
  end;
  
  {Estado para telas de edição}
  TSysState = (ssInsert, ssUpdate, ssBrowse);

  {Tipos de usuário}
  TUserType = (utUser, utGroup);

  {Tipo de nó da estrutura}
  TSecStruType = (sstModule, sstForm);

  {Estrutura que guarda o usuário}
  PUser = ^TUser;
  TUser = record
    UserName: String;
    Name: String;
    EMail: String;
    Type_: TUserType;
    IsActive: Boolean;
    IsAdmin: Boolean;
    ChangePass: Boolean;
    Row: TListItem;
  end;

  PSecStru = ^TSecStru;
  TSecStru = record
    Module: string;
    Form: string;
    Descri: string;
    Node: TTreeNode;
    Parent: PSecStru;
    Expanded: Boolean;
    Type_: TSecStruType;
  end;

implementation

end.
