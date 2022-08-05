unit uCallCenterAttach;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uiwizard, ActnList, StdCtrls, ExtCtrls, DBCGrids, Grids, DBGrids,
  DBGrid3D, DBCtrls, ComCtrls, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Buttons, Mask;

type
  TCallCenterAttach = class(TIWizard)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    Splitter1: TSplitter;
    Panel2: TPanel;
    qOrcamentos: TZQuery;
    DataSource1: TDataSource;
    qOrcamentosidos: TStringField;
    qOrcamentosdata: TDateField;
    qOrcamentosresumo: TStringField;
    qOrcamentostipo: TStringField;
    qOrcamentosstatus: TStringField;
    qOrcamentoscontato: TStringField;
    qOrcamentostelefone: TStringField;
    qOrcamentosdescricao: TMemoField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel3: TPanel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Panel4: TPanel;
    DBMemo1: TDBMemo;
    Panel5: TPanel;
    qOrcamentosidcliente: TIntegerField;
    qOrcamentosos: TIntegerField;
    actOkClose: TAction;
    BitBtn3: TBitBtn;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Panel2Resize(Sender: TObject);
    procedure Panel3Resize(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure qOrcamentosAfterRefresh(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure actOkCloseExecute(Sender: TObject);
  private
    FChamado: Integer;
    procedure SetChamado(const Value: Integer);
    { Private declarations }
  public
    { Public declarations }
    property Chamado: Integer read FChamado write SetChamado;
  end;

var
  CallCenterAttach: TCallCenterAttach;

implementation

{$R *.dfm}

uses uDM, uCallCenter, uIUtils;

{ TCallCenterAttach }

procedure TCallCenterAttach.actOkCloseExecute(Sender: TObject);
begin
  inherited;
  actOkExecute(actOk); // Anexão orçamento selecionado
  actCancelExecute(actCancel); // Fecha tela
end;

procedure TCallCenterAttach.actOkExecute(Sender: TObject);
begin
  try
    U.Data.StartTransaction;

    U.ExecuteSQL('insert into call_orca (codigo, chamado, os) values ('+
      qOrcamentosidcliente.AsString+','+IntToStr(FChamado)+','+qOrcamentosos.AsString+');');

    U.Data.Commit;

    qOrcamentos.Refresh;
    
    inherited;
  except
    on E:Exception do
    begin
      U.Out.ShowErro('Não foi possível anexar o orçamento ao chamado. Erro: '+E.Message);
      U.Data.Rollback;
    end;
  end;
end;

procedure TCallCenterAttach.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  with TDBGrid(Sender) do
  begin
    if not (gdFocused in State) then
    begin
      Canvas.Brush.Color:= clWhite;

      if DataSource.DataSet.RecNo mod 2 = 0 then
        Canvas.Brush.Color:= $00D9EAD9
      else
        Canvas.Brush.Color:= clWhite;

      Canvas.FillRect(Rect);
    end;

    DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TCallCenterAttach.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CallCenter.actRefreshExecute(CallCenter.actRefresh);
end;

procedure TCallCenterAttach.Panel2Resize(Sender: TObject);
begin
  inherited;
  BitBtn1.Left:= BitBtn1.Parent.ClientWidth - BitBtn1.Width - 8;
  BitBtn2.Left:= BitBtn1.Left - BitBtn2.Width - 3;
  BitBtn3.Left:= BitBtn2.Left - BitBtn3.Width - 3; 
end;

procedure TCallCenterAttach.Panel3Resize(Sender: TObject);
begin
  inherited;
  DBEdit4.Left:= Panel3.ClientWidth - DBEdit4.Width - 8;
  Label6.Left:= DBEdit4.Left;
  DBEdit3.Width:= DBEdit4.Left - DBEdit3.Left - 3;
end;

procedure TCallCenterAttach.qOrcamentosAfterRefresh(DataSet: TDataSet);
begin
  inherited;
  actOk.Enabled:= qOrcamentos.RecordCount > 0;
  actOkClose.Enabled:= actOk.Enabled;
end;

procedure TCallCenterAttach.SetChamado(const Value: Integer);
begin
  FChamado := Value;
  qOrcamentos.ParamByName('chamado').AsInteger:= Value;
  qOrcamentos.Open;
  qOrcamentos.Refresh;
  //RestoreControlsStyle(Self);
end;

end.
