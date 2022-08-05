unit uClientesInativos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ActnList, ComCtrls, ToolWin,
  ExtCtrls, Grids, DBGrids, StdCtrls, Mask, Buttons;

type
  TClienteInativos = class(TIDefBrowse)
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label1: TLabel;
    cbEstado: TComboBox;
    Label3: TLabel;
    edCidade: TEdit;
  private
    { Private declarations }
    procedure OnLoad; override;
  public
    { Public declarations }
  end;

var
  ClienteInativos: TClienteInativos;

implementation

uses
  uIUtils;

{$R *.dfm}

{ TClienteInativos }

procedure TClienteInativos.OnLoad;
begin
  inherited;
  cbEstado.Items.BeginUpdate;

  with U.Data.Query do
  try
    SQL.Text := 'select uf from estados order by uf';
    Open;

    while not Eof do
    begin
      cbEstado.Items.Add(Fields[0].AsString);
      
      Next;
    end;
  finally
    Close;
    cbEstado.Items.EndUpdate;
    cbEstado.ItemIndex := 0;
  end;
end;

initialization
  RegisterClass(TClienteInativos);

finalization
  UnRegisterClass(TClienteInativos);

end.
