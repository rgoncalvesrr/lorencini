unit uLabRecipientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uIBrowse, ZSqlUpdate, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ActnList, ComCtrls, ToolWin,
  ExtCtrls, Grids, DBGrids, StdCtrls, Mask, Buttons, ZSequence;

type
  TLabRecipientes = class(TIDefBrowse)
    IBrwSrcdescri: TStringField;
    IBrwSrcrecno: TLargeintField;
    sIbrwSrc: TZSequence;
    IBrwSrccapacidade: TSmallintField;
    IBrwSrcstatus: TSmallintField;
    IBrwSrctipo: TStringField;
    procedure IBrwSrctipoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure IBrwSrctipoSetText(Sender: TField; const Text: string);
    procedure IBrwSrcstatusGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure IBrwSrcstatusSetText(Sender: TField; const Text: string);
  private
    procedure OnEdit; override;
  public
    { Public declarations }
  end;

var
  LabRecipientes: TLabRecipientes;

implementation

{$R *.dfm}

uses
  uDM, uLabRecipientesM;

{ TLabRecipientes }

procedure TLabRecipientes.IBrwSrcstatusGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  case Sender.AsInteger of
    1: Text := 'Ativo';
    2: Text := 'Inativo';
  end;
end;

procedure TLabRecipientes.IBrwSrcstatusSetText(Sender: TField; const Text: string);
begin
  inherited;
  if Length(Text) = 0 then
    Exit;

  case Text[1] of
    'A': Sender.AsInteger := 1;
    'I': Sender.AsInteger := 2;
  end;
end;

procedure TLabRecipientes.IBrwSrctipoGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;

  if Length(Sender.AsString) = 0 then
    Exit;

  case Sender.AsString[1] of
    'f': Text := 'Frasco';
    's': Text := 'Seringa';
  end;
end;

procedure TLabRecipientes.IBrwSrctipoSetText(Sender: TField; const Text: string);
begin
  inherited;
  case Text[1] of
    'F': Sender.AsString := 'frasco';
    'S': Sender.AsString := 'seringa';
  end;

end;

procedure TLabRecipientes.OnEdit;
begin
  LabRecipientesM := TLabRecipientesM.Create(nil);
  try
    LabRecipientesM.DataSet := IBrwSrc;
    LabRecipientesM.ShowModal;
  finally
    FreeAndNil(LabRecipientesM);
  end;

end;

initialization
  RegisterClass(TLabRecipientes);

finalization
  UnRegisterClass(TLabRecipientes);

end.
