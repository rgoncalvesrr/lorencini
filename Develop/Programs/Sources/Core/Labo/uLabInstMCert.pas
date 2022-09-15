unit uLabInstMCert;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls, JvExMask, JvToolEdit, JvDBControls, Buttons;

type
  TLabInstMCert = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Bevel6: TBevel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    JvDBDateEdit1: TJvDBDateEdit;
    Label13: TLabel;
    JvDBDateEdit2: TJvDBDateEdit;
    Label14: TLabel;
    Label15: TLabel;
    DBMemo1: TDBMemo;
    SpeedButton2: TSpeedButton;
    actFindForne: TAction;
    Label16: TLabel;
    DBEdit13: TDBEdit;
    procedure DBEdit8Exit(Sender: TObject);
    procedure actFindForneExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LabInstMCert: TLabInstMCert;

implementation

uses uLabInst, uIUtils, DB, mcUtils, uFornecedores, uDM;

{$R *.dfm}

procedure TLabInstMCert.actFindForneExecute(Sender: TObject);
begin
  inherited;
  try
    Fornecedores := TFornecedores.Create(nil);
    Fornecedores.DisplayMode := dmQuery;
    Fornecedores.ShowModal;
    if (Fornecedores.Execute) then
    begin
      DataSet.FieldByName('codigo').AsInteger :=
        DM.qForncodigo.AsInteger;
      DBEdit8Exit(DBEdit8);
    end;
  finally
    FreeAndNil(Fornecedores);
  end;
end;

procedure TLabInstMCert.DBEdit8Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(TDBEdit(Sender).Text) or not (DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('nome_chave');
    fLkp.Add('cnpj');
    fLkp.Add('telefone');

    if U.Data.CheckFK('fornecedores', 'codigo', TDBEdit(Sender).Text, fLkp) then
    begin
      DataSet.FieldByName('nome_chave').AsString := fLkp[0];
      DataSet.FieldByName('cnpj').AsString := fLkp[1];
      DataSet.FieldByName('telefone').AsString := fLkp[2];
    end
    else
    begin
      U.Out.ShowErro('Fornecedor não cadastrado.');
      TDBEdit(Sender).SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

end.
