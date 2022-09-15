unit uIBrowseDetChild;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, ComCtrls, ExtCtrls, ToolWin, Grids, DBGrids;

type
  TIBrowseDetChild = class(TIDefBrowseEdit)
    Panel2: TPanel;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    Bevel5: TBevel;
    ToolBar2: TToolBar;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    actNew: TAction;
    actEdit: TAction;
    actDel: TAction;
    actRefresh: TAction;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    actEditMaster: TAction;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
  private
    { Private declarations }
  protected
    procedure RefreshControls; virtual;
  public
    { Public declarations }
  end;

var
  IBrowseDetChild: TIBrowseDetChild;

implementation

uses uDM;

{$R *.dfm}

{ TIBrowseDetChild }

procedure TIBrowseDetChild.RefreshControls;
begin

end;

end.
