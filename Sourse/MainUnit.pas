unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, Grids, DBGrids, UnitDataModule, ActnList,
  XPStyleActnCtrls, ActnMan, ToolWin, ActnCtrls, ActnMenus, UnitEditSpravka,
  UnitNewKarta, Mask, ToolEdit, CurrEdit, ComCtrls, RXDBCtrl, ExtCtrls,
  RXSplit, Buttons, UnitDelSotr, UnitAnaliz, UnitInfo, XPMan, ImgList,
  UnitPrintSpisok, ShellApi, UnitAbout;

type
  TFormMain = class(TForm)
    ActionMainMenuBar1: TActionMainMenuBar;
    ActionManager1: TActionManager;
    Action1: TAction;
    aNewKarta: TAction;
    aEditKarta: TAction;
    ADelitKarta: TAction;
    aPurpopse: TAction;
    aFamaly: TAction;
    aHoliday: TAction;
    aDopInfo: TAction;
    aNationality: TAction;
    aEducation: TAction;
    aTrainingKind: TAction;
    aMarital: TAction;
    aOtdel: TAction;
    aTrade: TAction;
    aHolidayKind: TAction;
    aRank: TAction;
    aValidity: TAction;
    aVoenkomat: TAction;
    atIndex: TADOTable;
    aFamilyKind: TAction;
    aStructure: TAction;
    ProgressBar1: TProgressBar;
    aFindFam: TAction;
    dbgMainUnit: TDBGrid;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    rxspFind: TRxSplitter;
    lFindName: TLabel;
    eFind: TEdit;
    sbCloseFind: TSpeedButton;
    aFindOtdel: TAction;
    aFindTrade: TAction;
    atTemp: TADOTable;
    Action_Change_Pass: TAction;
    aAge: TAction;
    aAnalizNat: TAction;
    aOtchet: TAction;
    XPManifest1: TXPManifest;
    ImageList1: TImageList;
    Action2: TAction;
    tvOtdel: TTreeView;
    aPrintSpisok: TAction;
    ActionToolBar1: TActionToolBar;
    Splitter1: TSplitter;
    aHelp: TAction;
    aAbout: TAction;
    procedure Action1Execute(Sender: TObject);
    procedure aNationalityExecute(Sender: TObject);
    procedure aEducationExecute(Sender: TObject);
    procedure aTrainingKindExecute(Sender: TObject);
    procedure aMaritalExecute(Sender: TObject);
    procedure aOtdelExecute(Sender: TObject);
    procedure aFamilyKindExecute(Sender: TObject);
    procedure aTradeExecute(Sender: TObject);
    procedure aHolidayKindExecute(Sender: TObject);
    procedure aRankExecute(Sender: TObject);
    procedure aValidityExecute(Sender: TObject);
    procedure aVoenkomatExecute(Sender: TObject);
    procedure aStructureExecute(Sender: TObject);
    procedure aNewKartaExecute(Sender: TObject);
    procedure aFindFamExecute(Sender: TObject);
    procedure sbCloseFindClick(Sender: TObject);
    procedure eFindChange(Sender: TObject);
    procedure aFindOtdelExecute(Sender: TObject);
    procedure aFindTradeExecute(Sender: TObject);
    procedure aEditKartaExecute(Sender: TObject);
    procedure dbgMainUnitTitleClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure ADelitKartaExecute(Sender: TObject);
    procedure Action_Change_PassExecute(Sender: TObject);
    procedure aPurpopseExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure aHolidayExecute(Sender: TObject);
    procedure aFamalyExecute(Sender: TObject);
    procedure aDopInfoExecute(Sender: TObject);
    procedure aAgeExecute(Sender: TObject);
    procedure aAnalizNatExecute(Sender: TObject);
    procedure aOtchetExecute(Sender: TObject);
    procedure tvOtdelChange(Sender: TObject; Node: TTreeNode);
    procedure aPrintSpisokExecute(Sender: TObject);
    procedure ADOQuery1AfterOpen(DataSet: TDataSet);
    procedure aHelpExecute(Sender: TObject);
    procedure aAboutExecute(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    flagFind: integer;
    flagNewKarta: boolean;
    flagOnGrid: boolean;
    flagMoreKart: boolean;
    flagFromMenu: boolean;

    function IncIndex(strIndex: string):integer;
    function DecIndex(strIndex: string):integer;
    function IndexNomber(sTable,sfName,sField,sInd: string): integer;
    procedure LoadSpravka(nmTable:string; nmList: integer);
    procedure ShowGrid();
    procedure ShowGridSort();
  end;

var
  FormMain: TFormMain;
  sqlFind: string;
  sqlFind1: string;
  sqlGrid: string;
  sqlOtdel: string;

implementation
uses Unit_Change_Pass, UnitPurpose, UnitHoliday, UnitFamily, UnitDopInfo,
  Math;
{$R *.dfm}

function TFormMain.IncIndex(strIndex: string):integer;
var
 index: integer;
begin
  atIndex.Open;
  index:=atIndex.fieldByName(strIndex).AsInteger+1;
  atIndex.Edit;
  atIndex.fieldByName(strIndex).AsString:=intToStr(index);
  atIndex.Post;
  atIndex.close;
  result:= index;
end;

function TFormMain.DecIndex(strIndex: string):integer;
var
 index: integer;
begin
  atIndex.Open;
  index:=atIndex.fieldByName(strIndex).AsInteger-1;
  atIndex.Edit;
  atIndex.fieldByName(strIndex).AsString:=intToStr(index);
  atIndex.Post;
  atIndex.close;
  result:= index;
end;

function TFormMain.IndexNomber(sTable,sfName,sField,sInd: string): integer;
begin
 atTemp.Close;
 atTemp.TableName:=sTable;
 atTemp.Open;
 while not atTemp.Eof do
 begin
  if atTemp.FieldByName(sfName).AsString=sField then break;
  atTemp.Next;
 end;
 Result:=atTemp.fieldbyname(sInd).AsInteger;
end;


procedure TFormMain.LoadSpravka(nmTable:string; nmList: integer);
var
  StrSql: string;
  i: integer;
begin
   DataModule1.BegTrans;
   FormEditSprav.IfApply;
   FormEditSprav.pcEditSpravka.Pages[nmList].Show;
   With FormEditSprav do
   begin
    StrSql:='select * from '+nmTable+' order by '+nmTable;
    aqSpravka.Close;
    aqSpravka.sql.Clear;
    aqSpravka.SQL.Add(StrSql);
    aqSpravka.Open;
   end;
    FormEditSprav.ShowModal;

   atTemp.Close;
   atTemp.TableName:='Otdel';
   atTemp.Open;
   tvOtdel.Items.Clear;
   tvOtdel.Items.Add(nil,'Весь персонал');
   For i:=1 to atTemp.RecordCount do
   begin
    tvOtdel.Items.AddChild(tvOtdel.Items[0],atTemp.fieldByName('Otdel').AsString);
    atTemp.Next;
   end;
   tvOtdel.FullExpand;

end;

procedure TFormMain.Action1Execute(Sender: TObject);
begin
close;
end;

procedure TFormMain.aNationalityExecute(Sender: TObject);
begin
 LoadSpravka('Nationality',0);
end;

procedure TFormMain.aEducationExecute(Sender: TObject);
begin
 LoadSpravka('Education',1);
end;

procedure TFormMain.aTrainingKindExecute(Sender: TObject);
begin
 LoadSpravka('TrainingKind',2);
end;

procedure TFormMain.aMaritalExecute(Sender: TObject);
begin
 LoadSpravka('MaritalStatus',3);
end;

procedure TFormMain.aFamilyKindExecute(Sender: TObject);
begin
 LoadSpravka('FamilyKind',4);
end;

procedure TFormMain.aOtdelExecute(Sender: TObject);
begin
 LoadSpravka('Otdel',5);
end;


procedure TFormMain.aTradeExecute(Sender: TObject);
begin
 LoadSpravka('Trade',6);
end;

procedure TFormMain.aHolidayKindExecute(Sender: TObject);
begin
 LoadSpravka('HolidayKind',7);
end;

procedure TFormMain.aStructureExecute(Sender: TObject);
begin
 LoadSpravka('Structure',8);
end;

procedure TFormMain.aRankExecute(Sender: TObject);
begin
 LoadSpravka('Rank',9);
end;

procedure TFormMain.aValidityExecute(Sender: TObject);
begin
 LoadSpravka('Validity',10);
end;

procedure TFormMain.aVoenkomatExecute(Sender: TObject);
begin
 LoadSpravka('Voenkomat',11);
end;

procedure TFormMain.aNewKartaExecute(Sender: TObject);
begin
 flagNewKarta:=True;
 FormNewKarta:= TFormNewKarta.Create(Self);
 FormNewKarta.ShowModal();
 FormNewKarta.Free;
 if flagMoreKart then aNewKartaExecute(Sender);
end;


procedure TFormMain.ShowGrid();
var
 strSql: string;
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add(sqlOtdel);
  ADOQuery1.Open;
  if not ADOQuery1.Eof then
  begin
   flagOnGrid:=true;
   aEditKarta.Enabled:=true;
   ADelitKarta.Enabled:=True;
   aPurpopse.Enabled:=true;
   aHoliday.Enabled:=true;
   aFamaly.Enabled:=true;
   aDopInfo.Enabled:=true;
  end;
end;

procedure TFormMain.aFindFamExecute(Sender: TObject);
begin
 lFindName.Caption:='Введите фамилию:';
 rxspFind.Height:=40;
 eFind.SetFocus;
 flagFind:=1;
 ShowGrid;
end;


procedure TFormMain.aFindOtdelExecute(Sender: TObject);
begin
 lFindName.Caption:='Введите отдел:';
 rxspFind.Height:=40;
 eFind.SetFocus;
 flagFind:=2;
 ShowGrid;
end;

procedure TFormMain.aFindTradeExecute(Sender: TObject);
begin
 lFindName.Caption:='Введите должность:';
 rxspFind.Height:=40;
 eFind.SetFocus;
 flagFind:=3;
 ShowGrid;
end;


procedure TFormMain.sbCloseFindClick(Sender: TObject);
begin
 rxspFind.Height:=0;
 flagFind:=0;
 sqlFind:=' select Sotrudnik.idSotrudnik,Sotrudnik.Surname, Sotrudnik.Name,'+
     ' Sotrudnik.idOtdel, Otdel.IdOtdel, Otdel.Otdel,'+
     ' Sotrudnik.IdTrade, Trade.idTrade, Trade.Trade, Trade.Oklad'+
     ' from sotrudnik, Otdel, Trade'+
     ' Where Sotrudnik.idOtdel = Otdel.IdOtdel and'+
     ' Sotrudnik.IdTrade = Trade.idTrade ';
end;


procedure TFormMain.eFindChange(Sender: TObject);
var
 strSql: string;
begin
  sqlFind1:='';
  case  flagFind of
    1:begin  strSql:=sqlOtdel+' and Sotrudnik.Surname LIKE '+
          ''''+eFind.Text+'%''';
          sqlFind1:=' and Sotrudnik.Surname LIKE '+
          ''''+eFind.Text+'%''';
          sqlFind:=StrSql;
      end;
    2: begin strSql:=sqlOtdel+' and Otdel.Otdel LIKE '+
          ''''+eFind.Text+'%''';
          sqlFind1:=' and Otdel.Otdel LIKE '+
          ''''+eFind.Text+'%''';
           sqlFind:=StrSql;
       end;
    3: begin strSql:=sqlOtdel+' and Trade.Trade LIKE '+
          ''''+eFind.Text+'%''';
           sqlFind1:=' and Trade.Trade LIKE '+
          ''''+eFind.Text+'%''';
            sqlFind:=StrSql;
       end;
  end;
  sqlFind:=StrSql;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add(strSql);
  ADOQuery1.Open;
end;


procedure TFormMain.aEditKartaExecute(Sender: TObject);
begin
 flagNewKarta:=false;
 FormNewKarta:= TFormNewKarta.Create(Self);
 FormNewKarta.ShowModal();
 FormNewKarta.Free;
end;

procedure TFormMain.dbgMainUnitTitleClick(Column: TColumn);
var
 StrSql: string;
 i: integer;
begin
 for i:=0 to  dbgMainUnit.Columns.Count-1 do
 begin
  dbgMainUnit.Columns[i].Title.Color:=clBtnFace;
 end;
 dbgMainUnit.Columns[Column.Index].Title.Color:=clBtnShadow;
 if flagOnGrid then
 begin
  strSql:=sqlOtdel+sqlFind1+' order by '+Column.FieldName;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add(StrSql);
  ADOQuery1.Open;
 end;
 sqlGrid:=strSql;

end;

procedure TFormMain.FormCreate(Sender: TObject);
var
 i: integer;
begin
 flagOnGrid:=false;
 flagFromMenu:=False;
 aEditKarta.Enabled:=False;
 ADelitKarta.Enabled:=False;
 aPurpopse.Enabled:=False;
 aHoliday.Enabled:=False;
 aFamaly.Enabled:=False;
 aDopInfo.Enabled:=False;

//-----------------------------------

 atTemp.Close;
 atTemp.TableName:='Otdel';
 atTemp.Open;

 tvOtdel.Items.Add(nil,'Весь персонал');
 For i:=1 to atTemp.RecordCount do
 begin
  tvOtdel.Items.AddChild(tvOtdel.Items[0],atTemp.fieldByName('Otdel').AsString);
  atTemp.Next;
 end;
 tvOtdel.FullExpand;

 sqlOtdel:=' select Sotrudnik.idSotrudnik,Sotrudnik.Surname, Sotrudnik.Name,'+
     ' Sotrudnik.idOtdel, Otdel.IdOtdel, Otdel.Otdel,'+
     ' Sotrudnik.IdTrade, Trade.idTrade, Trade.Trade, Trade.Oklad'+
     ' from sotrudnik, Otdel, Trade'+
     ' Where Sotrudnik.idOtdel = Otdel.IdOtdel and'+
     ' Sotrudnik.IdTrade = Trade.idTrade ';
  sqlFind:=sqlOtdel;   

end;

procedure TFormMain.ShowGridSort;
begin
  if sqlGrid<>'' then
  begin
   ADOQuery1.Close;
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add(sqlGrid);
   ADOQuery1.Open;
  end
  else if flagOnGrid then
  begin
   ADOQuery1.Close;
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add(sqlFind);
   ADOQuery1.Open;
  end;
end;

procedure TFormMain.ADelitKartaExecute(Sender: TObject);
var
 ind: integer;
 strSql: string;
// tradeTmp: integer;
// otdelTmp: integer;
 idSotr: integer;
begin
 FormDelitSotr:=TFormDelitSotr.Create(Self);

 if  FormDelitSotr.ShowModal()=mrOk then
 begin
   ProgressBar1.Position:=ProgressBar1.Position+2;
   DataModule1.BegTrans;
   ProgressBar1.Position:=ProgressBar1.Position+2;
   idSotr:=ADOQuery1.FieldByName('idSotrudnik').AsInteger;
   ind:=FormMain.IncIndex('idSotrudnikArh');
   ProgressBar1.Position:=ProgressBar1.Position+2;
   strSql:='Insert INTO SotrudnikArh (idSotrudnikArh) '+
      'values('''+inttostr(ind)+''')';
   ProgressBar1.Position:=ProgressBar1.Position+2;
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add(strSql);
   ADOQuery1.ExecSQL;
   ProgressBar1.Position:=ProgressBar1.Position+5;
   atTemp.Close;
   atTemp.TableName:='Sotrudnik';
   atTemp.Open;
   ProgressBar1.Position:=ProgressBar1.Position+5;
   while atTemp.FieldByName('idSotrudnik').AsInteger<>idSotr do
     atTemp.Next;
  strSQL:='Update SotrudnikArh  set '+
        'Surname = '''+atTemp.FieldByName('Surname').AsString+''''+
        ',Name = '''+atTemp.FieldByName('Name').AsString+''''+
        ',Ortch = '''+atTemp.FieldByName('Ortch').AsString+''''+
        ',sex ='''+atTemp.FieldByName('sex').AsString+''''+
        ',BirthDay ='''+atTemp.FieldByName('BirthDay').AsString+''''+
        ',BirthPlace ='''+atTemp.FieldByName('BirthPlace').AsString+''''+
        ',idNationality ='''+atTemp.FieldByName('idNationality').AsString+''''+
        ',TradeUnion ='''+atTemp.FieldByName('TradeUnion').AsString+''''+
        ',idEducation ='''+atTemp.FieldByName('idEducation').AsString+''''+
        ',EducationName ='''+atTemp.FieldByName('EducationName').AsString+''''+
        ',idTrainingKind ='''+atTemp.FieldByName('idTrainingKind').AsString+''''+
        ',Speciality ='''+atTemp.FieldByName('Speciality').AsString+''''+
        ',Qualification ='''+atTemp.FieldByName('Qualification').AsString+''''+
        ',NomDiplom ='''+atTemp.FieldByName('NomDiplom').AsString+''''+
        ',DateDiplom ='''+atTemp.FieldByName('DateDiplom').AsString+''''+
//        ',Post ='+' '+
        ',ExperienceGeneral ='''+atTemp.FieldByName('ExperienceGeneral').AsString+''''+
        ',ExperiencePredpr ='''+atTemp.FieldByName('ExperiencePredpr').AsString+''''+
        ',ExperienceSpeciality ='''+atTemp.FieldByName('ExperienceSpeciality').AsString+''''+
        ',LastJob ='''+atTemp.FieldByName('LastJob').AsString+''''+
        ',Reason ='''+atTemp.FieldByName('Reason').AsString+''''+
        ',idMaritalStatus ='''+atTemp.FieldByName('idMaritalStatus').AsString+''''+
        ',PassportNomber ='''+atTemp.FieldByName('PassportNomber').AsString+''''+
        ',WhomIsGiven ='''+atTemp.FieldByName('WhomIsGiven').AsString+''''+
        ',WhenIsGiven ='''+atTemp.FieldByName('WhenIsGiven').AsString+''''+
        ',HomeAddress ='''+atTemp.FieldByName('HomeAddress').AsString+''''+
        ',Telephone ='''+atTemp.FieldByName('Telephone').AsString+''''+
        ',Category ='''+atTemp.FieldByName('Category').AsString+''''+
        ',idStructure ='''+atTemp.FieldByName('idStructure').AsString+''''+
        ',idRank ='''+atTemp.FieldByName('idRank').AsString+''''+
        ',RegistrationSpeciality ='''+atTemp.FieldByName('RegistrationSpeciality').AsString+''''+
        ',idValidity ='''+atTemp.FieldByName('idValidity').AsString+''''+
        ',idVoenkomat ='''+atTemp.FieldByName('idVoenkomat').AsString+''''+
        ',NomberAccount ='''+atTemp.FieldByName('NomberAccount').AsString+''''+
        ',Data ='''+atTemp.FieldByName('Data').AsString+''''+
        ',GroupU ='''+atTemp.FieldByName('GroupU').AsString+''''+
        ',idTrade ='''+atTemp.FieldByName('idTrade').AsString+''''+
        ',idOtdel ='''+atTemp.FieldByName('idOtdel').AsString+''''+
        ' where idSotrudnikArh = '+inttostr(ind);
  ProgressBar1.Position:=ProgressBar1.Position+5;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add(strSql);
  ADOQuery1.ExecSQL;
  ProgressBar1.Position:=ProgressBar1.Position+5;
  atTemp.Close;
  atTemp.TableName:='Holiday';
  atTemp.Open;
  ProgressBar1.Position:=ProgressBar1.Position+5;
  while not atTemp.Eof do
  begin
    if atTemp.FieldByName('idSotrudnik').AsInteger=idSotr then
    begin
     strSql:='Insert INTO HolidayArh (idHolidayArh,idSotrudnikArh,'+
             'idHolidayKind,period,StartHoliday,EndHoliday,Basis) '+
             'values('''+inttostr(IncIndex('idHolidayArh'))+''','''
             +inttostr(ind)+''','''
             +atTemp.FieldByName('idHolidayKind').AsString+''','''
             +atTemp.FieldByName('period').AsString+''','''
             +atTemp.FieldByName('StartHoliday').AsString+''','''
             +atTemp.FieldByName('EndHoliday').AsString+''','''
             +atTemp.FieldByName('Basis').AsString+''')';
     ADOQuery1.SQL.Clear;
     ADOQuery1.SQL.Add(StrSql);
     ADOQuery1.ExecSQL;

    end;
    atTemp.Next;
  end;
  ProgressBar1.Position:=ProgressBar1.Position+5;
  atTemp.Close;
  atTemp.TableName:='Purpose';
  atTemp.Open;
  ProgressBar1.Position:=ProgressBar1.Position+5;
  while not atTemp.Eof do
  begin
    if atTemp.FieldByName('idSotrudnik').AsInteger=idSotr then
    begin
     strSql:='Insert INTO PurposeArh (idPurposeArh,idSotrudnikArh,'+
             'idOtdel,idTrade,Basis,DatePurpose) '+
             'values('''+inttostr(IncIndex('idHolidayArh'))+''','''
             +inttostr(ind)+''','''
             +atTemp.FieldByName('idOtdel').AsString+''','''
             +atTemp.FieldByName('idTrade').AsString+''','''
             +atTemp.FieldByName('Basis').AsString+''','''
             +atTemp.FieldByName('DatePurpose').AsString+''')';
     ADOQuery1.SQL.Clear;
     ADOQuery1.SQL.Add(StrSql);
     ADOQuery1.ExecSQL;

    end;
    atTemp.Next;
  end;
  ProgressBar1.Position:=ProgressBar1.Position+5;
  strSql:='Insert INTO PurposeArh (idPurposeArh,idSotrudnikArh,'+
          'idOtdel,idTrade,Basis,DatePurpose) '+
          'values('''+inttostr(IncIndex('idHolidayArh'))+''','''
          +inttostr(ind)+''','''
          +atTemp.FieldByName('idOtdel').AsString+''','''
          +atTemp.FieldByName('idTrade').AsString+''','''
          +FormDelitSotr.leBasis.Text+''','''
          +FormDelitSotr.deDatePurpose.Text+''')';
  ProgressBar1.Position:=ProgressBar1.Position+5;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add(StrSql);
  ADOQuery1.ExecSQL;
  ProgressBar1.Position:=ProgressBar1.Position+5;


  atTemp.Close;
  atTemp.TableName:='Family';
  atTemp.Open;
  ProgressBar1.Position:=ProgressBar1.Position+5;
  while not atTemp.Eof do
  begin
    if atTemp.FieldByName('idSotrudnik').AsInteger=idSotr then
    begin
     strSql:='Insert INTO FamilyArh (idFamilyArh,idSotrudnikArh,'+
             'idFamilyKind,Fio,BirthDay) '+
             'values('''+inttostr(IncIndex('idFamilyArh'))+''','''
             +inttostr(ind)+''','''
             +atTemp.FieldByName('idFamilyKind').AsString+''','''
             +atTemp.FieldByName('Fio').AsString+''','''
             +atTemp.FieldByName('BirthDay').AsString+''')';
     ADOQuery1.SQL.Clear;
     ADOQuery1.SQL.Add(StrSql);
     ADOQuery1.ExecSQL;

    end;
    atTemp.Next;
  end;
  ProgressBar1.Position:=ProgressBar1.Position+5;

  atTemp.Close;
  atTemp.TableName:='DopInformation';
  atTemp.Open;
  ProgressBar1.Position:=ProgressBar1.Position+5;
  while not atTemp.Eof do
  begin
    if atTemp.FieldByName('idSotrudnik').AsInteger=idSotr then
    begin
     strSql:='Insert INTO DopInfoArh (idDopInfoArh,idSotrudnikArh,'+
             'DopInformation) '+
             'values('''+inttostr(IncIndex('idDopInfoArh'))+''','''
             +inttostr(ind)+''','''
             +atTemp.FieldByName('DopInformation').AsString+''')';
     ADOQuery1.SQL.Clear;
     ADOQuery1.SQL.Add(StrSql);
     ADOQuery1.ExecSQL;

    end;
    atTemp.Next;
  end;
  ProgressBar1.Position:=ProgressBar1.Position+5;
//--------------------------------------------------------------
  strSql:='Delete From Sotrudnik '+
          'where idSotrudnik = '+IntToStr(idSotr)+'';
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add(StrSql);
  ADOQuery1.ExecSQL;

  ProgressBar1.Position:=ProgressBar1.Position+5;
  strSql:='Delete From Holiday '+
          'where idSotrudnik = '+IntToStr(idSotr)+'';
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add(StrSql);
  ADOQuery1.ExecSQL;
  ProgressBar1.Position:=ProgressBar1.Position+5;
  strSql:='Delete From Purpose '+
          'where idSotrudnik = '+IntToStr(idSotr)+'';
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add(StrSql);
  ADOQuery1.ExecSQL;
  ProgressBar1.Position:=ProgressBar1.Position+5;
  strSql:='Delete From Family '+
          'where idSotrudnik = '+IntToStr(idSotr)+'';
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add(StrSql);
  ADOQuery1.ExecSQL;
  ProgressBar1.Position:=ProgressBar1.Position+5;
  strSql:='Delete From DopInformation '+
          'where idSotrudnik = '+IntToStr(idSotr)+'';
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add(StrSql);
  ADOQuery1.ExecSQL;
  ProgressBar1.Position:=ProgressBar1.Position+5;
//--------------------------------------------------------------


//------------------------------------------
   atIndex.Close;
   atIndex.TableName:='Indexes';
   atIndex.Open;
   DataModule1.ComTrans;
   ProgressBar1.Position:=ProgressBar1.Position+2;
   ShowGridSort;
   ProgressBar1.Position:=0;
   FormDelitSotr.Free;
   ShowMessage('Сотрудник уволен.'#10#13'Данные перенесены в архив.');
 end;

end;

procedure TFormMain.Action_Change_PassExecute(Sender: TObject);
begin
Form_Change_Pass:=TForm_Change_Pass.Create(self);
Form_Change_Pass.ShowModal;
Form_Change_Pass.Free;
end;

procedure TFormMain.aPurpopseExecute(Sender: TObject);
begin
 flagFromMenu:=True;
 FormPurpose:=TFormPurpose.Create(self);
 FormPurpose.ShowModal;
 FormPurpose.Free;
 flagFromMenu:=False;
end;

procedure TFormMain.FormShow(Sender: TObject);
begin
 ShowGrid;
end;


procedure TFormMain.aHolidayExecute(Sender: TObject);
begin
 flagFromMenu:=True;
 FormHoliday:=TFormHoliday.Create(self);
 FormHoliday.ShowModal;
 FormHoliday.Free;
 flagFromMenu:=False;
end;

procedure TFormMain.aFamalyExecute(Sender: TObject);
begin
 flagFromMenu:=True;
 FormFamily:=TFormFamily.Create(self);
 FormFamily.ShowModal;
 FormFamily.Free;
 flagFromMenu:=False;
end;

procedure TFormMain.aDopInfoExecute(Sender: TObject);
begin
 flagFromMenu:=True;
 FormDopInfo:=TFormDopInfo.Create(self);
 FormDopInfo.ShowModal;
 FormDopInfo.Free;
 flagFromMenu:=False;
end;

procedure TFormMain.aAgeExecute(Sender: TObject);
begin
 FormAnaliz:=TFormAnaliz.Create(self);
 FormAnaliz.PageControl1.Pages[0].Show;
 FormAnaliz.ShowModal;
 FormAnaliz.Free;
end;

procedure TFormMain.aAnalizNatExecute(Sender: TObject);
begin
 FormAnaliz:=TFormAnaliz.Create(self);
 FormAnaliz.PageControl1.Pages[1].Show;
 FormAnaliz.ShowModal;
 FormAnaliz.Free;

end;

procedure TFormMain.aOtchetExecute(Sender: TObject);
begin
 FormInfo:=TFormInfo.Create(self);
 FormInfo.ShowModal;
 FormInfo.Free;
end;

procedure TFormMain.tvOtdelChange(Sender: TObject; Node: TTreeNode);
var
 strSql: string;
begin
  sqlFind1:='';
  eFind.Text:='';
  case flagFind of
   1:begin strSql:=sqlOtdel+' and Sotrudnik.Surname LIKE '+
          ''''+eFind.Text+'%''';
            sqlFind:=StrSql;
          sqlFind1:=' and Sotrudnik.Surname LIKE '+
          ''''+eFind.Text+'%''';
          sqlFind:=StrSql;
      end;
   2:begin strSql:=sqlOtdel+' and Otdel.Otdel LIKE '+
          ''''+eFind.Text+'%''';
            sqlFind:=StrSql;
           sqlFind1:=' and Otdel.Otdel LIKE '+
           ''''+eFind.Text+'%''';
           sqlFind:=StrSql;
       end;
   3: begin strSql:=sqlOtdel+' and Trade.Trade LIKE '+
          ''''+eFind.Text+'%''';
           sqlFind1:=' and Trade.Trade LIKE '+
          ''''+eFind.Text+'%''';
            sqlFind:=StrSql;
       end;
  end;

  if tvOtdel.Selected.GetPrev<>nil then
  strSql:=' select Sotrudnik.idSotrudnik,Sotrudnik.Surname, Sotrudnik.Name,'+
          ' Sotrudnik.idOtdel, Otdel.IdOtdel, Otdel.Otdel,'+
          ' Sotrudnik.IdTrade, Trade.idTrade, Trade.Trade, Trade.Oklad'+
          ' from sotrudnik, Otdel, Trade'+
          ' Where Sotrudnik.idOtdel = Otdel.IdOtdel and'+
          ' Sotrudnik.IdTrade = Trade.idTrade and'+
          ' Otdel.Otdel LIKE '+
          ''''+tvOtdel.Selected.Text+'%'''
  else
  strSql:=' select Sotrudnik.idSotrudnik,Sotrudnik.Surname, Sotrudnik.Name,'+
          ' Sotrudnik.idOtdel, Otdel.IdOtdel, Otdel.Otdel,'+
          ' Sotrudnik.IdTrade, Trade.idTrade, Trade.Trade, Trade.Oklad'+
          ' from sotrudnik, Otdel, Trade'+
          ' Where Sotrudnik.idOtdel = Otdel.IdOtdel and'+
          ' Sotrudnik.IdTrade = Trade.idTrade and'+
          ' Otdel.Otdel LIKE '+
          ''''+'%''';

  sqlOtdel:=StrSql;
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add(strSql);
  ADOQuery1.Open;
end;

procedure TFormMain.aPrintSpisokExecute(Sender: TObject);
begin
 FormPrintSpisok:=TFormPrintSpisok.Create(self);
 FormPrintSpisok.QRLDate.Caption:='Дата: '+DateToStr(date);
 FormPrintSpisok.QuickRep1.Preview;
 FormPrintSpisok.Free;
end;

procedure TFormMain.ADOQuery1AfterOpen(DataSet: TDataSet);
begin
   If ADOQuery1.Eof then
   begin
    aEditKarta.Enabled:=False;
    ADelitKarta.Enabled:=False;
    aPurpopse.Enabled:=False;
    aHoliday.Enabled:=False;
    aFamaly.Enabled:=False;
    aDopInfo.Enabled:=False;
    aOtchet.Enabled:=FAlse;
    aFindFam.Enabled:=False;
    aFindTrade.Enabled:=False;
    aPrintSpisok.Enabled:=False;
   end
   else
    begin
     aEditKarta.Enabled:=true;
     ADelitKarta.Enabled:=True;
     aPurpopse.Enabled:=true;
     aHoliday.Enabled:=true;
     aFamaly.Enabled:=true;
     aDopInfo.Enabled:=true;
     aOtchet.Enabled:=True;
     aFindFam.Enabled:=True;
     aFindTrade.Enabled:=True;
    aPrintSpisok.Enabled:=True;     
    end;
end;

procedure TFormMain.aHelpExecute(Sender: TObject);
begin
  ShellExecute(Application.Handle,PChar('open'),
       PChar('index.htm'),nil,PChar(GetCurrentDir+'\HELP\'),
       SW_SHOWNORMAL);
end;

procedure TFormMain.aAboutExecute(Sender: TObject);
begin
  FormAbout:=TFormAbout.Create(self);
  FormAbout.ShowModal;
  FormAbout.Free;
end;

end.
