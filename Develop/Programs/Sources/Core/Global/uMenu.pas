unit uMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, ExtCtrls, Buttons,
  ActnList, Menus, ComCtrls, ToolWin, db, uFrameData, JvExStdCtrls, JvCombobox, JvColorCombo, JvExControls, 
  zdataset, uCEFWinControl, uCEFLinkedWinControlBase, uCEFChromiumWindow, 
  uCEFApplication;

type
  TMain = class(TForm)
    Timer1: TTimer;
    ActionList1: TActionList;
    MainMenu1: TMainMenu;
    actRunTime: TActionList;
    StatusBar1: TStatusBar;
    actClose: TAction;
    actChangePass: TAction;
    Action1: TAction;
    actVersion: TAction;
    actSysDump: TAction;
    ControlBar1: TControlBar;
    ToolBar2: TToolBar;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton1: TToolButton;
    actFichaFinDesp: TAction;
    pmRole: TPopupMenu;
    tbRole: TToolButton;
    ToolButton2: TToolButton;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure actChangePassExecute(Sender: TObject);
    procedure actVersionExecute(Sender: TObject);
    procedure actSysDumpExecute(Sender: TObject);
    procedure actFichaFinDespExecute(Sender: TObject);
  private
    fLoad: Boolean;
    fDsMenu: TZReadOnlyQuery;
    fMenu: TMenuItem;
    fslForms: TStringList;
    fslFormsVisible: TStringList;
    function LoadItem(ParentMenuItem: TMenuItem; ParentMenu, Level: Integer): Integer;
    procedure MenuExecute(Sender: TObject);
    procedure ReportExecute(Sender: TObject);
    procedure RealignBar;
    // Permite ou não a execução dos formulários
    procedure BeforeShowForm(Sender: TObject; FormClass: TFormClass;
      var AllowShow: Boolean);
  public
    { Public declarations }
    procedure LoadMenu;
    procedure UnLoadMenu;
    procedure LoadRoles;
    procedure OnChangeRole(Sender: TObject);
  end;

var
  Main: TMain;
  i: Integer;

implementation

uses
  uFuncoes, uIUtils, mcUtils, uSysSecurityChangePass, uSysVersions, uVendedores, uDM,
  uReceber, uPagar, uMovtoBancario, uSysReports, uIDefReport, uNFS, uSysDump, uReport, uDMReport, frxClass, uResources,
  uFichaFinPos, uFichaFinDespM, uHelpers;

{$R *.dfm}

procedure TMain.FormShow(Sender: TObject);
begin
  {Carrega imagem de fundo}
//  if FileExists(U.Path.System+'fundo.jpg') then
//    Image1.Picture.LoadFromFile(U.Path.System+'fundo.jpg');

  Caption:= 'Lorencini Brasil. [' + GetBuildInfo(Application.ExeName) + ']';

  with StatusBar1 do
  begin
    Panels[1].Text:= U.Info.Name;
    Panels[3].Text:= FormatDateTime('dd/mm/yyyy hh:nn:ss', Now);
    Panels[5].Text:= U.Data.HostName;
    Panels[7].Text:= U.Data.Database;
  end;

  //RealignBar;

  {Carrega menus}
  LoadMenu;
  LoadRoles;
  WindowState := wsMaximized;
end;

procedure TMain.Timer1Timer(Sender: TObject);
begin
  with StatusBar1 do
    Panels[3].Text:= FormatDateTime('dd/mm/yyyy hh:nn:ss', Now);
end;

procedure TMain.FormActivate(Sender: TObject);
begin
  if fLoad then
  begin
    Top:= 0;
    Left:= 0;
    Width:= Screen.WorkAreaWidth;
    Height:= Screen.WorkAreaHeight;
    fLoad:= False;
  end;
end;

procedure TMain.LoadMenu;
var
  iRecno: longint;
  fFixMenu: TMenuItem;
begin
  {Limpa menus}
  UnLoadMenu;

  fDsMenu:= U.Query;
  with fDsMenu do
  try
    SQL.Text:=
    'select id, descri, level, parent, form, order_, report, rdescri, rform, recno '+
      'from vmenus '+
     'order by level, parent, order_ ';

    Open;

    while FieldByName('parent').IsNull and not Eof do
    begin
      {Cria menu raiz}
      fMenu:= TMenuItem.Create(self);
      fMenu.Caption:= FieldByName('descri').AsString;

      {Cria menus filhos}
      iRecno:= RecNo;
      LoadItem(fMenu, FieldByName('id').AsInteger, FieldByName('level').AsInteger);
      RecNo:= iRecno;

      {Adiciona menus estáticos}
      if RecNo = 1 then
      begin
        fFixMenu:= TMenuItem.Create(self);
        fFixMenu.Caption:= '-';
        fMenu.Add(fFixMenu);

        fFixMenu:= TMenuItem.Create(self);
        fFixMenu.Action:= actClose;
        fMenu.Add(fFixMenu);
      end;

      if fMenu.Count > 0 then
        MainMenu1.Items.Add(fMenu)
      else
        FreeAndNil(fMenu);

      Next;
    end;
  finally
    Close;
  end;
end;

procedure TMain.LoadRoles;
var
  oItem: TMenuItem;
begin
  with pmRole, U.Data.Query do
  try
    Items.Clear;
    
    SQL.Text :=
    'select r.recno, r.descri '+
      'from sys_roles r '+
           'join sys_rlusers u '+
           'on u.account = :account '+
        'and u.role = r.recno '+
        'and u.enabled ';

    ParamByName('account').AsInteger := U.Info.Account;

    Open;

    while not EOF do
    begin
      oItem := TMenuItem.Create(Self);
      oItem.Caption := FieldByName('descri').AsString;
      oItem.Tag := FieldByName('recno').AsInteger;
      oItem.OnClick := OnChangeRole;
      oItem.GroupIndex := 23;
      oItem.AutoCheck := True;

      Items.Add(oItem);

      if oItem.Tag = U.Info.Role then
      begin
        oItem.Checked := True;
        tbRole.Caption := 'Papel:' + oItem.Caption;
      end;

      Next;
    end;    
  finally
    Close;

    tbRole.Enabled := Items.Count > 1;
  end;
end;

function TMain.LoadItem(ParentMenuItem: TMenuItem; ParentMenu, Level: Integer): Integer;
var
  fItem: TMenuItem;
  fAct: TAction;
  fRpt: TReport;
  iRecno: integer;
  iCount: Integer;
  iFilhos: Integer;
begin
  iCount := 0;
  fDsMenu.Locate('parent', ParentMenu, []);

  while (fDsMenu.FieldByName('parent').AsInteger = ParentMenu) and
      (fDsMenu.FieldByName('level').AsInteger = level+1) and not fDsMenu.Eof do
  begin
    {Cria item de menu}
    if not fDsMenu.FieldByName('report').IsNull then
    begin
      fRpt := TReport.New(Self).ID(fDsMenu.FieldByName('report').AsInteger);
      
      if fDsMenu.FieldByName('rdescri').IsNull then
        fRpt.Caption(fDsMenu.FieldByName('descri').AsString)
      else
        fRpt.Caption(fDsMenu.FieldByName('rdescri').AsString);

      fRpt.FormParamName(fDsMenu.FieldByName('rform').AsString);
      fRpt.OnClick := ReportExecute;

      fItem := fRpt;
      
      iCount := iCount + 1;
    end
    else
      fItem:= TMenuItem.Create(self);

    ParentMenuItem.Add(fItem);

    {Configura o restante das propriedades do item de menu atual}
    if fDsMenu.FieldByName('form').IsNull and
      fDsMenu.FieldByName('report').IsNull then
    begin
      {Etiqueta do menu}
      fItem.Caption:= fDsMenu.FieldByName('descri').AsString;

      {Cria menus filhos}
      iRecno:= fDsMenu.RecNo;
      iFilhos := LoadItem(fItem, fDsMenu.FieldByName('id').AsInteger, fDsMenu.FieldByName('level').AsInteger);
      fDsMenu.RecNo:= iRecno;
    end
    else if not fDsMenu.FieldByName('form').IsNull then
    begin
      {Adiciona nome da classe do formulário a ser executado na lista}
      fslForms.Add(fDsMenu.FieldByName('form').AsString);

      {Cria ação}
      fAct:= TAction.Create(Self);
      fAct.ActionList:= actRunTime;
      fAct.Caption:= fDsMenu.FieldByName('descri').AsString;
      fAct.Tag:= fslForms.Count - 1;
      fAct.OnExecute:= MenuExecute;

      fItem.Action:= fAct;

      iCount := iCount + 1;
    end;

    if (iFilhos = 0) and (iCount = 0) then
      FreeAndNil(fItem);

    fDsMenu.Next;
  end;
  
  Result := iCount;
end;

procedure TMain.MenuExecute(Sender: TObject);
var
  AForm: string;
begin
  AForm := fslForms[TMenuItem(Sender).Tag];
  U.ShowForm(AForm);
end;

procedure TMain.OnChangeRole(Sender: TObject);
var
  itn: TMenuItem;
begin
  for itn in pmRole.Items do
    itn.Checked := False;

  with TMenuItem(Sender) do
  try
    Checked := True;
    tbRole.Caption := 'Papel: ' + Caption;

    U.ExecuteSQL('update sys_sessions set role = %d where session = sys_session()',
      [Tag]);
  finally
    LoadMenu;
  end;
end;

procedure TMain.UnLoadMenu;
var
  i: integer;
begin
  MainMenu1.Items.Clear;
  fslForms.Clear;
  fslFormsVisible.Clear;
end;

procedure TMain.FormDestroy(Sender: TObject);
begin
  {Grava transações pendentes}
  U.Data.Commit;

  UnLoadMenu;
  FreeAndNil(fslForms);
  FreeAndNil(fslFormsVisible);
  Timer1.Enabled:= False;

  inherited;
end;

procedure TMain.FormResize(Sender: TObject);
begin  
  RealignBar;
end;

procedure TMain.FormCreate(Sender: TObject);
begin
  fLoad:= True;
  fslForms:= TStringList.Create;
  fslFormsVisible:= TStringList.Create;
  U.Out.OnBeforeShowForm:= BeforeShowForm;
  Timer1.Enabled:= True;
end;

procedure TMain.RealignBar;
var
  i: integer;
begin
  ToolBar2.Width := ControlBar1.ClientWidth;
  with StatusBar1 do
    for i:= 0 to Panels.Count - 1 do
      Panels[i].Width:= Canvas.TextWidth(Panels[i].Text) + 10;
end;

procedure TMain.ReportExecute(Sender: TObject);
var
  fExecute: Boolean;
  Rpt: TReport;
begin
  inherited;
  Rpt := TReport(Sender);
  with DMReport do
  begin
    fExecute := true;
    ReportBase.LoadFromFile(Rpt.FileName);

    if Rpt.FormParam <> nil then
       fExecute := Rpt.FormParam.Execute(Rpt);

    if fExecute then
    begin
      // Configura o nome do usuário
      if Assigned(ReportBase.FindObject('username')) then
        TfrxMemoView(ReportBase.FindObject('username')).Text := 'Usuário: ' +
          U.Info.Name;

      ReportBase.ShowReport;
    end;
  end;
end;

procedure TMain.actChangePassExecute(Sender: TObject);
begin
  Application.CreateForm(TSysSecurityChangePass,SysSecurityChangePass);
  SysSecurityChangePass.ShowModal;
end;

procedure TMain.actCloseExecute(Sender: TObject);
begin
  Close;
end;

procedure TMain.actFichaFinDespExecute(Sender: TObject);
begin
  FichaFinDespM := TFichaFinDespM.Create(nil);
  try
    FichaFinDespM.ShowModal;
  finally
    FreeAndNil(FichaFinDespM);
  end;
end;

procedure TMain.actSysDumpExecute(Sender: TObject);
begin
  SysDump := TSysDump.Create(Application);
  try
    SysDump.ShowModal;
  finally
    FreeAndNil(SysDump);
  end;
end;

procedure TMain.actVersionExecute(Sender: TObject);
begin
  Application.CreateForm(TSysVersions, SysVersions);
  SysVersions.ShowModal;
  SysVersions.Free;
end;

procedure TMain.BeforeShowForm(Sender: TObject; FormClass: TFormClass;
  var AllowShow: Boolean);
begin
  with U.Query do
  try
    SQL.Text :=
    'select sys_access(:perm)';

    ParamByName('perm').AsString := LowerCase(Sender.ClassName);

    Open;

    AllowShow := Fields[0].AsBoolean;

    if not AllowShow then
      U.Out.ShowErro('Você não tem autorização para acessar este recurso do sistema.');
  finally
    Close;
  end;
end;

end.
