unit UnitEditField;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls, 
  Buttons, ExtCtrls, UnitEditSpravka;

type
  TfEditField = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    GroupBox1: TGroupBox;
    eEdit: TEdit;
    procedure CancelBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEditField: TfEditField;

implementation

{$R *.dfm}

procedure TfEditField.CancelBtnClick(Sender: TObject);
begin
 close;
end;

procedure TfEditField.FormShow(Sender: TObject);
begin
  eEdit.Text:=FormEditSprav.strSelect;
  eEdit.SetFocus;
end;

end.
