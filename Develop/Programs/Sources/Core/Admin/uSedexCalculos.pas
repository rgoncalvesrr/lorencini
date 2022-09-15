unit uSedexCalculos;

interface

uses uSedex, Classes, SysUtils;

type
  TFreteLab = class(TInterfacedObject, ICalculos)
  private
    FFrascos: Integer;
    FSeringas: Integer;
  public
    constructor Create(Frascos: Integer; Seringas: Integer);
    procedure CalcularVolume(ASedex: TSedex);
    procedure CalcularPeso(ASedex: TSedex);
  end;

implementation

{ TFreteLab }

procedure TFreteLab.CalcularPeso(ASedex: TSedex);
begin
  with ASedex do
  begin
    Peso := 0;
    if Volumes > 0 then
      Peso := (FFrascos * 0.75 + FSeringas * 0.2) / Volumes;
  end;
end;

procedure TFreteLab.CalcularVolume(ASedex: TSedex);
begin
  with ASedex do
  begin
    Descri := EmptyStr;
    
    Volumes := 0;
    if FFrascos > 0 then
    begin
      Volumes := FFrascos / 4;
      Descri := Format('%d frasco', [FFrascos]);

      if FFrascos > 1 then
        Descri := Descri + 's';
    end;

    if FSeringas > 0 then
    begin
      if Descri <> EmptyStr then
        Descri := Descri + ' e ';

      Descri := Descri + Format('%d seringa', [FSeringas]);

      if FSeringas > 1 then
        Descri := Descri + 's';

      Volumes := Volumes + FSeringas / 12;
    end;

    if (Volumes <= 1) then
      Volumes := 1
    else if (Volumes > 2) then
      Volumes := 3
    else
      Volumes := 2;
  end;
end;

constructor TFreteLab.Create(Frascos, Seringas: Integer);
begin
  FFrascos := Frascos;
  FSeringas := Seringas;
end;

end.
