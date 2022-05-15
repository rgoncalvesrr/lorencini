unit uOP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ActnList, ComCtrls, ToolWin,
  ExtCtrls, Grids, DBGrids, StdCtrls, Mask, Buttons, JvExExtCtrls, JvImage, ZSequence;

type
  TOP = class(TIDefBrowse)
    IBrwSrccriada: TDateTimeField;
    Panel3: TPanel;
    PageControl2: TPageControl;
    tsVolumes: TTabSheet;
    DBGrid2: TDBGrid;
    tsEtiquetas: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Splitter1: TSplitter;
    qServ: TZQuery;
    dsServ: TDataSource;
    qServpedido: TIntegerField;
    qServcodserv: TIntegerField;
    qServdescri: TStringField;
    qServqtd: TIntegerField;
    qServamostras: TIntegerField;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    qMat: TZQuery;
    dsMat: TDataSource;
    qMatpedido: TIntegerField;
    qMatmaterial: TIntegerField;
    qMatdescricao: TStringField;
    qMatqtd: TFloatField;
    qMatunidade: TStringField;
    qMO: TZQuery;
    dsMO: TDataSource;
    qMOpedido: TIntegerField;
    qMOfuncao: TIntegerField;
    qMOdescricao: TStringField;
    qMOqtd: TIntegerField;
    qAmostras: TZQuery;
    dsAmostras: TDataSource;
    qAmostraspedido: TIntegerField;
    qAmostrasamostra: TIntegerField;
    qAmostrascodserv: TIntegerField;
    qAmostrasdescri: TStringField;
    qAmostrasrecebimento: TDateTimeField;
    ControlBar1: TControlBar;
    ToolBar2: TToolBar;
    ToolButton12: TToolButton;
    actServAjust: TAction;
    uServ: TZUpdateSQL;
    qServrecno: TLargeintField;
    qServstatus: TIntegerField;
    Panel4: TPanel;
    JvImage1: TJvImage;
    lbLeg1: TLabel;
    lbLeg3: TLabel;
    JvImage3: TJvImage;
    IBrwSrcop: TLargeintField;
    qServop: TLargeintField;
    qMatop: TLargeintField;
    qMOop: TLargeintField;
    qAmostrasop: TLargeintField;
    ToolButton13: TToolButton;
    actLocalizarAmostras: TAction;
    IBrwSrcrecno: TLargeintField;
    zBrwSrc: TZSequence;
    qServrecipiente: TStringField;
    qAmostrasrecipiente_amostra: TStringField;
    procedure IBrwSrcAfterScroll(DataSet: TDataSet);
    procedure FormResize(Sender: TObject);
    procedure qServAfterScroll(DataSet: TDataSet);
    procedure actServAjustExecute(Sender: TObject);
    procedure qServCalcFields(DataSet: TDataSet);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure PageControl2Change(Sender: TObject);
  private
    { Private declarations }
    procedure OnLoad; override;
    procedure RefreshCtrl; override;
  public
    { Public declarations }
  end;

var
  OP: TOP;

implementation

{$R *.dfm}

uses
  uDM, uIUtils, uResources, iTypes;

{ TOE }

procedure TOP.actServAjustExecute(Sender: TObject);
begin
  inherited;
  qServ.DisableControls;
  try
    qServ.Edit;
    qServqtd.AsInteger := qServamostras.AsInteger;
    qServ.Post;
  finally
    qServ.EnableControls;
    G.RefreshDataSet(qServ);
  end;
end;

procedure TOP.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
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
        case qServstatus.AsInteger of
          10: small_n.GetBitmap(208, fBitMap); // Ok
          20: small_n.GetBitmap(213, fBitMap); // Divergente
        end;

      if Column.Width <> fBitMap.Width + 2 then
        Column.Width:= fBitMap.Width + 2;

      {Desenha o status da remessa}
      Canvas.Draw(Rect.Left + 1, Rect.Top + 1, fBitMap);
    finally
      fBitMap.Free;
    end;
end;

procedure TOP.FormResize(Sender: TObject);
begin
  inherited;
  Panel3.Height := Round((ClientHeight - Panel2.Top) * 0.4);
  StatusBar1.Top := 5000;
end;

procedure TOP.IBrwSrcAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qServ.ParamByName('ordem').AsInteger := IBrwSrcop.AsInteger;
//  qServ.ParamByName('pedido').AsInteger := IBrwSrcpedido.AsInteger;
  qMat.ParamByName('ordem').AsInteger := IBrwSrcop.AsInteger;
//  qMat.ParamByName('pedido').AsInteger := IBrwSrcpedido.AsInteger;
  qMO.ParamByName('ordem').AsInteger := IBrwSrcop.AsInteger;
//  qMO.ParamByName('pedido').AsInteger := IBrwSrcpedido.AsInteger;
  qAmostras.ParamByName('ordem').AsInteger := IBrwSrcop.AsInteger;
//  qAmostras.ParamByName('pedido').AsInteger := IBrwSrcpedido.AsInteger;

  G.RefreshDataSet(qServ);
  G.RefreshDataSet(qMat);
  G.RefreshDataSet(qMO);
  G.RefreshDataSet(qAmostras);
end;

procedure TOP.OnLoad;
begin
  inherited;
  AllowInsert := False;
end;

procedure TOP.PageControl2Change(Sender: TObject);
begin
  inherited;
  ControlBar1.Parent := PageControl2.ActivePage;
  RefreshCtrl;  
  ControlBar1.Realign;
end;

procedure TOP.qServAfterScroll(DataSet: TDataSet);
begin
  inherited;
  RefreshCtrl;
end;

procedure TOP.qServCalcFields(DataSet: TDataSet);
begin
  inherited;
  qServstatus.AsInteger := 20;
  if qServqtd.AsInteger = qServamostras.AsInteger then
    qServstatus.AsInteger := 10;
end;

procedure TOP.RefreshCtrl;
begin
  inherited;
  actServAjust.Visible := (PageControl2.ActivePageIndex = 0);
  
  actServAjust.Enabled := actServAjust.Visible and (qServ.State = dsBrowse) and not qServ.IsEmpty
    and (qServamostras.AsInteger > 0) and (qServqtd.AsInteger <> qServamostras.AsInteger);
end;

initialization
  RegisterClass(TOP);

finalization
  UnRegisterClass(TOP);

end.
