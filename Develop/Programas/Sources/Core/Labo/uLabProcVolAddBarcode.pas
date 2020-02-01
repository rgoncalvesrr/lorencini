unit uLabProcVolAddBarcode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIForm, ActnList, ExtCtrls, StdCtrls, Mask, DBCtrls, Grids, DBGrids,
  ComCtrls, ACBrBarCode, DB;

type
  TLabProcVolAddBarcode = class(TIForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Panel1: TPanel;
    Button1: TButton;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    PageControl3: TPageControl;
    TabSheet3: TTabSheet;
    DBGrid4: TDBGrid;
    lbMsg: TLabel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    ACBrBarCode1: TACBrBarCode;
    GroupBox4: TGroupBox;
    ACBrBarCode2: TACBrBarCode;
    DBText2: TDBText;
    Label20: TLabel;
    Shape1: TShape;
    Label25: TLabel;
    DBText5: TDBText;
    DataSource1: TDataSource;
    Label4: TLabel;
    Label9: TLabel;
    edCodLido: TMaskEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    procedure edCodLidoExit(Sender: TObject);
    procedure DBEdit5Change(Sender: TObject);
    procedure DataSource1StateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LabProcVolAddBarcode: TLabProcVolAddBarcode;

implementation

uses uLabProcVol, uIUtils, MaskUtils;

{$R *.dfm}

procedure TLabProcVolAddBarcode.DataSource1StateChange(Sender: TObject);
begin
  inherited;
  ACBrBarCode2.Text := FormatMaskText('00000000000;0;',
    DataSource1.DataSet.FieldByName('etiq_proc').AsString);
  with LabProcVol do
  begin
    Label4.Caption := Format('Origem: %s Destino %s', [zRemrecno.AsString, zRemcodigo.AsString]);
    Label9.Caption := Format('Tipo: %s', [zVolEtiqtipo.DisplayText]);
  end;
end;

procedure TLabProcVolAddBarcode.DBEdit5Change(Sender: TObject);
begin
  inherited;
  ACBrBarCode1.Text := DBEdit5.Field.AsString;
end;

procedure TLabProcVolAddBarcode.edCodLidoExit(Sender: TObject);
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
      'select e.volume, e.recno '+
        'from labprocxequip e '+
             'join labamostras a '+
               'on a.recno = e.amostra '+
              'and a.comodato = :comodato '+
       'where e.labproc_recno = :remessa';

      ParamByName('remessa').AsInteger := DBEdit1.Field.AsInteger;
      ParamByName('comodato').AsInteger := StrToInt(edCodLido.Text);

      Open;

      if IsEmpty then
      begin
        Mensagem(Format('A etiqueta %s não pertence a remessa %d!',
          [FormatMaskText('000.000.000.000;0;', edCodLido.Text),
           DBEdit1.Field.AsInteger]));
        Exit;
      end;

      if not Fields[0].IsNull then
      begin
        Mensagem(Format('A etiqueta %s já está no volume %d!',
          [FormatMaskText('000.000.000.000;0;', edCodLido.Text),
           Fields[0].AsInteger]));
        Exit;
      end;

      try
        U.ExecuteSQL(Format('update labprocxequip set volume = %d where recno = %d',
          [DBEdit4.Field.AsInteger, Fields[1].AsInteger]));

        G.RefreshDataSet(LabProcVol.zVolumes, True);

        LabProcVol.zVolEtiq.Locate('etiq_proc', edCodLido.Text, []);
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

procedure TLabProcVolAddBarcode.FormShow(Sender: TObject);
begin
  inherited;
  DataSource1.DataSet.Last;
end;

end.
