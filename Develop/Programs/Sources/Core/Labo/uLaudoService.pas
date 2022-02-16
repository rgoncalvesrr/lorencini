unit uLaudoService;

interface

uses
  Classes;

type
  TLaudoService = class
  public
    class function HasReportWithIssue: Boolean;
    class procedure ShowReportsWithIssue;
  end;

implementation

uses
  uIUtils, uLabAmostraAssBloq, SysUtils;

{ TLaudoService }

class function TLaudoService.HasReportWithIssue: Boolean;
begin
  with U.Query do
  try
    SQL.Text :=
    'select exists( '+
           'select 1 '+
             'from labamostras_rel r '+
                  'join sys_flags f '+
                    'on f.session = :session '+
                   'and f.table_ = 85 '+
                   'and f.recno = r.recno '+
                  'join labamostras a '+
                    'on a.recno = r.amostra '+
                  'join tbclientes c '+
                    'on c.codigo = a.codigo '+
            'where r.status = 3)';

    ParamByName('session').AsString := U.Info.Session;

    Open;

    Result := Fields[0].AsBoolean;
  finally
    Close;
  end;
end;

class procedure TLaudoService.ShowReportsWithIssue;
  procedure ClearFlags;
  begin
    with U.Query do
    try
      SQL.Text :=
      'delete '+
        'from sys_flags '+
       'where session = :session '+
         'and table_ = 85';

       ParamByName('session').AsString := U.Info.Session;

       ExecSQL;
    finally
      Close;
    end;

  end;
begin
  if not HasReportWithIssue then
    Exit;

  LabAmostraAssBloq := TLabAmostraAssBloq.Create(nil);
  try
    LabAmostraAssBloq.ShowModal;
    ClearFlags;
  finally
    FreeAndNil(LabAmostraAssBloq);
  end;
end;

end.
