unit UnitPurposeAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, ToolEdit, DB, ADODB;

type
  TFormPurposeAdd = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    deDatePurpose: TDateEdit;
    cbOtdel: TComboBox;
    Panel2: TPanel;
    bbAddPurpose: TBitBtn;
    bbCancel: TBitBtn;
    Label1: TLabel;
    cbTrade: TComboBox;
    leBasis: TLabeledEdit;
    ADOTable1: TADOTable;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPurposeAdd: TFormPurposeAdd;

implementation
uses UnitDataModule;

{$R *.dfm}

procedure TFormPurposeAdd.FormCreate(Sender: TObject);
var
 i: integer;
 StrTmp: string;
begin
  ADOTable1.Close;
  ADOTable1.TableName:='Otdel';
  ADOTable1.Open;
  ADOTable1.Next;
  for i:=2 to ADOTable1.RecordCount do
  begin
   cbOtdel.Items.Add(ADOTable1.fieldbyname('Otdel').AsString);
   ADOTable1.Next;
  end;

  ADOTable1.Close;
  ADOTable1.TableName:='Trade';
  ADOTable1.Open;
  ADOTable1.Next;
  for i:=2 to ADOTable1.RecordCount do
  begin
   strtmp:=ADOTable1.fieldbyname('Trade').AsString+
           '-'+ADOTable1.fieldbyname('Oklad').AsString;
   cbTrade.Items.Add(StrTmp);
   ADOTable1.Next;
  end;

end;

end.
