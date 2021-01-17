unit UnitInfo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, RXCtrls, UnitDataModule, DB, ADODB, Buttons,
  UnitPrint, IniFiles, ComCtrls;

type
  TFormInfo = class(TForm)
    RxLabel1: TRxLabel;
    Panel1: TPanel;
    ScrollBox1: TScrollBox;
    cbSurname: TCheckBox;
    cbName: TCheckBox;
    cbOrtch: TCheckBox;
    cbNationality: TCheckBox;
    cbBirthPlace: TCheckBox;
    cbBirthday: TCheckBox;
    cbTradeUnion: TCheckBox;
    cbEducation: TCheckBox;
    cbEducationName: TCheckBox;
    cbTrainingKind: TCheckBox;
    cbSpeciality: TCheckBox;
    gbGeneral: TGroupBox;
    gbEducational: TGroupBox;
    cbQulification: TCheckBox;
    cbSex: TCheckBox;
    cbNomDiplom: TCheckBox;
    cbDateDiplom: TCheckBox;
    gbMaritalStatus: TGroupBox;
    cbMaritalStatus: TCheckBox;
    cbFamily: TCheckBox;
    gbLastJob: TGroupBox;
    cbLastJob: TCheckBox;
    cbReason: TCheckBox;
    GroupBox1: TGroupBox;
    cbExpGeneral: TCheckBox;
    cbExpPredpr: TCheckBox;
    cbExpSpeciality: TCheckBox;
    gbPurpose: TGroupBox;
    cbPurpose: TCheckBox;
    gbHoliday: TGroupBox;
    gbVoenkom: TGroupBox;
    gbDopInfo: TGroupBox;
    cbHoliday: TCheckBox;
    cbDopInfo: TCheckBox;
    cbGroupU: TCheckBox;
    cbCategory: TCheckBox;
    cbStructure: TCheckBox;
    cbRank: TCheckBox;
    cbRegisrtSpecial: TCheckBox;
    cbValidity: TCheckBox;
    cbVoenkomat: TCheckBox;
    cbNomberAccount: TCheckBox;
    cbPassportNomber: TCheckBox;
    cbWhomIsGiven: TCheckBox;
    cbWhenIsGiven: TCheckBox;
    cbHomeAddres: TCheckBox;
    cbTelephone: TCheckBox;
    cbOtdel: TCheckBox;
    cbTrade: TCheckBox;
    cbOklad: TCheckBox;
    Panel2: TPanel;
    bbPrint: TBitBtn;
    BitBtn2: TBitBtn;
    PanelProgres: TPanel;
    RxLabel2: TRxLabel;
    ProgressBar: TProgressBar;
    procedure ScrollBox1MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure ScrollBox1MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bbPrintClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
   IniFile: TIniFile;
  end;

var
  FormInfo: TFormInfo;

implementation

{$R *.dfm}

procedure TFormInfo.ScrollBox1MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
 ScrollBox1.VertScrollBar.Position:=ScrollBox1.VertScrollBar.Position+5;
 ScrollBox1.Repaint;
end;

procedure TFormInfo.ScrollBox1MouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
 ScrollBox1.VertScrollBar.Position:=ScrollBox1.VertScrollBar.Position-5;
 ScrollBox1.Repaint;
end;

procedure TFormInfo.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=27 then close;
end;

procedure TFormInfo.bbPrintClick(Sender: TObject);
begin
 PanelProgres.Show;
 PanelProgres.Repaint;
 FormPrint:=TFormPrint.Create(self);
 FormPrint.QuickRep.Preview;
 FormPrint.Free;
 ProgressBar.Position:=0;
 PanelProgres.Hide;
 Close;
end;

procedure TFormInfo.FormCreate(Sender: TObject);
begin
 IniFile:=TIniFile.Create('DATA\OK.ini');
 cbSurname.Checked:=Inifile.ReadBool('Print','Surname',False);
 cbName.Checked:=Inifile.ReadBool('Print','Name',False);
 cbOrtch.Checked:=Inifile.ReadBool('Print','Ortch',False);
 cbSex.Checked:=Inifile.ReadBool('Print','Sex',False);
 cbBirthday.Checked:=Inifile.ReadBool('Print','Birthday',False);
 cbBirthPlace.Checked:=Inifile.ReadBool('Print','BirthPlace',False);
 cbNationality.Checked:=Inifile.ReadBool('Print','Nationality',False);
 cbTradeUnion.Checked:=Inifile.ReadBool('Print','TradeUnion',False);
 cbEducation.Checked:=Inifile.ReadBool('Print','Education',False);
 cbEducationName.Checked:=Inifile.ReadBool('Print','EducationName',False);
 cbTrainingKind.Checked:=Inifile.ReadBool('Print','TrainingKind',False);
 cbSpeciality.Checked:=Inifile.ReadBool('Print','Speciality',False);
 cbQulification.Checked:=Inifile.ReadBool('Print','Qulification',False);
 cbNomDiplom.Checked:=Inifile.ReadBool('Print','NomDiplom',False);
 cbDateDiplom.Checked:=Inifile.ReadBool('Print','DateDiplom',False);
 cbExpGeneral.Checked:=Inifile.ReadBool('Print','ExpGeneral',False);
 cbExpPredpr.Checked:=Inifile.ReadBool('Print','ExpPredpr',False);
 cbExpSpeciality.Checked:=Inifile.ReadBool('Print','ExpSpeciality',False);
 cbLastJob.Checked:=Inifile.ReadBool('Print','LastJob',False);
 cbReason.Checked:=Inifile.ReadBool('Print','Reason',False);
 cbMaritalStatus.Checked:=Inifile.ReadBool('Print','MaritalStatus',False);
 cbFamily.Checked:=Inifile.ReadBool('Print','Family',False);
 cbPurpose.Checked:=Inifile.ReadBool('Print','Purpose',False);
 cbHoliday.Checked:=Inifile.ReadBool('Print','Holiday',False);
 cbDopInfo.Checked:=Inifile.ReadBool('Print','DopInfo',False);
 cbGroupU.Checked:=Inifile.ReadBool('Print','GroupU',False);
 cbCategory.Checked:=Inifile.ReadBool('Print','Category',False);
 cbStructure.Checked:=Inifile.ReadBool('Print','Structure',False);
 cbRank.Checked:=Inifile.ReadBool('Print','Rank',False);
 cbRegisrtSpecial.Checked:=Inifile.ReadBool('Print','RegisrtSpecial',False);
 cbValidity.Checked:=Inifile.ReadBool('Print','Validity',False);
 cbVoenkomat.Checked:=Inifile.ReadBool('Print','Voenkomat',False);
 cbNomberAccount.Checked:=Inifile.ReadBool('Print','NomberAccount',False);
 cbTrade.Checked:=Inifile.ReadBool('Print','Trade',False);
 cbOtdel.Checked:=Inifile.ReadBool('Print','Otdel',False);
 cbOklad.Checked:=Inifile.ReadBool('Print','Oklad',False);
 cbPassportNomber.Checked:=Inifile.ReadBool('Print','PassportNomber',False);
 cbWhomIsGiven.Checked:=Inifile.ReadBool('Print','WhomIsGiven',False);
 cbWhenIsGiven.Checked:=Inifile.ReadBool('Print','WhenIsGiven',False);
 cbHomeAddres.Checked:=Inifile.ReadBool('Print','HomeAddres',False);
 cbTelephone.Checked:=Inifile.ReadBool('Print','Telephone',False);


end;

procedure TFormInfo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Inifile.WriteBool('Print','Surname',cbSurname.Checked);
 Inifile.WriteBool('Print','Name',cbName.Checked);
 Inifile.WriteBool('Print','Ortch',cbOrtch.Checked);
 Inifile.WriteBool('Print','Sex',cbSex.Checked);
 Inifile.WriteBool('Print','Birthday',cbBirthday.Checked);
 Inifile.WriteBool('Print','BirthPlace',cbBirthPlace.Checked);
 Inifile.WriteBool('Print','Nationality',cbNationality.Checked);
 Inifile.WriteBool('Print','TradeUnion',cbTradeUnion.Checked);
 Inifile.WriteBool('Print','Education',cbEducation.Checked);
 Inifile.WriteBool('Print','EducationName',cbEducationName.Checked);
 Inifile.WriteBool('Print','TrainingKind',cbTrainingKind.Checked);
 Inifile.WriteBool('Print','Speciality',cbSpeciality.Checked);
 Inifile.WriteBool('Print','Qulification',cbQulification.Checked);
 Inifile.WriteBool('Print','NomDiplom',cbNomDiplom.Checked);
 Inifile.WriteBool('Print','DateDiplom',cbDateDiplom.Checked);
 Inifile.WriteBool('Print','ExpGeneral',cbExpGeneral.Checked);
 Inifile.WriteBool('Print','ExpPredpr',cbExpPredpr.Checked);
 Inifile.WriteBool('Print','ExpSpeciality',cbExpSpeciality.Checked);
 Inifile.WriteBool('Print','LastJob',cbLastJob.Checked);
 Inifile.WriteBool('Print','Reason',cbReason.Checked);
 Inifile.WriteBool('Print','MaritalStatus',cbMaritalStatus.Checked);
 Inifile.WriteBool('Print','Family',cbFamily.Checked);
 Inifile.WriteBool('Print','Purpose',cbPurpose.Checked);
 Inifile.WriteBool('Print','Holiday',cbHoliday.Checked);
 Inifile.WriteBool('Print','DopInfo',cbDopInfo.Checked);
 Inifile.WriteBool('Print','GroupU',cbGroupU.Checked);
 Inifile.WriteBool('Print','Category',cbCategory.Checked);
 Inifile.WriteBool('Print','Structure',cbStructure.Checked);
 Inifile.WriteBool('Print','Rank',cbRank.Checked);
 Inifile.WriteBool('Print','RegisrtSpecial',cbRegisrtSpecial.Checked);
 Inifile.WriteBool('Print','Validity',cbValidity.Checked);
 Inifile.WriteBool('Print','Voenkomat',cbVoenkomat.Checked);
 Inifile.WriteBool('Print','NomberAccount',cbNomberAccount.Checked);
 Inifile.WriteBool('Print','Trade',cbTrade.Checked);
 Inifile.WriteBool('Print','Otdel',cbOtdel.Checked);
 Inifile.WriteBool('Print','Oklad',cbOklad.Checked);
 Inifile.WriteBool('Print','PassportNomber',cbPassportNomber.Checked);
 Inifile.WriteBool('Print','WhomIsGiven',cbWhomIsGiven.Checked);
 Inifile.WriteBool('Print','WhenIsGiven',cbWhenIsGiven.Checked);
 Inifile.WriteBool('Print','HomeAddres',cbHomeAddres.Checked);
 Inifile.WriteBool('Print','Telephone',cbTelephone.Checked);

 IniFile.Destroy;
end;

end.
