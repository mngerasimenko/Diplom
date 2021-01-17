unit UnitDopInfoAdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TFormDopInfoAdd = class(TForm)
    Panel1: TPanel;
    eDopInfo: TEdit;
    Panel2: TPanel;
    bbAddDopInfo: TBitBtn;
    bbCancel: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDopInfoAdd: TFormDopInfoAdd;

implementation

{$R *.dfm}

end.
