unit uIGraphicMng;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIWizard, ActnList, StdCtrls, ExtCtrls, ComCtrls, ToolWin,
  ExtDlgs;

type
  TIGraphicMng = class(TIWizard)
    ControlBar1: TControlBar;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    Image2: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    ToolButton2: TToolButton;
    actLoad: TAction;
    actClean: TAction;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    procedure actLoadExecute(Sender: TObject);
    procedure actCleanExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IGraphicMng: TIGraphicMng;

implementation

uses uResources, PngImage1, PNGZLIB1, uIUtils, DB;

{$R *.dfm}

procedure TIGraphicMng.actCleanExecute(Sender: TObject);
begin
  inherited;
  Image2.Picture := nil;
end;

procedure TIGraphicMng.actLoadExecute(Sender: TObject);
var
  img: TMemoryStream;
begin
  inherited;
  if OpenPictureDialog1.Execute then
  begin
    Image2.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    img := TMemoryStream.Create;
    Image2.Picture.Graphic.SaveToStream(img);
    with U.Data.GetQuery('update doc_modelos set img1 = :img1 where recno = 6') do
    try
      Params[0].LoadFromStream(img, ftBlob);
      ExecSQL;
    finally
      close;
    end;
  end;
end;

end.
