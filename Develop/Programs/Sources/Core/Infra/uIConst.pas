unit uIConst;

interface

uses classes, sysutils, comctrls;

Type
  {Ponteiro que armazena informa��es do cliente}
  PCliente = ^TCliente;
  TCliente = record
    codigo: string;
    situacao: string;
    empresa: string;
  end;
  
  {Estado para telas de edi��o}
  TSysState = (ssInsert, ssUpdate, ssBrowse);

  {Tipos de usu�rio}
  TUserType = (utUser, utGroup);

  {Tipo de n� da estrutura}
  TSecStruType = (sstModule, sstForm);

  {Estrutura que guarda o usu�rio}
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
