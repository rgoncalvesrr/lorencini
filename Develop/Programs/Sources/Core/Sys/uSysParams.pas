unit uSysParams;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uiwizard, ActnList, StdCtrls, ExtCtrls, ComCtrls, Buttons, Mask,
  DBCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ZSqlUpdate;

type
  TSysParams = class(TIWizard)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    actFindNatu: TAction;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    SpeedButton2: TSpeedButton;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    sysparams: TZQuery;
    DataSource1: TDataSource;
    sysparamsnatureza_fat: TIntegerField;
    sysparamsdescri: TStringField;
    ZUpdateSQL1: TZUpdateSQL;
    procedure DBEdit4Exit(Sender: TObject);
    procedure actFindNatuExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure actCancelExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SysParams: TSysParams;

implementation

{$R *.dfm}

uses uDM, mcUtils, uIUtils, uFinNaturezas;

procedure TSysParams.actCancelExecute(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TSysParams.actFindNatuExecute(Sender: TObject);
begin
  try
    Application.CreateForm(TFinNaturezas, FinNaturezas);
    FinNaturezas.DisplayMode := dmQuery;
    FinNaturezas.ShowModal;
    if (FinNaturezas.Execute) then
    begin
      sysparamsnatureza_fat.AsInteger := FinNaturezas.IBrwSrcnatureza.AsInteger;
      DBEdit4Exit(DBEdit4);
    end;
  finally
    FinNaturezas.Release;
  end;
end;

procedure TSysParams.actOkExecute(Sender: TObject);
begin
  inherited;
  sysparams.Post;
  Close;
end;

procedure TSysParams.DBEdit4Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit4.Text) or not (sysparams.State in [dsEdit, dsInsert]) then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('descri');

    if U.Data.CheckFK('fin_naturezas', 'natureza', QuotedStr(DBEdit4.Text), fLkp) then
      sysparamsdescri.AsString := fLkp[0]
    else
    begin
      U.Out.ShowErro('Natureza não cadastrada.');
      DBEdit4.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TSysParams.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if sysparams.State <> dsBrowse then
    sysparams.Cancel;
end;

procedure TSysParams.FormCreate(Sender: TObject);
begin
  inherited;
  sysparams.Connection := U.Data;
end;

procedure TSysParams.FormShow(Sender: TObject);
begin
  inherited;
  sysparams.Open;

  if sysparams.IsEmpty then
    sysparams.Insert
  else
    sysparams.Edit;
end;

initialization
  RegisterClass(TSysParams);

finalization
  UnRegisterClass(TSysParams);

end.
