unit uLogRegister;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask,
  Buttons, ComCtrls, ExtCtrls, ToolWin, DBCtrls;

type
  TLogRegister = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrcdata: TDateTimeField;
    IBrwSrcdescri: TStringField;
    IBrwSrchistorico: TMemoField;
    IBrwSrcusername: TStringField;
    IBrwSrctipo: TIntegerField;
    IBrwSrcnivel: TIntegerField;
    IBrwSrcorigem: TIntegerField;
    IBrwSrcorigem_recno: TIntegerField;
    IBrwSrcname: TStringField;
    IBrwSrcemail: TStringField;
    IBrwSrcactive: TBooleanField;
    DBMemo1: TDBMemo;
    procedure IBrwSrcnivelGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure FormResize(Sender: TObject);
  private
    FRegistro: Integer;
    FTabela: string;
    procedure SetRegistro(const Value: Integer);
    procedure SetTabela(const Value: string);
    { Private declarations }
  public
    { Public declarations }
    property Tabela: string read FTabela write SetTabela;
    property Registro: Integer read FRegistro write SetRegistro;
  end;

var
  LogRegister: TLogRegister;

implementation

uses uDM, uIUtils;

{$R *.dfm}

procedure TLogRegister.FormResize(Sender: TObject);
begin
  inherited;
  DBMemo1.Height := Round(DBMemo1.Parent.ClientHeight * 0.4);
end;

procedure TLogRegister.IBrwSrcnivelGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Informação';
    2: Text := 'Atenção';
    3: Text := 'Erro';
    4: Text := 'Depuração';
  end;
end;

procedure TLogRegister.SetRegistro(const Value: Integer);
begin
  FRegistro := Value;
  IBrwSrc.ParamByName('registro').AsInteger := Value;
  G.RefreshDataSet(IBrwSrc);
end;

procedure TLogRegister.SetTabela(const Value: string);
begin
  FTabela := Value;
  IBrwSrc.ParamByName('tabela').AsInteger := U.Data.TableIdFromName(Value);
  G.RefreshDataSet(IBrwSrc);
end;

end.
