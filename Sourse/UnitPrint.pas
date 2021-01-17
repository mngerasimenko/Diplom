unit UnitPrint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, ADODB, UnitDataModule,
  ActnList, XPStyleActnCtrls, ActnMan;

type
  TFormPrint = class(TForm)
    QuickRep: TQuickRep;
    aqPrint: TADOQuery;
    QRSubDetail1: TQRSubDetail;
    QRLabel4: TQRLabel;
    QRRichText1: TQRRichText;
    aqTmp: TADOQuery;
    aqTmpDop: TADOQuery;
    QRLabelNomber: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabelDate: TQRLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrint: TFormPrint;

implementation
uses mainUnit, UnitInfo;
{$R *.dfm}

procedure TFormPrint.FormCreate(Sender: TObject);
var
 sqlStr: string;
 idSotrudnik: integer;
 strTmp: string;
begin
 FormInfo.ProgressBar.Max:=43;
 idSotrudnik:=FormMain.ADOQuery1.FieldByName('idSotrudnik').Asinteger;
 FormInfo.ProgressBar.StepIt;
 QRLabelNomber.Caption:=intToStr(idSotrudnik);
 QRLabelDate.Caption:=DateToStr(Date);
 sqlStr:='Select * from Sotrudnik where '+
         'idSotrudnik = '+ IntToStr(idSotrudnik);
 aqPrint.Close;
 aqPrint.sql.Clear;
 aqPrint.SQL.Add(sqlStr);
 aqPrint.Open;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbSurname.Checked then
 begin
  QRRichText1.Lines.Add('Фамилия:  '+aqPrint.FieldbyName('Surname').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbName.Checked then
 begin
  QRRichText1.Lines.Add('Имя:  '+aqPrint.FieldbyName('Name').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbOrtch.Checked then
 begin
  QRRichText1.Lines.Add('Ортчество:  '+aqPrint.FieldbyName('Ortch').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbSex.Checked then
 begin
  QRRichText1.Lines.Add('Пол:  '+aqPrint.FieldbyName('Sex').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbBirthday.Checked then
 begin
  QRRichText1.Lines.Add('Дата рождения:  '+aqPrint.FieldbyName('BirthDay').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbBirthPlace.Checked then
 begin
  QRRichText1.Lines.Add('Место рождения:  '+aqPrint.FieldbyName('BirthPlace').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbNationality.Checked then
 begin
  sqlStr:='Select * from Nationality where idNationality = '
          +aqPrint.FieldbyName('idNationality').AsString;
  aqTmp.Close;
  aqTmp.SQL.Clear;
  aqTmp.SQL.add(sqlStr);
  aqTmp.Open;
  QRRichText1.Lines.Add('Национальность:  '+aqTmp.FieldbyName('Nationality').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbTradeUnion.Checked then
 begin
  QRRichText1.Lines.Add('Член профсоюза:  '+aqPrint.FieldbyName('TradeUnion').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbPassportNomber.Checked then
 begin
  QRRichText1.Lines.Add('Номер паспорта:  '+aqPrint.FieldbyName('PassportNomber').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbWhomIsGiven.Checked then
 begin
  QRRichText1.Lines.Add('Кем выдан:  '+aqPrint.FieldbyName('WhomIsGiven').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbWhenIsGiven.Checked then
 begin
  QRRichText1.Lines.Add('Когда выдан:  '+aqPrint.FieldbyName('WhenIsGiven').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbHomeAddres.Checked then
 begin
  QRRichText1.Lines.Add('Домашний адрес:  '+aqPrint.FieldbyName('HomeAddress').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbTelephone.Checked then
 begin
  QRRichText1.Lines.Add('Телефон:  '+aqPrint.FieldbyName('Telephone').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbOtdel.Checked then
 begin
  sqlStr:='Select * from Otdel where idOtdel = '
          +aqPrint.FieldbyName('idOtdel').AsString;
  aqTmp.Close;
  aqTmp.SQL.Clear;
  aqTmp.SQL.add(sqlStr);
  aqTmp.Open;
  QRRichText1.Lines.Add('Отдел:  '+aqTmp.FieldbyName('Otdel').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbTrade.Checked then
 begin
  sqlStr:='Select * from Trade where idTrade = '
          +aqPrint.FieldbyName('idTrade').AsString;
  aqTmp.Close;
  aqTmp.SQL.Clear;
  aqTmp.SQL.add(sqlStr);
  aqTmp.Open;
  QRRichText1.Lines.Add('Должность:  '+aqTmp.FieldbyName('Trade').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbOklad.Checked then
 begin
  sqlStr:='Select * from Trade where idTrade = '
          +aqPrint.FieldbyName('idTrade').AsString;
  aqTmp.Close;
  aqTmp.SQL.Clear;
  aqTmp.SQL.add(sqlStr);
  aqTmp.Open;
  QRRichText1.Lines.Add('Оклад:  '+aqTmp.FieldbyName('Oklad').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbEducation.Checked then
 begin
  sqlStr:='Select * from Education where idEducation = '
          +aqPrint.FieldbyName('idEducation').AsString;
  aqTmp.Close;
  aqTmp.SQL.Clear;
  aqTmp.SQL.add(sqlStr);
  aqTmp.Open;
  QRRichText1.Lines.Add('Образование:  '+aqTmp.FieldbyName('Education').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbEducationName.Checked then
 begin
  QRRichText1.Lines.Add('Название учебного заведения:  '+aqPrint.FieldbyName('EducationName').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbTrainingKind.Checked then
 begin
  sqlStr:='Select * from TrainingKind where idTrainingKind = '
          +aqPrint.FieldbyName('idTrainingKind').AsString;
  aqTmp.Close;
  aqTmp.SQL.Clear;
  aqTmp.SQL.add(sqlStr);
  aqTmp.Open;
  QRRichText1.Lines.Add('Вид обучения:  '+aqTmp.FieldbyName('TrainingKind').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbSpeciality.Checked then
 begin
  QRRichText1.Lines.Add('Полученная специальность:  '+aqPrint.FieldbyName('Speciality').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbQulification.Checked then
 begin
  QRRichText1.Lines.Add('Полученная квалификация:  '+aqPrint.FieldbyName('Qualification').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbNomDiplom.Checked then
 begin
  QRRichText1.Lines.Add('Номер диплома:  '+aqPrint.FieldbyName('NomDiplom').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbDateDiplom.Checked then
 begin
  QRRichText1.Lines.Add('Дата выдачи диплома:  '+aqPrint.FieldbyName('DateDiplom').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbMaritalStatus.Checked then
 begin
  sqlStr:='Select * from MaritalStatus where idMaritalStatus = '
          +aqPrint.FieldbyName('idMaritalStatus').AsString;
  aqTmp.Close;
  aqTmp.SQL.Clear;
  aqTmp.SQL.add(sqlStr);
  aqTmp.Open;
  QRRichText1.Lines.Add('Семейное положение:  '+aqTmp.FieldbyName('MaritalStatus').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbFamily.Checked then
 begin
  sqlStr:='Select * from Family where idSotrudnik = '
          +IntToStr(idSotrudnik);
  aqTmp.Close;
  aqTmp.SQL.Clear;
  aqTmp.SQL.add(sqlStr);
  aqTmp.Open;
  QRRichText1.Lines.Add('Члены семьи:  ');
  while not aqTmp.Eof do
  begin
   sqlStr:='Select * from FamilyKind where idFamilyKind = '
          +aqTmp.FieldbyName('idFamilyKind').AsString;
   aqTmpDop.Close;
   aqTmpDop.SQL.Clear;
   aqTmpDop.SQL.add(sqlStr);
   aqTmpDop.Open;
   QRRichText1.Lines.Add(' - Вид родства: '
    +aqTmpDop.FieldbyName('FamilyKind').AsString+' ФИО: '
    +aqTmp.FieldbyName('FIO').AsString+' Дата рождения: '
    +aqTmp.FieldbyName('Birthday').AsString);
    aqTmp.Next;
  end;
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbLastJob.Checked then
 begin
  QRRichText1.Lines.Add('Последнее место работы:  '+aqPrint.FieldbyName('LastJob').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbReason.Checked then
 begin
  QRRichText1.Lines.Add('Причина увольнения:  '+aqPrint.FieldbyName('Reason').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbExpGeneral.Checked then
 begin
  QRRichText1.Lines.Add('Общий стаж:  '+aqPrint.FieldbyName('ExperienceGeneral').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbExpPredpr.Checked then
 begin
  QRRichText1.Lines.Add('Стаж в отрасли:  '+aqPrint.FieldbyName('ExperiencePredpr').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbExpSpeciality.Checked then
 begin
  QRRichText1.Lines.Add('Стаж в должности:  '+aqPrint.FieldbyName('ExperienceSpeciality').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbPurpose.Checked then
 begin
  sqlStr:='Select * from Purpose where idSotrudnik = '
          +IntToStr(idSotrudnik);
  aqTmp.Close;
  aqTmp.SQL.Clear;
  aqTmp.SQL.add(sqlStr);
  aqTmp.Open;
  QRRichText1.Lines.Add('Назначения и перемещения:  ');
  while not aqTmp.Eof do
  begin
   sqlStr:='Select * from Otdel where idOtdel = '
          +aqTmp.FieldbyName('idOtdel').AsString;
   aqTmpDop.Close;
   aqTmpDop.SQL.Clear;
   aqTmpDop.SQL.add(sqlStr);
   aqTmpDop.Open;
   strTmp:=' - Отдел: '+aqTmpDop.FieldbyName('Otdel').AsString;
   sqlStr:='Select * from Trade where idTrade = '
          +aqTmp.FieldbyName('idTrade').AsString;
   aqTmpDop.Close;
   aqTmpDop.SQL.Clear;
   aqTmpDop.SQL.add(sqlStr);
   aqTmpDop.Open;
   QRRichText1.Lines.Add(StrTmp+' Должность: '
    +aqTmpDop.FieldbyName('Trade').AsString+' Оклад: '
    +aqTmpDop.FieldbyName('Oklad').AsString+' Основание: '
    +aqTmp.FieldbyName('Basis').AsString+' Дата: '
    +aqTmp.FieldbyName('DatePurpose').AsString);
    aqTmp.Next;
  end;
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbHoliday.Checked then
 begin
  sqlStr:='Select * from Holiday where idHoliday = '
          +IntToStr(idSotrudnik);
  aqTmp.Close;
  aqTmp.SQL.Clear;
  aqTmp.SQL.add(sqlStr);
  aqTmp.Open;
  QRRichText1.Lines.Add('Отпуска:  ');
  while not aqTmp.Eof do
  begin
   sqlStr:='Select * from HolidayKind where idHolidayKind = '
          +aqTmp.FieldbyName('idHolidayKind').AsString;
   aqTmpDop.Close;
   aqTmpDop.SQL.Clear;
   aqTmpDop.SQL.add(sqlStr);
   aqTmpDop.Open;
   QRRichText1.Lines.Add(' - Вид отпуска: '
    +aqTmpDop.FieldbyName('HolidayKind').AsString+' С: '
    +aqTmp.FieldbyName('StartHoliday').AsString+' По: '
    +aqTmp.FieldbyName('EndHoliday').AsString+' Основане: '
    +aqTmp.FieldbyName('Basis').AsString);
    aqTmp.Next;
  end;
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbGroupU.Checked then
 begin
  QRRichText1.Lines.Add('Группа учета:  '+aqPrint.FieldbyName('GroupU').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbCategory.Checked then
 begin
  QRRichText1.Lines.Add('Категория учета:  '+aqPrint.FieldbyName('Category').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbStructure.Checked then
 begin
  sqlStr:='Select * from Structure where idStructure = '
          +aqPrint.FieldbyName('idStructure').AsString;
  aqTmp.Close;
  aqTmp.SQL.Clear;
  aqTmp.SQL.add(sqlStr);
  aqTmp.Open;
  QRRichText1.Lines.Add('Структура:  '+aqTmp.FieldbyName('Structure').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbRank.Checked then
 begin
  sqlStr:='Select * from Rank where idRank = '
          +aqPrint.FieldbyName('idRank').AsString;
  aqTmp.Close;
  aqTmp.SQL.Clear;
  aqTmp.SQL.add(sqlStr);
  aqTmp.Open;
  QRRichText1.Lines.Add('Воинское звание:  '+aqTmp.FieldbyName('Rank').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbRegisrtSpecial.Checked then
 begin
  QRRichText1.Lines.Add('Военно-учетная специальность:  '+aqPrint.FieldbyName('RegistrationSpeciality').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbValidity.Checked then
 begin
  sqlStr:='Select * from Validity where idValidity = '
          +aqPrint.FieldbyName('idValidity').AsString;
  aqTmp.Close;
  aqTmp.SQL.Clear;
  aqTmp.SQL.add(sqlStr);
  aqTmp.Open;
  QRRichText1.Lines.Add('Годность к военной службе:  '+aqTmp.FieldbyName('Validity').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbVoenkomat.Checked then
 begin
  sqlStr:='Select * from Voenkomat where idVoenkomat = '
          +aqPrint.FieldbyName('idVoenkomat').AsString;
  aqTmp.Close;
  aqTmp.SQL.Clear;
  aqTmp.SQL.add(sqlStr);
  aqTmp.Open;
  QRRichText1.Lines.Add('Название военкомата:  '+aqTmp.FieldbyName('Voenkomat').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbNomberAccount.Checked then
 begin
  QRRichText1.Lines.Add('Номер специального учета:  '+aqPrint.FieldbyName('NomberAccount').AsString);
 end;
 FormInfo.ProgressBar.StepIt;
 if FormInfo.cbDopInfo.Checked then
 begin
  sqlStr:='Select * from DopInformation where idDopInformation = '
          +IntToStr(idSotrudnik);
  aqTmp.Close;
  aqTmp.SQL.Clear;
  aqTmp.SQL.add(sqlStr);
  aqTmp.Open;
  QRRichText1.Lines.Add('Дополнительная информация:  ');
  while not aqTmp.Eof do
  begin
   QRRichText1.Lines.Add(' -  '
    +aqTmp.FieldbyName('DopInformation').AsString);
    aqTmp.Next;
  end;
 end;
 FormInfo.ProgressBar.StepIt;
end;

end.
