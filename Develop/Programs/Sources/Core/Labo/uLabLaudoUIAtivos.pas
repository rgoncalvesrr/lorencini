unit uLabLaudoUIAtivos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIForm, ActnList, ExtCtrls, JvExStdCtrls, JvEdit, StdCtrls,
  uLabLaudoCl, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, CheckLst,
  ComCtrls, Buttons, System.Actions, System.Generics.Collections;

type
  TLabLaudoUIAtivos = class(TIForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edEnsaio: TEdit;
    edNome: TEdit;
    edValor: TJvEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    qTipos: TZQuery;
    qAtivos: TZQuery;
    Panel6: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    CheckListBox1: TCheckListBox;
    qTipostipo: TIntegerField;
    qTiposdescri: TStringField;
    qAtivosid: TIntegerField;
    qAtivosdescri: TMemoField;
    qAtivosativo: TIntegerField;
    BitBtn1: TBitBtn;
    procedure PageControl1Change(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CheckListBox1ClickCheck(Sender: TObject);
    procedure actOkExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FBookMarks: TList<TBookmark>;
    FEnsaio: TEnsaio;
    procedure SetEnsaio(const Value: TEnsaio);
    procedure LoadTabs;
    procedure LoadAtivos;
    procedure UnLoadAtivos;
  public
    { Public declarations }
    property Ensaio: TEnsaio read FEnsaio write SetEnsaio;
  end;

var
  LabLaudoUIAtivos: TLabLaudoUIAtivos;

implementation

uses uDM, uIUtils;

{$R *.dfm}

{ TLabLaudoUIAtivos }

procedure TLabLaudoUIAtivos.actOkExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TLabLaudoUIAtivos.CheckListBox1ClickCheck(Sender: TObject);
begin
  with CheckListBox1 do
  begin
    qAtivos.GotoBookmark(FBookMarks[ItemIndex]);
    if Checked[ItemIndex] then
       U.Data.ExecSQL(
        'insert into labamostras_res_ativos (laudo, relato_recno, ensaio_recno, ativo) '+
                                  'values (%d, %d, %d, %d)',
        [Ensaio.Laudo.Laudo, Ensaio.Laudo.TipoLaudo, Ensaio.Ensaio, qAtivosid.AsInteger])
    else
      U.Data.ExecSQL(
        'delete '+
          'from labamostras_res_ativos '+
         'where laudo = %d '+
           'and relato_recno = %d '+
           'and ensaio_recno = %d '+
           'and ativo = %d ',
        [Ensaio.Laudo.Laudo, Ensaio.Laudo.TipoLaudo,
          Ensaio.Ensaio, qAtivosid.AsInteger]);
  end;
end;

procedure TLabLaudoUIAtivos.FormCreate(Sender: TObject);
begin
  inherited;
  FBookMarks := TList<TBookmark>.Create;
end;

procedure TLabLaudoUIAtivos.FormDestroy(Sender: TObject);
begin
  UnLoadAtivos;
  FBookMarks.Free;
  inherited;
end;

procedure TLabLaudoUIAtivos.LoadAtivos;
var
  oBM: TBookmark;
begin
  qTipos.RecNo := PageControl1.ActivePageIndex + 1;
  
  with CheckListBox1 do
  try
    Items.BeginUpdate;

    UnLoadAtivos;

    with qAtivos do
    begin
      Close;

      ParamByName('relato').AsInteger := FEnsaio.Laudo.TipoLaudo;
      ParamByName('laudo').AsInteger := FEnsaio.Laudo.Laudo;
      ParamByName('ensaio').AsInteger := FEnsaio.Ensaio;
      ParamByName('tipo').AsInteger := qTipostipo.AsInteger;

      Open;

      while not Eof do
      begin
        FBookMarks.Add(GetBookmark);
        Items.Add(Format('%d - %s', [qAtivosid.AsInteger, qAtivosdescri.AsString]));
        Checked[Items.Count - 1] := not qAtivosativo.IsNull;
        Next;
      end;
    end;
  finally
    Items.EndUpdate;
  end;
end;

procedure TLabLaudoUIAtivos.LoadTabs;
var
  oTab: TTabSheet;
begin
  oTab := nil;
  with qTipos do
  begin
    ParamByName('ensaio').AsInteger := FEnsaio.Ensaio;
    Open;

    while not Eof do
    begin
      if Assigned(oTab) then
      begin
        oTab := TTabSheet.Create(Self);
        oTab.PageControl := PageControl1;
        oTab.Parent := PageControl1;
      end else
        oTab := TabSheet1;

      oTab.Caption := qTiposdescri.AsString;

      Next;
    end;    
  end;
end;

procedure TLabLaudoUIAtivos.PageControl1Change(Sender: TObject);
begin
  inherited;
  CheckListBox1.Parent := PageControl1.ActivePage;
  LoadAtivos;  
end;

procedure TLabLaudoUIAtivos.SetEnsaio(const Value: TEnsaio);
begin
  FEnsaio := Value;

  edEnsaio.Clear;
  edNome.Clear;
  edValor.Clear;

  if Assigned(FEnsaio) then
  begin
    edEnsaio.Text := IntToStr(FEnsaio.Ensaio);
    edNome.Text := FEnsaio.Nome;
    edValor.Text :=  FormatFloat(',0.###0', FEnsaio.Valor);

    LoadTabs;
    LoadAtivos;
  end;
end;

procedure TLabLaudoUIAtivos.UnLoadAtivos;
begin
  with CheckListBox1 do
  begin
    for var I := 0 to Items.Count - 1 do
      qAtivos.FreeBookmark(FBookMarks[i]);

    Clear;
  end;
end;

end.
