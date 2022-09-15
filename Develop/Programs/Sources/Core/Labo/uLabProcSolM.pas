unit uLabProcSolM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  DB, StdCtrls, Mask, DBCtrls, Buttons, JvExStdCtrls, JvDBCombobox, JvExMask,
  JvToolEdit, JvBaseEdits, JvDBControls, ACBrBase, ACBrSocket, ACBrSedex,
  JvCombobox;

type
  TLabProcSolM = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    SpeedButton3: TSpeedButton;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    actFindCli: TAction;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    JvDBComboBox1: TJvDBComboBox;
    Label11: TLabel;
    Label12: TLabel;
    JvDBCalcEdit1: TJvDBCalcEdit;
    actSedex: TAction;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel17: TPanel;
    SpeedButton1: TSpeedButton;
    Panel16: TPanel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Panel15: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel18: TPanel;
    Panel19: TPanel;
    Label13: TLabel;
    JvDBComboBox2: TJvDBComboBox;
    procedure actFindCliExecute(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure actSedexExecute(Sender: TObject);
    procedure DBEdit5Change(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure JvDBComboBox2Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FFreteCalculado: Boolean;
    procedure RefreshControls; override;
    procedure OnLoad; override;
  public
    { Public declarations }
  end;

var
  LabProcSolM: TLabProcSolM;

implementation

uses uLabProcSol, uClientes, iTypes, uDM, mcUtils, uIUtils, uSedex,
  uSedexCalculos;

{$R *.dfm}

procedure TLabProcSolM.actCancelExecute(Sender: TObject);
begin
  FFreteCalculado := False;
  inherited;
end;

procedure TLabProcSolM.actFindCliExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TClientes, Clientes);
  try
    Clientes.DisplayMode := dmQuery;
    Clientes.ShowModal;
    if (Clientes.Execute) then
    begin
      DataSet.FieldByName('codigo').AsInteger := Clientes.IBrwSrccodigo.AsInteger;
      DBEdit7Exit(DBEdit7);
    end;
  finally
    FreeAndNil(Clientes);
  end;
end;

procedure TLabProcSolM.actOkExecute(Sender: TObject);
begin
  FFreteCalculado := False;
  inherited;
end;

procedure TLabProcSolM.actSedexExecute(Sender: TObject);
var
  sDescri: string;
begin
  inherited;

  Sedex := TSedex.Create(nil);
  with DataSet, Sedex do
  try
    Destinatario := FieldByName('codigo').AsInteger;
    Correio := FieldByName('correio').AsInteger;
    Calculos := TFreteLab.Create(FieldByName('frascos').AsInteger, FieldByName('seringas').AsInteger);

    ShowModal;

    if Sedex.Execute then
    begin
      FieldByName('correio').AsInteger := Correio;
      FieldByName('frete').AsFloat := ValorCorrigido;
      FFreteCalculado := True;
    end;
  finally
    FreeAndNil(Sedex);
    RefreshControls;
  end;
end;

procedure TLabProcSolM.DBEdit5Change(Sender: TObject);
begin
  inherited;
  
  if Assigned(DataSet) and (DataSet.State in [dsEdit, dsInsert]) then
  begin
    FFreteCalculado := False;
    RefreshControls;
  end;
end;

procedure TLabProcSolM.DBEdit7Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit7.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('nome_chave');
    fLkp.Add('empresa');
    fLkp.Add('cnpj');
    fLkp.Add('cpf');
    fLkp.Add('cep');

    if U.Data.CheckFK('tbclientes', 'codigo', DBEdit7.Text, fLkp) then
    begin
      DataSet.FieldByName('nome_chave').AsString := fLkp[0];
      DataSet.FieldByName('empresa').AsString := fLkp[1];
      DataSet.FieldByName('cnpj').AsString := fLkp[2];
      DataSet.FieldByName('cpf').AsString := fLkp[3];
      DataSet.FieldByName('cep').AsString := fLkp[4];      
    end
    else
    begin
      U.Out.ShowErro('Cliente não cadastrado.');
      DBEdit7.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TLabProcSolM.FormShow(Sender: TObject);
begin
  inherited;
  RefreshControls;
end;

procedure TLabProcSolM.JvDBComboBox2Change(Sender: TObject);
begin
  inherited;
  FFreteCalculado := TJvDBComboBox(Sender).ItemIndex <> 0;
  RefreshControls;
end;

procedure TLabProcSolM.OnLoad;
begin
  inherited;
  ReadOnly := True;  
end;

procedure TLabProcSolM.RefreshControls;
begin
  inherited;
  JvDBCalcEdit1.ReadOnly := False;
  
  if not Assigned(DataSet) then
    Exit;

  actFindCli.Enabled := DataSet.State in [dsEdit, dsInsert];
  actSedex.Enabled := (DataSet.State in [dsEdit, dsInsert]) and
    not FFreteCalculado;
  actOk.Enabled := actOk.Enabled and FFreteCalculado;
  JvDBCalcEdit1.ReadOnly := JvDBComboBox2.ItemIndex <> 1;
end;

end.
