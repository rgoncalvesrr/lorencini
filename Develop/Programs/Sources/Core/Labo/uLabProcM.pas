unit uLabProcM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls, Buttons, Menus, JvExMask, JvToolEdit, JvDBControls;

type
  TLabProcM = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    SpeedButton3: TSpeedButton;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    actFindCli: TAction;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label11: TLabel;
    DBEdit6: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    PopupMenu1: TPopupMenu;
    actNewBatch: TAction;
    Novo1: TMenuItem;
    InseriremLote1: TMenuItem;
    ToolButton5: TToolButton;
    actPrnEtiq: TAction;
    ToolButton15: TToolButton;
    DBEdit14: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit15: TDBEdit;
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
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Label16: TLabel;
    DBMemo1: TDBMemo;
    procedure DBEdit7Exit(Sender: TObject);
    procedure actFindCliExecute(Sender: TObject);
    procedure actNewBatchExecute(Sender: TObject);
    procedure actPrnEtiqExecute(Sender: TObject);
  private
    { Private declarations }
    procedure OnEdit; override;
  public
    { Public declarations }
    procedure RefreshControls; override;
  end;

var
  LabProcM: TLabProcM;

implementation

uses uLabProc, uIUtils, mcUtils, DB, uClientes, uDM, uLabProcMItens,
  uLabProcBatch, uConsts;

{$R *.dfm}

procedure TLabProcM.actFindCliExecute(Sender: TObject);
begin
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

procedure TLabProcM.actNewBatchExecute(Sender: TObject);
var
  i, j: integer;
begin
  LabProcBatch := TLabProcBatch.Create(nil);
  try
    LabProcBatch.jvFrascos.Value := DataSet.FieldByName('frascos').AsInteger;
    LabProcBatch.jvSeringas.Value := DataSet.FieldByName('seringas').AsInteger;
    LabProcBatch.ShowModal;
    if LabProcBatch.Execute then
    begin
      with U.Data.StmtPersistent do
      begin
        Script.Text :=
          'insert into labprocxequip(labproc_recno, tipo) '+
                            'VALUES (:proc, :tipo);';

        ParamByName('proc').AsInteger := DataSet.FieldByName('recno').AsInteger;

        j := Round(LabProcBatch.jvSeringas.Value);
        ParamByName('tipo').AsInteger := _SERINGA;

        for I := 0 to j - 1 do
          Execute;

        j := Round(LabProcBatch.jvFrascos.Value);
        ParamByName('tipo').AsInteger := _FRASCO;

        for I := 0 to j - 1 do
          Execute;
      end;

      actRefreshExecute(actRefresh);
    end;
  finally
    FreeAndNil(LabProcBatch);
  end;
end;

procedure TLabProcM.actPrnEtiqExecute(Sender: TObject);
begin
  LabProc.ImprimirEtiqueta(LabProc.qPItens);
end;

procedure TLabProcM.DBEdit7Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit7.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('nome_chave');
    fLkp.Add('cnpj');
    fLkp.Add('telefone');
    fLkp.Add('estado');

    if U.Data.CheckFK('tbclientes', 'codigo', DBEdit7.Text, fLkp) then
    begin
      DataSet.FieldByName('nome_chave').AsString := fLkp[0];
      DataSet.FieldByName('cnpj').AsString := fLkp[1];
      DataSet.FieldByName('telefone').AsString := fLkp[2];
      DataSet.FieldByName('estado').AsString := fLkp[3];
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

procedure TLabProcM.OnEdit;
begin
  LabProcMItens := TLabProcMItens.Create(nil);
  try
    LabProcMItens.DataSet := ChildDataSet;
    LabProcMItens.ShowModal;
  finally
    FreeAndNil(LabProcMItens);
  end;

end;

procedure TLabProcM.RefreshControls;
begin
  inherited;
  actNewMaster.Enabled := False;
  actEditMaster.Enabled := False;
  actDelMaster.Enabled := False;
  
  ToolButton10.Enabled := actNew.Enabled;
  actNewBatch.Enabled := actNew.Enabled;
  actPrnEtiq.Enabled := actEdit.Enabled and
    (DataSet.FieldByName('situacao').AsInteger < 3);
  
  if not Assigned(DataSet) then
    Exit;
    
  actFindCli.Enabled := DataSet.State in [dsEdit, dsInsert];
  //dbcbSituacao.Enabled := DataSet.State = dsEdit;
end;

end.
