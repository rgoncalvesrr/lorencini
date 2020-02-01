{*
  @@Core
}
unit CCore;

interface

uses SysUtils, Classes;

type
  {Interface padrão implementada por todos objetos da Cartel Informática}
  ICObject = Interface
    ['{5BE8DF06-5E08-47E8-9929-6E451383302C}']
    function ObjectAddress: Pointer;
    function ClassName: String;
    function PersistentClass: TPersistentClass;
    function ToString: String;
    function GetId: String;
  End;

  {Interface para classes que manipulam listas de objetos da Cartel Informática}
  ICObjectList = Interface(ICObject)
    ['{D0350264-FE4A-49BC-9EE8-2FEDA7E75826}']
    function GetItem(Index: Longint): ICObject;
    function GetCount: LongInt;
    procedure SetItem(Index: Longint; const Item: ICObject);
    property Items[Index: Integer]: ICObject read GetItem write SetItem; Default;
    property Count: LongInt read GetCount;

    function Add(Item: ICObject): Integer;
    procedure Clear;
    procedure Delete(Index: Integer); overload;
    procedure Delete(Item: ICObject); overload;
    procedure Exchange(Index1, Index2: Integer);
    function Expand: TList;
    function Extract(const Item: ICObject): ICObject;
    function First: ICObject;
    function GetEnumerator: TListEnumerator;
    function IndexOf(Item: ICObject): Integer;
    procedure Insert(Index: Integer; Item: ICObject);
    function Last: ICObject;
    procedure Move(CurIndex, NewIndex: Integer);
    function Remove(Item: ICObject): Integer;
    procedure Pack;
    procedure Sort(Compare: TListSortCompare);
  End;

  {Objetos executaveis}
  ICExecutable = Interface(ICObject)
    ['{DEFCE875-CE66-4F01-82AE-B21D46B8A346}']
    function Execute(): Boolean;
  End;

  ICIdentifiable = interface(ICObject)
    ['{53EAA8E4-63FB-46F2-9BDD-4672A9358766}']
    function GetCaption: String;
    procedure SetCaption(const Value: String);

    property Caption: String read GetCaption write SetCaption;
  end;

  {Interface para tipo básico de dados da Cartel Informática}
  {Métodos da interface de exibição de mensagens}
  IOut = interface
    ['{85C5D15C-4536-44FD-9ACB-3C749AF878C7}']
    procedure ShowInfo(const Msg: string); overload;
    procedure ShowWarn(const Msg: string); overload;
    procedure ShowErro(const Msg: string); overload;
    function ConfErro(const Msg: string): boolean; overload;
    function ConfWarn(const Msg: string): boolean; overload;
    function ConfQues(const Msg: string): boolean; overload;
    procedure ShowInfo(const Msg: string; const Args: array of const); overload;
    procedure ShowWarn(const Msg: string; const Args: array of const); overload;
    procedure ShowErro(const Msg: string; const Args: array of const); overload;
    function ConfErro(const Msg: string; const Args: array of const): boolean; overload;
    function ConfWarn(const Msg: string; const Args: array of const): boolean; overload;
    function ConfQues(const Msg: string; const Args: array of const): boolean; overload;
  end;


  { -------------------------------------------------------------------------
    Implementações padrão para algumas interfaces
    ------------------------------------------------------------------------- }

  {Classe abstrata base}
  TCAbstractObject = class(TInterfacedObject, ICObject)
  private
    FID: Longint;
    class function GetObjID: Longint;
  public
    constructor Create;
    function ObjectAddress: Pointer;
    function ClassName: String;
    function PersistentClass: TPersistentClass;
    function ToString: String; dynamic;
    function GetId: String;
  end;

  TCObjectList = class(TCAbstractObject, ICObjectList)
  private
    FList : TList;
    function GetCount: Longint;
    function GetItem(Index: Longint): ICObject;
    procedure SetItem(Index: Longint; const Item: ICObject);

    procedure Release(AObject: Pointer);
  public
    constructor Create;
    destructor Destroy; override;

    procedure Clear; virtual;

    function Add(Item: ICObject): Integer; virtual;
    procedure Delete(Index: Integer); overload;
    procedure Delete(Item: ICObject); overload;
    procedure Exchange(Index1, Index2: Integer);
    function Expand: TList;
    function Extract(const Item: ICObject): ICObject;
    function First: ICObject;
    function GetEnumerator: TListEnumerator;
    function IndexOf(Item: ICObject): Integer;
    procedure Insert(Index: Integer; Item: ICObject);
    function Last: ICObject;
    procedure Move(CurIndex, NewIndex: Integer);
    function Remove(Item: ICObject): Integer;
    procedure Pack;
    procedure Sort(Compare: TListSortCompare);

    property Items[Index: Integer]: ICObject read GetItem write SetItem; default;
    property Count: LongInt read GetCount;
  end;

implementation

{ TCObjectList }
procedure TCObjectList.Clear;
var
  i: Integer;
begin
  for i := 0 to FList.Count - 1 do
  begin
    Release(FList[i]);
    FList[i] := nil;
  end;

  FList.Clear;
end;

constructor TCObjectList.Create;
begin
  inherited;
  FList := TList.Create;;
end;

procedure TCObjectList.Delete(Index: Integer);
begin
  Release(FList[Index]);
  FList.Delete(Index);
end;

procedure TCObjectList.Delete(Item: ICObject);
begin
  FList.Delete(IndexOf(Item));
end;

destructor TCObjectList.Destroy;
begin
  Clear;
  FreeAndNil(FList);
  inherited;
end;

procedure TCObjectList.Exchange(Index1, Index2: Integer);
begin
  FList.Exchange(Index1, Index2);
end;

function TCObjectList.Expand: TList;
begin
  Result := FList.Expand;
end;

function TCObjectList.Extract(const Item: ICObject): ICObject;
begin
  Result := ICObject(Flist.Extract(Pointer(Item)));
end;

function TCObjectList.First: ICObject;
begin
  Result := ICObject(FList.First);
end;

function TCObjectList.GetCount: Longint;
begin
  Result := FList.Count;
end;

function TCObjectList.GetEnumerator: TListEnumerator;
begin
  Result := FList.GetEnumerator;
end;

function TCObjectList.GetItem(Index: Integer): ICObject;
begin
  Result := ICObject(FList[Index]);
end;

function TCObjectList.IndexOf(Item: ICObject): Integer;
begin
  Result := FList.IndexOf(Pointer(Item));
end;

procedure TCObjectList.Insert(Index: Integer; Item: ICObject);
begin
  FList.Insert(Index, Pointer(Item));
end;

function TCObjectList.Last: ICObject;
begin
  Result := ICObject(FList.Last);
end;

procedure TCObjectList.Move(CurIndex, NewIndex: Integer);
begin
  FList.Move(CurIndex, NewIndex);
end;

procedure TCObjectList.Pack;
begin
  FList.Pack;
end;

procedure TCObjectList.Release(AObject: Pointer);
var
  Obj: ICObject;
begin
  Pointer(Obj) := AObject;
end;

function TCObjectList.Remove(Item: ICObject): Integer;
begin
  Release(Pointer(Item));
  Result := FList.Remove(Pointer(Item));
end;

procedure TCObjectList.SetItem(Index: Integer; const Item: ICObject);
begin
  FList[Index] := Pointer(Item);
end;

procedure TCObjectList.Sort(Compare: TListSortCompare);
begin
  FList.Sort(Compare);
end;

{ TObjectListItem }

function TCAbstractObject.ClassName: String;
begin
  Result := TObject(ObjectAddress).ClassName;
end;

constructor TCAbstractObject.Create;
begin
end;

class function TCAbstractObject.GetObjID: Longint;
const
  {$J+}
  IntID: Longint = 1;
  {$J-}
begin
  Result := IntID;
  IntID := IntID + 1; 
end;

function TCAbstractObject.ObjectAddress: Pointer;
begin
  Result := Self;
end;

function TCAbstractObject.PersistentClass: TPersistentClass;
begin
  Result := TPersistentClass(ObjectAddress);
end;

function TCAbstractObject.GetId: String;
begin
  if FID = 0 then
    FID := GetObjID;

  Result := IntToStr(FID);
end;

function TCAbstractObject.ToString: String;
begin
  Result := Format('%s <%p>', [ClassName, Pointer(Self)]);
end;

function TCObjectList.Add(Item: ICObject): Integer;
begin
  Item._AddRef;
  Result := FList.Add(Pointer(Item));
end;

end.
