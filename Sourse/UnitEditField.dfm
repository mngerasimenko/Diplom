object fEditField: TfEditField
  Left = 275
  Top = 222
  BorderStyle = bsDialog
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
  ClientHeight = 106
  ClientWidth = 278
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object OKBtn: TButton
    Left = 55
    Top = 73
    Width = 75
    Height = 25
    Caption = 'OK'
    Default = True
    ModalResult = 1
    TabOrder = 0
  end
  object CancelBtn: TButton
    Left = 143
    Top = 73
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Cancel'
    ModalResult = 2
    TabOrder = 1
    OnClick = CancelBtnClick
  end
  object GroupBox1: TGroupBox
    Left = 2
    Top = 1
    Width = 275
    Height = 65
    Caption = #1048#1079#1084#1077#1085#1080#1090#1077' '#1079#1072#1087#1080#1089#1100
    TabOrder = 2
    object eEdit: TEdit
      Left = 8
      Top = 24
      Width = 260
      Height = 21
      TabOrder = 0
      Text = 'eEdit'
    end
  end
end
