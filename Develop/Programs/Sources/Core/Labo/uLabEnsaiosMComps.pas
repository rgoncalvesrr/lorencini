unit uLabEnsaiosMComps;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, ComCtrls, ToolWin, ExtCtrls, Grids, DBGrids,
  StdCtrls, Mask, DBCtrls, Buttons;

type
  TLabEnsaiosMComps = class(TIDefBrowseEdit)
    Panel2: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Panel5: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Panel6: TPanel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    SpeedButton2: TSpeedButton;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    actFindEnsaio: TAction;
    procedure DBEdit4Exit(Sender: TObject);
    procedure actFindEnsaioExecute(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  LabEnsaiosMComps: TLabEnsaiosMComps;

implementation

uses
  uLabEnsaios, uIUtils, DB, mcutils;

{$R *.dfm}

procedure TLabEnsaiosMComps.actFindEnsaioExecute(Sender: TObject);
begin
  inherited;
  LabEnsaios := TLabEnsaios.Create(nil);
  try
    LabEnsaios.DisplayMode := dmQuery;
    LabEnsaios.ShowModal;
    if (LabEnsaios.Execute) then
    begin
      DataSet.FieldByName('ensaio_recno').AsInteger :=
        LabEnsaios.IBrwSrcrecno.AsInteger;
      DBEdit4Exit(DBEdit4);
    end;
  finally
    FreeAndNil(LabEnsaios);
  end;
end;

procedure TLabEnsaiosMComps.DBEdit4Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit4.Text) or not (DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('nome');
    fLkp.Add('unidade');
    fLkp.Add('metodo');

    if U.Data.CheckFK('vensaios', 'recno', DBEdit4.Text, fLkp) then
    begin
      DataSet.FieldByName('nome').AsString := fLkp[0];
      DataSet.FieldByName('unidade').AsString := fLkp[1];
      DataSet.FieldByName('metodo').AsString := fLkp[2];
    end
    else
    begin
      U.Out.ShowErro('Ensaio não cadastrado.');
      DBEdit4.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TLabEnsaiosMComps.RefreshControls;
begin
  inherited;
  actFindEnsaio.Enabled := Assigned(DataSet) and
    (DataSet.State in [dsEdit, dsInsert]);
end;

end.
