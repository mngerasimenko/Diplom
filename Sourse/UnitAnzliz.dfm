object FormAnaliz: TFormAnaliz
  Left = 202
  Top = 122
  Width = 544
  Height = 375
  Caption = #1040#1085#1072#1083#1080#1079' '#1089#1086#1089#1090#1072#1074#1072' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 536
    Height = 296
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1042#1086#1079#1088#1072#1089#1090#1085#1086#1081' '#1089#1086#1089#1090#1072#1074
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 528
        Height = 268
        Align = alClient
        BevelInner = bvLowered
        BevelOuter = bvLowered
        TabOrder = 0
        object s20: TShape
          Left = 72
          Top = 96
          Width = 65
          Height = 65
        end
        object s30: TShape
          Left = 184
          Top = 120
          Width = 65
          Height = 65
        end
        object s40: TShape
          Left = 312
          Top = 192
          Width = 65
          Height = 65
        end
        object s50: TShape
          Left = 288
          Top = 136
          Width = 57
          Height = 73
        end
        object s60: TShape
          Left = 392
          Top = 64
          Width = 57
          Height = 65
        end
        object s70: TShape
          Left = 216
          Top = 40
          Width = 65
          Height = 41
        end
        object s80: TShape
          Left = 400
          Top = 184
          Width = 49
          Height = 41
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1053#1072#1094#1080#1086#1085#1072#1083#1100#1085#1099#1081' '#1089#1086#1089#1090#1072#1074
      ImageIndex = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 296
    Width = 536
    Height = 52
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 1
  end
  object aqSostav: TADOQuery
    Connection = DataModule1.ADOConnection
    Parameters = <>
    Left = 328
  end
end
