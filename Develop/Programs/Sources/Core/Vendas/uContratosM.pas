unit uContratosM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids, uIFrameCliente, StdCtrls, Mask, DBCtrls,
  JvExMask, JvToolEdit, JvBaseEdits, JvDBControls;

type
  TContratosM = class(TIDefBrowseEdit)
    FrameCliente1: TFrameCliente;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Label1: TLabel;
    dbeContrato: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    dbeValor: TJvDBCalcEdit;
    Label5: TLabel;
    Label6: TLabel;
    dbeValorColeta: TJvDBCalcEdit;
    Label7: TLabel;
    DBMemo1: TDBMemo;
    dbeInicio: TJvDBDateEdit;
    dbeTermino: TJvDBDateEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Panel13: TPanel;
    Panel20: TPanel;
    Label17: TLabel;
    DBComboBox3: TDBComboBox;
    Panel21: TPanel;
    Label18: TLabel;
    DBComboBox4: TDBComboBox;
    Panel22: TPanel;
    Label19: TLabel;
    DBEdit6: TDBEdit;
    Panel10: TPanel;
    Label8: TLabel;
    dbePrazo: TJvDBCalcEdit;
    Panel11: TPanel;
    Label9: TLabel;
    cbStatus: TDBComboBox;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FormResize(Sender: TObject);
  private
    procedure OnLoad; override;
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

implementation

uses uContratos, db, uResources;

{$R *.dfm}

{ TContratosM }

procedure TContratosM.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  fBitMap: TBitmap;
begin
  if (Column.Index <> 0) then
    inherited ChildGridDrawColumnCell(Sender, Rect, DataCol, Column, State)
  else
    with TDBGrid(Sender) do
    try
      fBitMap:= TBitmap.Create;
      fBitMap.Transparent:= True;

      with Resources do
        case DataSource.DataSet.FieldByName('status').AsInteger of
          1: small_n.GetBitmap(208, fBitMap); //Ativo
          2: small_n.GetBitmap(209, fBitMap); //Inativo
        end;

      if Column.Width <> fBitMap.Width + 2 then
        Column.Width:= fBitMap.Width + 2;

      {Desenha o status da remessa}
      Canvas.Draw(Rect.Left + 1, Rect.Top + 1, fBitMap);
    finally
      fBitMap.Free;
    end;
end;

procedure TContratosM.FormResize(Sender: TObject);
begin
  inherited;
  Panel3.Height := Round(Panel3.Parent.ClientHeight * 0.5);
end;

procedure TContratosM.OnLoad;
begin
  inherited;
  WindowState := wsMaximized;
end;

procedure TContratosM.RefreshControls;
begin
  inherited;
  FrameCliente1.actFindCli.Enabled := False;
  try
    if not Assigned(DataSet) then
      Exit;

    FrameCliente1.actFindCli.Enabled := DataSet.State in [dsEdit, dsInsert];
  finally
    dbeContrato.ReadOnly := Assigned(DataSet) and (DataSet.State <> dsInsert);
    cbStatus.ReadOnly := not dbeContrato.ReadOnly;
    FrameCliente1.DBEdit8.ReadOnly := dbeContrato.ReadOnly;

    dbeInicio.ReadOnly := Assigned(DataSet) and (cbStatus.ItemIndex > 0) and not (DataSet.State in [dsEdit, dsInsert]);
    dbeTermino.ReadOnly := dbeInicio.ReadOnly;
    dbeValor.ReadOnly := dbeInicio.ReadOnly;
    dbeValorColeta.ReadOnly := dbeInicio.ReadOnly;

    RefreshControlsStyle(Self);
  end;
end;

end.
