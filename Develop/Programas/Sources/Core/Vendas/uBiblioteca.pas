unit uBiblioteca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask, Buttons,
  ComCtrls, ExtCtrls, ToolWin, DBCtrls, ZSequence, JvExStdCtrls,
  JvRichEdit, JvDBRichEdit;

type
  TBiblioteca = class(TIDefBrowse)
    IBrwSrctitulo: TStringField;
    IBrwSrcrecno: TIntegerField;
    IBrwSrcativo: TBooleanField;
    ZSequence1: TZSequence;
    JvDBRichEdit1: TJvDBRichEdit;
    Splitter1: TSplitter;
    IBrwSrcimg1: TBlobField;
    IBrwSrcimg2: TBlobField;
    IBrwSrcconteudo: TBlobField;
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  Biblioteca: TBiblioteca;

implementation

uses uDM, uBibliotecaM;

{$R *.dfm}


procedure TBiblioteca.FormResize(Sender: TObject);
begin
  inherited;
  JvDBRichEdit1.Height := Round(JvDBRichEdit1.Parent.ClientHeight * 0.6);
end;

procedure TBiblioteca.OnEdit;
begin
  BibliotecaM := TBibliotecaM.Create(nil);
  try
    BibliotecaM.DataSet := IBrwSrc;
    BibliotecaM.ShowModal;
  finally
    FreeAndNil(BibliotecaM);
  end;
end;

initialization
  RegisterClass(TBiblioteca);

finalization
  UnRegisterClass(TBiblioteca);

end.
