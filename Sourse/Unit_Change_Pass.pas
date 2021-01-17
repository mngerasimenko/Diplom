unit Unit_Change_Pass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm_Change_Pass = class(TForm)
    Edit_New_Pass1: TEdit;
    Label1: TLabel;
    Edit_New_Pass2: TEdit;
    Label2: TLabel;
    Edit_Pass: TEdit;
    Label3: TLabel;
    Button_Cansel: TBitBtn;
    Button_OK: TBitBtn;
    procedure Button_CanselClick(Sender: TObject);
    procedure Button_OKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_Change_Pass: TForm_Change_Pass;

implementation
uses Unit_Pass, IniFiles;
{$R *.dfm}

procedure TForm_Change_Pass.Button_CanselClick(Sender: TObject);
begin
Close;
end;

procedure TForm_Change_Pass.Button_OKClick(Sender: TObject);
var IniFile:TIniFile;
    s:string;
begin
  IniFile:=TIniFile.Create('DATA\OK.ini');
  s:=Inifile.ReadString('MAIN','PASSWORD','');
  IniFile.Destroy;
  if Form_Pass.Save_Pass(Edit_Pass.Text) = s then begin


   if Edit_New_Pass1.Text <> Edit_New_Pass2.Text then
    ShowMessage('Проверьте правильность ввода'+#13+'нового пароля')
   else begin

  IniFile:=TIniFile.Create('DATA\OK.ini');
  Inifile.WriteString('MAIN','PASSWORD',Form_Pass.Save_Pass(Edit_New_Pass1.Text));
  IniFile.Destroy;
  Close;
   end;
end else ShowMessage('В доступе отказано');
end;

end.
