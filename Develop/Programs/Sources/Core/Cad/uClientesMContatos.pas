unit uClientesMContatos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, StdCtrls, Mask, DBCtrls, Buttons,
  JvExStdCtrls, JvDBCombobox, uIFrameCliente, JvCombobox;

type
  TClientesMContatos = class(TIDefBrowseEdit)
    Panel27: TPanel;
    Panel28: TPanel;
    Label47: TLabel;
    DBEdit49: TDBEdit;
    Panel29: TPanel;
    Label54: TLabel;
    DBEdit50: TDBEdit;
    Panel30: TPanel;
    Label55: TLabel;
    DBEdit51: TDBEdit;
    Bevel1: TBevel;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    SpeedButton1: TSpeedButton;
    actFindContato: TAction;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Panel10: TPanel;
    Label6: TLabel;
    JvDBComboBox1: TJvDBComboBox;
    actCheck: TAction;
    actUnCheck: TAction;
    Panel11: TPanel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    GroupBox1: TGroupBox;
    ControlBar3: TControlBar;
    ToolBar2: TToolBar;
    ToolButton5: TToolButton;
    ToolButton15: TToolButton;
    Panel12: TPanel;
    DBCheckBox3: TDBCheckBox;
    Panel14: TPanel;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    Panel15: TPanel;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBMemo1: TDBMemo;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    procedure actCheckExecute(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure actFindContatoExecute(Sender: TObject);
  private
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  ClientesMContatos: TClientesMContatos;

implementation

uses
  uClientes, uIUtils, mcUtils, db, uContatos;
  
{$R *.dfm}

procedure TClientesMContatos.actCheckExecute(Sender: TObject);
var
  bMark: Boolean;
begin
  inherited;
  bMark := TAction(Sender).Tag = 1;

  with Clientes do
  begin
    qContatospadrao.AsBoolean := bMark;
    qContatoscontato_comercial.AsBoolean := bMark;
    qContatoscontato_tecnico.AsBoolean := bMark;
    qContatoscontato_financeiro.AsBoolean := bMark;
    qContatosenvia_cronograma_coleta.AsBoolean := bMark;
  end;

end;

procedure TClientesMContatos.actFindContatoExecute(Sender: TObject);
begin
  inherited;
  Contatos := TContatos.Create(nil);
  try
    Contatos.DisplayMode := dmQuery;
    Contatos.ShowModal;
    if (Contatos.Execute) then
    begin
      DataSet.FieldByName('contato').AsInteger := Contatos.IBrwSrcrecno.AsInteger;
      DBEdit1Exit(DBEdit1);
    end;
  finally
    FreeAndNil(Contatos);
  end;
end;

procedure TClientesMContatos.DBEdit1Exit(Sender: TObject);
var
  I: Integer;
  tmpLookupFields: TStringList;
begin
  inherited;
  tmpLookupFields := nil;
  with Clientes do
  try

    if mcEmpty(DBEdit1.Text) or not (qContatos.State in [dsEdit, dsInsert])  then
      Exit;

    tmpLookupFields := TStringList.Create;
    tmpLookupFields.Add('nome');
    tmpLookupFields.Add('telefone');
    tmpLookupFields.Add('celular');
    tmpLookupFields.Add('email');

    if U.Data.CheckFK('contatos', 'recno', DBEdit1.Text, tmpLookupFields) then
    begin
      qContatosnome.AsString := tmpLookupFields[0];
      qContatostelefone.AsString := tmpLookupFields[1];
      qContatoscelular.AsString := tmpLookupFields[2];
      qContatosemail.AsString := tmpLookupFields[3];
    end
    else
    begin
      U.Out.ShowErro('Contato não localizado.');
      DBEdit1.SetFocus;
    end;
  finally
    if Assigned(tmpLookupFields) then
      FreeAndNil(tmpLookupFields);
  end;
end;

procedure TClientesMContatos.RefreshControls;
begin
  inherited;
  actCheck.Enabled := Assigned(DataSet) and (DataSet.State in [dsEdit, dsInsert]);
  actUnCheck.Enabled := actCheck.Enabled;
  actFindContato.Enabled := actCheck.Enabled;
end;

end.
