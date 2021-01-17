unit UnitHoliday;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, ComCtrls, DB, ADODB, XPStyleActnCtrls, ActnMan,
  ToolWin, ActnCtrls, ActnMenus, Grids, DBGrids, RXDBCtrl;

type
  TFormHoliday = class(TForm)
    RxDBGrid1: TRxDBGrid;
    ActionMainMenuBar1: TActionMainMenuBar;
    ActionManager1: TActionManager;
    aqHoliday: TADOQuery;
    dsHoliday: TDataSource;
    ProgressBarHoliday: TProgressBar;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
   idSotrudnik: integer;
    { Public declarations }
  end;

var
  FormHoliday: TFormHoliday;
  GRID_WIDTH:array[0..6] of real;


implementation
uses UnitNewKarta, UnitDataModule, UnitHolidayAdd, MainUnit;
{$R *.dfm}

procedure TFormHoliday.FormCreate(Sender: TObject);
var
 StrSql: string;
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

 StrSql:='Select Holiday.idHoliday, Holiday.idSotrudnik, '
        +'Holiday.idHolidayKind,Holiday.Period, '
        +'Holiday.StartHoliday, Holiday.EndHoliday, Holiday.Basis,'
        +'HolidayKind.idHolidayKind, HolidayKind.HolidayKind '
        +'From Holiday, HolidayKind '
        +' where Holiday.idSotrudnik='+IntToStr(idSotrudnik)
        +' and Holiday.idHolidayKind=HolidayKind.idHolidayKind ';
  aqHoliday.Close;
  aqHoliday.sql.Clear;
  aqHoliday.SQL.Add(StrSql);
  aqHoliday.Open;
  For i:=0 to RxDBGrid1.Columns.Count-1 do
    GRID_WIDTH[i]:=RxDBGrid1.Columns[i].Width /RxDBGrid1.Width;
end;

procedure TFormHoliday.FormResize(Sender: TObject);
var
 i, ColSumm:integer;
begin
 for i:=0 to RxDBGrid1.Columns.Count-1 do
  RxDBGrid1.Columns[i].Width:=Round(RxDBGrid1.Width * GRID_WIDTH[i]);
 ColSumm:=0;
 for i:=1 to RxDBGrid1.Columns.Count-1 do ColSumm:=ColSumm+RxDBGrid1.Columns[i].Width;
  RxDBGrid1.Columns[0].Width:=RxDBGrid1.Width - ColSumm - 28;
end;


procedure TFormHoliday.Action1Execute(Sender: TObject);
begin
 Close;
end;

procedure TFormHoliday.Action2Execute(Sender: TObject);
var
 StrSql: string;
 ind: integer;
begin
 FormHolidayAdd:= TFormHolidayAdd.Create(Self);
 if FormMain.flagFromMenu then DataModule1.BegTrans;
 if FormHolidayAdd.ShowModal=mrOk then
 begin
  ProgressBarHoliday.Position:=ProgressBarHoliday.Position+10;
  ind:=FormMain.IndexNomber('HolidayKind','HolidayKind',FormHolidayAdd.cbHolidayKind.Text,'idHolidayKind');


  StrSql:='Insert INTO Holiday (idHoliday, idSotrudnik '
         +',idHolidayKind, Period, StartHoliday,EndHoliday ,Basis) '
         +'values('+inttostr(FormMain.IncIndex('idHoliday'))+', '
         +IntToStr(idSotrudnik)+', '
         +intToStr(ind)+', '''
         +FormHolidayAdd.ePeriod.Text+''','''
         +FormHolidayAdd.deStartHoliday.Text+''','''
         +FormHolidayAdd.deEndHoliday.Text+''','''
         +FormHolidayAdd.leBasis.Text+''')';
    ProgressBarHoliday.Position:=ProgressBarHoliday.Position+10;
    aqHoliday.SQL.Clear;
    ProgressBarHoliday.Position:=ProgressBarHoliday.Position+10;;
    aqHoliday.SQL.Add(StrSql);
    ProgressBarHoliday.Position:=ProgressBarHoliday.Position+10;
    aqHoliday.ExecSQL;
    ProgressBarHoliday.Position:=ProgressBarHoliday.Position+10;
    ProgressBarHoliday.Position:=ProgressBarHoliday.Position+10;
 end;
 StrSql:='Select Holiday.idHoliday, Holiday.idSotrudnik, '
        +'Holiday.idHolidayKind,Holiday.Period, '
        +'Holiday.StartHoliday, Holiday.EndHoliday, Holiday.Basis,'
        +'HolidayKind.idHolidayKind, HolidayKind.HolidayKind '
        +'From Holiday, HolidayKind '
        +' where Holiday.idSotrudnik='+IntToStr(idSotrudnik)
        +' and Holiday.idHolidayKind=HolidayKind.idHolidayKind ';
    ProgressBarHoliday.Position:=ProgressBarHoliday.Position+10;
  aqHoliday.Close;
  aqHoliday.sql.Clear;
    ProgressBarHoliday.Position:=ProgressBarHoliday.Position+10;
  aqHoliday.SQL.Add(StrSql);
    ProgressBarHoliday.Position:=ProgressBarHoliday.Position+10;
  aqHoliday.Open;
    ProgressBarHoliday.Position:=ProgressBarHoliday.Position+10;
 FormHolidayAdd.Free;
  ProgressBarHoliday.Position:=0;

end;

procedure TFormHoliday.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if not FormMain.flagFromMenu then FormNewKarta.ZapHoliday
 else
 begin
   DataModule1.ComTrans;
   FormMain.ShowGrid;
 end;

end;

end.
