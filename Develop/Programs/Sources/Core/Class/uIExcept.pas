unit uIExcept;

interface

uses classes, sysutils;

type
  ECustomException = class(Exception)
  public
    constructor Create(const Msg: string);
    constructor CreateFmt(const Msg: string; const Args: array of const);
  end;


  ELogin = class(ECustomException)
  public
    constructor Create(const Msg: string);
    constructor CreateFmt(const Msg: string; const Args: array of const);
  end;



implementation

{ ECustomException }

constructor ECustomException.Create(const Msg: string);
begin
  inherited Create('Excessão geral: ' + #13#10 + Msg);
end;

constructor ECustomException.CreateFmt(const Msg: string;
  const Args: array of const);
begin
  inherited CreateFmt('Excessão geral: ' + #13#10 + Msg, Args);

end;

{ ELogin }

constructor ELogin.Create(const Msg: string);
begin
  inherited Create('Erro no login: ' + Msg);
end;

constructor ELogin.CreateFmt(const Msg: string;
  const Args: array of const);
begin
  inherited CreateFmt('Erro no login: ' + Msg, Args);
end;

end.
