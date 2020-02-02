unit uColaboradoresM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, ComCtrls, ExtCtrls, ToolWin, StdCtrls, Mask,
  DBCtrls, Grids, DBGrids, JvExStdCtrls, JvCombobox, JvDBCombobox,
  JvComponentBase, JvDBGridExport, JvExMask, JvToolEdit, JvDBControls, Buttons,
  ExtDlgs, JvDBImage;

type
  TColaboradoresM = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    GroupBox2: TGroupBox;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    GroupBox7: TGroupBox;
    Label36: TLabel;
    Label37: TLabel;
    GroupBox8: TGroupBox;
    Label38: TLabel;
    DBEdit26: TDBEdit;
    Label39: TLabel;
    DBEdit27: TDBEdit;
    Label40: TLabel;
    DBEdit28: TDBEdit;
    Label41: TLabel;
    DBEdit29: TDBEdit;
    Label34: TLabel;
    DBEdit25: TDBEdit;
    Label35: TLabel;
    GroupBox9: TGroupBox;
    Label42: TLabel;
    JvDBGridWordExport1: TJvDBGridWordExport;
    JvDBComboBox9: TJvDBComboBox;
    JvDBDateEdit1: TJvDBDateEdit;
    JvDBDateEdit2: TJvDBDateEdit;
    RxDBComboBox11: TJvDBComboBox;
    GroupBox3: TGroupBox;
    actImgAdd: TAction;
    actImgDel: TAction;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    OpenPictureDialog1: TOpenPictureDialog;
    Image1: TImage;
    procedure actImgDelExecute(Sender: TObject);
    procedure actImgAddExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    procedure OnDataSet; override;
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  ColaboradoresM: TColaboradoresM;

implementation

{$R *.dfm}

uses uColaboradores, uIUtils, DB, jpeg, mcutils;

{ TColaboradoresM }

procedure TColaboradoresM.actImgAddExecute(Sender: TObject);
var
  img: TJPEGImage;
begin
  inherited;

  if OpenPictureDialog1.Execute then
  try
    img := TJPEGImage.Create;
    img.LoadFromFile(OpenPictureDialog1.FileName);

    if (img.Width > 684) or (img.Height > 40) then
    begin
      U.Out.ShowErro('Imagem muito grande para se gravada! Tamanho atual: %d x %d ',
        [img.Width, img.Height]);
    end
    else
    begin
      Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
      DataSet.FieldByName('assinatura').AsString := 'i'+mcMD5(FormatDateTime('yyyymmddhhnnsszzz', Now))+'.jpg';
    end;
  finally
    FreeAndNil(img);
  end;
  RefreshControls;
end;

procedure TColaboradoresM.actImgDelExecute(Sender: TObject);
begin
  inherited;
  Image1.Picture := nil;
  DataSet.FieldByName('assinatura').SetData(nil);
  RefreshControls;
end;

procedure TColaboradoresM.FormDestroy(Sender: TObject);
begin
  ColaboradoresM := nil;
  inherited;
end;

procedure TColaboradoresM.OnDataSet;
begin
  inherited;

  with U.Query, RxDBComboBox11 do
  try
    Items.BeginUpdate;
    Values.BeginUpdate;

    Items.Clear;
    Values.Clear;

    SQL.Text:=
    'select username, name '+
      'from sys_users '+
     'where active = true '+
     'order by 2';

    Open;

    while not Eof do
    begin
      Items.Add(FieldByName('name').AsString);
      Values.Add(FieldByName('username').AsString);
      Next;
    end;

  finally
    Close;
    Items.EndUpdate;
    Values.EndUpdate;
  end;
end;

procedure TColaboradoresM.RefreshControls;
begin
  inherited;
  if not Assigned(DataSet) then
    Exit;

  actImgAdd.Enabled := (DataSet.State in [dsEdit, dsInsert]);
  actImgDel.Enabled := (DataSet.State in [dsEdit, dsInsert]) and
    (not DataSet.FieldByName('assinatura').IsNull);
end;

end.
