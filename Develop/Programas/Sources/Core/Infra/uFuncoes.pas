unit uFuncoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB;

  function ValorSQL(_valor: String): String;
  procedure Mens(_mensagem: String);
  function DataSQL(_data: String): String;
  function ValorMoeda(_valor: String): String;
  function AlinharValor( _valor: string;  _tamanho, _decimais, _tipo: integer): string;
  function DataMySQL(_data: String): String;
  function Criptografar(_senha: String): String;
  function Perguntar(mensagem: String): Integer;
  function ValidarCampo(tipo, value, mascara: string): boolean;
  procedure Mensagem(texto: string);
  function letraMinuscula(txt: string): string;
  function RetornarValor( _valor: String): String;
  function RetornarComoDecimal( _valor: string): string;

var
   DiaDaSemana: Array[1..7] of String = ('Domingo','Segunda-feira','Terça-feira','Quarta-feira','Quinta-feira','Sexta-feira',
                                         'Sabado');
   MesNome: Array[1..12] of String = ('Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto',
                                      'Setembro','Outubro','Novembro','Dezembro');

implementation

uses uIUtils;

function ValorSQL(_valor: String): String;
var
   i: Integer;    vlr: String;
begin
     vlr:='';
     for i:=1 to Length(_valor) do
         if Copy(_valor,i,1)=',' then vlr:=vlr+'.' else vlr:=vlr+Copy(_valor,i,1);

     Result:=vlr;

end;

procedure Mens(_mensagem: String);
begin
     ShowMessage(_mensagem);
end;

function DataSQL(_data: String): String;
begin
     Result:=Copy(_data,7,4)+'-'+Copy(_data,4,2)+'-'+Copy(_data,1,2)+' 00:00:00';
end;

function ValorMoeda(_valor: String): String;
begin
     Result:=FloatToStrF(StrToFloat(_valor),ffFixed,10,2);
end;

function DataMySQL(_data: String): String;
begin
     Result:=Copy(_data,7,4)+'/'+Copy(_data,4,2)+'/'+Copy(_data,1,2);
end;

function Criptografar(_senha: String): String;
begin
     Result:=_senha;
end;

function Perguntar(mensagem: String): Integer;
begin
     result:=MessageDlg(mensagem,mtConfirmation,[mbYes,mbNo],0);
end;


function ValidarCampo(tipo, value, mascara: string): boolean;
var
   i: integer;
   texto: string;
   status: boolean;
begin
     status:=true;
     if uppercase(tipo)='EDIT' then begin
        if value='' then status:=false;
     end;

     if uppercase(tipo)='COMBOBOX' then begin
        if value='' then status:=false;
     end;

     if uppercase(tipo)='MASKEDIT' then begin
        texto:='';
        for i:=1 to length(mascara) do begin
            if (copy(mascara,i,1)='!') or (copy(mascara,i,1)='1') or
               (copy(mascara,i,1)='_') or (copy(mascara,i,1)=';') then continue;
            if (copy(mascara,i,1)='9') then begin
               texto:=texto+' ';
               continue;
            end;
            texto:=texto+copy(mascara,i,1);
        end;
        if texto=value then status:=false;
     end;
     result:=status;
end;

procedure Mensagem(texto: string);
begin
     showmessage(texto);
end;

function letraMinuscula(txt: string): string;
begin
             if (txt='Á') or (txt='À') then begin
                Result:='á';
                exit;
             end;
             if (txt='É') or (txt='È') then begin
                Result:='é';
                exit;
             end;
             if (txt='Í') or (txt='Ì') then begin
                Result:='í';
                exit;
             end;
             if (txt='Ó') or (txt='Ò') then begin
                Result:='ó';
                exit;
             end;
             if (txt='Ú') or (txt='Ù') then begin
                Result:='ú';
                exit;
             end;
             if (txt='Ç') then begin
                Result:='ç';
                exit;
             end;
             if (txt='Ã') then begin
                Result:='ã';
                exit;
             end;
             if (txt='Õ') then begin
                Result:='õ';
                exit;
             end;

             result:=LowerCase(txt);

end;

function AlinharValor( _valor: string;  _tamanho, _decimais, _tipo: integer): string;
var
   i: integer;
   xvalor, zvalor: string;
begin
     if _tipo= 1 then
        zvalor:= floattostrf( strtofloat(_valor), fffixed, _tamanho, _decimais );
     if _tipo= 2 then
        zvalor:= floattostrf( strtofloat(_valor), ffnumber, _tamanho, _decimais );
     if _tipo= 3 then
        zvalor:= floattostrf( strtofloat(_valor), ffcurrency, _tamanho, _decimais );

     xvalor:= stringofchar(' ', _tamanho - length(zvalor) )+ zvalor;

     result:= xvalor;
end;

function RetornarValor( _valor: String): String;
var
   i: Integer;
begin
  Result:= '0';

  if _valor <> EmptyStr then
    Result:= '';

  for i:= 1 to Length(_valor) do
    if _valor[i] in [' ', 'R', '$', '.' ] then
      continue
    else
      Result := Result + Copy( _valor, i, 1 );
end;

function RetornarComoDecimal( _valor: String): String;
begin
     Result :=  floattostr( strtofloat( _valor ) / 100 );
end;


end.
