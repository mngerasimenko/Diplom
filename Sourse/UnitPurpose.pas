unit UnitPurpose;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, RXDBCtrl, ADODB, DB, ComCtrls, XPStyleActnCtrls,
  ActnList, ActnMan, ToolWin, ActnCtrls, ActnMenus;

type
  TFormPurpose = class(TForm)
    ActionMainMenuBar1: TActionMainMenuBar;
    ActionManager1: TActionManager;
    ProgressBarPurpose: TProgressBar;
    DataSource: TDataSource;
    aqPurpose: TADOQuery;
    atPurpose: TADOTable;
    RxDBGrid1: TRxDBGrid;
    AExit: TAction;
    aAddPurpose: TAction;
    aEditPurpose: TAction;
    aDelPurpose: TAction;
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure AExitExecute(Sender: TObject);
    procedure aAddPurposeExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    idSotrudnik: integer;
    flagAdd: boolean;
  end;

var
  FormPurpose: TFormPurpose;
  GRID_WIDTH:array[0..6] of real;

implementation
uses UnitNewKarta, UnitDataModule, UnitPurposeAdd, MainUnit, Math;
{$R *.dfm}

procedure TFormPurpose.FormCreate(Sender: TObject);
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



 StrSql:='select  Purpose.IdPurpose, Purpose.idSotrudnik, '
        +'Purpose.idOtdel, Otdel.Otdel, Purpose.idTrade, Purpose.Basis, '
        +'Purpose.DatePurpose, Trade.idTrade, '
        +'Trade.Trade, Trade.Oklad '
        +'from Purpose, Otdel, Trade '
        +'where Purpose.IdSotrudnik = '+IntToStr(idSotrudnik)
        +' and Purpose.idOtdel=Otdel.idOtdel and '
        +'Purpose.idTrade=Trade.idTrade ';
  aqPurpose.Close;
  aqPurpose.sql.Clear;
  aqPurpose.SQL.Add(StrSql);
  aqPurpose.Open;
  For i:=0 to RxDBGrid1.Columns.Count-1 do
    GRID_WIDTH[i]:=RxDBGrid1.Columns[i].Width /RxDBGrid1.Width;
  flagAdd:=False;
end;

procedure TFormPurpose.FormResize(Sender: TObject);
var
 i, ColSumm:integer;
begin
 for i:=0 to RxDBGrid1.Columns.Count-1 do
  RxDBGrid1.Columns[i].Width:=Round(RxDBGrid1.Width * GRID_WIDTH[i]);
 ColSumm:=0;
 for i:=1 to RxDBGrid1.Columns.Count-1 do ColSumm:=ColSumm+RxDBGrid1.Columns[i].Width;
  RxDBGrid1.Columns[0].Width:=RxDBGrid1.Width - ColSumm - 28;

end;

procedure TFormPurpose.AExitExecute(Sender: TObject);
begin
 Close;
end;

procedure TFormPurpose.aAddPurposeExecute(Sender: TObject);
var
 StrSql: string;
 indOtdel: integer;
 indTrade: integer;
 strTmp: string;
 strFild: string;
 i: integer;
begin
 if FormMain.flagFromMenu then DataModule1.BegTrans;
 FormPurposeAdd:= TFormPurposeAdd.Create(Self);

 if FormPurposeAdd.ShowModal=mrOk then
 begin
 flagAdd:=True;
 //  DataModule1.BegTrans;
 indOtdel:=FormMain.IndexNomber('Otdel','Otdel',
              FormPurposeAdd.cbOtdel.Text,'idOtdel');
 i:=1;
 strTmp:=FormPurposeAdd.cbTrade.Text;
 while strTmp[i]<>'-' do
 begin
  strFild:=strFild+strTmp[i];
  inc(i);
 end;

 indTrade:=FormMain.IndexNomber('Trade','Trade',
              strFild,'idTrade');
   ProgressBarPurpose.Position:=ProgressBarPurpose.Position+10;
    strSql:='Insert INTO Purpose (idPurpose, idSotrudnik '
          +',idOtdel, idTrade, DatePurpose, Basis) '
          +'values('+inttostr(FormMain.IncIndex('idPurpose'))+', '
          +IntToStr(idSotrudnik)+', '
          +intToStr(indOtdel)+', '
          +intToStr(indTrade)+', '''
          +FormPurposeAdd.deDatePurpose.Text+''','''
          +FormPurposeAdd.leBasis.Text+''')';
    ProgressBarPurpose.Position:=ProgressBarPurpose.Position+10;
    aqPurpose.SQL.Clear;
    ProgressBarPurpose.Position:=ProgressBarPurpose.Position+10;;
    aqPurpose.SQL.Add(StrSql);
    ProgressBarPurpose.Position:=ProgressBarPurpose.Position+10;
    aqPurpose.ExecSQL;
    ProgressBarPurpose.Position:=ProgressBarPurpose.Position+10;
  //  DataModule1.ComTrans;
    ProgressBarPurpose.Position:=ProgressBarPurpose.Position+10;
 end;
 StrSql:='select  Purpose.IdPurpose, Purpose.idSotrudnik, '
        +'Purpose.idOtdel, Otdel.Otdel, Purpose.idTrade, Purpose.Basis, '
        +'Purpose.DatePurpose, Trade.idTrade, '
        +'Trade.Trade, Trade.Oklad '
        +'from Purpose, Otdel, Trade '
        +'where Purpose.IdSotrudnik = '+IntToStr(idSotrudnik)
        +' and Purpose.idOtdel=Otdel.idOtdel and '
        +'Purpose.idTrade=Trade.idTrade ';
  ProgressBarPurpose.Position:=ProgressBarPurpose.Position+10;
  aqPurpose.Close;
  aqPurpose.sql.Clear;
  ProgressBarPurpose.Position:=ProgressBarPurpose.Position+10;
  aqPurpose.SQL.Add(StrSql);
  ProgressBarPurpose.Position:=ProgressBarPurpose.Position+10;
  aqPurpose.Open;
  ProgressBarPurpose.Position:=ProgressBarPurpose.Position+10;
//  FormPurposeAdd.Free;
//  DataModule1.ComTrans;
  ProgressBarPurpose.Position:=0;

end;

procedure TFormPurpose.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
 strSql: string;
 indTrade: integer;
 indOtdel: integer;
 i: integer;
 strTmp: string;
 strFild: string;
begin
 if not FormMain.flagFromMenu then FormNewKarta.ZapPurpose
 else
 begin
 if flagAdd then
 begin
   indOtdel:=FormMain.IndexNomber('Otdel','Otdel',
              FormPurposeAdd.cbOtdel.Text,'idOtdel');
   i:=1;
   strTmp:=FormPurposeAdd.cbTrade.Text;
   while strTmp[i]<>'-' do
   begin
    strFild:=strFild+strTmp[i];
    inc(i);
   end;
   indTrade:=FormMain.IndexNomber('Trade','Trade',
                strFild,'idTrade');
   strSQL:='Update Sotrudnik  set '+
           'idOtdel = '''+intToStr(indOtdel)+''''+
           ',idTrade = '''+intToStr(indTrade)+''''+
           ' where idSotrudnik = '+inttostr(idSotrudnik);
     aqPurpose.Close;
     aqPurpose.SQL.Clear;
     aqPurpose.SQL.Add(strSql);
     aqPurpose.ExecSQL;
    end;
     DataModule1.ComTrans;
     FormMain.ShowGrid;
   end;
   FormPurposeAdd.Free;
end;



end.
