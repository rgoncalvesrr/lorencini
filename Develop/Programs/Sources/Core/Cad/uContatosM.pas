unit uContatosM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, StdCtrls, Mask, DBCtrls, JvExStdCtrls,
  JvCombobox, JvDBCombobox;

type
  TContatosM = class(TIDefBrowseEdit)
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Panel11: TPanel;
    Label4: TLabel;
    JvDBComboBox1: TJvDBComboBox;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    procedure ChildGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  ContatosM: TContatosM;

implementation

{$R *.dfm}

uses
  uContatos, uResources, uContatosMClientes;

procedure TContatosM.ChildGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  fBitMap: TBitmap;
begin
  if (Column.Index <> 0) or not Assigned(ChildDataSet) then
    inherited ChildGridDrawColumnCell(Sender, Rect, DataCol, Column, State)
  else
    with TDBGrid(Sender) do
    begin
      fBitMap:= TBitmap.Create;
      try
        fBitMap.Transparent:= True;

        with Resources do
          case Contatos.qContClisituacao.AsInteger of
            0: small_n.GetBitmap(209, fBitMap); // Inativos
            1: small_n.GetBitmap(208, fBitMap); // Ativos
          end;

        if Column.Width <> fBitMap.Width + 2 then
          Column.Width:= fBitMap.Width + 2;

        {Desenha o status da OS}
        Canvas.Draw(Rect.Left + 1, Rect.Top + 1, fBitMap);
      finally
        FreeAndNil(fBitMap);
      end;
    end;
end;

procedure TContatosM.OnEdit;
begin
  ContatosMClientes := TContatosMClientes.Create(nil);
  try
    ContatosMClientes.DataSet := ChildDataSet;
    ContatosMClientes.ShowModal;
  finally
    FreeAndNil(ContatosMClientes);
  end;

end;

end.
