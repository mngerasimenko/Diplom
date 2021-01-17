unit UnitDelSotr;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, ToolEdit, ComCtrls;

type
  TFormDelitSotr = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    deDatePurpose: TDateEdit;
    leBasis: TLabeledEdit;
    Panel2: TPanel;
    bbDelSotr: TBitBtn;
    bbCancel: TBitBtn;
  private
    { Private declarations }
  public

    { Public declarations }
  end;

var
  FormDelitSotr: TFormDelitSotr;

implementation
//uses MainUnit;
{$R *.dfm}

end.
