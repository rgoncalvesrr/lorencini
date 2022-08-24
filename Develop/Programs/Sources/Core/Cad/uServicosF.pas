unit uServicosF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIDefFind, DB, Menus, ZAbstractRODataset, ZDataset, ActnList, Grids,
  DBGrids, ComCtrls, StdCtrls, Buttons, Mask, ExtCtrls, ToolWin, uIUtils;

type
  TServicosF = class(TIDefFind)
    IBrwSrccodserv: TIntegerField;
    IBrwSrcdescri: TStringField;
    IBrwSrctipo: TIntegerField;
    ComboBox1: TComboBox;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FCBGrupos: TComboList;
  end;

var
  ServicosF: TServicosF;

implementation

{$R *.dfm}

uses uDM, mcUtils;

procedure TServicosF.ComboBox1Change(Sender: TObject);
begin
  inherited;
  IBrwSrc.ParamByName('grupo').AsInteger := FCBGrupos.Selected.Value;
  G.RefreshDataSet(IBrwSrc); // atualiza DataSet
end;

procedure TServicosF.FormCreate(Sender: TObject);
begin
  inherited;
  FCBGrupos := TComboList.Create(ComboBox1, 'servicos_grupo', 'recno', 'descri');
end;

procedure TServicosF.FormShow(Sender: TObject);
begin
  inherited;
  FCBGrupos.UpdateList;
  ComboBox1Change(ComboBox1);
end;

end.
