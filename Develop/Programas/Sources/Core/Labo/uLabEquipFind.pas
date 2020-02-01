unit uLabEquipFind;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uiwizard, ActnList, StdCtrls, ExtCtrls, DB, ZAbstractRODataset,
  ZDataset, uIUtils;

type
  TLabEquipFind = class(TIWizard)
    Label18: TLabel;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    ComboBox2: TComboBox;
    Equipamentos: TZReadOnlyQuery;
    DataSource1: TDataSource;
    actExecutar: TAction;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FCBClientes: TComboList;
  public
    { Public declarations }
  end;

var
  LabEquipFind: TLabEquipFind;

implementation

{$R *.dfm}

procedure TLabEquipFind.FormCreate(Sender: TObject);
begin
  inherited;
  LabEquipFind := Self;
  
  FCBClientes := TComboList.Create(ComboBox1, 'tbclientes', 'codigo', 'nome_chave');

  ComboBox1.Items.Insert(0, '(Todos)');
  ComboBox1.ItemIndex := 0;
end;

end.
