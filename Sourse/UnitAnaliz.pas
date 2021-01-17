unit UnitAnaliz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UnitDataModule, ExtCtrls, DB, ADODB, ComCtrls, StdCtrls, Buttons,
  Printers;

type
  TFormAnaliz = class(TForm)
    PageControl1: TPageControl;
    tsAge: TTabSheet;
    tsNationality: TTabSheet;
    Panel1: TPanel;
    pAge: TPanel;
    aqSostav: TADOQuery;
    Panel2: TPanel;
    pbAge: TPaintBox;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    ScrollBox1: TScrollBox;
    Shape1: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Shape2: TShape;
    Shape4: TShape;
    Label3: TLabel;
    Label4: TLabel;
    Shape3: TShape;
    Shape11: TShape;
    Label5: TLabel;
    Label6: TLabel;
    Shape10: TShape;
    Shape9: TShape;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    pbNationality: TPaintBox;
    bbPrinter: TBitBtn;
    bbClose: TBitBtn;
    bbSavePict: TBitBtn;
    SaveDialog: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure pbAgePaint(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure pbNationalityPaint(Sender: TObject);
    procedure bbPrinterClick(Sender: TObject);
    procedure bbSavePictClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  age:array [1..8] of integer;
  national:array of record
              nationality:string;
              Count:integer;
                    end;
  end;

var
  FormAnaliz: TFormAnaliz;

implementation

uses DateUtils, Math;

{$R *.dfm}

procedure TFormAnaliz.FormCreate(Sender: TObject);
var
// aL: integer;
// aH : integer;
 Man:integer;
 SqlStr:string;
 begin
  SqlStr:='select Sotrudnik.birthDay from Sotrudnik';
  aqSostav.Active:=False;
  aqSostav.SQL.Clear;
  aqSostav.SQL.Add(SqlStr);
  aqSostav.Active:=True;
  aqSostav.First;
  while not(aqSostav.Eof) do
  begin
   Man:=YearsBetween(aqSostav.FieldByName('BirthDay').AsDateTime, Date);
   if Man <=20 then inc(age[1])
   else if (Man > 20) AND (Man <=30) then inc(age[2])
   else if (Man > 30) AND (Man <=40) then inc(age[3])
   else if (Man > 40) AND (Man <=50) then inc(age[4])
   else if (Man > 50) AND (Man <=60) then inc(age[5])
   else if (Man > 60) AND (Man <=70) then inc(age[6])
   else if (Man > 70) then inc(age[7]);
   aqSostav.Next;
  end;
end;

procedure TFormAnaliz.pbAgePaint(Sender: TObject);
var i:integer;
  H,W, Max:integer;
  mas:array [1..7] of real;
begin
  Max:=Age[1];
  for i:=1 to 7 do if Max< Age[i] then Max:=Age[i];
  for i:=1 to 7 do mas[i]:=Age[i]/Max;
  with pbAge do
  begin
   Canvas.Pen.Color:=clBlack;
   canvas.Brush.Color:=clWhite;
   canvas.Rectangle(100,20,Width-20,Height-20);
   H:=Height - 80;
   W:=round((Width-160)/7);
   for i:=1 to 7 do
   begin
    case i of
     1:canvas.Brush.Color:=clGreen;
     2:canvas.Brush.Color:=clBlue;
     3:canvas.Brush.Color:=clYellow;
     4:canvas.Brush.Color:=clFuchsia;
     5:canvas.Brush.Color:=clAqua;
     6:canvas.Brush.Color:=clRed;
     7:canvas.Brush.Color:=clLime;
    end;
    canvas.Rectangle((i-1)*W+120, (Height - 40)-round(H*mas[i]), (i*W-3)+120,Height - 40);
    canvas.Brush.Color:=clWhite;
    Canvas.TextOut((i-1)*W+120,Height - 40,' '+IntToStr(Age[i])+' чел.');
   end //for
  end;
end;

procedure TFormAnaliz.FormPaint(Sender: TObject);
begin
//pbAge.Repaint;
end;

procedure TFormAnaliz.pbNationalityPaint(Sender: TObject);
var
  SqlStr:string;
  i,Count, W,H, Max:integer;
//  a:boolean;
  mas:array of real;
begin
 SqlStr:=' select nationality.Nationality, count(Sotrudnik.idSotrudnik)'+
         ' from sotrudnik, Nationality'+
         ' where Nationality.IdNationality = Sotrudnik.IdNationality'+
         ' group by Nationality';
 aqSostav.Active:=False;
 aqSostav.SQL.Clear;
 aqSostav.SQL.Add(SqlStr);
 aqSostav.Active:=True;
 COUNT:=0;
 aqSostav.First;
 while not(aqSostav.Eof) do
 begin
   inc(COUNT);
   SetLength(national,COUNT+1);
   national[COUNT].nationality:= aqSostav.FieldByName('Nationality').AsString;
   national[COUNT].Count:= aqSostav.FieldByName('Expr1001').AsInteger;
   aqSostav.Next;
 end;
 aqSostav.Active:=False;
 for i:=1 to COUNT do
  if national[i].Count>Max then Max:=national[i].Count;
 SetLength(mas,Count+1);
 for i:=1 to COUNT do mas[i]:= national[i].Count / Max;

 with pbNationality do
 begin
  W:= Round((Width - 20)/COUNT);
  H:= Height-40;
  Canvas.Brush.Color:=clWhite;
  canvas.Rectangle(0,0,Width,Height);
  randomize;
  for i:=1 to COUNT do
  begin
   canvas.Brush.Color:=RGB(random(256), random(256), random(256));
   canvas.Rectangle((i-1)*W+10, (Height - 20)-round(H*mas[i]), (i*W-1)+10,Height - 20);
   canvas.Brush.Color:=clWhite;
   Canvas.TextOut((i-1)*W+10,Height - 20,national[i].nationality);
   Canvas.TextOut((i-1)*W+12,Height - 40,IntToStr(national[i].Count)+'чел.');
  end; // for
 end; //width
end;

procedure TFormAnaliz.bbPrinterClick(Sender: TObject);
var
  SqlStr:string;
  i,Count, W,H, Max:integer;
  mas:array of real;
  mass:array [1..7] of real;
  nat: TBitmap;

begin
 if Printer.Printers.Count<>0 then
 begin
  if PageControl1.ActivePage.TabIndex=1 then
  begin
  SqlStr:=' select nationality.Nationality, count(Sotrudnik.idSotrudnik)'+
         ' from sotrudnik, Nationality'+
         ' where Nationality.IdNationality = Sotrudnik.IdNationality'+
         ' group by Nationality';
  aqSostav.Active:=False;
  aqSostav.SQL.Clear;
  aqSostav.SQL.Add(SqlStr);
  aqSostav.Active:=True;
  COUNT:=0;
  aqSostav.First;
  while not(aqSostav.Eof) do
  begin
    inc(COUNT);
    SetLength(national,COUNT+1);
    national[COUNT].nationality:= aqSostav.FieldByName('Nationality').AsString;
    national[COUNT].Count:= aqSostav.FieldByName('Expr1001').AsInteger;
    aqSostav.Next;
  end;
  aqSostav.Active:=False;
  Max:=national[1].Count;
  for i:=1 to COUNT do
   if national[i].Count>Max then Max:=national[i].Count;
  SetLength(mas,Count+1);
  for i:=1 to COUNT do mas[i]:= national[i].Count / Max;
  nat:=TBitmap.Create;
   nat.Width:=1024;
   W:=round(nat.Width/count-5);
   H:=500;
   nat.Height:=540;
   randomize;
   nat.Canvas.Brush.Color:=clWhite;
   nat.canvas.Rectangle(1,1,W*count+9,H-1);
   nat.Canvas.Font.Size:=18;
   for i:=1 to count do
   begin
    nat.canvas.Brush.Color:=RGB(random(256), random(256), random(256));
    nat.Canvas.Rectangle((i-1)*W+10, (H)-round(H*mas[i])+10, (i*W-8)+10,H - 20);
    nat.canvas.Brush.Color:=clWhite;
    nat.Canvas.TextOut((i-1)*W+12,H - 50,national[i].nationality);
    nat.Canvas.TextOut((i-1)*W+12,H - 80,IntToStr(national[i].Count)+'чел.');
   end; // for
   nat.Canvas.Font.Size:=24;
   nat.Canvas.TextOut(10,500,'Национальный состав предприятия.  Дата: '+DateToStr(Date));
   Printer.Orientation:=poLandscape;
   Printer.BeginDoc;
   Printer.Canvas.StretchDraw(rect(50,50,printer.PageWidth-50,printer.PageHeight-50),nat);
   Printer.EndDoc;
   Printer.Orientation:=poPortrait;
   nat.Free;
  end;
  if PageControl1.ActivePageIndex=0 then
  begin
  Max:=Age[1];
  for i:=1 to 7 do if Max< Age[i] then Max:=Age[i];
  for i:=1 to 7 do mass[i]:=Age[i]/Max;
   nat:=TBitmap.Create;
   nat.Width:=1024;
   nat.Height:=550;
   nat.Canvas.Pen.Color:=clBlack;
   nat.canvas.Brush.Color:=clWhite;
   H:=520 ;
   W:=round((nat.Width-10)/7);
   nat.canvas.Rectangle(1,1,nat.Width-20,nat.Height-40);
   nat.Canvas.Font.Size:=14;
   for i:=1 to 7 do
   begin
    case i of
     1:Begin nat.Canvas.TextOut((i-1)*W+12,H - 40,' до 20 лет');
             nat.canvas.Brush.Color:=clGreen;
       end;
     2:begin nat.Canvas.TextOut((i-1)*W+12,H - 40,' 21-30 лет');
             nat.canvas.Brush.Color:=clBlue;
       end;
     3:begin nat.Canvas.TextOut((i-1)*W+12,H - 40,' 31-40 лет');
             nat.canvas.Brush.Color:=clYellow;
       end;
     4:begin nat.Canvas.TextOut((i-1)*W+12,H - 40,' 41-50 лет');
             nat.canvas.Brush.Color:=clFuchsia;
       end;
     5:begin nat.Canvas.TextOut((i-1)*W+12,H - 40,' 51-60 лет');
             nat.canvas.Brush.Color:=clAqua;
       end;
     6:begin nat.Canvas.TextOut((i-1)*W+12,H - 40,' 61-70 лет');
             nat.canvas.Brush.Color:=clRed;
       end;
     7:begin nat.Canvas.TextOut((i-1)*W+12,H - 40,' более 71');
             nat.canvas.Brush.Color:=clLime;
       end;
    end;

    nat.canvas.Rectangle((i-1)*W+10, (H - 40)-round((H-50)*mass[i]), (i*W-3)+10,H - 40);
    nat.canvas.Brush.Color:=clWhite;
    nat.Canvas.TextOut((i-1)*W+12,H - 70,' '+IntToStr(Age[i])+' чел.');
   end; //for
   nat.Canvas.Font.Size:=24;
   nat.Canvas.TextOut(10,510,'Возрастной состав предприятия.  Дата: '+DateToStr(Date));
   Printer.Orientation:=poLandscape;
   Printer.BeginDoc;
   Printer.Canvas.StretchDraw(rect(50,50,printer.PageWidth-50,printer.PageHeight-50),nat);
   Printer.EndDoc;
   nat.Free;
   end;
  end
  else ShowMessage('В системе не установленно не одного принтера!');
end;



procedure TFormAnaliz.bbSavePictClick(Sender: TObject);
var
  SqlStr:string;
  i,Count, W,H, Max:integer;
  nat: TBitmap;
  mas:array of real;
  mass:array [1..7] of real;
begin
 if PageControl1.ActivePage.TabIndex=1 then
 begin
  SqlStr:=' select nationality.Nationality, count(Sotrudnik.idSotrudnik)'+
         ' from sotrudnik, Nationality'+
         ' where Nationality.IdNationality = Sotrudnik.IdNationality'+
         ' group by Nationality';
  aqSostav.Active:=False;
  aqSostav.SQL.Clear;
  aqSostav.SQL.Add(SqlStr);
  aqSostav.Active:=True;
  COUNT:=0;
  aqSostav.First;
  while not(aqSostav.Eof) do
  begin
    inc(COUNT);
    SetLength(national,COUNT+1);
    national[COUNT].nationality:= aqSostav.FieldByName('Nationality').AsString;
    national[COUNT].Count:= aqSostav.FieldByName('Expr1001').AsInteger;
    aqSostav.Next;
  end;
  aqSostav.Active:=False;
  Max:=national[1].Count;
  for i:=1 to COUNT do
   if national[i].Count>Max then Max:=national[i].Count;
  SetLength(mas,Count+1);
  for i:=1 to COUNT do mas[i]:= national[i].Count / Max;
   nat:=TBitmap.Create;
   nat.Width:=1024;
   W:=round(nat.Width/count-5);
   H:=500;
   nat.Height:=540;
   randomize;
   nat.Canvas.Brush.Color:=clWhite;
   nat.canvas.Rectangle(1,1,W*count+9,H-1);
   for i:=1 to count do
   begin
    nat.canvas.Brush.Color:=RGB(random(256), random(256), random(256));
    nat.Canvas.Rectangle((i-1)*W+10, (H)-round(H*mas[i])+10, (i*W-8)+10,H - 20);
    nat.canvas.Brush.Color:=clWhite;
    nat.Canvas.TextOut((i-1)*W+10,H - 20,national[i].nationality);
    nat.Canvas.TextOut((i-1)*W+12,H - 40,IntToStr(national[i].Count)+'чел.');
   end; // for
   nat.Canvas.Font.Size:=16;
   nat.Canvas.TextOut(10,510,'Национальный состав предприятия.  Дата: '+DateToStr(Date));
   If SaveDialog.Execute then
      nat.SaveToFile(SaveDialog.FileName);
   nat.Free;
 end;
 if PageControl1.ActivePageIndex=0 then
 begin
  Max:=Age[1];
  for i:=1 to 7 do if Max< Age[i] then Max:=Age[i];
  for i:=1 to 7 do mass[i]:=Age[i]/Max;
   nat:=TBitmap.Create;
   nat.Width:=1024;
   nat.Height:=550;
   nat.Canvas.Pen.Color:=clBlack;
   nat.canvas.Brush.Color:=clWhite;
   H:=520 ;
   W:=round((nat.Width-10)/7);
   nat.canvas.Rectangle(1,1,nat.Width-20,nat.Height-40);
   for i:=1 to 7 do
   begin
    case i of
     1:Begin nat.Canvas.TextOut((i-1)*W+12,H - 25,' до 20 лет');
             nat.canvas.Brush.Color:=clGreen;
       end;
     2:begin nat.Canvas.TextOut((i-1)*W+12,H - 25,' 21-30 лет');
             nat.canvas.Brush.Color:=clBlue;
       end;
     3:begin nat.Canvas.TextOut((i-1)*W+12,H - 25,' 31-40 лет');
             nat.canvas.Brush.Color:=clYellow;
       end;
     4:begin nat.Canvas.TextOut((i-1)*W+12,H - 25,' 41-50 лет');
             nat.canvas.Brush.Color:=clFuchsia;
       end;
     5:begin nat.Canvas.TextOut((i-1)*W+12,H - 25,' 51-60 лет');
             nat.canvas.Brush.Color:=clAqua;
       end;
     6:begin nat.Canvas.TextOut((i-1)*W+12,H - 25,' 61-70 лет');
             nat.canvas.Brush.Color:=clRed;
       end;
     7:begin nat.Canvas.TextOut((i-1)*W+12,H - 25,' более 71');
             nat.canvas.Brush.Color:=clLime;
       end;
    end;

    nat.canvas.Rectangle((i-1)*W+10, (H - 40)-round((H-50)*mass[i]), (i*W-3)+10,H - 40);
    nat.canvas.Brush.Color:=clWhite;
    nat.Canvas.TextOut((i-1)*W+12,H - 40,' '+IntToStr(Age[i])+' чел.');
   end; //for
   nat.Canvas.Font.Size:=16;
   nat.Canvas.TextOut(10,525,'Возрастной состав предприятия.  Дата: '+DateToStr(Date));
   If SaveDialog.Execute then
      nat.SaveToFile(SaveDialog.FileName);
   nat.Free;
  end;
end;







end.
