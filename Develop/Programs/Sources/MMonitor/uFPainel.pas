unit uFPainel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIForm, ActnList, ExtCtrls, StdCtrls;

type
  TFPainel = class(TIForm)
    Panel5: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    lbRecno: TLabel;
    lbFrascos: TLabel;
    Label3: TLabel;
    lbxSeringas: TLabel;
    lbSeringas: TLabel;
    Label4: TLabel;
    lbVol: TLabel;
    Panel3: TPanel;
    Label2: TLabel;
    lbDest: TLabel;
    Panel4: TPanel;
    lbAtu: TLabel;
    lbSit: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
  private
    FAtualizacao: TDateTime;
    FFrascos: integer;
    FCliente: string;
    FCodigo: integer;
    FSerignas: integer;
    FEmpresa: string;
    FSituacao: integer;
    FVolume: integer;
    FRemessa: integer;
    procedure SetAtualizacao(const Value: TDateTime);
    procedure SetCliente(const Value: string);
    procedure SetCodigo(const Value: integer);
    procedure SetEmpresa(const Value: string);
    procedure SetFrascos(const Value: integer);
    procedure SetSerignas(const Value: integer);
    procedure SetSituacao(const Value: integer);
    procedure SetVolume(const Value: integer);
    { Private declarations }
    procedure AtuCliente;
    procedure SetRemessa(const Value: integer);
  public
    { Public declarations }
    property Atualizacao: TDateTime read FAtualizacao write SetAtualizacao;
    property Situacao: integer read FSituacao write SetSituacao;
    property Frascos: integer read FFrascos write SetFrascos;
    property Serignas: integer read FSerignas write SetSerignas;
    property Volumes: integer read FVolume write SetVolume;
    property Codigo: integer read FCodigo write SetCodigo;
    property Cliente: string read FCliente write SetCliente;
    property Empresa: string read FEmpresa write SetEmpresa;
    property Remessa: integer read FRemessa write SetRemessa;
  end;

implementation

{$R *.dfm}

{ TFPainel }

procedure TFPainel.AtuCliente;
begin
  lbDest.Caption := Format('%d - %s', [FCodigo, FCliente]);
end;

procedure TFPainel.SetAtualizacao(const Value: TDateTime);
begin
  FAtualizacao := Value;
  lbAtu.Caption := FormatDateTime('dd/mm/yyyy hh:nn:ss', Value);
end;

procedure TFPainel.SetCliente(const Value: string);
begin
  FCliente := Value;
  AtuCliente;
end;

procedure TFPainel.SetCodigo(const Value: integer);
begin
  FCodigo := Value;
  AtuCliente;
end;

procedure TFPainel.SetEmpresa(const Value: string);
begin
  FEmpresa := Value;
  AtuCliente;
end;

procedure TFPainel.SetFrascos(const Value: integer);
begin
  FFrascos := Value;
  lbFrascos.Caption := IntToStr(Value);
end;

procedure TFPainel.SetRemessa(const Value: integer);
begin
  FRemessa := Value;
  lbRecno.Caption := IntToStr(Remessa);
end;

procedure TFPainel.SetSerignas(const Value: integer);
begin
  FSerignas := Value;
  lbSeringas.Caption := IntToStr(Value);
end;

procedure TFPainel.SetSituacao(const Value: integer);
var
  bColor: TColor;
begin
  FSituacao := Value;
  case Value of
    0:
    begin
      bColor := clRed;
      lbSit.Caption := 'Aguardando Ação';
    end;
    1:
    begin
      bColor := clYellow;
      lbSit.Caption := 'Preparando Remessa';
    end;
    2:
    begin
      bColor := clBlue;
      lbSit.Caption := 'Montando Volumes';
    end;
    3:
    begin
      bColor := clGrayText;
      lbSit.Caption := 'Preparando Despacho';
    end;
    4:
    begin
      bColor := clLime;
      lbSit.Caption := 'Liberado Expedição';
    end;
  end;

  if Value in [0..4] then
  begin
    Shape1.Brush.Color := bColor;
    Shape1.Pen.Color := bColor;
    Shape2.Pen.Color := bColor;
    Shape3.Pen.Color := bColor;
    Shape4.Pen.Color := bColor;
  end;
end;

procedure TFPainel.SetVolume(const Value: integer);
begin
  FVolume := Value;
  lbVol.Caption := IntToStr(Value);
end;

end.
