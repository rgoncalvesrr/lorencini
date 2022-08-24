unit uLabSolM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls, Buttons, JvExMask, JvToolEdit, JvBaseEdits,
  JvDBControls;

type
  TLabSolM = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Panel35: TPanel;
    SpeedButton1: TSpeedButton;
    Panel6: TPanel;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    actFindTipo: TAction;
    Panel7: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel8: TPanel;
    Label3: TLabel;
    JvDBCalcEdit1: TJvDBCalcEdit;
    Panel9: TPanel;
    Label4: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    GroupBox2: TGroupBox;
    Panel10: TPanel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Panel11: TPanel;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Panel12: TPanel;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Panel13: TPanel;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Panel15: TPanel;
    SpeedButton2: TSpeedButton;
    actFindForn: TAction;
    Panel14: TPanel;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    procedure DBEdit8Exit(Sender: TObject);
    procedure actFindTipoExecute(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure actFindFornExecute(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  LabSolM: TLabSolM;

implementation

uses uLabSol, mcutils, uIUtils, DB, uLabSolTipo, uFornecedores, uDM;

{$R *.dfm}

procedure TLabSolM.actFindFornExecute(Sender: TObject);
begin
  with DM do
  try
    Application.CreateForm(TFornecedores, Fornecedores);
    Fornecedores.DisplayMode := dmQuery;
    Fornecedores.ShowModal;
    if (Fornecedores.Execute) then
    begin
      DataSet.FieldByName('codigo').AsInteger := qForncodigo.AsInteger;
      DBEdit3Exit(DBEdit3);
    end;
  finally
    FreeAndNil(Fornecedores);
  end;

end;

procedure TLabSolM.actFindTipoExecute(Sender: TObject);
begin
  try
    Application.CreateForm(TLabSolTipo, LabSolTipo);
    LabSolTipo.DisplayMode := dmQuery;
    LabSolTipo.ShowModal;
    if (LabSolTipo.Execute) then
    begin
      DataSet.FieldByName('tipo').AsInteger := LabSolTipo.IBrwSrcrecno.AsInteger;
      DBEdit8Exit(DBEdit8);
    end;
  finally
    FreeAndNil(LabSolTipo);
  end;
end;

procedure TLabSolM.DBEdit3Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit3.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('empresa');
    fLkp.Add('nome_chave');
    fLkp.Add('cnpj');

    if U.Data.CheckFK('fornecedores', 'codigo', DBEdit3.Text, fLkp) then
    begin
      DataSet.FieldByName('empresa').AsString := fLkp[0];
      DataSet.FieldByName('nome_chave').AsString := fLkp[1];
      DataSet.FieldByName('cnpj').AsString := fLkp[2];
    end
    else
    begin
      U.Out.ShowErro('Fornecedor não cadastrado.');
      DBEdit3.SetFocus;
    end;
  finally
    FreeAndNil(fLkp);
  end;
end;

procedure TLabSolM.DBEdit8Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit8.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('descri');

    if U.Data.CheckFK('labsoltipo', 'recno', DBEdit8.Text, fLkp) then
    begin
      DataSet.FieldByName('descri').AsString := fLkp[0];
    end
    else
    begin
      U.Out.ShowErro('Tipo de solução não cadastrada.');
      DBEdit8.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TLabSolM.RefreshControls;
begin
  inherited;
  JvDBCalcEdit1.ReadOnly := True;
  
  if not Assigned(DataSet) then
    Exit;

  actFindTipo.Enabled := DataSet.State in [dsEdit, dsInsert];
  actFindForn.Enabled := DataSet.State in [dsEdit, dsInsert];
  JvDBCalcEdit1.ReadOnly := DataSet.State <> dsInsert;
end;

end.
