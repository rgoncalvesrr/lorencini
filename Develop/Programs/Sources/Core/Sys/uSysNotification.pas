unit uSysNotification;

interface

uses
  Contnrs;

type
  TNotificationError = class
  private
    FContext: string;
    FMessage: string;
  public
    constructor Create(const AContext, AMessage: string);
    
    property Message: string read FMessage;
    property Context: string read FContext;
  end;

  TNotification = class
  private
    FErrors: TObjectList;
  public
    destructor Destroy; override; 

    procedure Add(AnError: TNotificationError);
    function HasErrors: Boolean;
  end;


implementation

uses
  SysUtils;

{ TNotificationError }

constructor TNotificationError.Create(const AContext, AMessage: string);
begin
  FContext := AContext;
  FMessage := AMessage;
end;

{ TNotification }

procedure TNotification.Add(AnError: TNotificationError);
begin
  FErrors.Add(AnError);
end;

destructor TNotification.Destroy;
begin
  FreeAndNil(FErrors);
  inherited;
end;

function TNotification.HasErrors: Boolean;
begin
  Result := FErrors.Count > 0;
end;

end.
