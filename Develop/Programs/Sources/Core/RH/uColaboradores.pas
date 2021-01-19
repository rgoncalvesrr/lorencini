unit uColaboradores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Menus,
  XPMan, ActnList, Grids, DBGrids, ComCtrls, StdCtrls, Buttons, Mask, ExtCtrls,
  ToolWin, ZSqlUpdate, ZSequence, JvExMask, JvToolEdit, JvBaseEdits;

type
  TColaboradores = class(TIDefBrowse)
    IBrwSrcidcodigo: TIntegerField;
    IBrwSrcnome: TStringField;
    IBrwSrccargo: TStringField;
    IBrwSrctelcelular: TStringField;
    IBrwSrcrg: TStringField;
    IBrwSrccpf: TStringField;
    IBrwSrcendereco: TStringField;
    IBrwSrcbairro: TStringField;
    IBrwSrccep: TStringField;
    IBrwSrccidade: TStringField;
    IBrwSrcestado: TStringField;
    IBrwSrccontabanco: TStringField;
    IBrwSrccontaagencia: TStringField;
    IBrwSrccontanumero: TStringField;
    IBrwSrctelresidencia: TStringField;
    IBrwSrcsituacao: TStringField;
    IBrwSrcdtadmissao: TDateTimeField;
    IBrwSrcdtdemissao: TDateTimeField;
    IBrwSrccrq: TStringField;
    IBrwSrcusername: TStringField;
    IBrwSrcrecno: TIntegerField;
    IBrwSrcassinatura: TStringField;
    sIBrwSrc: TZSequence;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    qConselhos: TZReadOnlyQuery;
    qConselhossigla: TStringField;
    qConselhosdescri: TStringField;
    qConselhosrecno: TIntegerField;
    dsConselhos: TDataSource;
    IBrwSrcconselho: TStringField;
    Panel5: TPanel;
    Label3: TLabel;
    edCodigo: TJvCalcEdit;
    Panel6: TPanel;
    Label1: TLabel;
    cbStatus: TComboBox;
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
    procedure IBrwSrcBeforePost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure PageControl1Change(Sender: TObject);
    procedure cbStatusChange(Sender: TObject);
    procedure actQueryProcessExecute(Sender: TObject);
    procedure edCodigoChange(Sender: TObject);
  private
    function getImgDir: string;
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  Colaboradores: TColaboradores;

implementation

uses uDM, uColaboradoresM, jpeg, uIUtils, mcutils, uResources;

{$R *.dfm}

procedure TColaboradores.actQueryProcessExecute(Sender: TObject);
var
  sWhere : string;
begin
  inherited;
  if not Assigned(DataSet) or (DataSet <> IBrwSrc) then
    Exit;

  with DataSet do
  begin
    if cbStatus.ItemIndex > 0 then
      sWhere := 'c.situacao = :situacao ';

    if Trim(edCodigo.Text) <> EmptyStr then
    begin
      if swhere <> EmptyStr then
        swhere := swhere + 'and ';

      swhere := swhere + 'c.idcodigo = :codigo ';
    end;


    if sWhere <> EmptyStr then
      SQL.Add('where ' + sWhere);

    if Assigned(Params.FindParam('codigo')) then
      Params.ParamByName('codigo').AsInteger := Round(edCodigo.Value);

    if Assigned(Params.FindParam('situacao')) then
      Params.ParamByName('situacao').AsString := cbStatus.Items[cbStatus.ItemIndex];
  end;

  G.RefreshDataSet(DataSet);
  RefreshCtrl;
end;

procedure TColaboradores.cbStatusChange(Sender: TObject);
begin
  actQueryProcess.Enabled := True;
  with PageControl1 do
  begin
    DBGrid1.SetFocus;
    ActivePageIndex := cbStatus.ItemIndex;
    inherited PageControl1Change(PageControl1);
  end;

  actQueryProcessExecute(actQueryProcess);
end;

procedure TColaboradores.DBGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  fBitMap: TBitmap;
begin
  if (Column.Index <> 0) then
    inherited DBGridDrawColumnCell(Sender, Rect, DataCol, Column, State)
  else
    with TDBGrid(Sender) do
    try
      fBitMap:= TBitmap.Create;
      fBitMap.Transparent:= True;

      with Resources do
      begin
        small_n.GetBitmap(209, fBitMap); //Inválido
        if IBrwSrcsituacao.AsString <> '' then
          case IBrwSrcsituacao.AsString[1] of
            'A': small_n.GetBitmap(208, fBitMap); //Ativo
            'D': small_n.GetBitmap(213, fBitMap); //Demitido
          end;
      end;

      if Column.Width <> fBitMap.Width + 2 then
        Column.Width:= fBitMap.Width + 2;

      {Desenha o status da remessa}
      Canvas.Draw(Rect.Left + 1, Rect.Top + 1, fBitMap);
    finally
      fBitMap.Free;
    end;
end;

procedure TColaboradores.edCodigoChange(Sender: TObject);
begin
  inherited;
  actQueryProcess.Enabled := True;
end;

procedure TColaboradores.FormActivate(Sender: TObject);
begin
  inherited;
  G.RefreshDataSet(qConselhos);
  DBGrid1.SetFocus;
end;

procedure TColaboradores.FormCreate(Sender: TObject);
begin
  inherited;
  Colaboradores := self;
end;

function TColaboradores.getImgDir: string;
begin
  Result := U.Path.Images;
end;

procedure TColaboradores.IBrwSrcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  IBrwSrcsituacao.AsString:= 'Ativo';
end;

procedure TColaboradores.IBrwSrcAfterScroll(DataSet: TDataSet);
var
  img: TJPEGImage;
begin
  inherited;
  if Assigned(ColaboradoresM) then
  begin
    ColaboradoresM.Image1.Picture.Assign(nil);

    if not IBrwSrcassinatura.IsNull then
    begin
      if FileExists(getImgDir + IBrwSrcassinatura.AsString) then
      try
        img := TJPEGImage.Create;
        img.LoadFromFile(getImgDir + IBrwSrcassinatura.AsString);
        ColaboradoresM.Image1.Picture.Assign(img);
      finally
        FreeAndNil(img);
      end;
    end;
  end;
end;

procedure TColaboradores.IBrwSrcBeforePost(DataSet: TDataSet);
begin
  if not IBrwSrcassinatura.IsNull and (ColaboradoresM.Image1.Picture <> nil) and
    not FileExists(getImgDir + IBrwSrcassinatura.AsString) then
    ColaboradoresM.Image1.Picture.SaveToFile(getImgDir + IBrwSrcassinatura.AsString);
end;

procedure TColaboradores.OnEdit;
begin
  Application.CreateForm(TColaboradoresM,ColaboradoresM);
  ColaboradoresM.DataSet:= IBrwSrc;
  ColaboradoresM.ShowModal;
end;

procedure TColaboradores.PageControl1Change(Sender: TObject);
begin
  inherited;
  if cbStatus.ItemIndex <> PageControl1.ActivePageIndex then
  begin
    cbStatus.ItemIndex := PageControl1.ActivePageIndex;
    cbStatusChange(cbStatus);
  end;
end;

initialization
  RegisterClass(TColaboradores);

finalization
  UnRegisterClass(TColaboradores);

end.



