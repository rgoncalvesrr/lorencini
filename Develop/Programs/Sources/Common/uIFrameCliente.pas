unit uIFrameCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, Buttons, StdCtrls, Mask, DBCtrls, ExtCtrls, DB, ActnList;

type
  TFrameCliente = class(TFrame)
    Panel2: TPanel;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Panel4: TPanel;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Panel5: TPanel;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Panel6: TPanel;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Panel7: TPanel;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Panel30: TPanel;
    Label20: TLabel;
    DBEdit17: TDBEdit;
    Panel35: TPanel;
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    dsCliente: TDataSource;
    Panel3: TPanel;
    Panel8: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel9: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    alFrameCli: TActionList;
    actFindCli: TAction;
    Panel10: TPanel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure DBEdit8Exit(Sender: TObject);
    procedure actFindCliExecute(Sender: TObject);
  private
    FFilter: string;
    FLookupTable: string;
    FLookupFieldKey: string;
    FLookupFields: TStrings;
    FLookupAllowEdit: Boolean;
    procedure SetFilter(const Value: string);
    procedure SetLookupTable(const Value: string);
    procedure SetLookupFieldKey(const Value: string);
    procedure SetLookupFields(const Value: TStrings);
    procedure SetLookupAllowEdit(const Value: Boolean);
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property Filter: string read FFilter write SetFilter;
    property LookupAllowEdit: Boolean read FLookupAllowEdit write SetLookupAllowEdit;
    property LookupFieldKey: string read FLookupFieldKey write SetLookupFieldKey;
    property LookupFields: TStrings read FLookupFields write SetLookupFields;
    property LookupTable: string read FLookupTable write SetLookupTable;
  end;

implementation

uses uDM, mcutils, DBClient, uIUtils, uResources, uClientes, uClientesF;

{$R *.dfm}

procedure TFrameCliente.actFindCliExecute(Sender: TObject);
var
  bExecute: Boolean;
begin
  with DM do
  try
    if not FLookupAllowEdit then
    begin
      ClientesF := TClientesF.Create(nil);
      if FFilter <> EmptyStr then
        ClientesF.IBrwSrc.SQL.Add(' and ' + FFilter);
      ClientesF.ShowModal;
      bExecute := ClientesF.Execute;
    end
    else
    begin
      Clientes := TClientes.Create(nil);
      Clientes.DisplayMode := dmQuery;
      Clientes.ShowModal;
      bExecute := Clientes.Execute;
    end;

    if (bExecute) then
    begin
      if not FLookupAllowEdit then
        dsCliente.DataSet.FieldByName(DBEdit8.Field.FieldName).AsInteger := ClientesF.IBrwSrccodigo.AsInteger
      else
        dsCliente.DataSet.FieldByName(DBEdit8.Field.FieldName).AsInteger := qClientescodigo.AsInteger;
        
      DBEdit8Exit(DBEdit8);
    end;
  finally
    if not FLookupAllowEdit then
      FreeAndNil(ClientesF)
    else
      FreeAndNil(Clientes);
  end;
end;

constructor TFrameCliente.Create(AOwner: TComponent);
begin
  inherited;
  FLookupTable := 'tbclientes';
  FLookupFieldKey := 'codigo';
  FLookupAllowEdit := True;
  FLookupFields := TStringList.Create;
  with FLookupFields do
  begin
    Values['empresa'] := 'empresa';
    Values['nome_chave'] := 'nome_chave';
    Values['cnpj'] := 'cnpj';
    Values['cpf'] := 'cpf';
    Values['email'] := 'email';
    Values['cidade'] := 'cidade';
    Values['estado'] := 'estado';
    Values['telefone'] := 'telefone';
  end;
end;

procedure TFrameCliente.DBEdit8Exit(Sender: TObject);
var
  I: Integer;
  tmpLookupFields: TStringList;
begin
  inherited;
  tmpLookupFields := nil;
  with dsCliente do
  try

    if mcEmpty(DBEdit8.Text) or not (DataSet.State in [dsEdit, dsInsert])  then
      Exit;

    tmpLookupFields := TStringList.Create;
    tmpLookupFields.AddStrings(FLookupFields);

    if U.Data.Lookup(FLookupTable, FLookupFieldKey, DBEdit8.Text, tmpLookupFields, FFilter) then
    begin
      DBEdit9.Field.AsString := tmpLookupFields.Values['empresa'];
      DBEdit10.Field.AsString := tmpLookupFields.Values['nome_chave'];
      DBEdit11.Field.AsString := tmpLookupFields.Values['cnpj'];
      DBEdit12.Field.AsString := tmpLookupFields.Values['cpf'];
      DBEdit17.Field.AsString := tmpLookupFields.Values['email'];
      DBEdit1.Field.AsString := tmpLookupFields.Values['cidade'];
      DBEdit2.Field.AsString := tmpLookupFields.Values['estado'];
      DBEdit3.Field.AsString := tmpLookupFields.Values['telefone'];
    end
    else
    begin
      U.Out.ShowErro('Cliente não localizado.');
      DBEdit8.SetFocus;
    end;
  finally
    if Assigned(tmpLookupFields) then
      FreeAndNil(tmpLookupFields);
  end;

end;

destructor TFrameCliente.Destroy;
begin
  FreeAndNil(FLookupFields);
  dsCliente.DataSet := nil;
  inherited;
end;

procedure TFrameCliente.SetFilter(const Value: string);
begin
  FFilter := Value;
end;

procedure TFrameCliente.SetLookupAllowEdit(const Value: Boolean);
begin
  FLookupAllowEdit := Value;
end;

procedure TFrameCliente.SetLookupFieldKey(const Value: string);
begin
  FLookupFieldKey := Value;
end;

procedure TFrameCliente.SetLookupFields(const Value: TStrings);
begin
  FLookupFields := Value;
end;

procedure TFrameCliente.SetLookupTable(const Value: string);
begin
  FLookupTable := Value;
end;

end.
