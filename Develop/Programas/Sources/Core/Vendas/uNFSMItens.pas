unit uNFSMItens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowseDet, ActnList, Grids, DBGrids, ComCtrls, ExtCtrls, ToolWin,
  Buttons, StdCtrls, Mask, DBCtrls, ZAbstractRODataset, ZDataset, DB;

type
  TNFSMItens = class(TIDefBrowseEdit)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    GroupBox1: TGroupBox;
    qOSDispFat: TZReadOnlyQuery;
    DataSource1: TDataSource;
    qOSDispFatidos: TStringField;
    qOSDispFatcom_srv: TFloatField;
    qOSDispFatpedvlaprov: TFloatField;
    qOSDispFatcom_mat: TFloatField;
    qOSDispFatpedvlaprovmat: TFloatField;
    DBGrid2: TDBGrid;
    qOSDispFatvlcomsrv: TFloatField;
    qOSDispFattotal: TFloatField;
    qOSDispFatos: TIntegerField;
    qOSDispFatdata: TDateField;
    procedure DBEdit1Exit(Sender: TObject);
    procedure qOSDispFatCalcFields(DataSet: TDataSet);
    procedure qOSDispFatAfterScroll(DataSet: TDataSet);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NFSMItens: TNFSMItens;

implementation

uses uNFS, mcutils, uIUtils, uDM;

{$R *.dfm}

procedure TNFSMItens.actOkExecute(Sender: TObject);
begin
  inherited;
  G.RefreshDataSet(qOSDispFat);
end;

procedure TNFSMItens.DBEdit1Exit(Sender: TObject);
var
  fLkp: TStringList;
  DBEdit: TDBEdit;
begin
  inherited;
  DBEdit := TDBEdit(Sender);
  if mcEmpty(DBEdit.Text) or not (DataSet.State in [dsEdit, dsInsert]) then
    Exit;

  try
    fLkp:= TStringList.Create;
    fLkp.Add('data');
    if NFS.IBrwSrctipo.AsInteger = 1 then
      fLkp.Add('vlmat')
    else
      fLkp.Add('vlsrv');
    fLkp.Add('os');


    if U.Data.CheckFK('vos', 'idos', QuotedStr(DBEdit.Text), fLkp, 'status_ = 3 and ' + fLkp[1] + ' > 0 ') then
    begin
      DataSet.FieldByName('data').AsString := fLkp[0];
      DataSet.FieldByName('valor').AsString := fLkp[1];
      DataSet.FieldByName('os').AsString := fLkp[2];
    end
    else
    begin
      U.Out.ShowErro('OS não localizada.');
      DBEdit.SetFocus;
    end;
  finally
    fLkp.Free;
  end;
end;

procedure TNFSMItens.DBGrid2DblClick(Sender: TObject);
begin
  inherited;
  DBEdit1Exit(DBEdit1);
  actOkExecute(actOk);
end;

procedure TNFSMItens.qOSDispFatAfterScroll(DataSet: TDataSet);
begin
  inherited;
  with Self.DataSet do
  begin
    if not (state in [dsEdit, dsInsert]) then
      Exit;

    FieldByName('idos').AsString := qOSDispFatidos.AsString;
    FieldByName('com_srv').AsFloat := qOSDispFatcom_srv.AsFloat;
    FieldByName('vlsrv').AsFloat := qOSDispFatpedvlaprov.AsFloat;
    FieldByName('com_mat').AsFloat := qOSDispFatcom_mat.AsFloat;
    FieldByName('vlmat').AsFloat := qOSDispFatpedvlaprovmat.AsFloat;
    FieldByName('os').AsInteger := qOSDispFatos.AsInteger;
    FieldByName('data').AsDateTime := qOSDispFatdata.AsDateTime;
  end;
end;

procedure TNFSMItens.qOSDispFatCalcFields(DataSet: TDataSet);
begin
  inherited;
  qOSDispFattotal.AsFloat := qOSDispFatpedvlaprov.AsFloat +
    qOSDispFatpedvlaprovmat.AsFloat;

  qOSDispFatvlcomsrv.AsFloat := 0;

  if (qOSDispFatpedvlaprov.AsFloat > 0) and (qOSDispFatcom_srv.AsFloat > 0) then
    qOSDispFatvlcomsrv.AsFloat := qOSDispFatvlcomsrv.AsFloat +
      qOSDispFatpedvlaprov.AsFloat * qOSDispFatcom_srv.AsFloat / 100;

  if (qOSDispFatpedvlaprovmat.AsFloat > 0) and (qOSDispFatcom_mat.AsFloat > 0) then
    qOSDispFatvlcomsrv.AsFloat := qOSDispFatvlcomsrv.AsFloat +
      qOSDispFatpedvlaprovmat.AsFloat * qOSDispFatcom_mat.AsFloat / 100;

  


end;

end.
