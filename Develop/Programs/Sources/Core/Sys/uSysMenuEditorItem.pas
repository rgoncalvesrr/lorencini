unit uSysMenuEditorItem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uidefeditform, ActnList, ComCtrls, ToolWin, StdCtrls, uSysMenuEditor,
  Buttons, uSysMenuComum, ExtCtrls;

type
  TSysMenuEditorItem = class(TIDefEditForm)
    edCaption: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edForm: TEdit;
    edDescri: TEdit;
    actLkpForms: TAction;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    edReport: TEdit;
    SpeedButton2: TSpeedButton;
    edDescForm: TEdit;
    actLkpReports: TAction;
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure edFormChange(Sender: TObject);
    procedure edFormExit(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
    procedure actLkpFormsExecute(Sender: TObject);
    procedure edReportExit(Sender: TObject);
  private
    fParent: TDataItem;
    FForm: TSysMenuEditor;
    fDataItem: TDataItem;
    procedure SetForm(const Value: TSysMenuEditor);
    procedure PDataItem(const Value: TDataItem);
  public
    property DataItem: TDataItem read fDataItem write PDataItem;
    property Form: TSysMenuEditor read FForm write SetForm;
    property ParentDataItem: TDataItem read fParent write fParent;
  end;

var
  SysMenuEditorItem: TSysMenuEditorItem;

implementation

{$R *.dfm}

Uses uIUtils, mcUtils, uDM, uSysForms, uSysReports, uResources;

procedure TSysMenuEditorItem.actCancelExecute(Sender: TObject);
begin
  inherited;
  // Nada
end;

procedure TSysMenuEditorItem.actLkpFormsExecute(Sender: TObject);
begin
  inherited;
  SysForms := TSysForms.Create(nil);
  try
    SysForms.ShowModal;
    if SysForms.Execute then
    with DM do
    begin
      edForm.Text := SysForms.IBrwSrcform.AsString;
      edFormExit(edForm);
    end;
  finally
    FreeAndNil(SysForms);
  end;
end;

procedure TSysMenuEditorItem.actOkExecute(Sender: TObject);
begin
  {Modo de inserção}
  if not Assigned(fDataItem) then
  begin
    fDataItem := TDataItem.Create(-1);
    fDataItem.Parent:= fParent;
    fDataItem.Node:= nil;
  end;

  fDataItem.descri := edCaption.Text;
  fDataItem.form := edForm.Text;
  if edReport.Text <> EmptyStr then
    fDataItem.Report := StrToInt(edReport.Text);

  {Cria nó no tree principal}
  if fDataItem.id = -1 then
    FForm.CreateItem(fDataItem);

  fDataItem.node.Text:= fDataItem.descri;

  inherited;

  if fDataItem.id <> -1 then
    Close;
    
  fDataItem:= nil;
  edCaption.Text:= '';
  edForm.Text:= '';
  SelectFirst;
end;

procedure TSysMenuEditorItem.edFormChange(Sender: TObject);
begin
  inherited;
  if edDescri.Text = edCaption.Text then
    edCaption.Text:= '';

  edDescri.Text:= '';
end;

procedure TSysMenuEditorItem.edFormExit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(edForm.Text) then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('descri');

    if U.Data.CheckFK('sys_forms', 'form', QuotedStr(edForm.Text), fLkp) then
    begin
      edDescri.Text:= fLkp[0];
      if mcEmpty(edCaption.Text) then
        edCaption.Text:= fLkp[0];

    end
    else
    begin
      U.Out.ShowErro('Formulário não cadastrado');
      edForm.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TSysMenuEditorItem.edReportExit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(edReport.Text) then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('descri');

    if U.Data.CheckFK('sys_reports', 'report', edReport.Text, fLkp) then
    begin
      edDescForm.Text:= fLkp[0];
      if mcEmpty(edCaption.Text) then
        edCaption.Text:= fLkp[0];
    end
    else
    begin
      U.Out.ShowErro('Relatório não cadastrado');
      edReport.SetFocus;
    end;
  finally
    fLkp.Free;
  end;

end;

procedure TSysMenuEditorItem.FormCreate(Sender: TObject);
begin
  inherited;
  fParent:= nil;
end;

procedure TSysMenuEditorItem.PDataItem(const Value: TDataItem);
begin
  fDataItem := Value;

  if not Assigned(fDataItem) then
    Exit;

  edCaption.Text:= fDataItem.descri;
  edForm.Text:= fDataItem.form;
end;

procedure TSysMenuEditorItem.SetForm(const Value: TSysMenuEditor);
begin
  FForm := Value;
end;

end.
