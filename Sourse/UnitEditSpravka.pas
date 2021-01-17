unit UnitEditSpravka;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, UnitDataModule, DB, ADODB,
  Grids, DBGrids;

type
    TFormEditSprav = class(TForm)
    pcEditSpravka: TPageControl;
    tsNationality: TTabSheet;
    Bevel1: TBevel;
    bbAddNational: TBitBtn;
    bbEditNational: TBitBtn;
    bbDelNational: TBitBtn;
    tsEducation: TTabSheet;
    Bevel2: TBevel;
    bbOk: TBitBtn;
    bbDelEdu: TBitBtn;
    bbEditEdu: TBitBtn;
    bbAddEdu: TBitBtn;
    aqSpravka: TADOQuery;
    dbgNationality: TDBGrid;
    DataSource1: TDataSource;
    dbgEducation: TDBGrid;
    aqWork: TADOQuery;
    tsTrainingKind: TTabSheet;
    dbgTrainingKind: TDBGrid;
    Bevel3: TBevel;
    bbDelTrKind: TBitBtn;
    bbEditTrKind: TBitBtn;
    bbAddTrKind: TBitBtn;
    tsMaritalStatus: TTabSheet;
    dbgMAritalStatus: TDBGrid;
    Bevel4: TBevel;
    bbDelMarStat: TBitBtn;
    bbEditMarStat: TBitBtn;
    bbAddMarStat: TBitBtn;
    tsFamilyKind: TTabSheet;
    dbgFamilyKind: TDBGrid;
    Bevel5: TBevel;
    bbDelFamilyKind: TBitBtn;
    bbEditFamilyKind: TBitBtn;
    bbAddFamilyKind: TBitBtn;
    tsOtdel: TTabSheet;
    dbgOtdel: TDBGrid;
    Bevel6: TBevel;
    bbDelOtdel: TBitBtn;
    bbEditOtdel: TBitBtn;
    bbAddOtdel: TBitBtn;
    tsTrade: TTabSheet;
    dbgTrade: TDBGrid;
    Bevel7: TBevel;
    bbDelTrade: TBitBtn;
    bbEditTrada: TBitBtn;
    bbAddTrade: TBitBtn;
    tsHolidayKind: TTabSheet;
    dbgHolidayKind: TDBGrid;
    Bevel8: TBevel;
    bbDelHolidayKind: TBitBtn;
    bbEditHolidayKind: TBitBtn;
    bbAddHolidayKind: TBitBtn;
    tsStructure: TTabSheet;
    DBGrid2: TDBGrid;
    Bevel9: TBevel;
    bbDelStructure: TBitBtn;
    bbEditStructure: TBitBtn;
    bbAddStructure: TBitBtn;
    tsRank: TTabSheet;
    dbgRank: TDBGrid;
    Bevel10: TBevel;
    bbDelRank: TBitBtn;
    bbEditRank: TBitBtn;
    bbAddRank: TBitBtn;
    tsValidity: TTabSheet;
    dbgValidity: TDBGrid;
    Bevel11: TBevel;
    bbDelValidity: TBitBtn;
    bbEditValidity: TBitBtn;
    bbAddValidity: TBitBtn;
    tsVoenkomat: TTabSheet;
    dbgVoenkomat: TDBGrid;
    Bevel12: TBevel;
    bbDelVoenkomat: TBitBtn;
    bbEditVoenkomat: TBitBtn;
    bbAddVoenkomat: TBitBtn;
    bbApply: TBitBtn;
    bbCancel: TBitBtn;
    Bevel13: TBevel;
    BitBtn1: TBitBtn;
    bbApply2: TBitBtn;
    bbOk2: TBitBtn;
    Bevel14: TBevel;
    BitBtn4: TBitBtn;
    bbApply1: TBitBtn;
    bbOk1: TBitBtn;
    Bevel15: TBevel;
    BitBtn2: TBitBtn;
    bbApply3: TBitBtn;
    bbOk3: TBitBtn;
    Bevel16: TBevel;
    BitBtn3: TBitBtn;
    bbApply4: TBitBtn;
    bbOk4: TBitBtn;
    Bevel17: TBevel;
    BitBtn5: TBitBtn;
    bbApply5: TBitBtn;
    bbOk5: TBitBtn;
    Bevel18: TBevel;
    BitBtn6: TBitBtn;
    bbApply6: TBitBtn;
    bbOk6: TBitBtn;
    Bevel19: TBevel;
    BitBtn7: TBitBtn;
    bbApply7: TBitBtn;
    bbOk7: TBitBtn;
    Bevel20: TBevel;
    BitBtn8: TBitBtn;
    bbApply8: TBitBtn;
    bbOk8: TBitBtn;
    Bevel21: TBevel;
    BitBtn9: TBitBtn;
    bbApply9: TBitBtn;
    bbOk9: TBitBtn;
    Bevel22: TBevel;
    BitBtn10: TBitBtn;
    bbApply10: TBitBtn;
    bbOk10: TBitBtn;
    Bevel23: TBevel;
    BitBtn11: TBitBtn;
    bbApply11: TBitBtn;
    bbOk11: TBitBtn;
    Bevel24: TBevel;

    procedure tsNationalityShow(Sender: TObject);
    procedure tsEducationShow(Sender: TObject);
    procedure bbEditNationalClick(Sender: TObject);
    procedure bbAddNationalClick(Sender: TObject);
    procedure bbAddEduClick(Sender: TObject);
    procedure bbDelNationalClick(Sender: TObject);
    procedure bbEditEduClick(Sender: TObject);
    procedure bbDelEduClick(Sender: TObject);

    procedure bbAddTrKindClick(Sender: TObject);
    procedure tsTrainingKindShow(Sender: TObject);
    procedure bbEditTrKindClick(Sender: TObject);
    procedure bbDelTrKindClick(Sender: TObject);

    procedure tsMaritalStatusShow(Sender: TObject);
    procedure bbAddMarStatClick(Sender: TObject);
    procedure bbEditMarStatClick(Sender: TObject);
    procedure bbDelMarStatClick(Sender: TObject);

    procedure bbAddOtdelClick(Sender: TObject);
    procedure tsOtdelShow(Sender: TObject);
    procedure bbEditOtdelClick(Sender: TObject);
    procedure bbDelOtdelClick(Sender: TObject);
    procedure bbAddFamilyKindClick(Sender: TObject);
    procedure bbEditFamilyKindClick(Sender: TObject);
    procedure bbDelFamilyKindClick(Sender: TObject);
    procedure tsFamilyKindShow(Sender: TObject);
    procedure tsTradeShow(Sender: TObject);
    procedure bbAddTradeClick(Sender: TObject);
    procedure bbEditTradaClick(Sender: TObject);
    procedure bbDelTradeClick(Sender: TObject);
    procedure tsHolidayKindShow(Sender: TObject);
    procedure bbAddHolidayKindClick(Sender: TObject);
    procedure bbEditHolidayKindClick(Sender: TObject);
    procedure bbDelHolidayKindClick(Sender: TObject);
    procedure tsStructureShow(Sender: TObject);
    procedure bbAddStructureClick(Sender: TObject);
    procedure bbEditStructureClick(Sender: TObject);
    procedure bbDelStructureClick(Sender: TObject);
    procedure tsRankShow(Sender: TObject);
    procedure bbAddRankClick(Sender: TObject);
    procedure bbEditRankClick(Sender: TObject);
    procedure bbDelRankClick(Sender: TObject);
    procedure tsValidityShow(Sender: TObject);
    procedure bbAddValidityClick(Sender: TObject);
    procedure bbEditValidityClick(Sender: TObject);
    procedure bbDelValidityClick(Sender: TObject);
    procedure tsVoenkomatShow(Sender: TObject);
    procedure bbAddVoenkomatClick(Sender: TObject);
    procedure bbEditVoenkomatClick(Sender: TObject);
    procedure bbDelVoenkomatClick(Sender: TObject);
    procedure bbOkClick(Sender: TObject);
    procedure bbApplyClick(Sender: TObject);
    procedure bbCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbOkKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    strSelect: string;
    bnIsApply: boolean;
    procedure AddNewRec(nmTable, nmId, nmZag, nmEdit: string);
    procedure EditRec(nmTable, nmId, nmZag, nmEdit: string);
    procedure DeleteRec(nmTable, nmTableStore, nmId, nmZag, nmEdit: string);
    procedure ShowSpravka(nmTable: string);
    procedure IfApply();
    procedure  StrRegistrEdit(var strNew: string);
    { Public declarations }
  end;

var
  FormEditSprav: TFormEditSprav;

implementation

uses UnitEditField, MainUnit;

{$R *.dfm}

procedure TFormEditSprav.IfApply();
begin
  if not bnIsApply then
  begin
   bbApply.Enabled:=False;
   bbApply1.Enabled:=False;
   bbApply2.Enabled:=False;
   bbApply3.Enabled:=False;
   bbApply4.Enabled:=False;
   bbApply5.Enabled:=False;
   bbApply6.Enabled:=False;
   bbApply7.Enabled:=False;
   bbApply8.Enabled:=False;
   bbApply9.Enabled:=False;
   bbApply10.Enabled:=False;
   bbApply11.Enabled:=False;
  end
  else
  begin
   bbApply.Enabled:=True;
   bbApply1.Enabled:=True;
   bbApply2.Enabled:=True;
   bbApply3.Enabled:=True;
   bbApply4.Enabled:=True;
   bbApply5.Enabled:=True;
   bbApply6.Enabled:=True;
   bbApply7.Enabled:=True;
   bbApply8.Enabled:=True;
   bbApply9.Enabled:=True;
   bbApply10.Enabled:=True;
   bbApply11.Enabled:=True;
  end;
end;

procedure TFormEditSprav.ShowSpravka(nmTable: string);
var
  StrSQL: string;
begin
  DataModule1.BegTrans;
  IfApply;
  StrSql:='select * from '+nmTable+' order by '+nmTable;
  aqSpravka.Close;
  aqSpravka.sql.Clear;
  aqSpravka.SQL.Add(StrSql);
  aqSpravka.Open;
end;

procedure TFormEditSprav.AddNewRec(nmTable, nmId, nmZag, nmEdit: string);
var
 strSql: string;
 flag: boolean;
begin
 flag:= false;
 fEditField.Caption:='Добавление '+nmZag;
 fEditField.GroupBox1.Caption:='Введите '+nmEdit+':';
 strSelect:='';
 fEditField.ShowModal;
 if fEditField.ModalResult = mrOk then
 begin
   if fEditField.eEdit.Text<>'' then
   begin
     fEditField.eEdit.Text:=Trim(fEditField.eEdit.Text);
     strSql:=fEditField.eEdit.Text;
     StrRegistrEdit(strSql);
     fEditField.eEdit.Text:=strSql;
     strSql:='Insert INTO '+nmTable+' ('+nmId+', '+nmTable+')'+
           'values('+intToStr(FormMain.IncIndex(nmId))+
           ','''+fEditField.eEdit.Text+''')';
     aqSpravka.First;
     While not aqSpravka.Eof do
     begin
       if aqSpravka.FieldByName(nmTable).AsString<>fEditField.eEdit.Text
       then aqSpravka.Next
       else begin flag:=true; break; end;
     end;
     if flag then
       ShowMessage(nmEdit+' '''+fEditField.eEdit.Text+''' уже существует!')
     else
      begin
       aqWork.Close;
       aqWork.sql.Clear;
       aqWork.sql.Add(strSQL);
       aqWork.ExecSQL;
       aqSpravka.Close;
       aqSpravka.Open;
       bnIsApply:=True;
       IfApply;
      end;
   end
   else MessageDlg('Недопустимый ввод!',mtInformation,[mbOK],0);
 end;
end;

procedure TFormEditSprav.EditRec(nmTable, nmId, nmZag, nmEdit: string);
var
 strSQL: string;
 flag: boolean;
begin
 flag:= false;
 fEditField.Caption:='Редактирование '+nmZag;
 fEditField.GroupBox1.Caption:='Измените '+nmEdit+':';
 strSelect:= aqSpravka.fieldByName(nmTable).AsString;

 fEditField.ShowModal;
 if  fEditField.ModalResult = mrOk then
 begin
   if fEditField.eEdit.Text<>'' then
   begin
    fEditField.eEdit.Text:=Trim(fEditField.eEdit.Text);
    strSql:=fEditField.eEdit.Text;
    StrRegistrEdit(strSql);
    fEditField.eEdit.Text:=strSql;
    strSQL:='Update '+nmTable+' set '+nmTable+'= '''+fEditField.eEdit.Text+
            ''' where '+nmId+'= '+ aqSpravka.fieldByName(nmId).AsString+'';
    aqSpravka.First;
    While not aqSpravka.Eof do
    begin
      if aqSpravka.FieldByName(nmTable).AsString<>fEditField.eEdit.Text
      then aqSpravka.Next
      else begin flag:=true; break; end;
    end;
    if flag then
      ShowMessage(nmEdit+' '''+fEditField.eEdit.Text+''' уже существует!'#10#13'Изменение не возможно!')
    else
     begin
      aqWork.Close;
      aqWork.SQL.Clear;
      aqWork.SQL.add(strsql);
      aqWork.ExecSQL;
      aqSpravka.Close;
      aqSpravka.Open;
      bnIsApply:=True;
      IfApply;
     end;
   end
   else MessageDlg('Недопустимый ввод!',mtInformation,[mbOK],0);
 end;
end;

procedure TFormEditSprav.DeleteRec(nmTable, nmTableStore, nmId, nmZag, nmEdit: string);
var
  strSql: string;
begin
  if  MessageDlg('Удалить '+nmEdit+' '''+
      aqSpravka.fieldByName(nmTable).AsString+'''?',
      mtWarning,[mbYes, mbCancel],0) = mrYes then
   begin
    strSql:='Select '+nmId+' from '+nmTableStore+
            ' Where '+nmTableStore+'.'+nmId+'='+
             aqSpravka.fieldByName(nmId).AsString+'';
    aqWork.Close;
    aqWork.sql.Clear;
    aqWork.sql.Add(strSQL);
//    aqWork.ExecSQL;
    aqWork.Open;
    if aqWork.IsEmpty then
    begin
     strSql:='Delete From '+nmTable+' Where '+nmId+'='+
         aqSpravka.fieldByName(nmId).AsString+'';
     aqWork.Close;
     aqWork.sql.Clear;
     aqWork.sql.Add(strSQL);
     aqWork.ExecSQL;
//     FormMain.DecIndex(nmId);
     aqSpravka.Close;
     aqSpravka.Open;
     bnIsApply:=True;
     IfApply;
    end
    else ShowMessage(nmEdit+' '''+
          aqSpravka.fieldByName(nmTable).AsString +
          ''' используется.'#10#13'Удаление не возможно!');
   end;
end;

//------------------------------------------------------------------------
procedure TFormEditSprav.tsNationalityShow(Sender: TObject);
begin
ShowSpravka('Nationality');
end;

procedure TFormEditSprav.bbAddNationalClick(Sender: TObject);
begin
 AddNewRec('Nationality','IdNationality','Национальности','Национальность');
end;

procedure TFormEditSprav.bbEditNationalClick(Sender: TObject);
begin
 EditRec('Nationality','IdNationality','Национальности','Национальность');
end;

procedure TFormEditSprav.bbDelNationalClick(Sender: TObject);
begin
 DeleteRec('Nationality','Sotrudnik','IdNationality','Национальности','Национальность');
end;
//------------------------------------------------------------------------

procedure TFormEditSprav.tsEducationShow(Sender: TObject);
begin
 ShowSpravka('Education');
end;

procedure TFormEditSprav.bbAddEduClick(Sender: TObject);
begin
 AddNewRec('Education','IdEducation','Вида образования','Вид образования');
end;

procedure TFormEditSprav.bbEditEduClick(Sender: TObject);
begin
 EditRec('Education','IdEducation','Вида образования','Вид образования');
end;

procedure TFormEditSprav.bbDelEduClick(Sender: TObject);
begin
 DeleteRec('Education','Sotrudnik','IdEducation','Вида образования','Вид образования');
end;
//------------------------------------------------------------------------

procedure TFormEditSprav.tsTrainingKindShow(Sender: TObject);
begin
 ShowSpravka('TrainingKind');
end;

procedure TFormEditSprav.bbAddTrKindClick(Sender: TObject);
begin
 AddNewRec('TrainingKind','IdTrainingKind','Вида обучения','Вид обучения');
end;

procedure TFormEditSprav.bbEditTrKindClick(Sender: TObject);
begin
 EditRec('TrainingKind','IdTrainingKind','Вида обучения','Вид обучения');
end;

procedure TFormEditSprav.bbDelTrKindClick(Sender: TObject);
begin
 DeleteRec('TrainingKind','Sotrudnik','IdTrainingKind','Вида обучения','Вид обучения');
end;
//------------------------------------------------------------------------

procedure TFormEditSprav.tsMaritalStatusShow(Sender: TObject);
begin
 ShowSpravka('MaritalStatus');
end;

procedure TFormEditSprav.bbAddMarStatClick(Sender: TObject);
begin
 AddNewRec('MaritalStatus','IdMaritalStatus','Семейного положения','Семейное положение');
end;

procedure TFormEditSprav.bbEditMarStatClick(Sender: TObject);
begin
  EditRec('MaritalStatus','IdMaritalStatus','Семейного положения','Семейное положение');
end;

procedure TFormEditSprav.bbDelMarStatClick(Sender: TObject);
begin
 DeleteRec('MaritalStatus','Sotrudnik','IdMaritalStatus','Семейного положения','Семейное положение');
end;
//------------------------------------------------------------------------

procedure TFormEditSprav.tsFamilyKindShow(Sender: TObject);
begin
 ShowSpravka('FamilyKind');
end;

procedure TFormEditSprav.bbAddFamilyKindClick(Sender: TObject);
begin
 AddNewRec('FamilyKind','IdFamilyKind','Члена семьи','Член семьи');
end;

procedure TFormEditSprav.bbEditFamilyKindClick(Sender: TObject);
begin
 EditRec('FamilyKind','IdFamilyKind','Члена семьи','Член семьи');
end;

procedure TFormEditSprav.bbDelFamilyKindClick(Sender: TObject);
begin
 DeleteRec('FamilyKind','Family','IdFamilyKind','Члена семьи','Член семьи');
end;
//------------------------------------------------------------------------

procedure TFormEditSprav.tsOtdelShow(Sender: TObject);
begin
  ShowSpravka('Otdel');
end;

procedure TFormEditSprav.bbAddOtdelClick(Sender: TObject);
begin
 AddNewRec('Otdel','IdOtdel','Отдела','Отдел');
end;

procedure TFormEditSprav.bbEditOtdelClick(Sender: TObject);
begin
 EditRec('Otdel','IdOtdel','Отдела','Отдел');
end;

procedure TFormEditSprav.bbDelOtdelClick(Sender: TObject);
begin
  DeleteRec('Otdel','Purpose','IdOtdel','Отдела','Отдел');
end;
//------------------------------------------------------------------------

procedure TFormEditSprav.tsTradeShow(Sender: TObject);
begin
// dbgTrade.Columns.Items[0].Width:=105;
// dbgTrade.Columns.Items[1].Width:=105;//(dbgTrade.Width/2);
 ShowSpravka('Trade');
end;

procedure TFormEditSprav.bbAddTradeClick(Sender: TObject);
var
 strSQL: string;
 flag: boolean;
 strTrade: string;
 strOklad: string;
 i: integer;
begin

 flag:= false;
 fEditField.Caption:='Добавление '+'Должности';
 fEditField.GroupBox1.Caption:='Введите '+'Должность'+':';
 strSelect:='';
 fEditField.ShowModal;

 if fEditField.ModalResult = mrOk then
 begin
   if fEditField.eEdit.Text<>'' then
   begin
    fEditField.eEdit.Text:=Trim(fEditField.eEdit.Text);
    strSql:=fEditField.eEdit.Text;
    StrRegistrEdit(strSql);
    fEditField.eEdit.Text:=strSql;
    i:=1;
    while (strSql[i]<>',') and ( strSql[i]<>'') do
    begin
     strTrade:=strTrade+strSql[i];
     inc(i);
    end;
    inc(i);
    while (StrLen(Pchar(strSql))>=i)do
    begin
     strOklad:=strOklad+strSql[i];
     inc(i);
    end;
   if strOklad='' then strOklad:='0';
    strSQL:='Update '+'Trade'+' set '+'Trade'+'= '''+strTrade+
            ''' ,Oklad'+'= '''+strOklad+
            ''' where '+'IdTrade'+'= '+ aqSpravka.fieldByName('IdTrade').AsString+'';
    aqSpravka.First;


     strSql:='Insert INTO '+'Trade'+' ('+'idTrade'+', '+'Trade, '+'Oklad'+')'+
           'values('+intToStr(FormMain.IncIndex('idTrade'))+
           ','''+strTrade+''','''+strOklad +''')';
     aqSpravka.First;
     While not aqSpravka.Eof do
     begin
      if (aqSpravka.FieldByName('Trade').AsString+','+aqSpravka.FieldByName('Oklad').AsString)
         <>fEditField.eEdit.Text
      then aqSpravka.Next
      else begin flag:=true; break; end;
     end;
    if flag then
      ShowMessage('Должность'+' '''+fEditField.eEdit.Text+''' уже существует!'#10#13'Изменение не возможно!')
    else
     begin
      aqWork.Close;
      aqWork.SQL.Clear;
      aqWork.SQL.add(strsql);
      aqWork.ExecSQL;
      aqSpravka.Close;
      aqSpravka.Open;
      bnIsApply:=True;
      IfApply;
     end;
   end
   else MessageDlg('Недопустимый ввод!',mtInformation,[mbOK],0);
 end;
end;

procedure TFormEditSprav.bbEditTradaClick(Sender: TObject);
var
 strSQL: string;
 flag: boolean;
 strTrade: string;
 strOklad: string;
 i: integer;
begin

 flag:= false;
 fEditField.Caption:='Редактирование '+'Должности';
 fEditField.GroupBox1.Caption:='Измените '+'Должность'+':';
 strSelect:=aqSpravka.fieldByName('Trade').AsString+',';
 strSelect:=strSelect+aqSpravka.fieldByName('Oklad').AsString;
 fEditField.ShowModal;
 if  fEditField.ModalResult = mrOk then
 begin
   if fEditField.eEdit.Text<>'' then
   begin

    fEditField.eEdit.Text:=Trim(fEditField.eEdit.Text);
    strSql:=fEditField.eEdit.Text;
    StrRegistrEdit(strSql);
    fEditField.eEdit.Text:=strSql;
    i:=1;
    while (strSql[i]<>',') and (strSql[i]<>'') do
    begin
     strTrade:=strTrade+strSql[i];
     inc(i);
    end;
    inc(i);
    while (StrLen(Pchar(strSql))>=i)do
    begin
     strOklad:=strOklad+strSql[i];
     inc(i);
    end;
   if strOklad='' then strOklad:='0';
// EditRec(nmTable, nmId, nmZag, nmEdit: string);
// EditRec('Trade','IdTrade','Должности','Должность');

    strSQL:='Update '+'Trade'+' set '+'Trade'+'= '''+strTrade+
            ''' ,Oklad'+'= '''+strOklad+
            ''' where '+'IdTrade'+'= '+ aqSpravka.fieldByName('IdTrade').AsString+'';
    aqSpravka.First;
    While not aqSpravka.Eof do
    begin
      if (aqSpravka.FieldByName('Trade').AsString+','+aqSpravka.FieldByName('Oklad').AsString)
         <>fEditField.eEdit.Text
      then aqSpravka.Next
      else begin flag:=true; break; end;
    end;
    if flag then
      ShowMessage('Должность'+' '''+fEditField.eEdit.Text+''' уже существует!'#10#13'Изменение не возможно!')
    else
     begin
      aqWork.Close;
      aqWork.SQL.Clear;
      aqWork.SQL.add(strsql);
      aqWork.ExecSQL;
      aqSpravka.Close;
      aqSpravka.Open;
      bnIsApply:=True;
      IfApply;
     end;
   end
   else MessageDlg('Недопустимый ввод!',mtInformation,[mbOK],0);
 end;
end;

procedure TFormEditSprav.bbDelTradeClick(Sender: TObject);
begin
 DeleteRec('Trade','Purpose','IdTrade','Должности','Должность');
end;
//------------------------------------------------------------------------

procedure TFormEditSprav.tsHolidayKindShow(Sender: TObject);
begin
 ShowSpravka('HolidayKind');
end;

procedure TFormEditSprav.bbAddHolidayKindClick(Sender: TObject);
begin
 AddNewRec('HolidayKind','IdHolidayKind','Вида отпуска','Вид отпуска');
end;

procedure TFormEditSprav.bbEditHolidayKindClick(Sender: TObject);
begin
 EditRec('HolidayKind','IdHolidayKind','Вида отпуска','Вид отпуска');
end;

procedure TFormEditSprav.bbDelHolidayKindClick(Sender: TObject);
begin
 DeleteRec('HolidayKind','Holiday','IdHolidayKind','Вида отпуска','Вид отпуска');
end;
//------------------------------------------------------------------------

procedure TFormEditSprav.tsStructureShow(Sender: TObject);
begin
 ShowSpravka('Structure');
end;

procedure TFormEditSprav.bbAddStructureClick(Sender: TObject);
begin
 AddNewRec('Structure','IdStructure','Состава СА','Состав СА');
end;

procedure TFormEditSprav.bbEditStructureClick(Sender: TObject);
begin
 EditRec('Structure','IdStructure','Состава СА','Состав СА');
end;

procedure TFormEditSprav.bbDelStructureClick(Sender: TObject);
begin
 DeleteRec('Structure','Sotrudnik','IdStructure','Состава СА','Состав СА');
end;
//------------------------------------------------------------------------

procedure TFormEditSprav.tsRankShow(Sender: TObject);
begin
 ShowSpravka('Rank');
end;

procedure TFormEditSprav.bbAddRankClick(Sender: TObject);
begin
 AddNewRec('Rank','IdRank','Звания','Звание');
end;

procedure TFormEditSprav.bbEditRankClick(Sender: TObject);
begin
 EditRec('Rank','IdRank','Звания','Звание');
end;

procedure TFormEditSprav.bbDelRankClick(Sender: TObject);
begin
 DeleteRec('Rank','Sotrudnik','IdRank','Звания','Звание');
end;
//------------------------------------------------------------------------

procedure TFormEditSprav.tsValidityShow(Sender: TObject);
begin
 ShowSpravka('Validity');
end;

procedure TFormEditSprav.bbAddValidityClick(Sender: TObject);
begin
 AddNewRec('Validity','IdValidity','Вида годности','Вид годности');
end;

procedure TFormEditSprav.bbEditValidityClick(Sender: TObject);
begin
 EditRec('Validity','IdValidity','Вида годности','Вид годности');
end;

procedure TFormEditSprav.bbDelValidityClick(Sender: TObject);
begin
 DeleteRec('Validity','Sotrudnik','IdValidity','Вида годности','Вид годности');
end;
//------------------------------------------------------------------------

procedure TFormEditSprav.tsVoenkomatShow(Sender: TObject);
begin
 ShowSpravka('Voenkomat');
end;

procedure TFormEditSprav.bbAddVoenkomatClick(Sender: TObject);
begin
 AddNewRec('Voenkomat','IdVoenkomat','Названия военкомата','Название военкомата');
end;

procedure TFormEditSprav.bbEditVoenkomatClick(Sender: TObject);
begin
 EditRec('Voenkomat','IdVoenkomat','Названия военкомата','Название военкомата');
end;

procedure TFormEditSprav.bbDelVoenkomatClick(Sender: TObject);
begin
 DeleteRec('Voenkomat','Sotrudnik','IdVoenkomat','Названия военкомата','Название военкомата');
end;
//------------------------------------------------------------------------

procedure TFormEditSprav.bbOkClick(Sender: TObject);
begin
 DataModule1.ComTrans;
 bnIsApply:=False;
 Close;
end;

procedure TFormEditSprav.bbApplyClick(Sender: TObject);
begin
 DataModule1.ComTrans;
 DataModule1.BegTrans;
 bnIsApply:=False;
 IfApply;
end;

procedure TFormEditSprav.bbCancelClick(Sender: TObject);
begin
 Close;
end;

procedure TFormEditSprav.FormCreate(Sender: TObject);
begin
 bnIsApply:= false;
end;

procedure TFormEditSprav.bbOkKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#27 then bbCancelClick(Sender);
end;
procedure TFormEditSprav.StrRegistrEdit(var strNew: string);
var
 strTmp: string;
begin
  strNew:=AnsiLowerCase(strNew);
  strTmp:=strNew[1];
  strTmp:= AnsiUpperCase(strTmp);
  strNew[1]:=strTmp[1];
end;

procedure TFormEditSprav.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  res: integer;
begin
 if bnIsApply then
  begin
   res:=MessageDlg('В базу были внесены изменения!'#10#13'Соранить?',
        mtInformation,[mbYes,mbNo,mbCancel],0);
   if  res=mrYes then
    begin
      DataModule1.ComTrans;
      bnIsApply:=False;
    end
   else
   if res=mrNo then
   begin
    DataModule1.RolTrans;
    bnIsApply:=False;
   end
   else
    Action:=caNone;
  end;
  FormMain.ShowGrid;
end;

end.
