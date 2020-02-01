unit uLabProcDespachoVol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIForm, ActnList, StdCtrls, Mask, DBCtrls, ExtCtrls, DB, ACBrBarCode,
  Grids, DBGrids, ComCtrls;

type
  TLabProcDespachoVol = class(TIForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    GroupBox3: TGroupBox;
    lbMsg: TLabel;
    edCodLido: TMaskEdit;
    Panel1: TPanel;
    Button1: TButton;
    DataSource1: TDataSource;
    PageControl3: TPageControl;
    TabSheet3: TTabSheet;
    DBGrid4: TDBGrid;
    GroupBox4: TGroupBox;
    ACBrBarCode2: TACBrBarCode;
    Label20: TLabel;
    Shape1: TShape;
    Label4: TLabel;
    Label9: TLabel;
    Label6: TLabel;
    DBText1: TDBText;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    procedure edCodLidoExit(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LabProcDespachoVol: TLabProcDespachoVol;

implementation

uses uLabProcDespacho, uIUtils, MaskUtils;

{$R *.dfm}

procedure TLabProcDespachoVol.DataSource1StateChange(Sender: TObject);
begin
  inherited;
  ACBrBarCode2.Text := FormatMaskText('00000000000;0;',
    DataSource1.DataSet.FieldByName('recno').AsString);
  with LabProcDespacho do
  begin
    Label9.Caption := Format('Remessa: %d. Volume: %d',
      [IBrwSrcrecno.AsInteger, qVolumesvolume.AsInteger]);
    Label6.Caption := Format('Frascos: %d. Seringas: %d',
      [qVolumesfrascos.AsInteger, qVolumesseringas.AsInteger]);
  end;
end;

procedure TLabProcDespachoVol.edCodLidoExit(Sender: TObject);
  procedure Mensagem(const Value: string);
  begin
    lbMsg.Caption := Value;
        lbMsg.Repaint;
        Sleep(3000);
        lbMsg.Caption := EmptyStr;
  end;

begin
  inherited;

  if (edCodLido.Text <> EmptyStr) then
    with U.Data.Query do
    try
      SQL.Text :=
      'select volume, exp_dh, labproc_recno ' +
        'from labvol ' +
       'where recno = :volume ';

      Params[0].AsInteger := StrToInt(edCodLido.Text);

      Open;

      if IsEmpty then
      begin
        Mensagem(Format('A etiqueta %s não existe no sistema!',
          [FormatMaskText('000.000.000.000;0;', edCodLido.Text)]));
        Exit;
      end;

      // Verifica se a etiqueta de volume pertence a remessa sendo enviada
      if Fields[2].AsInteger <> DBEdit1.Field.AsInteger then
      begin
        Mensagem(Format('A etiqueta %s ref. ao volume %d não pertence a remessa %d!',
          [FormatMaskText('000.000.000.000;0;', edCodLido.Text),
           Fields[0].AsInteger, DBEdit1.Field.AsInteger]));
        Exit;
      end;


      if not Fields[1].IsNull then
      begin
        Mensagem(Format('A etiqueta %s ref. ao volume %d foi enviada em %s!',
          [FormatMaskText('000.000.000.000;0;', edCodLido.Text),
           Fields[0].AsInteger, FormatDateTime('dd/mm/yyyy hh:nn',
           Fields[1].AsDateTime)]));
        Exit;
      end;

      try
        U.ExecuteSQL(Format('update labvol set exp_dh = localtimestamp where recno = %d',
          [StrToInt(edCodLido.Text)]));

        G.RefreshDataSet(DataSource1.DataSet, True);

        DataSource1.DataSet.Locate('recno', edCodLido.Text, []);
      except
        on E:Exception do
          U.Out.ShowErro(E.Message);
      end;
    finally
      edCodLido.Text := EmptyStr;
      edCodLido.SetFocus;
      Close;
    end;
end;

procedure TLabProcDespachoVol.FormActivate(Sender: TObject);
begin
  inherited;
  Label4.Caption := Format('Destinatário: %s', [LabProcDespacho.IBrwSrccodigo.AsString]);
end;

end.
