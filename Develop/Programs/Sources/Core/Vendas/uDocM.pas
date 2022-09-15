unit uDocM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls,
  ToolWin, StdCtrls, DBCtrls, Mask, uFrameImage;

type
  TDocM = class(TIDefBrowseEdit)
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBRichEdit1: TDBRichEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Panel6: TPanel;
    Splitter1: TSplitter;
    GroupBox1: TGroupBox;
    FrameImage1: TFrameImage;
    GroupBox2: TGroupBox;
    FrameImage2: TFrameImage;
    Splitter2: TSplitter;
    procedure Panel6Resize(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DocM: TDocM;

implementation

uses uDoc;

{$R *.dfm}

procedure TDocM.FormShow(Sender: TObject);
begin
  inherited;
  WindowState := wsMaximized;
end;

procedure TDocM.Panel6Resize(Sender: TObject);
begin
  inherited;
  GroupBox1.Width := Round((GroupBox1.Parent.ClientWidth - Splitter1.Width) * 0.5);
end;

end.
