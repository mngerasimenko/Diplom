unit UnitFamilyAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, RXDBCtrl, StdCtrls, Mask, ToolEdit, Buttons, ExtCtrls;

type
  TFormFamilyAdd = class(TForm)
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    eFIO: TEdit;
    deBirthDay: TDateEdit;
    cbFamilyKind: TComboBox;
    Panel2: TPanel;
    bbAddFamily: TBitBtn;
    bbCancel: TBitBtn;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FormFamilyAdd: TFormFamilyAdd;

implementation
  uses UnitDataModule;
{$R *.dfm}

procedure TFormFamilyAdd.FormShow(Sender: TObject);
var
  i: integer;
begin
  ADOTable1.Close;
  ADOTable1.TableName:='FamilyKind';
  ADOTable1.Open;
  for i:=1 to ADOTable1.RecordCount do
  begin
   cbFamilyKind.Items.Add(ADOTable1.fieldbyname('FamilyKind').AsString);
   ADOTable1.RecNo:=i+1;
  end;
end;

end.
