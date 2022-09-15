unit uLabProcPort;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls, uIUtils, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZSqlUpdate, ZSequence, Buttons, JvBaseEdits, JvDBControls, JvExMask,
  JvToolEdit;

type
  TPortOperac = (poRemessa, poRetorno);

  TLabProcPort = class(TIDefBrowseEdit)
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    Label16: TLabel;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    Label17: TLabel;
    DBMemo1: TDBMemo;
    DBComboBox1: TDBComboBox;
    sPort: TZSequence;
    uPort: TZUpdateSQL;
    qPort: TZQuery;
    qPortrecno: TIntegerField;
    qPortoperac: TIntegerField;
    qPortemissao: TDateTimeField;
    qPorttipo: TIntegerField;
    qPorttipo_outros: TStringField;
    qPortcnpj: TStringField;
    qPortempresa: TStringField;
    qPortcpf: TStringField;
    qPortportador: TStringField;
    qPortobs: TMemoField;
    qPortlabproc_recno: TIntegerField;
    dsPort: TDataSource;
    qPortcodigo: TIntegerField;
    qPortnf: TIntegerField;
    qPortnf_serie: TIntegerField;
    qPortnf_emissao: TDateField;
    qPortnf_valor: TFloatField;
    qPortnome_chave: TStringField;
    qPortcnpj_1: TStringField;
    qPorttelefone: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    SpeedButton3: TSpeedButton;
    actFindCli: TAction;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    JvDBCalcEdit1: TJvDBCalcEdit;
    Label7: TLabel;
    qPortstatus: TIntegerField;
    Label18: TLabel;
    DBComboBox4: TDBComboBox;
    sPortItens: TZSequence;
    uPortItens: TZUpdateSQL;
    qPortItens: TZQuery;
    dsPortItens: TDataSource;
    qPortItensrecno: TIntegerField;
    qPortItenslabport_recno: TIntegerField;
    qPortItensstatus: TIntegerField;
    qPortItensrem_dh: TDateTimeField;
    qPortItensrem_tr: TMemoField;
    qPortItenslabproc_recno: TIntegerField;
    qPortItensqtd: TFloatField;
    qPortItensamostra: TIntegerField;
    Label19: TLabel;
    DBEdit4: TDBEdit;
    qPortcpf_1: TStringField;
    qPortItenstipo: TIntegerField;
    qPortItenscomodato: TIntegerField;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel10: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel27: TPanel;
    Panel28: TPanel;
    Panel29: TPanel;
    procedure DBComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBComboBox3Exit(Sender: TObject);
    procedure qPortAfterInsert(DataSet: TDataSet);
    procedure qPortoperacGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qPortoperacSetText(Sender: TField; const Text: string);
    procedure qPorttipoGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qPorttipoSetText(Sender: TField; const Text: string);
    procedure actFindCliExecute(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qPortstatusGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qPortstatusSetText(Sender: TField; const Text: string);
    procedure qPortAfterScroll(DataSet: TDataSet);
    procedure qPortItensAfterInsert(DataSet: TDataSet);
    procedure qPortcodigoChange(Sender: TField);
    procedure qPortItensstatusGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure qPortItensstatusSetText(Sender: TField; const Text: string);
    procedure qPortItenscomodato_recnoChange(Sender: TField);
    procedure qPortAfterRefresh(DataSet: TDataSet);
    procedure qPortItenstipoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure qPortItenstipoSetText(Sender: TField; const Text: string);
  private
    { Private declarations }
    FCBEmp: TComboList;
    FCBPort: TComboList;
    FOperacao: TPortOperac;
    procedure RefreshControls; override;
    procedure SetOperacao(const Value: TPortOperac);
    procedure OnEdit; override;
  public
    { Public declarations }
  published
    property Operacao: TPortOperac read FOperacao write SetOperacao;
  end;

var
  LabProcPort: TLabProcPort;

implementation

uses uLabProc, uDM, uClientes, mcUtils, iTypes, uLabProcPortM, uLabProcDespacho, uConsts;

{$R *.dfm}

procedure TLabProcPort.actFindCliExecute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TClientes, Clientes);
  try
    Clientes.DisplayMode := dmQuery;
    Clientes.ShowModal;
    if (Clientes.Execute) then
    begin
      DataSet.FieldByName('codigo').AsInteger := Clientes.IBrwSrccodigo.AsInteger;
      DBEdit1Exit(DBEdit1);
    end;
  finally
    FreeAndNil(Clientes);
  end;
end;

procedure TLabProcPort.DBComboBox1Change(Sender: TObject);
var
  sCriteria: string;
begin
  inherited;
  Label12.Font.Style := [];

  if (DataSet.State in [dsEdit, dsInsert]) then
  begin
    sCriteria := Format('tipo = %d', [DBComboBox1.ItemIndex + 1]);
    
    FCBEmp.Criteria.Text := sCriteria;
    FCBEmp.UpdateList;

    FCBPort.Criteria.Text := sCriteria;
    FCBPort.UpdateList;
    
    DBEdit11.Enabled := (DBComboBox1.Text = 'Outros');
    DBEdit12.Enabled := True;
    DBComboBox2.Enabled := True;

    DataSet.FieldByName('empresa').AsString := EmptyStr;
    DataSet.FieldByName('cnpj').AsString := EmptyStr;
    DataSet.FieldByName('portador').AsString := EmptyStr;
    DataSet.FieldByName('cpf').AsString := EmptyStr;

    if DBComboBox1.Text = 'Cliente' then
    begin
      DataSet.FieldByName('empresa').AsString := qPortnome_chave.AsString;
      DataSet.FieldByName('cnpj').AsString := qPortcnpj_1.AsString;
      DataSet.FieldByName('cpf').AsString := qPortcpf_1.AsString;

      DBEdit12.Enabled := False;
      DBComboBox2.Enabled := False;
    end;

    if DBComboBox1.Text = 'Lorencini' then
    begin
      DataSet.FieldByName('empresa').AsString := 'LORENCINI BRASIL';
      DataSet.FieldByName('cnpj').AsString := '04824941000109';
      
      DBEdit12.Enabled := False;
      DBComboBox2.Enabled := False;
    end;
  end;

  if DBEdit11.Enabled then
    Label12.Font.Style := [fsBold];
end;

procedure TLabProcPort.DBComboBox3Exit(Sender: TObject);
var
  campo: string;
  lc: TComboList;
  dbCB: TDBComboBox;
begin
  inherited;

  if (DataSet.State in [dsInsert, dsEdit]) then
  begin
    campo := 'cnpj';
    lc := FCBEmp;
    dbCB := TDBComboBox(Sender);

    if TWinControl(Sender).Tag = 1 then
    begin
      campo := 'cpf';
      lc := FCBPort;
    end;

    if (dbCB.Text = EmptyStr) or (lc.Count = 0) then
      Exit;

    if (DataSet.FieldByName(campo).AsString = EmptyStr) and
      (lc.IndexOf(dbCB.Text) <> -1) then
      DataSet.FieldByName(campo).AsString := lc.Items[lc.IndexOf(dbCB.Text)].Value;
  end;

end;

procedure TLabProcPort.DBEdit12Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if (DBEdit12.Text = EmptyStr) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('empresa');

    if U.Data.CheckFK('vport_emp', 'cnpj', QuotedStr(DBEdit12.Text), fLkp) then
      DataSet.FieldByName('empresa').AsString := fLkp[0];
  finally
    fLkp.Free;
  end;
end;

procedure TLabProcPort.DBEdit14Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if (DBEdit14.Text = EmptyStr) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('portador');

    if U.Data.CheckFK('vport_port', 'cpf', QuotedStr(DBEdit14.Text), fLkp) then
      DataSet.FieldByName('portador').AsString := fLkp[0];
  finally
    fLkp.Free;
  end;
end;

procedure TLabProcPort.DBEdit1Exit(Sender: TObject);
var
  fLkp: TStringList;
  erro: Boolean;
begin
  inherited;
  if mcEmpty(DBEdit1.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
    Exit;

  try
    erro := False;

    fLkp:= TStringList.Create;
    fLkp.Add('nome_chave');
    fLkp.Add('cnpj');
    fLkp.Add('cpf');
    fLkp.Add('telefone');

    if U.Data.CheckFK('tbclientes', 'codigo', DBEdit1.Text, fLkp) then
    begin
      with U.Data.Query do
      try
        SQL.Text :=
        'select exists( '+
               'select 1 '+
                 'from labamostras '+
                'where codigo = :codigo '+
                  'and estado = 30)';

        ParamByName('codigo').AsInteger := StrToInt(DBEdit1.Text);
        
        Open;

        if IsEmpty or not Fields.Fields[0].AsBoolean then
        begin
          erro := True;
          U.Out.ShowErro('Não existem frascos e/ou seringas com esse o cliente.');
        end;
      finally
        Close;
      end;

      DataSet.FieldByName('nome_chave').AsString := fLkp[0];
      DataSet.FieldByName('cnpj_1').AsString := fLkp[1];
      DataSet.FieldByName('cpf_1').AsString := fLkp[2];
      DataSet.FieldByName('telefone').AsString := fLkp[3];

      if DataSet.State = dsInsert then
        DBComboBox1Change(DBComboBox1);
    end else
    begin
      U.Out.ShowErro('Cliente não cadastrado.');
      erro := True;
    end;

    if erro then
      DBEdit1.SetFocus;
  finally
    fLkp.Free;
  end;
end;

procedure TLabProcPort.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Operacao = poRetorno then
    Action := caFree
  else
    Action := caHide;
end;

procedure TLabProcPort.FormCreate(Sender: TObject);
begin
  inherited;
  LabProcPort := Self;
  FOperacao := poRetorno;
  ScreenType := stMasterDetail;
  DataSet := qPort;
  ChildDataSet := qPortItens;

  FCBEmp := TComboList.Create(DBComboBox2, 'vport_emp', 'cnpj', 'empresa', False);
  FCBPort := TComboList.Create(DBComboBox3, 'vport_port', 'cpf', 'portador', False);
end;

procedure TLabProcPort.FormDestroy(Sender: TObject);
begin
  qPort.Close;
  qPortItens.Close;
  FreeAndNil(FCBEmp);
  FreeAndNil(FCBPort);
  inherited;
end;

procedure TLabProcPort.FormShow(Sender: TObject);
begin
  inherited;
  qPort.Open;
  
  DBEdit1.ReadOnly := Assigned(LabProc);
  DBEdit1.TabStop := not Assigned(LabProc);
  DBComboBox1Change(DBComboBox1);
  RefreshControls;
  RefreshControlsStyle(Self);
end;

procedure TLabProcPort.OnEdit;
begin
  LabProcPortM := TLabProcPortM.Create(nil);
  try
    LabProcPortM.DataSet := qPortItens;
    LabProcPortM.ShowModal;
  finally
    FreeAndNil(LabProcPortM);
  end;

end;

procedure TLabProcPort.qPortAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if Assigned(LabProcDespacho) then
  begin
    qPortlabproc_recno.AsInteger := LabProcDespacho.IBrwSrcrecno.AsInteger;
    qPortcodigo.AsInteger := LabProcDespacho.IBrwSrccodigo.AsInteger;
    qPortnome_chave.AsString := LabProcDespacho.IBrwSrcnome_chave.AsString;
    qPortcnpj_1.AsString := LabProcDespacho.IBrwSrccnpj.AsString;
    qPorttelefone.AsString := LabProcDespacho.IBrwSrctelefone.AsString;
    qPortoperac.AsInteger := 1;
    DBEdit1.Enabled := False;
    actFindCli.Enabled := False;
  end else
    qPortoperac.AsInteger := 2;

  qPorttipo.AsInteger := 4;
  qPortstatus.AsInteger := 1;
end;

procedure TLabProcPort.qPortAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  if Operacao = poRetorno then
  begin
    qPortItens.ParamByName('port').AsInteger := qPortrecno.AsInteger;
    G.RefreshDataSet(qPortItens);
  end;

end;

procedure TLabProcPort.qPortAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qPortItens.ParamByName('port').AsInteger := qPortrecno.AsInteger;

  if Operacao = poRetorno then
    G.RefreshDataSet(qPortItens);
end;

procedure TLabProcPort.qPortcodigoChange(Sender: TField);
begin
  inherited;
  if not (qPort.State in [dsEdit, dsInsert]) then
    Exit;

  qPortnome_chave.SetData(nil);
  qPortcnpj_1.SetData(nil);
  qPorttelefone.SetData(nil);
end;

procedure TLabProcPort.qPortItensAfterInsert(DataSet: TDataSet);
begin
  inherited;
  qPortItenslabport_recno.AsInteger := qPortrecno.AsInteger;
  qPortItensstatus.AsInteger := 1;
  qPortItensqtd.AsFloat := 0;
end;

procedure TLabProcPort.qPortItenscomodato_recnoChange(Sender: TField);
begin
  inherited;
  if not (qPortItens.State in [dsEdit, dsInsert]) then
    Exit;

  qPortItensrem_dh.SetData(nil);
  qPortItensrem_tr.SetData(nil);
  qPortItenslabproc_recno.SetData(nil);
end;

procedure TLabProcPort.qPortItensstatusGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;

  case Sender.AsInteger of
    1: Text := 'Conforme';
    2: Text := 'Não Conforme';
    3: Text := 'Vazio';
    4: Text := 'Quebrado';
  end;
end;

procedure TLabProcPort.qPortItensstatusSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if not (qPortItens.State in [dsEdit, dsInsert]) then
    Exit;

  case Text[1] of
    'C': Sender.AsInteger := 1;
    'N': Sender.AsInteger := 2;
    'V': Sender.AsInteger := 3;
    'Q': Sender.AsInteger := 4;
  end;

  if Sender.AsInteger > 2 then
    qPortItensqtd.AsFloat := 0;  
end;

procedure TLabProcPort.qPortItenstipoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text := EmptyStr;
  
  if Sender.AsInteger = _FRASCO then
    Text := 'Frasco';

  if Sender.AsInteger = _SERINGA then
    Text := 'Seringa';
end;

procedure TLabProcPort.qPortItenstipoSetText(Sender: TField; const Text: string);
begin
  inherited;
  case Text[1] of
    'F': Sender.AsInteger := _FRASCO;
    'S': Sender.AsInteger := _SERINGA;  
  end;
end;

procedure TLabProcPort.qPortoperacGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Remessa';
    2: Text := 'Retorno';
  end;
end;

procedure TLabProcPort.qPortoperacSetText(Sender: TField; const Text: string);
begin
  if not (qPort.State in [dsEdit, dsInsert]) then
    Exit;

  if Text = 'Remessa' then
    Sender.AsInteger := 1;

  if Text = 'Retorno' then
    Sender.AsInteger := 2;
end;

procedure TLabProcPort.qPortstatusGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Digitação';
    2: Text := 'Encerrado';  
  end;
end;

procedure TLabProcPort.qPortstatusSetText(Sender: TField; const Text: string);
begin
  inherited;
  if not (qPort.State in [dsEdit, dsInsert]) then
    Exit;

  case Text[1] of
    'D': Sender.AsInteger := 1;
    'E': Sender.AsInteger := 2;  
  end;
end;

procedure TLabProcPort.qPorttipoGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  case Sender.AsInteger of
    1: Text := 'Transportadora';
    2: Text := 'Correios';
    3: Text := 'Lorencini';
    4: Text := 'Cliente';
    5: Text := 'Outros';
  end;

  inherited;
end;

procedure TLabProcPort.qPorttipoSetText(Sender: TField; const Text: string);
begin
  if not (qPort.State in [dsEdit, dsInsert]) then
    Exit;

  if Text = 'Transportadora' then
    Sender.AsInteger := 1;

  if Text = 'Correios' then
    Sender.AsInteger := 2;

  if Text = 'Lorencini' then
    Sender.AsInteger := 3;

  if Text = 'Cliente' then
    Sender.AsInteger := 4;

  if Text = 'Outros' then
    Sender.AsInteger := 5;

  inherited;

end;

procedure TLabProcPort.RefreshControls;
begin
  inherited;
  
  Caption := '%s de Frascos e Seringas';

  DBComboBox4.Enabled := (Operacao = poRetorno);

  if not Assigned(DataSet) then
    Exit;

  actFindCli.Enabled := not Assigned(LabProc) and
    (DataSet.State in [dsEdit, dsInsert]);

  DBComboBox4.Enabled := DBComboBox4.Enabled and (qPort.State = dsEdit);

  if qPortoperac.AsInteger = 1 then
    Caption := Format(Caption, ['Remessa'])
  else
    Caption := Format(Caption, ['Retorno']);
end;


procedure TLabProcPort.SetOperacao(const Value: TPortOperac);
begin
  FOperacao := Value;
  try
    if FOperacao = poRemessa then
    begin
      Panel3.Align := alNone;
      ScreenType := stSimple;
      CloseAfterPost := [aapInsert, aapEdit];
      ClientHeight := 365;

      qPort.SQL.Add('and labproc_recno = :proc');
      qPort.ParamByName('operac').AsInteger := 1;

      Exit;
    end;

    ScreenType := stMasterDetail;
    ClientHeight := 654;
    Panel3.Align := alBottom;
    qPort.ParamByName('operac').AsInteger := 2;
  finally
    if qPort.Active then
      qPort.Refresh;
  end;
end;

initialization
  RegisterClass(TLabProcPort);

finalization
  UnRegisterClass(TLabProcPort);

end.
