unit UnitHolidayAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, ToolEdit, DB, ADODB, Buttons;

type
  TFormHolidayAdd = class(TForm)
    Panel2: TPanel;
    bbAddHoliday: TBitBtn;
    bbCancel: TBitBtn;
    ADOTable1: TADOTable;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    deStartHoliday: TDateEdit;
    cbHolidayKind: TComboBox;
    leBasis: TLabeledEdit;
    deEndHoliday: TDateEdit;
    Label4: TLabel;
    ePeriod: TEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHolidayAdd: TFormHolidayAdd;

implementation
uses UnitDataModule;
{$R *.dfm}

procedure TFormHolidayAdd.FormCreate(Sender: TObject);
var
 i: integer;
 StrTmp: string;
begin
  ADOTable1.Close;
  ADOTable1.TableName:='HolidayKind';
  ADOTable1.Open;
  for i:=1 to ADOTable1.RecordCount do
  begin
   cbHolidayKind.Items.Add(ADOTable1.fieldbyname('HolidayKind').AsString);
   ADOTable1.Next;
  end;

end;

end.
