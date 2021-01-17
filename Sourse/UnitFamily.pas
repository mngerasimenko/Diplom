unit UnitFamily;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, RXDBCtrl, ActnList, XPStyleActnCtrls,
  ActnMan, ToolWin, ActnCtrls, ActnMenus, ExtCtrls, RXSplit, ComCtrls;

type
  TFormFamily = class(TForm)
    ActionMainMenuBar1: TActionMainMenuBar;
    ActionManagerFamily: TActionManager;
    aAdd: TAction;
    RxDBGrid1: TRxDBGrid;
    aqFamily: TADOQuery;
    DataSourceFamily: TDataSource;
    ProgressBarFamily: TProgressBar;
    aEdit: TAction;
    aDelit: TAction;
    Action1: TAction;
    procedure aAddExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    idSotrudnik: integer;
    { Public declarations }
  end;

var
 FormFamily: TFormFamily;
 GRID_WIDTH:array[0..4] of real;


implementation
 uses UnitDataModule, UnitFamilyAdd, UnitNewKarta, MainUnit;

{$R *.dfm}

procedure TFormFamily.aAddExecute(Sender: TObject);
var
 StrSql: string;
 ind: integer;
begin
 FormFamilyAdd:= TFormFamilyAdd.Create(Self);
 if FormMain.flagFromMenu then DataModule1.BegTrans;
 if FormFamilyAdd.ShowModal=mrOk then
 begin
   ProgressBarFamily.Position:=ProgressBarFamily.Position+10;
 //  DataModule1.BegTrans;
  ind:=FormMain.IndexNomber('FamilyKind','FamilyKind',FormFamilyAdd.cbFamilyKind.Text,'idFamilyKind');
   ProgressBarFamily.Position:=ProgressBarFamily.Position+10;
    strSql:='Insert INTO Family (idFamily, idSotrudnik '
          +',idFamilyKind, FIO, Birthday) '
          +'values('+inttostr(FormMain.IncIndex('idFamily'))+', '
          +IntToStr(idSotrudnik)+', '
          +intToStr(ind)+', '''
          +FormFamilyAdd.eFIO.Text+''','''
          +FormFamilyAdd.deBirthDay.Text+''')';
    ProgressBarFamily.Position:=ProgressBarFamily.Position+10;
    aqFamily.SQL.Clear;
    ProgressBarFamily.Position:=ProgressBarFamily.Position+10;;
    aqFamily.SQL.Add(StrSql);
    ProgressBarFamily.Position:=ProgressBarFamily.Position+10;
    aqFamily.ExecSQL;
    ProgressBarFamily.Position:=ProgressBarFamily.Position+10;
  //  DataModule1.ComTrans;
    ProgressBarFamily.Position:=ProgressBarFamily.Position+10;
 end;
 StrSql:='select  Family.IdFamily, Family.idSotrudnik, '
         +'Family.idFamilyKind, Family.FIO, Family.BirthDay, '
         +'FamilyKind.idFamilyKind, FamilyKind.FamilyKind '
         +'from Family, FamilyKind '
         +'where Family.IdSotrudnik ='+IntToStr(idSotrudnik)+' and '
         +'Family.idFamilyKind=FamilyKind.idFamilyKind ';
  ProgressBarFamily.Position:=ProgressBarFamily.Position+10;
  aqFamily.Close;
  aqFamily.sql.Clear;
  ProgressBarFamily.Position:=ProgressBarFamily.Position+10;
  aqFamily.SQL.Add(StrSql);
  ProgressBarFamily.Position:=ProgressBarFamily.Position+10;
  aqFamily.Open;
  FormFamilyAdd.Free;
  ProgressBarFamily.Position:=0;
end;

procedure TFormFamily.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if not FormMain.flagFromMenu then FormNewKarta.ZapFamily
 else
 begin
   DataModule1.ComTrans;
   FormMain.ShowGrid;
 end;
end;

procedure TFormFamily.FormResize(Sender: TObject);
var
i, ColSumm:integer;
begin
for i:=0 to RxDBGrid1.Columns.Count-1 do
RxDBGrid1.Columns[i].Width:=Round(RxDBGrid1.Width * GRID_WIDTH[i]);
ColSumm:=0;
for i:=1 to RxDBGrid1.Columns.Count-1 do ColSumm:=ColSumm+RxDBGrid1.Columns[i].Width;
RxDBGrid1.Columns[0].Width:=RxDBGrid1.Width - ColSumm - 28;
end;

procedure TFormFamily.Action1Execute(Sender: TObject);
begin
 Close;
end;

procedure TFormFamily.FormCreate(Sender: TObject);
var
 strsql: string;
 i: integer;
begin
 with FormMain do
  If flagNewKarta then
   begin
    atIndex.Open;
    idSotrudnik:=atIndex.fieldByName('IdSotrudnik').AsInteger;
    atIndex.close;
   end
  else
  begin
   idSotrudnik:=ADOQuery1.FieldByName('idSotrudnik').Asinteger;
  end;


 StrSql:='select  Family.IdFamily, Family.idSotrudnik, '
         +'Family.idFamilyKind, Family.FIO, Family.BirthDay, '
         +'FamilyKind.idFamilyKind, FamilyKind.FamilyKind '
         +'from Family, FamilyKind '
         +'where Family.IdSotrudnik ='+IntToStr(idSotrudnik)+' and '
         +'Family.idFamilyKind=FamilyKind.idFamilyKind ';
  aqFamily.Close;
  aqFamily.sql.Clear;
  aqFamily.SQL.Add(StrSql);
  aqFamily.Open;
  For i:=0 to RxDBGrid1.Columns.Count-1 do
    GRID_WIDTH[i]:=RxDBGrid1.Columns[i].Width /RxDBGrid1.Width;
end;

end.


