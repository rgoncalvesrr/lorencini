unit uTextos_OS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ActnList, Grids, DBGrids, ComCtrls, StdCtrls, Buttons, Mask, ExtCtrls, ToolWin,
  ZSqlUpdate, uIUtils;

type
  TTextos_OS = class(TIDefBrowse)
    IBrwSrccodativ: TIntegerField;
    IBrwSrctipo: TStringField;
    IBrwSrcitem: TIntegerField;
    IBrwSrcresumo: TStringField;
    IBrwSrcdescri: TMemoField;
    IBrwSrciss: TFloatField;
    ZUpdateSQL1: TZUpdateSQL;
    Label18: TLabel;
    ComboBox1: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actQueryProcessExecute(Sender: TObject);
  private
    { Private declarations }
    FCBAtividades: TComboList;
    procedure OnEdit; override;
  public
    { Public declarations }
    property Atividades: TComboList read FCBAtividades;
  end;

var
  Textos_OS: TTextos_OS;

implementation

{$R *.dfm}

uses uDM, uTextos_OSM;

{ TTextos_OS }

procedure TTextos_OS.actQueryProcessExecute(Sender: TObject);
begin
  inherited;
  IBrwSrc.ParamByName('atividade').AsInteger := FCBAtividades.Selected.Value;
  G.RefreshDataSet(IBrwSrc);
  RefreshCtrl;
end;

procedure TTextos_OS.ComboBox1Change(Sender: TObject);
begin
  inherited;
  actQueryProcessExecute(actQueryProcess);
end;

procedure TTextos_OS.FormCreate(Sender: TObject);
begin
  inherited;
  FCBAtividades := TComboList.Create(ComboBox1, 'atividades', 'codativ', 'descri');
  ComboBox1Change(ComboBox1);
end;

procedure TTextos_OS.FormDestroy(Sender: TObject);
begin
  FreeAndNil(FCBAtividades);
  inherited;
end;

procedure TTextos_OS.OnEdit;
begin
  Application.CreateForm(TTextos_OSM, Textos_OSM);
  Textos_OSM.DataSet:= IBrwSrc;
  Textos_OSM.ShowModal;
end;

initialization
  RegisterClass(TTextos_OS);
end.
