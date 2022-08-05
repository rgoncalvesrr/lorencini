unit uLabEnsaiosMInst;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  StdCtrls, Mask, DBCtrls, Buttons;

type
  TLabEnsaiosMInst = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Bevel6: TBevel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    SpeedButton2: TSpeedButton;
    actFindInst: TAction;
    procedure DBEdit3Exit(Sender: TObject);
    procedure actFindInstExecute(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshControls; override;
  public
    { Public declarations }
  end;

var
  LabEnsaiosMInst: TLabEnsaiosMInst;

implementation

uses uLabEnsaios, uIUtils, DB, mcUtils, uLabInst;

{$R *.dfm}

procedure TLabEnsaiosMInst.actFindInstExecute(Sender: TObject);
begin
  inherited;
  LabInst := TLabInst.Create(nil);
  try
    LabInst.DisplayMode := dmQuery;
    LabInst.ShowModal;
    if (LabInst.Execute) then
    begin
      DataSet.FieldByName('labinst_recno').AsInteger :=
        LabInst.IBrwSrcrecno.AsInteger;
      DBEdit3Exit(DBEdit3);
    end;
  finally
    FreeAndNil(LabInst);
  end;
end;

procedure TLabEnsaiosMInst.DBEdit3Exit(Sender: TObject);
var
  fLkp: TStringList;
begin
  inherited;
  if mcEmpty(DBEdit3.Text) or not (DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('serie');
    fLkp.Add('descri');
    fLkp.Add('modelo');
    fLkp.Add('validade');
    fLkp.Add('labdiag_gp_recno');
    fLkp.Add('grupo');

    if U.Data.CheckFK('vinst', 'recno', DBEdit3.Text, fLkp) then
    begin
      DataSet.FieldByName('serie').AsString := fLkp[0];
      DataSet.FieldByName('descri').AsString := fLkp[1];
      DataSet.FieldByName('modelo').AsString := fLkp[2];
      DataSet.FieldByName('validade').AsString := fLkp[3];
      DataSet.FieldByName('labdiag_gp_recno').AsString := fLkp[4];
      DataSet.FieldByName('grupo').AsString := fLkp[5];
    end
    else
    begin
      U.Out.ShowErro('Instrumento não cadastrado.');
      DBEdit3.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TLabEnsaiosMInst.RefreshControls;
begin
  inherited;
  actFindInst.Enabled := Assigned(DataSet) and
    (DataSet.State in [dsEdit, dsInsert]);
end;

end.
