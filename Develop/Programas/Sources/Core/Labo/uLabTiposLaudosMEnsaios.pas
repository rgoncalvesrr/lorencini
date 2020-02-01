unit uLabTiposLaudosMEnsaios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  Buttons, StdCtrls, Mask, DBCtrls;

type
  TLabTiposLaudosMEnsaios = class(TIDefBrowseEdit)
    FindEnsaio: TAction;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    SpeedButton2: TSpeedButton;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Bevel6: TBevel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    procedure DBEdit4Exit(Sender: TObject);
    procedure FindEnsaioExecute(Sender: TObject);
  private
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  LabTiposLaudosMEnsaios: TLabTiposLaudosMEnsaios;

implementation

uses uLabTiposLaudos, mcUtils, uIUtils, DB, uLabEnsaios;

{$R *.dfm}

procedure TLabTiposLaudosMEnsaios.DBEdit4Exit(Sender: TObject);
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

procedure TLabTiposLaudosMEnsaios.FindEnsaioExecute(Sender: TObject);
begin
  inherited;
  LabEnsaios := TLabEnsaios.Create(nil);
  try
    LabEnsaios.DisplayMode := dmQuery;
    LabEnsaios.ShowModal;
    if (LabEnsaios.Execute) then
    begin
      DataSet.FieldByName('ensaio_comp').AsInteger :=
        LabEnsaios.IBrwSrcrecno.AsInteger;
      DBEdit4Exit(DBEdit4);
    end;
  finally
    FreeAndNil(LabEnsaios);
  end;
end;

procedure TLabTiposLaudosMEnsaios.RefreshControls;
begin
  inherited;
  FindEnsaio.Enabled := Assigned(DataSet) and
    (DataSet.State in [dsEdit, dsInsert]);
end;

end.
