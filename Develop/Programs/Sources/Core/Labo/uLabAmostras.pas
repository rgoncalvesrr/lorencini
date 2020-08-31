unit uLabAmostras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, ZSequence, uIUtils, uFrameData, JvExMask,
  JvToolEdit, JvBaseEdits;

type
  TLabAmostras = class(TIDefBrowse)
    ZSequence1: TZSequence;
    IBrwSrcrecno: TIntegerField;
    IBrwSrccodigo: TIntegerField;
    IBrwSrcequip_recno: TIntegerField;
    IBrwSrccoleta: TDateField;
    IBrwSrctpamostra_recno: TIntegerField;
    IBrwSrctamb: TIntegerField;
    IBrwSrctoleo: TIntegerField;
    IBrwSrcumidade: TIntegerField;
    IBrwSrctensao: TFloatField;
    IBrwSrcestado: TIntegerField;
    IBrwSrcorigem: TIntegerField;
    IBrwSrcnome_chave: TStringField;
    IBrwSrccnpj: TStringField;
    IBrwSrccpf: TStringField;
    IBrwSrcfabricante: TStringField;
    IBrwSrcserie: TStringField;
    IBrwSrctipo: TStringField;
    IBrwSrcdescri: TStringField;
    IBrwSrcpotencia: TFloatField;
    IBrwSrcimped: TFloatField;
    IBrwSrctensao_1: TFloatField;
    IBrwSrcfases: TIntegerField;
    IBrwSrcano: TIntegerField;
    IBrwSrclote: TStringField;
    IBrwSrcisolante: TStringField;
    IBrwSrcvolume: TIntegerField;
    IBrwSrcdrenos: TStringField;
    IBrwSrcdescri_1: TStringField;
    IBrwSrcinf_te: TBooleanField;
    IBrwSrcsigla: TStringField;
    IBrwSrcnome: TStringField;
    IBrwSrcregional: TIntegerField;
    IBrwSrcreg_nome: TStringField;
    IBrwSrclabsubest_recno: TIntegerField;
    IBrwSrcfamilia: TStringField;
    IBrwSrctag: TStringField;
    IBrwSrclocal: TStringField;
    FrameData1: TFrameData;
    Label1: TLabel;
    Label3: TLabel;
    IBrwSrcpedido: TIntegerField;
    Label4: TLabel;
    edPedido: TJvCalcEdit;
    IBrwSrctensao_un: TStringField;
    IBrwSrcpotencia_un: TStringField;
    IBrwSrccidade: TStringField;
    IBrwSrcestado_1: TStringField;
    IBrwSrcempresa: TStringField;
    IBrwSrcamostrador: TStringField;
    edAmostra: TJvCalcEdit;
    Label5: TLabel;
    IBrwSrcdestinatario: TStringField;
    IBrwSrctelefone: TStringField;
    IBrwSrccomodato: TIntegerField;
    Label6: TLabel;
    edEtiqueta: TJvCalcEdit;
    IBrwSrcentrada: TDateField;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Label7: TLabel;
    edEmpresa: TEdit;
    Panel9: TPanel;
    Label8: TLabel;
    edRazao: TEdit;
    IBrwSrccliente: TIntegerField;
    IBrwSrcempresacli: TStringField;
    IBrwSrcnome_chavecli: TStringField;
    IBrwSrccnpj_cli: TStringField;
    IBrwSrccpf_cli: TStringField;
    IBrwSrctelefone_cli: TStringField;
    IBrwSrccidade_cli: TStringField;
    IBrwSrcestado_cli: TStringField;
    IBrwSrcemail: TStringField;
    IBrwSrcemail_cli: TStringField;
    IBrwSrctequip: TFloatField;
    procedure actQueryProcessExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FrameData1CCalendarDiff1Change(Sender: TObject);
    procedure IBrwSrcequip_recnoChange(Sender: TField);
    procedure IBrwSrctpamostra_recnoChange(Sender: TField);
    procedure IBrwSrclabsubest_recnoChange(Sender: TField);
    procedure CriteriaChange(Sender: TObject);
  private
    { Private declarations }
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  LabAmostras: TLabAmostras;

implementation

uses uDM, ccalendardiff, uLabAmostrasM, iTypes, mcutils;

{$R *.dfm}

procedure TLabAmostras.actQueryProcessExecute(Sender: TObject);
var
  swhere: string;
  ACal : TCCalendarDiff;
begin
  inherited;

  if not Assigned(DataSet) then
    Exit;

  ACal := FrameData1.CCalendarDiff1;
  
  swhere := '';

  with IBrwSrc do
  begin
    {Aplica filtro por cliente}
    if ACal.Interval <> diNone then
      swhere := swhere + ' and a.estado_data between :entra_de and :entra_ate';

    if Trim(edPedido.Text) <> EmptyStr then
      swhere := swhere + ' and pa.pedido = :pedido';

    if Trim(edAmostra.Text) <> EmptyStr then
      swhere := swhere + ' and a.recno = :amostra';

    if Trim(edEtiqueta.Text) <> EmptyStr then
      swhere := swhere + ' and a.comodato = :etiqueta';

    if Length(edEmpresa.Text) > 0 then
      sWhere := sWhere + ' and c.nome_chave ilike :empresa';

    if Length(edRazao.Text) > 0 then
      sWhere := sWhere + ' and c.empresa ilike :razao';

    if swhere <> '' then
      SQL.Add(swhere);

    if Assigned(Params.FindParam('entra_de')) then
    begin
      Params.ParamByName('entra_de').AsDate := ACal.BeginDate;
      Params.ParamByName('entra_ate').AsDate := ACal.EndDate;
    end;

    if Assigned(Params.FindParam('empresa')) then
      ParamByName('empresa').AsString := '%' + edEmpresa.Text + '%';

    if Assigned(Params.FindParam('razao')) then
      ParamByName('razao').AsString := '%' + edRazao.Text + '%';

    if Assigned(Params.FindParam('pedido')) then
      Params.ParamByName('pedido').AsInteger := Round(edPedido.Value);

    if Assigned(Params.FindParam('amostra')) then
      Params.ParamByName('amostra').AsInteger := Round(edAmostra.Value);

    if Assigned(Params.FindParam('etiqueta')) then
      Params.ParamByName('etiqueta').AsInteger := Round(edEtiqueta.Value);

    G.RefreshDataSet(IBrwSrc);
    RefreshCtrl;
  end;
end;

procedure TLabAmostras.CriteriaChange(Sender: TObject);
begin
  inherited;
  actQueryProcess.Enabled := True;
end;

procedure TLabAmostras.FormCreate(Sender: TObject);
begin
  inherited;
  LabAmostras := Self;
  AllowInsert := False;
  AllowDelete := False;
end;

procedure TLabAmostras.FrameData1CCalendarDiff1Change(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TLabAmostras.IBrwSrcequip_recnoChange(Sender: TField);
begin
  inherited;
  if not (DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  if Sender.IsNull then
  begin
    IBrwSrcfabricante.SetData(nil);
    IBrwSrcserie.SetData(nil);
    IBrwSrctipo.SetData(nil);
    IBrwSrcdescri.SetData(nil);
    IBrwSrcpotencia.SetData(nil);
    IBrwSrcimped.SetData(nil);
    IBrwSrctensao_1.SetData(nil);
    IBrwSrcfases.SetData(nil);
    IBrwSrcano.SetData(nil);
    IBrwSrclote.SetData(nil);
    IBrwSrcisolante.SetData(nil);
    IBrwSrcdrenos.SetData(nil);
    IBrwSrcvolume.SetData(nil);
    IBrwSrcfamilia.SetData(nil);
    IBrwSrctag.SetData(nil);
    
    Exit;
  end;

  with U.Query do
  try
    SQL.Text :=
    'select subest, tag, local ' +
      'from labequipxcli ' +
     'where codigo = :codigo ' +
       'and equip = :equip';

    ParamByName('codigo').AsInteger := IBrwSrccodigo.AsInteger;
    ParamByName('equip').AsInteger := Sender.AsInteger;

    Open;

    if not IsEmpty then
    begin
      IBrwSrclabsubest_recno.AsInteger := FieldByName('subest').AsInteger;
      IBrwSrctag.AsString := FieldByName('tag').AsString;
      IBrwSrclocal.AsString := FieldByName('local').AsString;
    end;
  finally
    Close;
  end;

end;

procedure TLabAmostras.IBrwSrclabsubest_recnoChange(Sender: TField);
begin
  inherited;
  if not (DataSet.State in [dsEdit, dsInsert]) or not Sender.IsNull then
    Exit;

  IBrwSrcsigla.SetData(nil);
  IBrwSrcnome.SetData(nil);
  IBrwSrcregional.SetData(nil);
  IBrwSrcreg_nome.SetData(nil);
end;

procedure TLabAmostras.IBrwSrctpamostra_recnoChange(Sender: TField);
begin
  inherited;
  if not (DataSet.State in [dsEdit, dsInsert]) or not Sender.IsNull then
    Exit;

  IBrwSrcdescri_1.SetData(nil);
  IBrwSrcinf_te.SetData(nil);
end;

procedure TLabAmostras.OnEdit;
begin
  LabAmostrasM := TLabAmostrasM.Create(nil);
  try
    LabAmostrasM.DataSet := IBrwSrc;
    LabAmostrasM.ShowModal;
  finally
    FreeAndNil(LabAmostrasM);
  end;
end;

initialization
  RegisterClass(TLabAmostras);

finalization
  UnRegisterClass(TLabAmostras);

end.
