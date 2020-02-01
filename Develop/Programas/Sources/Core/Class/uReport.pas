unit uReport;

interface

uses Classes, SysUtils, CCore, frxDesgn, Menus;

type
  TReport = class;

  {Interface de parâmetros}
  IReportParam = interface(ICObject)
    ['{D9DCF046-8124-4701-B8D0-4E1022FA189D}']
    function Execute(Report: TReport):Boolean;
  end;

  {
    Classe que representa o relatório dentro do sistema
  }
  TReport = class(TMenuItem)
  private
    FID: integer;
    FCaption: string;
    FFormParam: IReportParam;
    FFormParamName: String;
    FPrintToPDF: Boolean;
    FPrintToDevice: Boolean;
    FReportName: String;
    FFileName: TFileName;
    procedure SetID(const Value: integer);
    function GetReportFile: TFileName;
    procedure SetCaption(const Value: string);
    function GetFormParam: IReportParam;
    procedure SetFormParamName(const Value: String);
    procedure SetPrintToPDF(const Value: Boolean);
    procedure SetPrintToDevice(const Value: Boolean);
    procedure SetName(const Value: String);
    procedure SetReportName(const Value: String);
    function GetReportName: String;
    procedure SetFileName(const Value: TFileName);
    function GetFileName: TFileName;
  published
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
  published
    property Caption: string read FCaption write SetCaption;
    property FileName: TFileName read GetFileName write SetFileName;
    property FormParam: IReportParam read GetFormParam;
    property FormParamName: String read FFormParamName write SetFormParamName;
    property ID: integer read FID write SetID;
    property PrintToDevice: Boolean read FPrintToDevice write SetPrintToDevice;
    property PrintToPDF: Boolean read FPrintToPDF write SetPrintToPDF;
    property ReportName: String read GetReportName;
    property ReportFileName: TFileName read GetReportFile;
  end;

implementation

uses mcUtils, uIUtils, Forms, uSysReportsParam;

{ TReport }

{
  Retorna o nome do arquivo de relatório
}
constructor TReport.Create(AOwner: TComponent);
begin
  inherited;
  FFormParam := nil;
  FPrintToPDF := False;
  FPrintToDevice := True;
end;

destructor TReport.Destroy;
begin
  FFormParam := nil;
  inherited;
end;

function TReport.GetFileName: TFileName;
begin
  Result := FFileName;

  if Result = EmptyStr then
    Result := ReportName;
end;

function TReport.GetFormParam: IReportParam;
var
  FormClass : TFormClass;
  Form: TForm;
begin
  Result := FFormParam;

  if Assigned(FFormParam) or mcEmpty(FFormParamName) then
    exit;

  FormClass := TFormClass(FindClass(FormParamName));

  if not Assigned(FormClass) then
    exit;

  // Checa se a classe implementa a interface IReportParam
  if Supports(FormClass, IReportParam) then
  begin
    Form := FormClass.Create(Application);
    FFormParam := ((Form as IReportParam));
  end else
    U.Out.ShowErro('A classe %s não implementa a '+
      'interface IReportParam e não pode ser utilizada em conjunto com relatórios.',
      [FormParamName]);


  Result := FFormParam;
end;

{
  Retorna o nome do arquivo com o caminho (path)
}
function TReport.GetReportFile: TFileName;
begin
  Result := U.Path.ReportTemplates + Self.ReportName;
end;

function TReport.GetReportName: String;
begin
  Result :=  'r' + mcStrZero(FID, 5) + '.fr3';    
end;

procedure TReport.Notification(AComponent: TComponent; Operation: TOperation);
begin
  if (AComponent is TForm) and (Operation = opRemove) then
    FFormParam := nil;
  
  inherited;

end;

procedure TReport.SetCaption(const Value: string);
begin
  inherited Caption := Value;
  FCaption := Value;
end;

procedure TReport.SetFileName(const Value: TFileName);
begin
  FFileName := Value;
end;

procedure TReport.SetFormParamName(const Value: String);
begin
  FFormParamName := Value;
end;

procedure TReport.SetID(const Value: integer);
begin
  FID := Value;
end;

procedure TReport.SetName(const Value: String);
begin

end;

procedure TReport.SetPrintToDevice(const Value: Boolean);
begin
  FPrintToDevice := Value;
end;

procedure TReport.SetPrintToPDF(const Value: Boolean);
begin
  FPrintToPDF := Value;
end;

procedure TReport.SetReportName(const Value: String);
begin
  FReportName := Value;
end;

end.
