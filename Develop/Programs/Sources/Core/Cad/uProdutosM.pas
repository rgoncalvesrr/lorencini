unit uProdutosM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls, DB, ZAbstractRODataset, ZDataset;

type
  TProdutosM = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Bevel6: TBevel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Label3: TLabel;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure OnDataSet; override;
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  ProdutosM: TProdutosM;

implementation

{$R *.dfm}

uses uProdutos, uIUtils, mcUtils, uDM;

{ TProdutosM }

procedure TProdutosM.FormCreate(Sender: TObject);
begin
  inherited;
  with DM do
  begin
    qGrupos.Open;
    {qSGrupos.MasterSource := nil;
    qSGrupos.Filtered := True;}
  end;
end;

procedure TProdutosM.FormDestroy(Sender: TObject);
begin
{  DM.qSGrupos.Filtered := False;
  DM.qSGrupos.MasterSource := DM.dsGrupos;}
  inherited;
end;

procedure TProdutosM.OnDataSet;
begin
  inherited;
end;

procedure TProdutosM.RefreshControls;
begin
  inherited;
  with DM.qSGrupos do
    if Active then
      Refresh;
end;

end.
