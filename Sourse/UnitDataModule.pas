unit UnitDataModule;

interface

uses
  SysUtils, Classes, DB, ADODB, Forms;

type
  TDataModule1 = class(TDataModule)
    ADOConnection: TADOConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    bnIsTrans: boolean;
    procedure BegTrans();
    procedure ComTrans();
    procedure RolTrans();
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation
 uses MainUnit;
{$R *.dfm}

procedure TDataModule1.DataModuleCreate(Sender: TObject);
var
ConStr: string;
BdPath: string;
begin
  bnIsTrans:=false;
  ConStr:='Provider=Microsoft.Jet.OLEDB.4.0;Data Source=';
  BdPath:=ExtractFilePath(Application.ExeName);
  ConStr:=ConStr + BdPath + 'Ok.mdb;' + 'Persist Security Info=False;';
  ADOConnection.Connected:=False;
  AdoConnection.ConnectionString:=ConStr;
  try
     AdoConnection.Open;
  except
     Application.MessageBox('Не найден файл Базы Данных!','Ошибка!!!');
     Application.Terminate;
  end;
end;

procedure TDataModule1.BegTrans();
begin
 if not bnIsTrans then
 begin
  bnIsTrans:=True;
  ADOConnection.BeginTrans;
 end;
end;

procedure TDataModule1.ComTrans();
begin
 if bnIsTrans then
 begin
  bnIsTrans:=False;
  ADOConnection.CommitTrans;
 end;
end;

procedure TDataModule1.RolTrans();
begin
 if bnIsTrans then
 begin
  bnIsTrans:=False;
  ADOConnection.RollbackTrans;
 end; 
end;


end.
