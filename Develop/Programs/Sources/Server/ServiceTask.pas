unit ServiceTask;

interface

uses ServiceBase;

type
  TServiceTaskStatus = (tsWaiting, tsRunning, tsFail, tsSuccess); 

  TServiceTask = class(TServiceBase)
  private
    FRoutine: string;
    FScheduledTo: TDateTime;
    procedure TaskStatus(const Status: TServiceTaskStatus; const MsgLog: string);
  protected
    procedure DoExec; override;
  public
    property Routine: string read FRoutine write FRoutine;
    property ScheduledTo: TDateTime read FScheduledTo write FScheduledTo;
  end;
  
implementation

uses
  SysUtils, ZDataSet;

{ TServiceTask }

procedure TServiceTask.DoExec;
var
  status : TServiceTaskStatus;
  functionName: string;
  message: string;
begin
  functionName := Format('%s()', [Routine]);
  status := tsRunning;
  message := Format('Executando rotina %s agendata para %s',
    [functionName, FormatDateTime('dd/mm/yyyy hh:nn', ScheduledTo)]);

  TaskStatus(status, message);

  with Qry('select %s', [functionName]) do
  try
    try
      ExecSQL;
      status := tsSuccess;
      message := Format('Rotina %s executada com sucesso!', [functionName]);
    except
      on E:Exception do
      begin
        status := tsFail;
        message := Format('Rotina %s não executada. Erro: %s!', [functionName, E.Message]);
      end;
    end;

    TaskStatus(status, message);

  finally
    Close;
  end;
end;

procedure TServiceTask.TaskStatus(const Status: TServiceTaskStatus; const MsgLog: string);
begin
  with Qry('update sys_schedules set status = :status where recno = :recno') do
  begin
    ParamByName('status').AsInteger := Ord(Status);
    ParamByName('recno').AsInteger := Recno_;
    ExecSQL;
  end;

  Log('%s | %s', [FormatDateTime('dd/mm/yyyy hh:nn', Now), MsgLog]);
end;

end.
