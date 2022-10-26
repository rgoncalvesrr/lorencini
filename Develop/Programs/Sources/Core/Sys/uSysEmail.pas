unit uSysEmail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ActnList, ComCtrls, ToolWin,
  ExtCtrls, Grids, DBGrids, StdCtrls, Mask, Buttons, uFrameCheckBar, uFrameData;

type
  TSysEmail = class(TIDefBrowse)
    IBrwSrcstatus: TIntegerField;
    IBrwSrcto_: TStringField;
    IBrwSrcto_name: TStringField;
    IBrwSrcmessage: TIntegerField;
    IBrwSrcentry_: TDateTimeField;
    IBrwSrcschedule: TDateTimeField;
    IBrwSrcresult_: TStringField;
    IBrwSrcrecno: TIntegerField;
    IBrwSrctitle: TStringField;
    IBrwSrcsubject: TMemoField;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Panel6: TPanel;
    Label1: TLabel;
    cbStatus: TComboBox;
    IBrwSrcsend_: TDateTimeField;
    IBrwSrcmark: TBooleanField;
    FrameCheckBar1: TFrameCheckBar;
    Panel8: TPanel;
    Label6: TLabel;
    FrameData1: TFrameData;
    Panel3: TPanel;
    Label4: TLabel;
    FrameData2: TFrameData;
    ckEntrada: TCheckBox;
    Panel4: TPanel;
    Label7: TLabel;
    FrameData3: TFrameData;
    ckAgendada: TCheckBox;
    ckEnviada: TCheckBox;
    Panel5: TPanel;
    Label3: TLabel;
    edTo_: TEdit;
    Panel7: TPanel;
    Label5: TLabel;
    edTo_Name: TEdit;
    Panel9: TPanel;
    Label8: TLabel;
    edSubject: TEdit;
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure cbStatusChange(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure DBGridKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure ckEntradaClick(Sender: TObject);
    procedure FrameData2CCalendarDiff1Change(Sender: TObject);
    procedure edTo_Change(Sender: TObject);
    procedure IBrwSrcBeforeRefresh(DataSet: TDataSet);
  private
    FSession: string;
    FTable: Integer;
    procedure OnLoad; override;
    procedure RefreshCtrl; override;
  public
    { Public declarations }
  end;

var
  SysEmail: TSysEmail;

implementation

uses uDM, uResources, uIUtils, ccalendardiff;

{$R *.dfm}

procedure TSysEmail.actQueryProcessExecute(Sender: TObject);
var
  sWhere : string;
  ACalEntrada: TCCalendarDiff;
  ACalAgendada: TCCalendarDiff;
  ACalEnviada: TCCalendarDiff;
begin
  inherited;

  if not Assigned(DataSet) or (DataSet <> IBrwSrc) then
    Exit;

  ACalEntrada := FrameData1.CCalendarDiff1;
  ACalAgendada := FrameData2.CCalendarDiff1;
  ACalEnviada := FrameData3.CCalendarDiff1;

  with DataSet do
  begin
    sWhere := 'e.status = :status ';

    if ckEntrada.Checked and (ACalEntrada.Interval <> diNone) then
      swhere := swhere + 'and mt.entry_ between :entrada_de and :entrada_ate ';

    if ckAgendada.Checked and (ACalAgendada.Interval <> diNone) then
      swhere := swhere + 'and mt.schedule between :agendada_de and :agendada_ate ';

    if ckEnviada.Checked and (ACalEnviada.Interval <> diNone) then
      swhere := swhere + 'and mt.send_ between :enviada_de and :enviada_ate ';

    if Length(edTo_.Text) > 0 then
      sWhere := sWhere + 'and mt.to_ ilike :para ';

    if Length(edTo_Name.Text) > 0 then
      sWhere := sWhere + 'and mt.to_name ilike :dest ';

    if Length(edSubject.Text) > 0 then
      sWhere := sWhere + 'and e.subject ilike :titulo ';

    SQL.Add('where ' + sWhere);

    if Assigned(Params.FindParam('status')) then
      ParamByName('status').AsInteger := cbStatus.ItemIndex;

    if Assigned(Params.FindParam('entrada_de')) then
    begin
      Params.ParamByName('entrada_de').AsDateTime := ACalEntrada.BeginDate;
      Params.ParamByName('entrada_ate').AsDateTime := ACalEntrada.EndDate;
    end;

    if Assigned(Params.FindParam('agendada_de')) then
    begin
      Params.ParamByName('agendada_de').AsDateTime := ACalAgendada.BeginDate;
      Params.ParamByName('agendada_ate').AsDateTime := ACalAgendada.EndDate;
    end;

    if Assigned(Params.FindParam('enviada_de')) then
    begin
      Params.ParamByName('enviada_de').AsDateTime := ACalEnviada.BeginDate;
      Params.ParamByName('enviada_ate').AsDateTime := ACalEnviada.EndDate;
    end;

    if Assigned(Params.FindParam('para')) then
      ParamByName('para').AsString := '%' + edTo_.Text + '%';

    if Assigned(Params.FindParam('dest')) then
      ParamByName('dest').AsString := '%' + edTo_Name.Text + '%';

    if Assigned(Params.FindParam('titulo')) then
      ParamByName('titulo').AsString := '%' + edSubject.Text + '%';
  end;

  G.RefreshDataSet(DataSet);
  RefreshCtrl;
end;

procedure TSysEmail.cbStatusChange(Sender: TObject);
begin
  inherited;
  actQueryProcess.Enabled := True;
  with PageControl1 do
  begin
    DBGrid1.SetFocus;
    ActivePageIndex := cbStatus.ItemIndex;
    inherited PageControl1Change(PageControl1);
  end;

  actQueryProcessExecute(actQueryProcess);
end;

procedure TSysEmail.ckEntradaClick(Sender: TObject);
begin
  inherited;
  FrameData1.ComboBox1.Enabled := ckEntrada.Checked;
  FrameData2.ComboBox1.Enabled := ckAgendada.Checked;
  FrameData3.ComboBox1.Enabled := ckEnviada.Checked;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TSysEmail.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  fBitMap: TBitmap;
begin
  if (Column.Index <> 1) then
    inherited DBGridDrawColumnCell(Sender, Rect, DataCol, Column, State)
  else
    with TDBGrid(Sender) do
    try
      fBitMap:= TBitmap.Create;
      fBitMap.Transparent:= True;

      with Resources do
        case IBrwSrcstatus.AsInteger of
          0: small_n.GetBitmap(209, fBitMap); //Enfileirando
          1: small_n.GetBitmap(210, fBitMap); //Agendado
          2: small_n.GetBitmap(208, fBitMap); //Sucesso
          3: small_n.GetBitmap(213, fBitMap); //Falha
        end;

      if Column.Width <> fBitMap.Width + 2 then
        Column.Width:= fBitMap.Width + 2;

      {Desenha o status da remessa}
      Canvas.Draw(Rect.Left + 1, Rect.Top + 1, fBitMap);
    finally
      fBitMap.Free;
    end;
end;

procedure TSysEmail.DBGridKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #32) and (IBrwSrc.State = dsBrowse) then
    FrameCheckBar1.actProcessMarkExecute(actInverse);

  inherited;
end;

procedure TSysEmail.edTo_Change(Sender: TObject);
begin
  inherited;
  actQueryProcess.Enabled := True;
end;

procedure TSysEmail.FormCreate(Sender: TObject);
begin
  inherited;
  FrameCheckBar1.Table := 'sys_emailto';
end;

procedure TSysEmail.FrameData2CCalendarDiff1Change(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TSysEmail.IBrwSrcBeforeRefresh(DataSet: TDataSet);
begin
  inherited;
  IBrwSrc.ParamByName('session').AsString := FSession;
  IBrwSrc.ParamByName('table').AsInteger := FTable;
end;

procedure TSysEmail.OnLoad;
begin
  inherited;
  cbStatus.ItemIndex := 1;
  cbStatusChange(cbStatus);
  DataSet := IBrwSrc;

  with U.Query do
  try
    SQL.Text := 'select sys_session(), sys_origem(''sys_emailto'')';
    Open;

    FSession := Fields[0].AsString;
    FTable := Fields[1].AsInteger;
  finally
    Close;
  end;
end;

procedure TSysEmail.PageControl1Change(Sender: TObject);
begin
  inherited;
  if cbStatus.ItemIndex <> PageControl1.ActivePageIndex then
  begin
    cbStatus.ItemIndex := PageControl1.ActivePageIndex;
    cbStatusChange(cbStatus);
    FrameCheckBar1.Parent := PageControl1.ActivePage;
  end;
end;

procedure TSysEmail.RefreshCtrl;
begin
  inherited;
  TabSheet1.Caption := 'Enfileirando';
  TabSheet2.Caption := 'Agendadas';
  TabSheet3.Caption := 'Sucesso';
  TabSheet4.Caption := 'Falha';

  PageControl1.ActivePage.Caption := Format('%s (%d)', [PageControl1.ActivePage.Caption, IBrwSrc.RecordCount]);

  ckEntrada.Enabled := (cbStatus.ItemIndex > 0);
  ckAgendada.Enabled := (cbStatus.ItemIndex > 0);
  ckEnviada.Enabled := (cbStatus.ItemIndex > 1);
end;

initialization
  RegisterClass(TSysEmail);

finalization
  UnRegisterClass(TSysEmail);


end.
