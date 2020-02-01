unit uR00014;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uSysReportsParam, ActnList, StdCtrls, ExtCtrls, ComCtrls, ToolWin,
  uIUtils, uFrameData, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Mask,
  DBCtrls;

type
  TR00014 = class(TSysReportsParam)
    Label18: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    FrameData1: TFrameData;
    Label4: TLabel;
    CheckBox1: TCheckBox;
    qOS: TZQuery;
    qOSidos: TStringField;
    qOSos: TIntegerField;
    ComboBox2: TComboBox;
    CheckBox2: TCheckBox;
    ComboBox3: TComboBox;
    qEtiq: TZQuery;
    qEtiqcomodato_recno: TIntegerField;
    CheckBox3: TCheckBox;
    ComboBox4: TComboBox;
    qTLaudo: TZQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FrameData1CCalendarDiff1Change(Sender: TObject);
    procedure qOSAfterRefresh(DataSet: TDataSet);
    procedure qOSAfterScroll(DataSet: TDataSet);
    procedure ComboBox3Change(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure qEtiqAfterScroll(DataSet: TDataSet);
    procedure CheckBox3Click(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
  private
    FCBClientes: TComboList;
    procedure RefreshLookUpOS;
    procedure RefreshLookUpEtiq;
    procedure RefreshTipoLaudo;
  public
    { Public declarations }
  end;

var
  R00014: TR00014;

implementation

uses uDMReport, uDM, uResources;

{$R *.dfm}

procedure TR00014.actOkExecute(Sender: TObject);
var
  oDBG: TStrings;
begin
  inherited;
  oDBG := TStringList.Create;

  with DMReport.R00014 do
  try
    // Adiciona filtro por OS
    if CheckBox1.Checked then
    begin
      SQL.Add(' and a.os = :os ');
      ParamByName('os').AsInteger := qOSos.AsInteger;
      oDBG.Add(':os ' +IntToStr(qOSos.AsInteger));
    end;

    // Adiciona filtro por etiqueta
    if CheckBox2.Checked then
    begin
      SQL.Add(' and a.comodato_recno = :etiq ');
      ParamByName('etiq').AsInteger := qEtiqcomodato_recno.AsInteger;
      oDBG.Add(':etiq ' + IntToStr(qEtiqcomodato_recno.AsInteger));
    end;

    // Adiciona filtro por tipo de laudo
    if CheckBox3.Checked then
    begin
      SQL.Add(' and r.relato_recno = :laudo ');
      ParamByName('laudo').AsInteger := qTLaudo.FieldByName('relato_recno').AsInteger;
      oDBG.Add(':laudo ' + IntToStr(qTLaudo.FieldByName('relato_recno').AsInteger));
    end;

    // Filtra o cliente e data de emissão
    ParamByName('cliente').AsInteger := FCBClientes.Selected.Value;
    ParamByName('emiss_de').AsDateTime := FrameData1.CCalendarDiff1.BeginDate;
    ParamByName('emiss_ate').AsDateTime := FrameData1.CCalendarDiff1.EndDate;


    oDBG.Insert(0, ':emiss_ate ' + DateToStr(FrameData1.CCalendarDiff1.EndDate));
    oDBG.Insert(0, ':emiss_de ' + DateToStr(FrameData1.CCalendarDiff1.BeginDate));
    oDBG.Insert(0, ':cliente ' + IntToStr(FCBClientes.Selected.Value));
    oDBG.Insert(0, SQL.Text);

    oDBG.SaveToFile('sql.txt');
  finally
    FreeAndNil(oDBG);
  end;
end;

procedure TR00014.CheckBox1Click(Sender: TObject);
begin
  inherited;
  RefreshLookUpOS;
end;

procedure TR00014.CheckBox2Click(Sender: TObject);
begin
  inherited;
  RefreshLookUpEtiq;
end;

procedure TR00014.CheckBox3Click(Sender: TObject);
begin
  inherited;
  RefreshTipoLaudo;
end;

procedure TR00014.ComboBox1Change(Sender: TObject);
begin
  inherited;
  CheckBox1.Checked := False;
  CheckBox2.Checked := False;
  CheckBox3.Checked := False;
  RefreshLookUpOS;

  if not CheckBox3.Checked then
    RefreshTipoLaudo;
end;

procedure TR00014.ComboBox2Change(Sender: TObject);
begin
  inherited;
  qOS.Locate('idos', ComboBox2.Text, []);
end;

procedure TR00014.ComboBox3Change(Sender: TObject);
begin
  inherited;
  qEtiq.Locate('comodato_recno', ComboBox3.Text, []);
end;

procedure TR00014.ComboBox4Change(Sender: TObject);
begin
  inherited;
  qTLaudo.Locate('descri', ComboBox4.Text, []);
end;

procedure TR00014.FormCreate(Sender: TObject);
begin
  inherited;
  FCBClientes := TComboList.Create(ComboBox1, 'tbclientes', 'codigo', 'nome_chave');

  with DMReport do
    if not StmtExists('R00014') then
      StmtPreserve('R00014', R00014.SQL)
    else
      StmtRestore('R00014', R00014.SQL);
end;

procedure TR00014.FormDestroy(Sender: TObject);
begin
  qOS.Close;
  ComboBox2.Clear;
  FreeAndNil(FCBClientes);
  inherited;
end;

procedure TR00014.FrameData1CCalendarDiff1Change(Sender: TObject);
begin
  inherited;
  RefreshLookUpOS;

  if not CheckBox3.Enabled then
    RefreshTipoLaudo;
end;

procedure TR00014.qEtiqAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if CheckBox2.Checked then
    RefreshTipoLaudo;
end;

procedure TR00014.qOSAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  CheckBox1.Enabled := not DataSet.IsEmpty;
end;

procedure TR00014.qOSAfterScroll(DataSet: TDataSet);
begin
  inherited;
  RefreshLookUpEtiq;
end;

procedure TR00014.RefreshLookUpEtiq;
begin
  with qEtiq, ComboBox3 do
  try
    Items.Clear;
    Items.BeginUpdate;

    ParamByName('cliente').AsInteger := qOS.ParamByName('cliente').AsInteger;
    ParamByName('emissao_de').AsDateTime := qOS.ParamByName('emissao_de').AsDateTime;
    ParamByName('emissao_ate').AsDateTime := qOS.ParamByName('emissao_ate').AsDateTime;
    ParamByName('os').AsInteger := qOSos.AsInteger;

    G.RefreshDataSet(qEtiq);

    CheckBox2.Enabled := CheckBox1.Checked and not Eof;

    if not CheckBox2.Enabled then
      Exit;

    while not Eof do
    begin
      Items.Add(qEtiqcomodato_recno.AsString);

      Next;
    end;

    if Items.Count > 0 then
    begin
      ItemIndex := 0;
      First;
    end;
  finally
    Items.EndUpdate;
    ComboBox3.Enabled := CheckBox2.Checked and (Items.Count > 1);

    if CheckBox1.Checked and not CheckBox2.Checked then
      RefreshTipoLaudo;
  end;
end;

procedure TR00014.RefreshLookUpOS;
begin
  with qOS, ComboBox2 do
  try
    DisableControls;
    Items.BeginUpdate;
    Items.Clear;

    ParamByName('cliente').AsInteger := -1;

    if Assigned(FCBClientes.Selected) then
      ParamByName('cliente').AsInteger := FCBClientes.Selected.Value;

    ParamByName('emissao_de').AsDateTime := FrameData1.CCalendarDiff1.BeginDate;
    ParamByName('emissao_ate').AsDateTime := FrameData1.CCalendarDiff1.EndDate;

    G.RefreshDataSet(qOS);

    if not CheckBox1.Checked then
      Exit;

    First;
    
    while not Eof do
    begin
      Items.Add(qOSidos.AsString);
      Next;
    end;

    if Items.Count > 0 then
    begin
      ItemIndex := 0;
      First;
    end;
  finally
    Items.EndUpdate;
    ComboBox2.Enabled := CheckBox1.Checked and (Items.Count > 1);
    CheckBox2.Enabled := CheckBox1.Checked and (Items.Count > 0);
    EnableControls;
  end;
end;

procedure TR00014.RefreshTipoLaudo;
begin
  with qTLaudo, ComboBox4 do
  try
    Items.BeginUpdate;
    Items.Clear;

    SQL.Text :=
    'select r.relato_recno, lr.descri '+
      'from labamostras_rel r '+
           'join labamostras a '+
             'on a.codigo = :cliente ';

    if CheckBox1.Checked then
      SQL.Text := SQL.Text + 'and a.os = :os ';

    if CheckBox2.Checked then
      SQL.Text := SQL.Text + 'and a.comodato_recno = :etiq ';

    SQL.Text := SQL.Text +
           'join labrel lr '+
             'on lr.recno = r.relato_recno '+
     'where r.emissao between :emissao_de and :emissao_ate '+
     'group by r.relato_recno, lr.descri '+
     'order by 2 ';

    ParamByName('cliente').AsInteger := qOS.ParamByName('cliente').AsInteger;
    ParamByName('emissao_de').AsDateTime := qOS.ParamByName('emissao_de').AsDateTime;
    ParamByName('emissao_ate').AsDateTime := qOS.ParamByName('emissao_ate').AsDateTime;

    if Assigned(Params.FindParam('os')) then
      ParamByName('os').AsInteger := qOSos.AsInteger;

    if Assigned(Params.FindParam('etiq')) then
      ParamByName('etiq').AsInteger := qEtiqcomodato_recno.AsInteger;

    G.RefreshDataSet(qTLaudo);

    CheckBox3.Enabled := not qTLaudo.IsEmpty;

    if not CheckBox3.Checked then
      Exit;

    while not Eof do
    begin
      Items.Add(FieldByName('descri').AsString);

      Next;
    end;

    if Items.Count > 0 then
    begin
      ItemIndex := 0;
      First;
    end;
  finally
    Items.EndUpdate;
    ComboBox4.Enabled := CheckBox3.Checked and (Items.Count > 1);
  end;
end;

initialization
  RegisterClass(TR00014);

finalization
  UnRegisterClass(TR00014);
  
end.
