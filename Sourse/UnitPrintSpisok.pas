unit UnitPrintSpisok;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFormPrintSpisok = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    ChildBand1: TQRChildBand;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLDate: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrintSpisok: TFormPrintSpisok;

implementation
uses MainUnit;

{$R *.dfm}

end.
