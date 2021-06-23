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
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;

    class function New: TReport; overload;
    class function New(AOwner: TComponent): TReport; overload;

    function Caption: string; overload;
    function Caption(AValue: string): TReport; overload;
    function FileName: TFileName; overload;
    function FileName(AValue: TFileName): TReport; overload;
    function FormParam: IReportParam;
    function FormParamName: String; overload;
    function FormParamName(AValue: String): TReport; overload;
    function ID: Integer; overload;
    function ID(AValue: Integer): TReport; overload;
    function PrintToDevice: Boolean; overload;
    function PrintToDevice(AValue: Boolean): TReport; overload;
    function PrintToPDF: Boolean; overload;
    function PrintToPDF(AValue: Boolean): TReport; overload;
    function ReportName: string;
    function ReportFileName: TFileName;
  end;

implementation

uses mcUtils, uIUtils, Forms, uSysReportsParam;

{ TReport }

{
  Retorna o nome do arquivo de relatório
}
function TReport.Caption: string;
begin
  Result := FCaption;
end;

function TReport.Caption(AValue: string): TReport;
begin
  Result := Self;
  inherited Caption := AValue;
  FCaption := AValue;
end;

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

function TReport.FileName: TFileName;
begin
  Result := FFileName;

  if Result = EmptyStr then
    Result := ReportName;
end;

function TReport.FileName(AValue: TFileName): TReport;
begin
  Result := Self;
  FFileName := AValue;
end;

function TReport.FormParam: IReportParam;
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

function TReport.FormParamName: String;
begin
  Result := FFormParamName;
end;

function TReport.FormParamName(AValue: String): TReport;
begin
  Result := Self;
  FFormParamName := AValue;
end;

function TReport.ID: Integer;
begin
  Result := FID;
end;

function TReport.ID(AValue: Integer): TReport;
begin
  Result := Self;
  FID := AValue;
end;

class function TReport.New(AOwner: TComponent): TReport;
begin
  Result := TReport.Create(AOwner);
end;

class function TReport.New: TReport;
begin
  Result := TReport.New(nil);
end;

procedure TReport.Notification(AComponent: TComponent; Operation: TOperation);
begin
  if (AComponent is TForm) and (Operation = opRemove) then
    FFormParam := nil;

  inherited;

end;

function TReport.PrintToDevice: Boolean;
begin
  Result := FPrintToDevice;
end;

function TReport.PrintToDevice(AValue: Boolean): TReport;
begin
  Result := Self;
  FPrintToDevice := AValue;
end;

function TReport.PrintToPDF(AValue: Boolean): TReport;
begin
  Result := Self;
  FPrintToPDF := AValue;
end;

function TReport.PrintToPDF: Boolean;
begin
  Result := FPrintToPDF;
end;

function TReport.ReportFileName: TFileName;
begin
  Result := U.Path.ReportTemplates + Self.ReportName;  
end;

function TReport.ReportName: string;
begin
  Result :=  'r' + mcStrZero(FID, 5) + '.fr3';
end;

end.
