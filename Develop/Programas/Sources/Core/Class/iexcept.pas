unit iexcept;

interface

uses SysUtils;

type
  {Tipo de excessão}
  TEType = (etInfo, etWarning, etError);

  EBase = class(Exception)
  private
    fEType: TEType;
  public
    constructor Create(const Msg: string; EType: TEType = etError );
    constructor CreateFmt(const Msg: string; const Args: array of const;
      EType: TEType = etError);
    property EType: TEType read fEType;
  end;

  ELogin = class(EBase)
  public
    constructor Create(const Msg: string; EType: TEType = etError );
    constructor CreateFmt(const Msg: string; const Args: array of const;
      EType: TEType = etError);
  end;

implementation

{ EBase }

constructor EBase.Create(const Msg: string; EType: TEType);
begin
  inherited Create('EBase: '+Msg);
  fEType:= EType;
end;

constructor EBase.CreateFmt(const Msg: string; const Args: array of const;
  EType: TEType);
begin
  inherited CreateFmt('EBase: '+Msg, Args);
  fEType:= EType;
end;

{ ELogin }

constructor ELogin.Create(const Msg: string; EType: TEType);
begin
  inherited Create('ELogin: '+Msg, EType);
end;

constructor ELogin.CreateFmt(const Msg: string; const Args: array of const;
  EType: TEType);
begin
  inherited CreateFmt('ELogin: '+Msg, Args, EType);
end;

end.
