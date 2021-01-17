unit Unit_Pass;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ComCtrls, MPlayer;

type
  TForm_Pass = class(TForm)
    Edit_Pass: TEdit;
    Label1: TLabel;
    Button_Cansel: TSpeedButton;
    Button_OK: TSpeedButton;
    procedure Button_ExitClick(Sender: TObject);
    procedure Button_OKClick(Sender: TObject);
    procedure Edit_PassKeyPress(Sender: TObject; var Key: Char);
    function Save_Pass(s:string):string;
    procedure Button_CanselClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure OK;
    procedure Exit_Close;
  end;

var
  Form_Pass: TForm_Pass;

implementation
uses MainUnit, IniFiles;
{$R *.dfm}

procedure TForm_Pass.Button_ExitClick(Sender: TObject);
begin
 Exit_Close;
end;

procedure TForm_Pass.Button_OKClick(Sender: TObject);
begin
 OK;
end;

procedure TForm_Pass.Edit_PassKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then OK
 else
  if Key = #27 then Exit_Close;
end;

procedure TForm_Pass.Exit_Close;
begin
  Close;
end;

procedure TForm_Pass.OK;
var
 IniFile:TIniFile;
 s:string;
begin
 IniFile:=TIniFile.Create('DATA\OK.ini');
 s:= IniFile.ReadString('MAIN','PASSWORD','');
 IniFile.Destroy;
 if Save_Pass(Edit_Pass.Text) = s then
 begin
  Hide;
  FormMain.ShowModal;
  Close;
 end
 else ShowMessage('Доступ ограничен');
end;

function TForm_Pass.Save_Pass(s: string): string;
var i:integer;
    s1:string;
begin
  s1:='';
  if s <> '' then
   for i:=1 to Length(s) do
    s1:=s1+IntToStr(ord(s[i])*2);
  Save_Pass:=s1;
end;

procedure TForm_Pass.Button_CanselClick(Sender: TObject);
begin
 Close;
end;

end.
