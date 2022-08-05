unit uOSMAprovacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls, Buttons, ZDataSet, JvExStdCtrls, JvCombobox,
  JvDBCombobox, JvExMask, JvToolEdit, JvDBControls, JvBaseEdits;

type
  TOSMAprovacao = class(TIDefBrowseEdit)
    actContatoF: TAction;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label11: TLabel;
    DBEdit4: TDBEdit;
    Label10: TLabel;
    DBMemo1: TDBMemo;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    BitBtn2: TBitBtn;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    GroupBox3: TGroupBox;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    Label5: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit10: TDBEdit;
    Label18: TLabel;
    DBMemo2: TDBMemo;
    DBEdit11: TDBEdit;
    Label19: TLabel;
    Label20: TLabel;
    DBEdit12: TDBEdit;
    JvDBComboBox1: TJvDBComboBox;
    JvDBDateEdit1: TJvDBDateEdit;
    JvDBCalcEdit1: TJvDBCalcEdit;
    JvDBCalcEdit2: TJvDBCalcEdit;
    JvDBComboBox2: TJvDBComboBox;
    JvDBComboBox3: TJvDBComboBox;
    procedure actContatoFExecute(Sender: TObject);
  private
    FOS: Integer;
    procedure SetOS(const Value: Integer);
    procedure RefreshControls; override;
    procedure BeforePost(Sender: TObject; DataSet: TZQuery; var AllowPost: Boolean); // Evento DataSet
    procedure OnDataSet; override;
  public
    { Public declarations }
    property OS: Integer read FOS write SetOS;
  end;

var
  OSMAprovacao: TOSMAprovacao;

implementation

{$R *.dfm}

uses uDM, uContatoF, uIUtils;

{ TOrcamentosMAprovacao }

procedure TOSMAprovacao.actContatoFExecute(Sender: TObject);
begin
  Application.CreateForm(TContatoF, ContatoF);
  ContatoF.Cliente := DM.qOSAprovidcliente.AsInteger;
  ContatoF.ShowModal;

  if ContatoF.Execute then
    with DM do
    begin
      qOSAprovpedcontato.AsInteger := ContatoF.IBrwSrcitem.AsInteger;
      qOSAprovnome.AsString := ContatoF.IBrwSrcnome.AsString;
      qOSAprovtelefone.AsString := ContatoF.IBrwSrctelefone.AsString;
      qOSAprovfuncao.AsString := ContatoF.IBrwSrcfuncao.AsString;
      qOSAprovcelular.AsString := ContatoF.IBrwSrccelular.AsString;
      qOSAprovemail.AsString := ContatoF.IBrwSrcemail.AsString;
    end;

  FreeAndNil(ContatoF);
end;

procedure TOSMAprovacao.BeforePost(Sender: TObject; DataSet: TZQuery; var AllowPost: Boolean);
begin
  U.ExecuteSQL('select sys_flag_mark(''tb_orcamentos'', '+IntToStr(DM.qOSAprovrecno.AsInteger)+');');
end;

procedure TOSMAprovacao.OnDataSet;
begin
  inherited;
  OnBeforePost := BeforePost;
end;

procedure TOSMAprovacao.RefreshControls;
begin
  inherited;
  actContatoF.Enabled := True;
end;

procedure TOSMAprovacao.SetOS(const Value: Integer);
begin
  FOS := Value;

  with DM.qOSAprov do
  begin
    ParamByName('os').AsInteger := Value;

    if Active then
      Refresh
    else
      Open;

    if IsEmpty then
      Raise Exception.Create('Tipo de OS inválido');

    Edit;

    FieldByName('pedtipo').AsInteger := 1;
    FieldByName('pedusername').Value := U.Info.UserName;
    FieldByName('name').Value := U.Info.Name;
    FieldByName('peddtaprov').Value := U.Data.CurrentDate;
    FieldByName('pedvlaprov').Value := FieldByName('vlnfsrv').AsFloat;
    FieldByName('pedvlaprovmat').Value := FieldByName('vlnfmat').AsFloat;
    FieldByName('pedintegracao').AsBoolean := False;
    FieldByName('pedart').AsBoolean := False;
    if FieldByName('status_').AsInteger = 0 then
      FieldByName('status_').AsInteger := 2;
  end;
end;

end.
