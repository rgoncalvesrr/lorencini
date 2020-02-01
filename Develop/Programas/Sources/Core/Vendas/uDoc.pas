unit uDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, Grids, DBGrids, StdCtrls, Mask,
  Buttons, ComCtrls, ExtCtrls, ToolWin, DBCtrls, ZSequence, uFrameImage;

type
  TDoc = class(TIDefBrowse)
    IBrwSrcrecno: TIntegerField;
    IBrwSrctitulo: TStringField;
    IBrwSrcordem: TIntegerField;
    IBrwSrc_tabela: TIntegerField;
    IBrwSrc_recno: TIntegerField;
    ZSequence1: TZSequence;
    pmNovo: TPopupMenu;
    Visualizar1: TMenuItem;
    actNewLib: TAction;
    Biblioteca1: TMenuItem;
    Splitter1: TSplitter;
    IBrwSrcimg1: TBlobField;
    IBrwSrcimg2: TBlobField;
    Panel6: TPanel;
    Splitter2: TSplitter;
    GroupBox1: TGroupBox;
    FrameImage1: TFrameImage;
    GroupBox2: TGroupBox;
    FrameImage2: TFrameImage;
    DBRichEdit1: TDBRichEdit;
    Splitter3: TSplitter;
    GroupBox3: TGroupBox;
    IBrwSrcconteudo: TBlobField;
    actRecreate: TAction;
    ControlBar1: TControlBar;
    ToolBar2: TToolBar;
    ToolButton13: TToolButton;
    procedure IBrwSrcAfterInsert(DataSet: TDataSet);
    procedure actNewLibExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure actRecreateExecute(Sender: TObject);
  private
    F_Recno: Integer;
    F_Table: string;
    procedure Set_Recno(const Value: Integer);
    procedure Set_Table(const Value: string);
  protected
    procedure OnEdit; override;
    procedure RefreshCtrl; override;
  public
    property _Table: string read F_Table write Set_Table;
    property _Recno: Integer read F_Recno write Set_Recno;
  end;

var
  Doc: TDoc;

implementation

uses uDM, uIUtils, uDocM, uDocSelBiblio, uResources;

{$R *.dfm}

{ TDoc }

procedure TDoc.actNewLibExecute(Sender: TObject);
begin
  DocSelBiblio := TDocSelBiblio.Create(nil);
  try
    DocSelBiblio._Table := _Table;
    DocSelBiblio._Recno := _Recno;
    DocSelBiblio.ShowModal;
    if DocSelBiblio.Execute then
      G.RefreshDataSet(IBrwSrc);
  finally
    FreeAndNil(DocSelBiblio);
  end;
end;

procedure TDoc.actRecreateExecute(Sender: TObject);
var
  iGrupo: Integer;
begin


  // Obtendo o código do tipo de documento
  with U.Data.Query do
  try
    SQL.Text := Format(
      'select grupo from %s where recno = %d',
      [F_Table, F_Recno]);

    Open;

    if IsEmpty then
    begin
      U.Out.ShowErro('Não foi possível determinar o tipo de documento! O documento não foi alterado.');
      Exit;
    end;

    iGrupo := Fields[0].AsInteger;
  finally
    Close;
  end;

  // Verificando se existe documento criado
  if not IBrwSrc.IsEmpty and not U.Out.ConfWarn('Recriar o documento fará com que os dados já editados sejam PERDIDOS! Continuar?') then
    Exit;
    
  // Excluindo documento anterior
  U.Data.ExecSQL('delete from docs where _tabela = %d and _recno = %d',
    [U.Data.TableIdFromName(F_Table), F_Recno]);


  U.Data.ExecSQL('select cpDocParaDoc(%d, %d, %d, %d);',
    [U.Data.TableIdFromName('orca_grupo'), iGrupo,
     U.Data.TableIdFromName(F_Table), F_Recno]);

  G.RefreshDataSet(IBrwSrc);
  RefreshCtrl;
end;

procedure TDoc.FormResize(Sender: TObject);
begin
  inherited;

  DBGrid1.Width := Round(DBGrid1.Parent.ClientWidth * 0.2);
  GroupBox3.Height := Round(GroupBox3.Parent.ClientHeight * 0.6);
  GroupBox1.Width := GroupBox1.Parent.ClientWidth div 2;
  //Panel6.Height := Round(Panel6.Parent.ClientHeight * 0.6);
end;

procedure TDoc.IBrwSrcAfterInsert(DataSet: TDataSet);
begin
  inherited;
  IBrwSrc_tabela.AsInteger := U.Data.TableIdFromName(_Table);
  IBrwSrc_recno.AsInteger := _Recno;
end;

procedure TDoc.OnEdit;
begin
  DocM := TDocM.Create(nil);
  try
    DocM.DataSet := IBrwSrc;
    DocM.ShowModal;
  finally
    FreeAndNil(DocM);
  end;

end;

procedure TDoc.RefreshCtrl;
begin
  inherited;
  
  if not Assigned(DataSet) then
    Exit;

  actNewLib.Enabled := actNew.Enabled;
  actRecreate.Enabled := (F_Table = 'cota') or (F_Table = 'tb_orcamentos')
    or (F_Table = 'pedido');
end;

procedure TDoc.Set_Recno(const Value: Integer);
begin
  F_Recno := Value;
  IBrwSrc.ParamByName('_recno').AsInteger := Value;
end;

procedure TDoc.Set_Table(const Value: string);
begin
  F_Table := Value;
  IBrwSrc.ParamByName('_tabela').AsInteger := U.Data.TableIdFromName(Value);
end;

initialization
  RegisterClass(TDoc);

finalization
  UnRegisterClass(TDoc);

end.
