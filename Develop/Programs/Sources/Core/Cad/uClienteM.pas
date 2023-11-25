unit uClienteM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, ComCtrls, ExtCtrls, ToolWin, StdCtrls, Mask,
  DBCtrls, Grids, DBGrids, JvExMask, JvToolEdit, JvDBControls, uFrameImage;

type
  TClientesM = class(TIDefBrowseEdit)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    TabSheet2: TTabSheet;
    GroupBox4: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    GroupBox7: TGroupBox;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit10: TDBEdit;
    Label10: TLabel;
    DBComboBox3: TDBComboBox;
    Label39: TLabel;
    DBEdit35: TDBEdit;
    Label40: TLabel;
    DBEdit36: TDBEdit;
    Label44: TLabel;
    TabSheet4: TTabSheet;
    DBMemo1: TDBMemo;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    FrameImage1: TFrameImage;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Label35: TLabel;
    DBEdit32: TDBEdit;
    Panel12: TPanel;
    Label36: TLabel;
    DBEdit33: TDBEdit;
    Panel13: TPanel;
    Label37: TLabel;
    DBEdit34: TDBEdit;
    Panel14: TPanel;
    Panel15: TPanel;
    Label38: TLabel;
    DBEdit37: TDBEdit;
    Panel16: TPanel;
    Label41: TLabel;
    DBEdit38: TDBEdit;
    Panel17: TPanel;
    Label42: TLabel;
    DBEdit39: TDBEdit;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    TabSheet5: TTabSheet;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
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
    GroupBox3: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    JvDBDateEdit1: TJvDBDateEdit;
    Panel31: TPanel;
    Panel32: TPanel;
    Panel33: TPanel;
    Panel34: TPanel;
    Panel35: TPanel;
    Panel36: TPanel;
    Panel37: TPanel;
    Panel38: TPanel;
    Panel39: TPanel;
    Panel40: TPanel;
    Panel41: TPanel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Panel42: TPanel;
    Panel43: TPanel;
    Panel44: TPanel;
    Panel45: TPanel;
    Panel46: TPanel;
    GroupBox1: TGroupBox;
    Panel47: TPanel;
    Label25: TLabel;
    DBEdit22: TDBEdit;
    Panel48: TPanel;
    Label26: TLabel;
    DBEdit23: TDBEdit;
    Panel49: TPanel;
    Label27: TLabel;
    DBEdit24: TDBEdit;
    Panel50: TPanel;
    Label28: TLabel;
    DBEdit25: TDBEdit;
    Panel51: TPanel;
    Label29: TLabel;
    DBEdit26: TDBEdit;
    GroupBox5: TGroupBox;
    Panel52: TPanel;
    Label30: TLabel;
    DBEdit27: TDBEdit;
    Panel53: TPanel;
    Label31: TLabel;
    DBEdit28: TDBEdit;
    Panel54: TPanel;
    Label32: TLabel;
    DBEdit29: TDBEdit;
    Panel55: TPanel;
    Label33: TLabel;
    DBEdit30: TDBEdit;
    Panel56: TPanel;
    Label34: TLabel;
    DBEdit31: TDBEdit;
    Bevel3: TBevel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel57: TPanel;
    TabSheet3: TTabSheet;
    DBGrid2: TDBGrid;
    Panel58: TPanel;
    Label43: TLabel;
    DBComboBox2: TDBComboBox;
    procedure FormCreate(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    procedure RefreshControls; override;
    procedure OnEdit; override;
    procedure OnLoad; override;
  public
    { Public declarations }
  end;

var
  ClientesM: TClientesM;

implementation

{$R *.dfm}
uses uClientes, uIUtils, ZDataset, DB, uDM, uClientesMFinais, uResources, 
  uClientesMContatos;

{ TClientesM }

procedure TClientesM.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  fBitMap: TBitmap;
begin
  if (Column.Index <> 0) then
    inherited ChildGridDrawColumnCell(Sender, Rect, DataCol, Column, State)
  else
    with TDBGrid(Sender) do
    begin
      fBitMap:= TBitmap.Create;
      try
        fBitMap.Transparent:= True;

        with Resources do
          case Clientes.qContatossituacao.AsInteger of
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

procedure TClientesM.FormCreate(Sender: TObject);
begin
  inherited;
  FirstControl:= DBEdit1;
end;

procedure TClientesM.OnEdit;
begin
  case PageControl3.ActivePageIndex of
    0:
    begin
      ClientesMFinais := TClientesMFinais.Create(nil);
      try
        ClientesMFinais.DataSet := Clientes.qClientesFinais;
        ClientesMFinais.ShowModal;
      finally
        FreeAndNil(ClientesMFinais);
      end;
    end;
    1:
    begin
      ClientesMContatos := TClientesMContatos.Create(nil);
      try
        ClientesMContatos.DataSet := Clientes.qContatos;
        ClientesMContatos.ShowModal;
      finally
        FreeAndNil(ClientesMContatos);
      end;
    end;
  end;
end;

procedure TClientesM.OnLoad;
begin
  inherited;
  WindowState := wsMaximized;
end;

procedure TClientesM.RefreshControls;
begin
  inherited;
  { TODO 5 -oRicardo : Revisar seleção de vendedor no cadastro de cleinte quando o usuário logado for um vendedo }
  DBLookupComboBox1.Enabled:= True; //not U.Info.IsVendor;

  if Assigned(DataSet) then
    JvDBDateEdit1.Enabled := (DataSet.State = dsInsert);
end;

end.
