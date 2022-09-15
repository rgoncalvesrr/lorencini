unit uFichaFinPosM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  Mask, DBCtrls, StdCtrls;

type
  TFichaFinPosM = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    DBComboBox1: TDBComboBox;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    procedure PageControl3Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FichaFinPosM: TFichaFinPosM;

implementation

uses uFichaFinPos, uResources, uIUtils;

{$R *.dfm}

procedure TFichaFinPosM.PageControl3Change(Sender: TObject);
var
  i: integer;
  sStmt: string;
begin
  DBGrid1.Parent := PageControl3.ActivePage;
  inherited;

  with ChildDataSet do
  begin
    for I := SQL.Count - 1 downto 1 do
      if (Pos('and', Trim(SQL[i])) > 0) then
        SQL.Delete(I)
      else
        Break;

    case PageControl3.ActivePageIndex of
      1: sStmt := ' and t.vencimento_real >= current_date and t.baixa is null ';
      2: sStmt := ' and t.baixa is not null ';
      3: sStmt := ' and t.vencimento_real < current_date and t.baixa is null ';
    else
      sStmt := EmptyStr;
    end;
    
    if sStmt <> EmptyStr then    
      SQL.Add(sStmt);

    G.RefreshDataSet(ChildDataSet);
    RefreshControls;
  end;
end;

end.
