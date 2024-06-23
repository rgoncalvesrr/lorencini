unit uFrameImage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, DBCtrls, JvDBImage, Menus, ActnList, ExtDlgs, System.Actions;

type
  TFrameImage = class(TFrame)
    FrameImage: TJvDBImage;
    ActionList1: TActionList;
    PopupMenu1: TPopupMenu;
    actLoad: TAction;
    actClean: TAction;
    Carregar1: TMenuItem;
    Limpar1: TMenuItem;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure actCleanExecute(Sender: TObject);
    procedure actLoadExecute(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses uResources, DB;

{$R *.dfm}

procedure TFrameImage.actCleanExecute(Sender: TObject);
begin
  FrameImage.Picture := nil;
end;

procedure TFrameImage.actLoadExecute(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
    FrameImage.Picture.LoadFromFile(OpenPictureDialog1.FileName);
end;

procedure TFrameImage.PopupMenu1Popup(Sender: TObject);
begin
  if Assigned(FrameImage.DataSource) and Assigned(FrameImage.DataSource.DataSet) then
  begin
    actLoad.Enabled := (FrameImage.DataSource.DataSet.State in [dsEdit, dsInsert]);
    actClean.Enabled := actLoad.Enabled;
  end;
end;

end.
