unit uSysReports;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls;

type
  TSysReports = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    dbeForm: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Button1: TButton;
    actLookup: TAction;
    procedure dbeFormExit(Sender: TObject);
    procedure actLookupExecute(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshControls; override;
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  SysReports: TSysReports;

implementation

uses uDM, mcUtils, uIUtils, uSysFormsFind, db, uSysReportsM;

{$R *.dfm}

procedure TSysReports.actLookupExecute(Sender: TObject);
begin
  Application.CreateForm(TSysFormsFind, SysFormsFind);
  SysFormsFind.ShowModal;

  if SysFormsFind.Execute then
    with DM do
    begin
      qSysReportsform.AsString := SysFormsFind.IBrwSrcform.AsString;
      qSysReportsdescri_1.AsString := SysFormsFind.IBrwSrcdescri.AsString;
    end;

  FreeAndNil(SysFormsFind);
end;

procedure TSysReports.dbeFormExit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;

  if mcEmpty(dbeForm.Text) then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('descri');

    if U.Data.CheckFK('sys_forms', 'form', QuotedStr(dbeForm.Text), fLkp) then
      DM.qSysReportsdescri_1.Text:= fLkp[0]
    else
    begin
      U.Out.ShowErro('Formulário não cadastrado');
      dbeForm.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TSysReports.OnEdit;
begin
  SysReportsM := TSysReportsM.Create(nil);
  try
    SysReportsM.DataSet := ChildDataSet;
    SysReportsM.ShowModal;
  finally
    FreeAndNil(SysReportsM);
  end;

end;

procedure TSysReports.RefreshControls;
begin
  inherited;
  actLookup.Enabled := Assigned(DataSet) and (DataSet.State <> dsBrowse);

end;

initialization
  RegisterClass(TSysReports);

finalization
  UnRegisterClass(TSysReports);

end.
