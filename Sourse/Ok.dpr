program Ok;

uses
  Forms,
  MainUnit in 'MainUnit.pas' {FormMain},
  UnitDataModule in 'UnitDataModule.pas' {DataModule1: TDataModule},
  UnitEditSpravka in 'UnitEditSpravka.pas' {FormEditSprav},
  UnitEditField in 'UnitEditField.pas' {fEditField},
  UnitNewKarta in 'UnitNewKarta.pas' {FormNewKarta},
  UnitFamily in 'UnitFamily.pas' {FormFamily},
  UnitFamilyAdd in 'UnitFamilyAdd.pas' {FormFamilyAdd},
  UnitPurpose in 'UnitPurpose.pas' {FormPurpose},
  UnitPurposeAdd in 'UnitPurposeAdd.pas' {FormPurposeAdd},
  UnitHoliday in 'UnitHoliday.pas' {FormHoliday},
  UnitHolidayAdd in 'UnitHolidayAdd.pas' {FormHolidayAdd},
  UnitDopInfo in 'UnitDopInfo.pas' {FormDopInfo},
  UnitDopInfoAdd in 'UnitDopInfoAdd.pas' {FormDopInfoAdd},
  UnitDelSotr in 'UnitDelSotr.pas' {FormDelitSotr},
  UnitZastav in 'UnitZastav.pas' {FormZastav},
  Unit_Pass in 'Unit_Pass.pas' {Form_Pass},
  Unit_Change_Pass in 'Unit_Change_Pass.pas' {Form_Change_Pass},
  UnitAnaliz in 'UnitAnaliz.pas' {FormAnaliz},
  UnitInfo in 'UnitInfo.pas' {FormInfo},
  UnitPrint in 'UnitPrint.pas' {FormPrint},
  UnitPrintSpisok in 'UnitPrintSpisok.pas' {FormPrintSpisok},
  UnitAbout in 'UnitAbout.pas' {FormAbout};

{$R *.res}

begin
  Application.Initialize;

//  Application.CreateForm(TFormZastav, FormZastav);
  FormZastav:=TFormZastav.Create(Application);
  FormZastav.Show;
  FormZastav.Update;
  Application.Title := 'Кадровый учет предприятия';
  Application.HelpFile:='Help.hlp';

//  Application.CreateForm(TFormFamilyAdd, FormFamilyAdd);
//  Application.CreateForm(TFormFamily, FormFamily);
//  Application.CreateForm(TFormNewKarta, FormNewKarta);
//  Application.HelpFile := 'C:\Work_5_Kurs\DIPLOM\Help.hlp';
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TfEditField, fEditField);
  Application.CreateForm(TFormEditSprav, FormEditSprav);
  Application.CreateForm(TFormPrintSpisok, FormPrintSpisok);
  Application.CreateForm(TFormAbout, FormAbout);
  //  Application.CreateForm(TFormAnaliz, FormAnaliz);
//  Application.CreateForm(TFormPrint, FormPrint);
  //  Application.CreateForm(TFormInfo, FormInfo);
  //  Application.CreateForm(TForm_Pass, Form_Pass);
  //  Application.CreateForm(TForm_Change_Pass, Form_Change_Pass);
  //  Application.CreateForm(TFormDelitSotr, FormDelitSotr);
  //  Application.CreateForm(TFormHolidayAdd, FormHolidayAdd);
//  Application.CreateForm(TFormDopInfo, FormDopInfo);
//  Application.CreateForm(TFormDopInfoAdd, FormDopInfoAdd);
//  Application.CreateForm(TFormPurposeAdd, FormPurposeAdd);
//  Application.CreateForm(TFormHoliday, FormHoliday);
//  Application.CreateForm(TFormPurpose, FormPurpose);
    FormZastav.Hide;
    FormZastav.Free;
    Form_Pass:=TForm_Pass.Create(Application);
    Form_Pass.ShowModal;
//    Application.Run;
    Form_Pass.Free;
    FormMain.Free;
    fEditField.Free;
    FormEditSprav.Free;
    DataModule1.Free;
end.
