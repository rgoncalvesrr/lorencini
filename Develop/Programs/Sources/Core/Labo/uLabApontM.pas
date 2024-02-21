unit uLabApontM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  uLabLaudoCl, StdCtrls, Mask, DBCtrls, JvExMask, JvToolEdit, JvDBControls,
  Buttons;

type
  TLabApontM = class(TIDefBrowseEdit)
    Panel2: TPanel;
    actRefreshRef: TAction;
    ToolButton5: TToolButton;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Panel13: TPanel;
    Label14: TLabel;
    DBComboBox1: TDBComboBox;
    Panel14: TPanel;
    TabSheet2: TTabSheet;
    Panel27: TPanel;
    GroupBox2: TGroupBox;
    Panel28: TPanel;
    Label24: TLabel;
    DBEdit23: TDBEdit;
    Panel30: TPanel;
    Label25: TLabel;
    DBEdit24: TDBEdit;
    Panel31: TPanel;
    DBCheckBox1: TDBCheckBox;
    GroupBox3: TGroupBox;
    Panel32: TPanel;
    Label29: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    Panel33: TPanel;
    Label30: TLabel;
    DBEdit28: TDBEdit;
    Panel34: TPanel;
    Label31: TLabel;
    DBEdit29: TDBEdit;
    Panel35: TPanel;
    Label32: TLabel;
    DBEdit30: TDBEdit;
    Panel36: TPanel;
    Label33: TLabel;
    DBEdit31: TDBEdit;
    Panel37: TPanel;
    Label34: TLabel;
    DBEdit32: TDBEdit;
    GroupBox1: TGroupBox;
    Panel38: TPanel;
    Panel39: TPanel;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Panel41: TPanel;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Panel42: TPanel;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    Panel43: TPanel;
    Label19: TLabel;
    DBEdit17: TDBEdit;
    Panel44: TPanel;
    Label38: TLabel;
    DBEdit36: TDBEdit;
    Panel45: TPanel;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Panel46: TPanel;
    Panel47: TPanel;
    Label20: TLabel;
    DBEdit19: TDBEdit;
    Panel48: TPanel;
    Label21: TLabel;
    DBEdit20: TDBEdit;
    Panel49: TPanel;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Panel50: TPanel;
    Label8: TLabel;
    Panel57: TPanel;
    DBEdit13: TDBEdit;
    DBEdit40: TDBEdit;
    Panel51: TPanel;
    Label15: TLabel;
    Panel58: TPanel;
    DBEdit14: TDBEdit;
    DBEdit41: TDBEdit;
    Panel52: TPanel;
    Label23: TLabel;
    DBEdit22: TDBEdit;
    Panel53: TPanel;
    Label18: TLabel;
    DBEdit18: TDBEdit;
    Panel54: TPanel;
    Label17: TLabel;
    DBEdit16: TDBEdit;
    Panel55: TPanel;
    Label37: TLabel;
    DBEdit35: TDBEdit;
    Panel56: TPanel;
    Label22: TLabel;
    DBEdit21: TDBEdit;
    Panel59: TPanel;
    Panel60: TPanel;
    Label26: TLabel;
    DBEdit25: TDBEdit;
    Panel62: TPanel;
    Label27: TLabel;
    DBEdit26: TDBEdit;
    Panel63: TPanel;
    Label36: TLabel;
    DBEdit34: TDBEdit;
    Panel64: TPanel;
    Label28: TLabel;
    DBEdit27: TDBEdit;
    Panel65: TPanel;
    Label35: TLabel;
    DBEdit33: TDBEdit;
    Panel66: TPanel;
    Label39: TLabel;
    DBEdit37: TDBEdit;
    Panel18: TPanel;
    DBEdit42: TDBEdit;
    Panel5: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel16: TPanel;
    Label41: TLabel;
    DBEdit43: TDBEdit;
    Panel19: TPanel;
    Label43: TLabel;
    DBEdit44: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure actRefreshRefExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Panel2Resize(Sender: TObject);
  private
    FLaudo: TLaudo;
    procedure SetLaudo(const Value: TLaudo);
    procedure RefreshControls; override;
  public
    { Public declarations }
    property Laudo: TLaudo read FLaudo write SetLaudo;
  end;

var
  LabApontM: TLabApontM;

implementation

uses uLabLaudoUI, uLabApont, uIUtils, DB;

{$R *.dfm}

procedure TLabApontM.actRefreshRefExecute(Sender: TObject);
begin
  inherited;
  // Executa atualização dos valores
  U.ExecuteSQL(Format('select labamostras_res_atu(%d)',
    [DataSet.FieldByName('recno').AsInteger]));

  // Recarrega objeto
  Laudo.BuildLaudo(
    DataSet.FieldByName('amostra').AsInteger, // amostra
    DataSet.FieldByName('recno').AsInteger, // Laudo (chave primária)
    DataSet.FieldByName('relato_recno').AsInteger); // Tipo de Laudo

  // Atualiza tela
  LabLaudoUI.Ensaios := Laudo.Ensaios;
end;

procedure TLabApontM.FormCreate(Sender: TObject);
begin
  inherited;
  LabLaudoUI := TLabLaudoUI.Create(nil);
  LabLaudoUI.Parent := Panel2;
  LabLaudoUI.Visible := True;
end;

procedure TLabApontM.FormDestroy(Sender: TObject);
begin
  FreeAndNil(LabLaudoUI);
  LabLaudoUI := nil;
  inherited;
end;

procedure TLabApontM.FormShow(Sender: TObject);
begin
  inherited;
  WindowState := wsMaximized;
end;

procedure TLabApontM.Panel2Resize(Sender: TObject);
begin
  inherited;
  LabLaudoUI.RealignGrid;
end;

procedure TLabApontM.RefreshControls;
begin
  inherited;

  if not Assigned(DataSet) then
    Exit;

  actRefreshRef.Enabled := not (DataSet.State in [dsEdit, dsInsert]) and
    not DataSet.IsEmpty;
end;

procedure TLabApontM.SetLaudo(const Value: TLaudo);
begin
  FLaudo := Value;
  LabLaudoUI.Ensaios := FLaudo.Ensaios;
  LabLaudoUI.RealignGrid;
end;

end.
