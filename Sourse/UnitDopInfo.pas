unit UnitDopInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, XPStyleActnCtrls, ActnMan, DB, ADODB, ComCtrls, Grids,
  DBGrids, RXDBCtrl, ToolWin, ActnCtrls, ActnMenus;

type
  TFormDopInfo = class(TForm)
    ActionMainMenuBar1: TActionMainMenuBar;
    RxDBGrid1: TRxDBGrid;
    ProgressBarDopInfo: TProgressBar;
    dsDopInfo: TDataSource;
    aqDopInfo: TADOQuery;
    ActionManagerDopInfo: TActionManager;
    aAdd: TAction;
    aEdit: TAction;
    aDelit: TAction;
    aClose: TAction;
    procedure FormPaint(Sender: TObject);
    procedure aCloseExecute(Sender: TObject);
    procedure aAddExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
   idSotrudnik: integer;
    { Public declarations }
  end;

var
  FormDopInfo: TFormDopInfo;
  GRID_WIDTH:array[0..4] of real;

implementation
 uses UnitDataModule, UnitDopInfoAdd, UnitNewKarta, MainUnit;
{$R *.dfm}

procedure TFormDopInfo.FormPaint(Sender: TObject);
var
i, ColSumm:integer;
begin
for i:=0 to RxDBGrid1.Columns.Count-1 do
RxDBGrid1.Columns[i].Width:=Round(RxDBGrid1.Width * GRID_WIDTH[i]);
ColSumm:=0;
for i:=1 to RxDBGrid1.Columns.Count-1 do ColSumm:=ColSumm+RxDBGrid1.Columns[i].Width;
RxDBGrid1.Columns[0].Width:=RxDBGrid1.Width - ColSumm - 28;
end;


procedure TFormDopInfo.aCloseExecute(Sender: TObject);
begin
 Close;
end;

procedure TFormDopInfo.aAddExecute(Sender: TObject);
var
 StrSql: string;
begin
 FormDopInfoAdd:= TFormDopInfoAdd.Create(Self);
 if FormMain.flagFromMenu then DataModule1.BegTrans;
 if FormDopInfoAdd.ShowModal=mrOk then
 begin
   ProgressBarDopInfo.Position:=ProgressBarDopInfo.Position+10;

   ProgressBarDopInfo.Position:=ProgressBarDopInfo.Position+10;
    strSql:='Insert INTO DopInformation (idDopInformation, idSotrudnik '
          +',DopInformation) '
          +'values('+inttostr(FormMain.IncIndex('idDopInformation'))+', '
          +IntToStr(idSotrudnik)+','''
          +FormDopInfoAdd.eDopInfo.Text+''')';

    ProgressBarDopInfo.Position:=ProgressBarDopInfo.Position+10;
    aqDopInfo.SQL.Clear;
    ProgressBarDopInfo.Position:=ProgressBarDopInfo.Position+10;;
    aqDopInfo.SQL.Add(StrSql);
    ProgressBarDopInfo.Position:=ProgressBarDopInfo.Position+10;
    aqDopInfo.ExecSQL;
    ProgressBarDopInfo.Position:=ProgressBarDopInfo.Position+10;
 end;

 StrSql:='select  DopInformation.IdDopInformation, DopInformation.idSotrudnik, '
         +'DopInformation.DopInformation '
         +'from Dopinformation '
         +'where Dopinformation.IdSotrudnik ='+IntToStr(idSotrudnik);
  ProgressBarDopInfo.Position:=ProgressBarDopInfo.Position+10;
  aqDopInfo.Close;
  aqDopInfo.sql.Clear;
  ProgressBarDopInfo.Position:=ProgressBarDopInfo.Position+10;
  aqDopInfo.SQL.Add(StrSql);
  ProgressBarDopInfo.Position:=ProgressBarDopInfo.Position+10;
  aqDopInfo.Open;
  ProgressBarDopInfo.Position:=ProgressBarDopInfo.Position+10;
  FormDopInfoAdd.Free;
  ProgressBarDopInfo.Position:=0;
end;

procedure TFormDopInfo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if not FormMain.flagFromMenu then FormNewKarta.ZapDopInfo
 else
 begin
   DataModule1.ComTrans;
   FormMain.ShowGrid;
 end;
end;

procedure TFormDopInfo.FormCreate(Sender: TObject);
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
 StrSql:='select  DopInformation.IdDopInformation, DopInformation.idSotrudnik, '
         +'DopInformation.DopInformation '
         +'from Dopinformation '
         +'where Dopinformation.IdSotrudnik ='+IntToStr(idSotrudnik);
  aqDopInfo.Close;
  aqDopInfo.sql.Clear;
  aqDopInfo.SQL.Add(StrSql);
  aqDopInfo.Open;
  For i:=0 to RxDBGrid1.Columns.Count-1 do
    GRID_WIDTH[i]:=RxDBGrid1.Columns[i].Width /RxDBGrid1.Width;
end;

end.
