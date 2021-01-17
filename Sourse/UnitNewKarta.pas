unit UnitNewKarta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SynEdit, Mask, ToolEdit, DBCtrls, DB, ADODB, ExtCtrls,
  Buttons, ComCtrls;

type
  TFormNewKarta = class(TForm)
    ScrollBox1: TScrollBox;
    Label1: TLabel;
    lNomber: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    eFamily: TEdit;
    eName: TEdit;
    eOtcestvo: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    eBirth_Place: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    cbNationality: TComboBox;
    cbTradeUnion: TCheckBox;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    cbEducational: TComboBox;
    eEducationName: TLabeledEdit;
    Label10: TLabel;
    cbTrainingKind: TComboBox;
    eSpeciality: TLabeledEdit;
    eQualification: TLabeledEdit;
    eNomDiplom: TLabeledEdit;
    Label11: TLabel;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    eLastJob: TLabeledEdit;
    leReason: TLabeledEdit;
    Label15: TLabel;
    cbMaritalStatus: TComboBox;
    Label16: TLabel;
    lKolFamily: TLabel;
    GroupBox4: TGroupBox;
    leNomerPasporta: TLabeledEdit;
    leWhoIsGiven: TLabeledEdit;
    Label18: TLabel;
    GroupBox5: TGroupBox;
    leAdress: TLabeledEdit;
    leTelephone: TLabeledEdit;
    GroupBox6: TGroupBox;
    leGrupaUcheta: TLabeledEdit;
    leKategorijaUcheta: TLabeledEdit;
    cbUchet: TCheckBox;
    LbStructure: TLabel;
    cbStructure: TComboBox;
    LbRank: TLabel;
    cbRank: TComboBox;
    leVUS: TLabeledEdit;
    LbValidity: TLabel;
    cbValidity: TComboBox;
    LbVoenkomat: TLabel;
    cbVoenkomat: TComboBox;
    leNomAccount: TLabeledEdit;
    GroupBox7: TGroupBox;
    Label25: TLabel;
    lPurpose1: TLabel;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    lHoliday: TLabel;
    GroupBox10: TGroupBox;
    lDopInfo: TLabel;
    Panel1: TPanel;
    bbOk: TBitBtn;
    bbCancel: TBitBtn;
    bbFamily: TBitBtn;
    bbTrade: TBitBtn;
    bbHolidayKind: TBitBtn;
    bbDopInfo: TBitBtn;
    AQuery: TADOQuery;
    Label21: TLabel;
    lPurpose2: TLabel;
    Label17: TLabel;
    atTemp: TADOTable;
    GroupBox11: TGroupBox;
    deBirthday: TDateTimePicker;
    deDiplom: TDateTimePicker;
    deAllStazh: TDateTimePicker;
    deExpPredr: TDateTimePicker;
    deExpSpeciality: TDateTimePicker;
    dePasport: TDateTimePicker;
    deDataZap: TDateTimePicker;
    eSex: TComboBox;
    procedure FormResize(Sender: TObject);
    procedure bbOkClick(Sender: TObject);
    procedure bbFamilyClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bbTradeClick(Sender: TObject);
    procedure bbHolidayKindClick(Sender: TObject);
    procedure bbDopInfoClick(Sender: TObject);
    procedure bbEditSpravkaClick(Sender: TObject);
    procedure eNameKeyPress(Sender: TObject; var Key: Char);
    procedure eOtcestvoKeyPress(Sender: TObject; var Key: Char);
    procedure deBirthdaKeyPress(Sender: TObject; var Key: Char);
    procedure eSexcKeyPress(Sender: TObject; var Key: Char);
    procedure eBirth_PlaceKeyPress(Sender: TObject; var Key: Char);
    procedure cbNationalityKeyPress(Sender: TObject; var Key: Char);
    procedure cbTradeUnionKeyPress(Sender: TObject; var Key: Char);
    procedure cbEducationalKeyPress(Sender: TObject; var Key: Char);
    procedure eEducationNameKeyPress(Sender: TObject; var Key: Char);
    procedure cbTrainingKindKeyPress(Sender: TObject; var Key: Char);
    procedure eSpecialityKeyPress(Sender: TObject; var Key: Char);
    procedure eQualificationKeyPress(Sender: TObject; var Key: Char);
    procedure eNomDiplomKeyPress(Sender: TObject; var Key: Char);
    procedure deDiploKeyPress(Sender: TObject; var Key: Char);
    procedure eAllStazhKeyPress(Sender: TObject; var Key: Char);
    procedure deExpPredKeyPress(Sender: TObject; var Key: Char);
    procedure deExpSpecialitKeyPress(Sender: TObject; var Key: Char);
    procedure eLastJobKeyPress(Sender: TObject; var Key: Char);
    procedure leReasonKeyPress(Sender: TObject; var Key: Char);
    procedure cbMaritalStatusKeyPress(Sender: TObject; var Key: Char);
    procedure leNomerPasportaKeyPress(Sender: TObject; var Key: Char);
    procedure leWhoIsGivenKeyPress(Sender: TObject; var Key: Char);
    procedure dePasporKeyPress(Sender: TObject; var Key: Char);
    procedure leAdressKeyPress(Sender: TObject; var Key: Char);
    procedure leTelephoneKeyPress(Sender: TObject; var Key: Char);
    procedure cbUchetKeyPress(Sender: TObject; var Key: Char);
    procedure leGrupaUchetaKeyPress(Sender: TObject; var Key: Char);
    procedure leKategorijaUchetaKeyPress(Sender: TObject; var Key: Char);
    procedure cbStructureKeyPress(Sender: TObject; var Key: Char);
    procedure cbRankKeyPress(Sender: TObject; var Key: Char);
    procedure leVUSKeyPress(Sender: TObject; var Key: Char);
    procedure cbValidityKeyPress(Sender: TObject; var Key: Char);
    procedure cbVoenkomatKeyPress(Sender: TObject; var Key: Char);
    procedure leNomAccountKeyPress(Sender: TObject; var Key: Char);
    procedure deDataZaKeyPress(Sender: TObject; var Key: Char);
    procedure eFamilyKeyPress(Sender: TObject; var Key: Char);
    procedure cbUchetClick(Sender: TObject);
    procedure eFamilyExit(Sender: TObject);
    procedure eNameExit(Sender: TObject);
    procedure eBirth_PlaceExit(Sender: TObject);
    procedure cbNationalityExit(Sender: TObject);
    procedure cbEducationalExit(Sender: TObject);
    procedure cbTrainingKindExit(Sender: TObject);
    procedure cbMaritalStatusExit(Sender: TObject);
    procedure cbStructureExit(Sender: TObject);
    procedure cbRankExit(Sender: TObject);
    procedure cbValidityExit(Sender: TObject);
    procedure cbVoenkomatExit(Sender: TObject);
    procedure deExpPredrExit(Sender: TObject);
    procedure deExpSpecialityExit(Sender: TObject);
    procedure leNomerPasportaExit(Sender: TObject);
    procedure leWhoIsGivenExit(Sender: TObject);
    procedure leAdressExit(Sender: TObject);
    procedure eEducationNameExit(Sender: TObject);
    procedure eSpecialityExit(Sender: TObject);
    procedure eNomDiplomExit(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
    idSotrudnik: integer;
    procedure ZapPurpose();
    procedure ZapHoliday();
    procedure ZapDopInfo();
    procedure ZapFamily;
  end;

var
  FormNewKarta: TFormNewKarta;

implementation
uses MainUnit, UnitDataModule, UnitEditField, UnitFamily,
     UnitPurpose, UnitHoliday, UnitDopInfo, unitEditSpravka, Math;

{$R *.dfm}


procedure TFormNewKarta.FormResize(Sender: TObject);
begin
  ScrollBox1.Height:=FormNewKarta.Height-ScrollBox1.Top-50;
end;

procedure TFormNewKarta.bbOkClick(Sender: TObject);
var
 strSql: string;
 TradeUnion: string;

 tradeTmp: integer;
 OtdelTmp: integer;
 indNationality: integer;
 indEducation: integer;
 indTrainingKind: integer;
 indMaritalStatus: integer;
 indRank: integer;
 indStructure: integer;
 indValidity: integer;
 indVoenkomat: integer;

begin


 FormMain.atIndex.Open;

 ADOTable1.Close;
 if cbTradeUnion.Checked then TradeUnion:='Да'
 else TradeUnion:='Нет';
 AQuery.SQL.Clear;
 indNationality:=FormMain.IndexNomber('Nationality','Nationality',
              cbNationality.Text,'idNationality');
 indEducation:=FormMain.IndexNomber('Education','Education',
              cbEducational.Text,'idEducation');
 indTrainingKind:=FormMain.IndexNomber('TrainingKind','TrainingKind',
              cbTrainingKind.Text,'idTrainingKind');
 indMaritalStatus:=FormMain.IndexNomber('MaritalStatus','MaritalStatus',
              cbMaritalStatus.Text,'idMaritalStatus');
 indRank:=FormMain.IndexNomber('Rank','Rank',
              cbRank.Text,'idRank');
 indStructure:=FormMain.IndexNomber('Structure','Structure',
              cbStructure.Text,'idStructure');
 indValidity:=FormMain.IndexNomber('Validity','Validity',
              cbValidity.Text,'idValidity');
 indVoenkomat:=FormMain.IndexNomber('Voenkomat','Voenkomat',
              cbVoenkomat.Text,'idVoenkomat');

 strSQL:='Update Sotrudnik  set '+
        'Surname = '''+eFamily.Text+''''+
        ',Name = '''+eName.Text+''''+
        ',Ortch = '''+eOtcestvo.Text+''''+
        ',sex ='''+eSex.text+''''+
        ',BirthDay ='''+DateTimeToStr(deBirthday.Date)+''''+
        ',BirthPlace ='''+eBirth_Place.Text+''''+
        ',idNationality ='''+IntToStr(indNationality)+''''+
        ',TradeUnion ='''+TradeUnion+''''+
        ',idEducation ='''+IntToStr(indEducation)+''''+
        ',EducationName ='''+eEducationName.Text+''''+
        ',idTrainingKind ='''+IntTostr(indTrainingKind)+''''+
        ',Speciality ='''+eSpeciality.Text+''''+
        ',Qualification ='''+eQualification.Text+''''+
        ',NomDiplom ='''+eNomDiplom.Text+''''+
        ',DateDiplom ='''+DateToStr(deDiplom.Date)+''''+
//        ',Post ='+' '+
        ',ExperienceGeneral ='''+DateToStr(deAllStazh.Date)+''''+
        ',ExperiencePredpr ='''+DateToStr(deExpPredr.Date)+''''+
        ',ExperienceSpeciality ='''+DateToStr(deExpSpeciality.Date)+''''+
        ',LastJob ='''+eLastJob.Text+''''+
        ',Reason ='''+leReason.Text+''''+
        ',idMaritalStatus ='''+IntToStr(indMaritalStatus)+''''+
        ',PassportNomber ='''+leNomerPasporta.Text+''''+
        ',WhomIsGiven ='''+leWhoIsGiven.Text+''''+
        ',WhenIsGiven ='''+DateToStr(dePasport.Date)+''''+
        ',HomeAddress ='''+leAdress.Text+''''+
        ',Telephone ='''+leTelephone.Text+''''+
        ',Category ='''+leKategorijaUcheta.Text+''''+
        ',idStructure ='''+IntToStr(indStructure)+''''+
        ',idRank ='''+IntToStr(indRank)+''''+
        ',RegistrationSpeciality ='''+leVUS.Text+''''+
        ',idValidity ='''+IntToStr(indValidity)+''''+
        ',idVoenkomat ='''+IntToStr(indVoenkomat)+''''+
        ',NomberAccount ='''+leNomAccount.Text+''''+
        ',Data ='''+DateToStr(deDataZap.Date)+''''+
        ',GroupU ='''+leGrupaUcheta.Text+''''+
        ' where idSotrudnik = '+inttostr(idSotrudnik);
  FormMain.atIndex.Close;
  AQuery.SQL.Add(strSql);
  AQuery.ExecSQL;
  ADOTable1.Close;
  ADOTable1.TableName:='Purpose';
  ADOTable1.Open;
  ADOTable1.Last;
  while (ADOTable1.fieldByName('idSotrudnik').AsInteger<>idSotrudnik)
        and (ADOTable1.RecNo>1) do  ADOTable1.Prior;
  if ADOTable1.fieldByName('idSotrudnik').AsInteger=idSotrudnik then
  begin
   tradeTmp:=ADOTable1.fieldByName('IdTrade').AsInteger;
   OtdelTmp:=ADOTable1.fieldByName('IdOtdel').AsInteger;
   strSQL:='Update Sotrudnik  set '+
           'idOtdel = '''+intToStr(otdelTmp)+''''+
           ',idTrade = '''+intToStr(tradeTmp)+''''+
           ' where idSotrudnik = '+inttostr(idSotrudnik);
   AQuery.SQL.Clear;
   AQuery.SQL.Add(strSql);
   AQuery.ExecSQL;
  end;
  DataModule1.ComTrans;

  if not FormMain.flagNewKarta then
  begin
   ShowMessage('Данные о сотруднике изменены.');
   close;
  end
  else
  if MessageDlg('Новый сотрудник добавлен в базу.'#10#13'Добавить еще?',
    mtConfirmation,[mbYes, mbCancel],0)=mrYes then FormMain.flagMoreKart:=True;
  close;
end;

procedure TFormNewKarta.bbFamilyClick(Sender: TObject);
begin
 FormFamily:= TFormFamily.Create(Self);
 FormFamily.ShowModal;
 FormFamily.Free;
end;

procedure TFormNewKarta.FormCreate(Sender: TObject);
var
 i: integer;
 strSql: string;
begin
 FormMain.ProgressBar1.Max:=54;
 FormMain.ProgressBar1.StepIt;
 if FormMain.flagNewKarta then
 with FormMain do
  begin
   atIndex.Open;
   lNomber.Caption:=IntToStr(atIndex.fieldByName('IdSotrudnik').AsInteger+1);
   idSotrudnik:=atIndex.fieldByName('IdSotrudnik').AsInteger+1;
   atIndex.close;
  end
 else
 begin
  idSotrudnik:=FormMain.ADOQuery1.FieldByName('idSotrudnik').Asinteger;
  lNomber.Caption:=IntToStr(idSotrudnik);
 end;
 FormMain.ProgressBar1.StepIt;
  ADOTable1.TableName:='Nationality';
  ADOTable1.Open;
  FormMain.ProgressBar1.StepIt;
  for i:=1 to ADOTable1.RecordCount do
  begin
   cbNationality.Items.Add(ADOTable1.fieldbyname('Nationality').AsString);
   ADOTable1.Next;
  end;
  FormMain.ProgressBar1.StepIt;
  ADOTable1.Close;
  ADOTable1.TableName:='Education';
  ADOTable1.Open;
  FormMain.ProgressBar1.StepIt;
  for i:=1 to ADOTable1.RecordCount do
  begin
   cbEducational.Items.Add(ADOTable1.fieldbyname('Education').AsString);
   ADOTable1.Next;
  end;
  FormMain.ProgressBar1.StepIt;
  ADOTable1.Close;
  ADOTable1.TableName:='trainingKind';
  ADOTable1.Open;
  FormMain.ProgressBar1.StepIt;
  for i:=1 to ADOTable1.RecordCount do
  begin
   cbTrainingKind.Items.Add(ADOTable1.fieldbyname('trainingKind').AsString);
   ADOTable1.Next;
  end;
  FormMain.ProgressBar1.StepIt;
  ADOTable1.Close;
  ADOTable1.TableName:='MaritalStatus';
  ADOTable1.Open;
  FormMain.ProgressBar1.StepIt;
  for i:=1 to ADOTable1.RecordCount do
  begin
   cbMaritalStatus.Items.Add(ADOTable1.fieldbyname('MaritalStatus').AsString);
   ADOTable1.Next;
  end;
  FormMain.ProgressBar1.StepIt;
  ADOTable1.Close;
  ADOTable1.TableName:='Structure';
  ADOTable1.Open;
  FormMain.ProgressBar1.StepIt;
  for i:=1 to ADOTable1.RecordCount do
  begin
   cbStructure.Items.Add(ADOTable1.fieldbyname('Structure').AsString);
   ADOTable1.Next;
  end;
  FormMain.ProgressBar1.StepIt;
  ADOTable1.Close;
  ADOTable1.TableName:='Rank';
  ADOTable1.Open;
  FormMain.ProgressBar1.StepIt;
  for i:=1 to ADOTable1.RecordCount do
  begin
   cbRank.Items.Add(ADOTable1.fieldbyname('Rank').AsString);
   ADOTable1.Next;
  end;
  FormMain.ProgressBar1.StepIt;
  ADOTable1.Close;
  ADOTable1.TableName:='Validity';
  ADOTable1.Open;
  FormMain.ProgressBar1.StepIt;
  for i:=1 to ADOTable1.RecordCount do
  begin
   cbValidity.Items.Add(ADOTable1.fieldbyname('Validity').AsString);
   ADOTable1.Next;
  end;
  FormMain.ProgressBar1.StepIt;
  ADOTable1.Close;
  ADOTable1.TableName:='Voenkomat';
  ADOTable1.Open;
  FormMain.ProgressBar1.StepIt;
  for i:=1 to ADOTable1.RecordCount do
  begin
   cbVoenkomat.Items.Add(ADOTable1.fieldbyname('Voenkomat').AsString);
   ADOTable1.Next;
  end;
  FormMain.ProgressBar1.StepIt;
  eSex.Items.Add('Муж');
  eSex.Items.Add('Жен');

  DataModule1.BegTrans;
  FormMain.ProgressBar1.StepIt;
  if FormMain.flagNewKarta then
  begin
   FormMain.ProgressBar1.StepBy(5);
   strSql:='Insert INTO Sotrudnik (idSotrudnik) '+
      'values('''+inttostr(FormMain.IncIndex('idSotrudnik'))+''')';
   FormMain.ProgressBar1.StepBy(5);
   FormMain.atIndex.Close;
   FormMain.ProgressBar1.StepBy(5);
   AQuery.SQL.Clear;
   FormMain.ProgressBar1.StepBy(5);
   AQuery.SQL.Add(strSql);
   FormMain.ProgressBar1.StepBy(5);
   AQuery.ExecSQL;
   FormMain.ProgressBar1.StepBy(9);

   deBirthday.Date:=Date;
   deDiplom.Date:=Date;
   deAllStazh.Date:=Date;
   deExpPredr.Date:=Date;
   deExpSpeciality.Date:=Date;
   dePasport.Date:=Date;
   deDataZap.Date:=Date;

   eSex.ItemIndex:=0;
   cbNationality.ItemIndex:=0;
   cbEducational.ItemIndex:=0;
   cbTrainingKind.ItemIndex:=0;
   cbMaritalStatus.ItemIndex:=0;
   cbStructure.ItemIndex:=0;
   cbRank.ItemIndex:=0;
   cbValidity.ItemIndex:=0;
   cbVoenkomat.ItemIndex:=0;

  end
  else
  begin
   ADOTable1.Close;
   ADOTable1.TableName:='Sotrudnik';
   ADOTable1.Open;
   FormMain.ProgressBar1.StepIt;
   while   ADOTable1.FieldByName('idSotrudnik').AsInteger<>idSotrudnik
    do ADOTable1.Next;
   FormMain.ProgressBar1.StepIt;
   eFamily.Text:=ADOTable1.FieldByName('Surname').AsString;
   eName.Text:=ADOTable1.FieldByName('name').AsString;
   FormMain.ProgressBar1.StepIt;
   eOtcestvo.Text:=ADOTable1.FieldByName('Ortch').AsString;
   eSex.Text:=ADOTable1.FieldByName('sex').AsString;
   FormMain.ProgressBar1.StepIt;
   eBirth_Place.Text:=ADOTable1.FieldByName('BirthPlace').AsString;
   deBirthday.Date:=ADOTable1.FieldByName('BirthDay').AsDateTime;
//   deBirthday.Text:=ADOTable1.FieldByName('BirthDay').AsString;
   FormMain.ProgressBar1.StepIt;
   atTemp.Close;
   atTemp.TableName:='Nationality';
   atTemp.Open;
   FormMain.ProgressBar1.StepIt;
   while ADOTable1.FieldByName('idNationality').AsInteger<>
               atTemp.FieldByName('idNationality').AsInteger do
       atTemp.Next;
   FormMain.ProgressBar1.StepIt;
   cbNationality.Text:=atTemp.FieldByName('Nationality').AsString;
   if ADOTable1.FieldByName('TradeUnion').AsString ='Да' then
     cbTradeUnion.Checked:=True
    else cbTradeUnion.Checked:=false;
   FormMain.ProgressBar1.StepIt;
   atTemp.Close;
   atTemp.TableName:='Education';
   atTemp.Open;
   FormMain.ProgressBar1.StepIt;
    while ADOTable1.FieldByName('idEducation').AsInteger<>
               atTemp.FieldByName('idEducation').AsInteger do
       atTemp.Next;
    FormMain.ProgressBar1.StepIt;
    cbEducational.Text:=atTemp.FieldByName('Education').AsString;
    eEducationName.Text:=ADOTable1.FieldByName('EducationName').AsString;
    FormMain.ProgressBar1.StepIt;
    atTemp.Close;
    atTemp.TableName:='TrainingKind';
    atTemp.Open;
    FormMain.ProgressBar1.StepIt;
    while ADOTable1.FieldByName('idTrainingKind').AsInteger<>
               atTemp.FieldByName('idTrainingKind').AsInteger do
       atTemp.Next;
    FormMain.ProgressBar1.StepIt;
    cbTrainingKind.Text:=atTemp.FieldByName('TrainingKind').AsString;
    eSpeciality.Text:=ADOTable1.FieldByName('Speciality').AsString;
    FormMain.ProgressBar1.StepIt;
    eQualification.Text:=ADOTable1.FieldByName('Qualification').AsString;
    eNomDiplom.Text:=ADOTable1.FieldByName('NomDiplom').AsString;
    FormMain.ProgressBar1.StepIt;
    deDiplom.Date:=ADOTable1.FieldByName('DateDiplom').AsDateTime;
    deAllStazh.Date:=ADOTable1.FieldByName('ExperienceGeneral').AsDateTime;
    deExpPredr.Date:=ADOTable1.FieldByName('ExperiencePredpr').AsDateTime;
    FormMain.ProgressBar1.StepIt;
    deExpSpeciality.Date:=ADOTable1.FieldByName('ExperienceSpeciality').AsDateTime;
    eLastJob.Text:=ADOTable1.FieldByName('LastJob').AsString;
    leReason.Text:=ADOTable1.FieldByName('Reason').AsString;
    FormMain.ProgressBar1.StepIt;
    atTemp.Close;
    atTemp.TableName:='MaritalStatus';
    atTemp.Open;
    FormMain.ProgressBar1.StepIt;
    while ADOTable1.FieldByName('idMaritalStatus').AsInteger<>
               atTemp.FieldByName('idMaritalStatus').AsInteger do
       atTemp.Next;
    FormMain.ProgressBar1.StepIt;
    cbMaritalStatus.Text:=atTemp.FieldByName('MaritalStatus').AsString;
    leNomerPasporta.Text:=ADOTable1.FieldByName('PassportNomber').AsString;
    leWhoIsGiven.Text:=ADOTable1.FieldByName('WhomIsGiven').AsString;
    FormMain.ProgressBar1.StepIt;
    dePasport.Date:=ADOTable1.FieldByName('WhenIsGiven').AsDateTime;
    leAdress.Text:=ADOTable1.FieldByName('HomeAddress').AsString;
    leTelephone.Text:=ADOTable1.FieldByName('Telephone').AsString;
    FormMain.ProgressBar1.StepIt;
    leKategorijaUcheta.Text:=ADOTable1.FieldByName('Category').AsString;

    atTemp.Close;
    atTemp.TableName:='Structure';
    atTemp.Open;
    FormMain.ProgressBar1.StepIt;
    while ADOTable1.FieldByName('idStructure').AsInteger<>
               atTemp.FieldByName('idStructure').AsInteger do
       atTemp.Next;
    FormMain.ProgressBar1.StepIt;
    cbStructure.Text:=atTemp.FieldByName('Structure').AsString;

    atTemp.Close;
    atTemp.TableName:='Rank';
    atTemp.Open;
    FormMain.ProgressBar1.StepIt;
    while ADOTable1.FieldByName('idRank').AsInteger<>
               atTemp.FieldByName('idRank').AsInteger do
       atTemp.Next;
    FormMain.ProgressBar1.StepIt;
    cbRank.Text:=atTemp.FieldByName('Rank').AsString;
    leVUS.Text:=ADOTable1.FieldByName('RegistrationSpeciality').AsString;

    atTemp.Close;
    atTemp.TableName:='Validity';
    atTemp.Open;
    FormMain.ProgressBar1.StepIt;
    while ADOTable1.FieldByName('idValidity').AsInteger<>
               atTemp.FieldByName('idValidity').AsInteger do
       atTemp.Next;
    FormMain.ProgressBar1.StepIt;
    cbValidity.Text:=atTemp.FieldByName('Validity').AsString;

    atTemp.Close;
    atTemp.TableName:='Voenkomat';
    atTemp.Open;
    FormMain.ProgressBar1.StepIt;
    while ADOTable1.FieldByName('idVoenkomat').AsInteger<>
               atTemp.FieldByName('idVoenkomat').AsInteger do
       atTemp.Next;
    FormMain.ProgressBar1.StepIt;
    cbVoenkomat.Text:=atTemp.FieldByName('Voenkomat').AsString;

    leNomAccount.Text:=ADOTable1.FieldByName('NomberAccount').AsString;
    deDataZap.Date:=ADOTable1.FieldByName('Data').AsDateTime;
    leGrupaUcheta.Text:=ADOTable1.FieldByName('GroupU').AsString;
    FormMain.ProgressBar1.StepIt;
    ZapPurpose;
    FormMain.ProgressBar1.StepIt;
    ZapHoliday;
    FormMain.ProgressBar1.StepIt;
    ZapDopInfo;
    FormMain.ProgressBar1.StepIt;
    ZapFamily;
    FormMain.ProgressBar1.StepIt;
  end;
  FormMain.flagMoreKart:=false;
  FormMain.ProgressBar1.StepIt;
   leGrupaUcheta.Enabled:=False;
   leKategorijaUcheta.Enabled:=False;
   cbStructure.Enabled:=False;
   LbStructure.Enabled:=False;
   cbRank.Enabled:=False;
   LbRank.Enabled:=False;
   leVUS.Enabled:=False;
   cbValidity.Enabled:=False;
   LbValidity.Enabled:=False;
   cbVoenkomat.Enabled:=False;
   LbVoenkomat.Enabled:=False;
   leNomAccount.Enabled:=False;
  FormMain.ProgressBar1.Position:=0;
  FormMain.ProgressBar1.Max:=100;
end;

procedure TFormNewKarta.bbCancelClick(Sender: TObject);
begin
  DataModule1.RolTrans;
end;

procedure TFormNewKarta.ZapPurpose();
var
 otdelTmp: integer;
 tradeTmp: integer;
 StrTmp: string;
 i: integer;
 strSql: string;
begin
    lPurpose1.Caption:='';
    lPurpose2.Caption:='';
    strSql:='select *'
           +' from Purpose '
           +' where idSotrudnik = '
           + IntToStr(idSotrudnik);
    AQuery.Close;
    AQuery.SQL.Clear;
    AQuery.SQL.Add(strSql);
    AQuery.Open;
    if not AQuery.IsEmpty then
    begin
     AQuery.Last;
     otdelTmp:=AQuery.fieldByName('IdOtdel').AsInteger;
     tradeTmp:=AQuery.fieldByName('IdTrade').AsInteger;
     StrTmp:='C: ';
     StrTmp:=StrTmp+AQuery.fieldByName('DatePurpose').AsString;
     StrTmp:=StrTmp+'  в отдел ';

     ADOTable1.Close;
     ADOTable1.TableName:='Otdel';
     ADOTable1.Open;
     for i:=0 to ADOTable1.RecordCount do
     begin
      if ADOTable1.FieldByName('IdOtdel').AsInteger=OtdelTmp then
      begin
       StrTmp:=StrTmp+ADOTable1.fieldByName('Otdel').AsString;
       Break;
      end;
      ADOTable1.Next;
     end;
     lPurpose1.Caption:=StrTmp;

     StrTmp:=' должность: ';

     ADOTable1.Close;
     ADOTable1.TableName:='Trade';
     ADOTable1.Open;

     for i:=0 to ADOTable1.RecordCount do
     begin
      if ADOTable1.FieldByName('IdTrade').AsInteger=tradeTmp then
      begin
       StrTmp:=StrTmp+ADOTable1.fieldByName('Trade').AsString;
       StrTmp:=StrTmp+' оклад: ';
       StrTmp:=StrTmp+ADOTable1.fieldByName('Oklad').AsString;
       Break;
      end;
      ADOTable1.Next;
     end;
     lPurpose2.Caption:=StrTmp;
    end;
end;

procedure TFormNewKarta.ZapHoliday();
var
 HolidayKindTmp: integer;
 StrTmp: string;
 i: integer;
 strSql: string;
begin
   strSql:='select *'
           +' from Holiday '
           +' where idSotrudnik = '
           + IntToStr(idSotrudnik);
   AQuery.Close;
   AQuery.SQL.Clear;
   AQuery.SQL.Add(strSql);
   AQuery.Open;
   if not AQuery.IsEmpty then
   begin
    lHoliday.Caption:='';
    StrTmp:='Последний отпуск: ';
    AQuery.Last;
    HolidayKindTmp:=AQuery.fieldByName('IdHolidayKind').AsInteger;

    ADOTable1.Close;
    ADOTable1.TableName:='HolidayKind';
    ADOTable1.Open;
    for i:=0 to ADOTable1.RecordCount do
    begin
     if ADOTable1.FieldByName('IdHolidayKind').AsInteger=HolidayKindTmp then
     begin
      StrTmp:=StrTmp+ADOTable1.fieldByName('HolidayKind').AsString;
      Break;
     end;
     ADOTable1.Next;
    end;

    StrTmp:=StrTmp+' C ';
    StrTmp:=StrTmp+AQuery.fieldByName('StartHoliday').AsString;
    StrTmp:=StrTmp+'  По  ';
    StrTmp:=StrTmp+AQuery.fieldByName('EndHoliday').AsString;
    lHoliday.Caption:=StrTmp;
   end;
end;


procedure TFormNewKarta.ZapDopInfo();
var
 i: integer;
begin
  lDopInfo.Caption:='0';
  ADOTable1.Close;
  ADOTable1.TableName:='DopInformation';
  ADOTable1.Open;
  for i:=0 to ADOTable1.RecordCount do
  begin
   if ADOTable1.FieldByName('IdSotrudnik').AsInteger
      =idSotrudnik then
   begin
       lDopInfo.Caption:=
       intToStr(strToInt(lDopInfo.Caption)+1);
   end;
   ADOTable1.Next;
  end;
  if StrToInt(lDopInfo.Caption)>0 then
   lDopInfo.Caption:=
    intToStr(strToInt(lDopInfo.Caption)-1);
end;

procedure TFormNewKarta.ZapFamily;
var
  i: integer;
begin
  lKolFamily.Caption:='0';
  ADOTable1.Close;
  ADOTable1.TableName:='Family';
  ADOTable1.Open;
  for i:=0 to ADOTable1.RecordCount do
  begin
   if ADOTable1.FieldByName('IdSotrudnik').AsInteger
      =idSotrudnik then
   begin
       lKolFamily.Caption:=
       intToStr(strToInt(lKolFamily.Caption)+1);
   end;
   ADOTable1.Next;
  end;
  if StrToInt(lKolFamily.Caption)>0 then
   lKolFamily.Caption:=
    intToStr(strToInt(lKolFamily.Caption)-1);
end;


procedure TFormNewKarta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FormMain.ProgressBar1.Position:=0;
  if FormMain.flagOnGrid then FormMain.ShowGridSort
  else FormMain.ShowGrid;
end;

procedure TFormNewKarta.bbTradeClick(Sender: TObject);
begin
 FormPurpose:= TFormPurpose.Create(Self);
 FormPurpose.ShowModal;
 FormPurpose.Free;
end;

procedure TFormNewKarta.bbHolidayKindClick(Sender: TObject);
begin
 FormHoliday:= TFormHoliday.Create(Self);
 FormHoliday.ShowModal;
 FormHoliday.Free;
end;

procedure TFormNewKarta.bbDopInfoClick(Sender: TObject);
begin
 FormDopInfo:= TFormDopInfo.Create(Self);
 FormDopInfo.ShowModal;
 FormDopInfo.Free;
end;

procedure TFormNewKarta.bbEditSpravkaClick(Sender: TObject);
begin
 FormEditSprav:=TFormEditSprav.Create(self);
 FormEditSprav.ShowModal;
 FormEditSprav.Free;
end;

procedure TFormNewKarta.eFamilyKeyPress(Sender: TObject; var Key: Char);
begin
  case key of
  #13: eName.SetFocus;
  #48..#57: key:=#0;
 end;
end;

procedure TFormNewKarta.eNameKeyPress(Sender: TObject; var Key: Char);
begin
 case key of
  #13:  eOtcestvo.SetFocus;
  #48..#57: key:=#0;
 end;
end;

procedure TFormNewKarta.eOtcestvoKeyPress(Sender: TObject; var Key: Char);
begin
 case key of
  #13:  deBirthday.SetFocus;
  #48..#57: key:=#0;
 end;
end;

procedure TFormNewKarta.deBirthdaKeyPress(Sender: TObject; var Key: Char);
begin
 case key of
  #13:  eSex.SetFocus;
 end;
end;

procedure TFormNewKarta.eSexcKeyPress(Sender: TObject; var Key: Char);
begin
 case key of
  #13:  eBirth_Place.SetFocus;
  #48..#57: key:=#0;
  #14..#33: key:=#0;
  #35..#47: key:=#0;
 end;
  if key>#57 then key:=#0;
end;

procedure TFormNewKarta.eBirth_PlaceKeyPress(Sender: TObject;
  var Key: Char);
begin
 case key of
  #13:  cbNationality.SetFocus;
 end;
end;

procedure TFormNewKarta.cbNationalityKeyPress(Sender: TObject;
  var Key: Char);
begin
 case key of
  #13:  cbTradeUnion.SetFocus;
  #48..#57: key:=#0;
  #14..#33: key:=#0;
  #35..#47: key:=#0;
 end;
  if key>#57 then key:=#0;
end;

procedure TFormNewKarta.cbTradeUnionKeyPress(Sender: TObject;
  var Key: Char);
begin
 case key of
  #13:  cbEducational.SetFocus;
 end;
end;

procedure TFormNewKarta.cbEducationalKeyPress(Sender: TObject;
  var Key: Char);
begin
 case key of
  #13:  eEducationName.SetFocus;
  #48..#57: key:=#0;  
  #14..#33: key:=#0;
  #35..#47: key:=#0;
 end;
  if key>#57 then key:=#0;
end;

procedure TFormNewKarta.eEducationNameKeyPress(Sender: TObject;
  var Key: Char);
begin
 case key of
  #13:  cbTrainingKind.SetFocus;
  #48..#57: key:=#0;
 end;
end;

procedure TFormNewKarta.cbTrainingKindKeyPress(Sender: TObject;
  var Key: Char);
begin
 case key of
  #13:  eSpeciality.SetFocus;
  #48..#57: key:=#0;
  #14..#33: key:=#0;
  #35..#47: key:=#0;
 end;
  if key>#57 then key:=#0;
end;

procedure TFormNewKarta.eSpecialityKeyPress(Sender: TObject;
  var Key: Char);
begin
 case key of
  #13:  eQualification.SetFocus;
  #48..#57: key:=#0;
 end;
end;

procedure TFormNewKarta.eQualificationKeyPress(Sender: TObject;
  var Key: Char);
begin
 case key of
  #13:  eNomDiplom.SetFocus;
 end;
end;

procedure TFormNewKarta.eNomDiplomKeyPress(Sender: TObject; var Key: Char);
begin
 case key of
  #13:  deDiplom.SetFocus;
  #14..#33: key:=#0;
  #35..#47: key:=#0;
 end;
  if key>#57 then key:=#0;
end;

procedure TFormNewKarta.deDiploKeyPress(Sender: TObject; var Key: Char);
begin
 case key of
  #13:  deAllStazh.SetFocus;
 end;
end;

procedure TFormNewKarta.eAllStazhKeyPress(Sender: TObject; var Key: Char);
begin
 case key of
  #13:  deExpPredr.SetFocus;
 end;
end;

procedure TFormNewKarta.deExpPredKeyPress(Sender: TObject; var Key: Char);
begin
 case key of
  #13:  deExpSpeciality.SetFocus;
 end;
end;

procedure TFormNewKarta.deExpSpecialitKeyPress(Sender: TObject;
  var Key: Char);
begin
 case key of
  #13:  eLastJob.SetFocus;
 end;
end;

procedure TFormNewKarta.eLastJobKeyPress(Sender: TObject; var Key: Char);
begin
 case key of
  #13:  leReason.SetFocus;
  #48..#57: key:=#0;
 end;
end;

procedure TFormNewKarta.leReasonKeyPress(Sender: TObject; var Key: Char);
begin
 case key of
  #13:  cbMaritalStatus.SetFocus;
  #48..#57: key:=#0;
 end;
end;

procedure TFormNewKarta.cbMaritalStatusKeyPress(Sender: TObject;
  var Key: Char);
begin
 case key of
  #13:  leNomerPasporta.SetFocus;
  #48..#57: key:=#0;  
  #14..#33: key:=#0;
  #35..#47: key:=#0;
 end;
  if key>#57 then key:=#0;
end;

procedure TFormNewKarta.leNomerPasportaKeyPress(Sender: TObject;
  var Key: Char);
begin
 case key of
  #13:  leWhoIsGiven.SetFocus;
  #14..#33: key:=#0;
  #35..#47: key:=#0;
 end;
  if key>#57 then key:=#0;
end;

procedure TFormNewKarta.leWhoIsGivenKeyPress(Sender: TObject;
  var Key: Char);
begin
 case key of
  #13:  dePasport.SetFocus;
  #48..#57: key:=#0;
 end;
end;

procedure TFormNewKarta.dePasporKeyPress(Sender: TObject; var Key: Char);
begin
 case key of
  #13:  leAdress.SetFocus;
 end;
end;

procedure TFormNewKarta.leAdressKeyPress(Sender: TObject; var Key: Char);
begin
 case key of
  #13:  leTelephone.SetFocus;
 end;
end;

procedure TFormNewKarta.leTelephoneKeyPress(Sender: TObject;
  var Key: Char);
begin
 case key of
  #13:  cbUchet.SetFocus;
  #14..#33: key:=#0;
  #35..#47: key:=#0;
 end;
  if key>#57 then key:=#0;
end;

procedure TFormNewKarta.cbUchetKeyPress(Sender: TObject; var Key: Char);
begin
 case key of
  #13: if cbUchet.Checked then leGrupaUcheta.SetFocus
       else deDataZap.SetFocus;
 end;
end;

procedure TFormNewKarta.leGrupaUchetaKeyPress(Sender: TObject;
  var Key: Char);
begin
 case key of
  #13:  leKategorijaUcheta.SetFocus;
 end;
end;

procedure TFormNewKarta.leKategorijaUchetaKeyPress(Sender: TObject;
  var Key: Char);
begin
 case key of
  #13:  cbStructure.SetFocus;
 end;
end;

procedure TFormNewKarta.cbStructureKeyPress(Sender: TObject;
  var Key: Char);
begin
 case key of
  #13:  cbRank.SetFocus;
  #48..#57: key:=#0;
  #14..#33: key:=#0;
  #35..#47: key:=#0;
 end;
  if key>#57 then key:=#0;
end;

procedure TFormNewKarta.cbRankKeyPress(Sender: TObject; var Key: Char);
begin
 case key of
  #13:  leVUS.SetFocus;
  #48..#57: key:=#0;  
  #14..#33: key:=#0;
  #35..#47: key:=#0;
 end;
  if key>#57 then key:=#0;
end;

procedure TFormNewKarta.leVUSKeyPress(Sender: TObject; var Key: Char);
begin
 case key of
  #13:  cbValidity.SetFocus;
  #48..#57: key:=#0;
 end;
end;

procedure TFormNewKarta.cbValidityKeyPress(Sender: TObject; var Key: Char);
begin
 case key of
  #13:  cbVoenkomat.SetFocus;
  #48..#57: key:=#0;  
  #14..#33: key:=#0;
  #35..#47: key:=#0;
 end;
  if key>#57 then key:=#0;
end;

procedure TFormNewKarta.cbVoenkomatKeyPress(Sender: TObject;
  var Key: Char);
begin
 case key of
  #13:  leNomAccount.SetFocus;
  #48..#57: key:=#0;  
  #14..#33: key:=#0;
  #35..#47: key:=#0;
 end;
  if key>#57 then key:=#0;
end;

procedure TFormNewKarta.leNomAccountKeyPress(Sender: TObject;
  var Key: Char);
begin
 case key of
  #13:  deDataZap.SetFocus;
 end;
end;

procedure TFormNewKarta.deDataZaKeyPress(Sender: TObject; var Key: Char);
begin
 case key of
  #13:  bbOk.SetFocus;
 end;
end;

procedure TFormNewKarta.cbUchetClick(Sender: TObject);
begin
  case cbUchet.Checked of
    True: begin
           leGrupaUcheta.Enabled:=True;
           leKategorijaUcheta.Enabled:=True;
           cbStructure.Enabled:=True;
           LbStructure.Enabled:=True;
           cbRank.Enabled:=True;
           LbRank.Enabled:=True;
           leVUS.Enabled:=True;
           cbValidity.Enabled:=True;
           LbValidity.Enabled:=True;
           cbVoenkomat.Enabled:=True;
           LbVoenkomat.Enabled:=True;
           leNomAccount.Enabled:=True;

          end;
    False:begin
           leGrupaUcheta.Enabled:=False;
           leKategorijaUcheta.Enabled:=False;
           cbStructure.Enabled:=False;
           LbStructure.Enabled:=False;
           cbRank.Enabled:=False;
           LbRank.Enabled:=False;
           leVUS.Enabled:=False;
           cbValidity.Enabled:=False;
           LbValidity.Enabled:=False;
           cbVoenkomat.Enabled:=False;
           LbVoenkomat.Enabled:=False;
           leNomAccount.Enabled:=False;
          end;
  end;
end;

procedure TFormNewKarta.eFamilyExit(Sender: TObject);
begin
 if Trim(eFamily.Text)='' then
  begin
   ShowMessage('Поле не может быть пустым');
   eFamily.SetFocus;
  end;
end;

procedure TFormNewKarta.eNameExit(Sender: TObject);
begin
 if Trim(eName.Text)='' then
  begin
   ShowMessage('Поле не может быть пустым');
   eName.SetFocus;
  end;
end;

procedure TFormNewKarta.eBirth_PlaceExit(Sender: TObject);
begin
 if Trim(eBirth_Place.Text)='' then
  begin
   ShowMessage('Поле не может быть пустым');
   eBirth_Place.SetFocus;
  end;
end;

procedure TFormNewKarta.cbNationalityExit(Sender: TObject);
begin
 if Trim(cbNationality.Text)='' then
  begin
   ShowMessage('Поле не может быть пустым');
   cbNationality.SetFocus;
  end;
end;

procedure TFormNewKarta.cbEducationalExit(Sender: TObject);
begin
 if Trim(cbEducational.Text)='' then
  begin
   ShowMessage('Поле не может быть пустым');
   cbEducational.SetFocus;
  end;
end;


procedure TFormNewKarta.cbTrainingKindExit(Sender: TObject);
begin
 if Trim(cbTrainingKind.Text)='' then
  begin
   ShowMessage('Поле не может быть пустым');
   cbTrainingKind.SetFocus;
  end;
end;


procedure TFormNewKarta.cbMaritalStatusExit(Sender: TObject);
begin
 if Trim(cbMaritalStatus.Text)='' then
  begin
   ShowMessage('Поле не может быть пустым');
   cbMaritalStatus.SetFocus;
  end;
end;

procedure TFormNewKarta.cbStructureExit(Sender: TObject);
begin
 if Trim(cbStructure.Text)='' then
  begin
   ShowMessage('Поле не может быть пустым');
   cbStructure.SetFocus;
  end;
end;

procedure TFormNewKarta.cbRankExit(Sender: TObject);
begin
 if Trim(cbRank.Text)='' then
  begin
   ShowMessage('Поле не может быть пустым');
   cbRank.SetFocus;
  end;
end;

procedure TFormNewKarta.cbValidityExit(Sender: TObject);
begin
 if Trim(cbValidity.Text)='' then
  begin
   ShowMessage('Поле не может быть пустым');
   cbValidity.SetFocus;
  end;
end;

procedure TFormNewKarta.cbVoenkomatExit(Sender: TObject);
begin
 if Trim(cbVoenkomat.Text)='' then
  begin
   ShowMessage('Поле не может быть пустым');
   cbVoenkomat.SetFocus;
  end;
end;

procedure TFormNewKarta.deExpPredrExit(Sender: TObject);
begin
 if deAllStazh.Date>deExpPredr.Date then
 begin
  ShowMessage('Общий стаж не может быть меньше стажа на предприятии!');
  deExpPredr.SetFocus;
 end;
end;

procedure TFormNewKarta.deExpSpecialityExit(Sender: TObject);
begin
 if deExpPredr.Date>deExpSpeciality.Date then
 begin
  ShowMessage('Cтаж на предприятии не может быть меньше стажа по специальности!');
  deExpSpeciality.SetFocus;
 end;
end;

procedure TFormNewKarta.leNomerPasportaExit(Sender: TObject);
begin
 if Trim(leNomerPasporta.Text)='' then
  begin
   ShowMessage('Поле не может быть пустым');
   leNomerPasporta.SetFocus;
  end;
end;

procedure TFormNewKarta.leWhoIsGivenExit(Sender: TObject);
begin
 if Trim(leWhoIsGiven.Text)='' then
  begin
   ShowMessage('Поле не может быть пустым');
   leWhoIsGiven.SetFocus;
  end;
end;

procedure TFormNewKarta.leAdressExit(Sender: TObject);
begin
 if Trim(leAdress.Text)='' then
  begin
   ShowMessage('Поле не может быть пустым');
   leAdress.SetFocus;
  end;
end;

procedure TFormNewKarta.eEducationNameExit(Sender: TObject);
begin
 if Trim(eEducationName.Text)='' then
  begin
   ShowMessage('Поле не может быть пустым');
   eEducationName.SetFocus;
  end;
end;

procedure TFormNewKarta.eSpecialityExit(Sender: TObject);
begin
 if Trim(eSpeciality.Text)='' then
  begin
   ShowMessage('Поле не может быть пустым');
   eSpeciality.SetFocus;
  end;
end;

procedure TFormNewKarta.eNomDiplomExit(Sender: TObject);
begin
 if Trim(eNomDiplom.Text)='' then
  begin
   ShowMessage('Поле не может быть пустым');
   eNomDiplom.SetFocus;
  end;
end;

end.
