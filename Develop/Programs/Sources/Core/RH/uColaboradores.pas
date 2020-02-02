unit uColaboradores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Menus,
  XPMan, ActnList, Grids, DBGrids, ComCtrls, StdCtrls, Buttons, Mask, ExtCtrls,
  ToolWin, ZSqlUpdate;

type
  TColaboradores = class(TIDefBrowse)
    IBrwSrcidcodigo: TIntegerField;
    IBrwSrcnome: TStringField;
    IBrwSrccargo: TStringField;
    IBrwSrctelramal: TStringField;
    IBrwSrctelcelular: TStringField;
    IBrwSrcrg: TStringField;
    IBrwSrccpf: TStringField;
    IBrwSrcctps: TStringField;
    IBrwSrcserie: TStringField;
    IBrwSrcendereco: TStringField;
    IBrwSrcbairro: TStringField;
    IBrwSrccep: TStringField;
    IBrwSrccidade: TStringField;
    IBrwSrcestado: TStringField;
    IBrwSrccbo: TStringField;
    IBrwSrcmensalistahorista: TStringField;
    IBrwSrcsalmensal: TFloatField;
    IBrwSrcqtdehorasmensais: TIntegerField;
    IBrwSrcsalhora: TFloatField;
    IBrwSrccomsemregistro: TStringField;
    IBrwSrccontabanco: TStringField;
    IBrwSrccontaagencia: TStringField;
    IBrwSrccontanumero: TStringField;
    IBrwSrctelresidencia: TStringField;
    IBrwSrctelradio: TStringField;
    IBrwSrcvaletransporte: TStringField;
    IBrwSrcvalerefeicao: TStringField;
    IBrwSrcmanhaentrada: TStringField;
    IBrwSrcmanhasaida: TStringField;
    IBrwSrctardeentrada: TStringField;
    IBrwSrctardesaida: TStringField;
    IBrwSrcqtdemunicipal: TIntegerField;
    IBrwSrcqtdemetro: TIntegerField;
    IBrwSrcqtdetrem: TIntegerField;
    IBrwSrcqtdeintermunicipal: TIntegerField;
    IBrwSrcdiasegunda: TStringField;
    IBrwSrcdiaterca: TStringField;
    IBrwSrcdiaquarta: TStringField;
    IBrwSrcdiaquinta: TStringField;
    IBrwSrcdiasexta: TStringField;
    IBrwSrcdiasabado: TStringField;
    IBrwSrcdiadomingo: TStringField;
    IBrwSrcsituacao: TStringField;
    IBrwSrcdtadmissao: TDateTimeField;
    IBrwSrcdtdemissao: TDateTimeField;
    IBrwSrcdiarista_hs_meio_periodo: TFloatField;
    IBrwSrcdiarista_hs_meio_periodo_vlr: TFloatField;
    IBrwSrcdiarista_integral: TFloatField;
    IBrwSrcdiarista_integral_vlr: TFloatField;
    IBrwSrcdiarista_vlr_hora_adicional: TFloatField;
    IBrwSrccrq: TStringField;
    IBrwSrcusername: TStringField;
    ZUpdateSQL1: TZUpdateSQL;
    IBrwSrcrecno: TIntegerField;
    IBrwSrcassinatura: TStringField;
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
    procedure IBrwSrcBeforePost(DataSet: TDataSet);
  private
    function getImgDir: string;
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  Colaboradores: TColaboradores;

implementation

{$R *.dfm}

uses uDM, uColaboradoresM, jpeg, uIUtils, mcutils;

{ TColaboradores }

procedure TColaboradores.FormCreate(Sender: TObject);
begin
  inherited;
  Colaboradores := self;
end;

function TColaboradores.getImgDir: string;
begin
  Result := U.Path.Images; 
end;

procedure TColaboradores.IBrwSrcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  IBrwSrcdiasegunda.AsString:= 'S';
  IBrwSrcdiaterca.AsString:= 'S';
  IBrwSrcdiaquarta.AsString:= 'S';
  IBrwSrcdiaquinta.AsString:= 'S';
  IBrwSrcdiasexta.AsString:= 'S';
  IBrwSrcdiasabado.AsString:= 'N';
  IBrwSrcdiadomingo.AsString:= 'N';
  IBrwSrcmanhaentrada.AsString:= '07:30';
  IBrwSrcmanhasaida.AsString:= '12:00';
  IBrwSrctardeentrada.AsString:= '13:00';
  IBrwSrctardesaida.AsString:= '17:30';
  IBrwSrcsituacao.AsString:= 'Ativo';
  IBrwSrcmensalistahorista.AsString:= 'M';
end;

procedure TColaboradores.IBrwSrcAfterScroll(DataSet: TDataSet);
var
  img: TJPEGImage;
begin
  inherited;
  if Assigned(ColaboradoresM) then
  begin
    ColaboradoresM.Image1.Picture.Assign(nil);

    if not IBrwSrcassinatura.IsNull then
    begin
      if FileExists(getImgDir + IBrwSrcassinatura.AsString) then
      try
        img := TJPEGImage.Create;
        img.LoadFromFile(getImgDir + IBrwSrcassinatura.AsString);
        ColaboradoresM.Image1.Picture.Assign(img);
      finally
        FreeAndNil(img);
      end;
    end;
  end;
end;

procedure TColaboradores.IBrwSrcBeforePost(DataSet: TDataSet);
begin
  if not IBrwSrcassinatura.IsNull and (ColaboradoresM.Image1.Picture <> nil) and
    not FileExists(getImgDir + IBrwSrcassinatura.AsString) then
    ColaboradoresM.Image1.Picture.SaveToFile(getImgDir + IBrwSrcassinatura.AsString);
end;

procedure TColaboradores.OnEdit;
begin
  Application.CreateForm(TColaboradoresM,ColaboradoresM);
  ColaboradoresM.DataSet:= IBrwSrc;
  ColaboradoresM.ShowModal;
end;

initialization
  RegisterClass(TColaboradores);

end.



