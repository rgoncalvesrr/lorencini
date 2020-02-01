unit uBibliotecaM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls, ExtDlgs, JvDBImage, uFrameImage;

type
  TBibliotecaM = class(TIDefBrowseEdit)
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    DBCheckBox1: TDBCheckBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBRichEdit1: TDBRichEdit;
    Panel6: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Splitter1: TSplitter;
    FrameImage1: TFrameImage;
    FrameImage2: TFrameImage;
    Splitter2: TSplitter;
    procedure Panel6Resize(Sender: TObject);
  private
    { Private declarations }
    procedure OnLoad; override;
  public
    { Public declarations }
  end;

var
  BibliotecaM: TBibliotecaM;

implementation

uses uBiblioteca, uIGraphicMng;

{$R *.dfm}

{ TBibliotecaM }

procedure TBibliotecaM.OnLoad;
begin
  inherited;
  WindowState := wsMaximized;
end;

procedure TBibliotecaM.Panel6Resize(Sender: TObject);
begin
  inherited;
  GroupBox1.Width := Round((GroupBox1.Parent.ClientWidth - Splitter1.Width) * 0.5);
end;

end.
