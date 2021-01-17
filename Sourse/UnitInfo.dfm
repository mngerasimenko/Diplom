object FormInfo: TFormInfo
  Left = 197
  Top = 122
  Width = 544
  Height = 375
  Caption = #1055#1086#1076#1075#1086#1090#1086#1074#1082#1072' '#1076#1072#1085#1085#1099#1093' '#1086' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1077' '#1082' '#1087#1077#1095#1072#1090#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010002002020100000000000E80200002600000010101000000000002801
    00000E0300002800000020000000400000000100040000000000800200000000
    0000000000000000000000000000000000000000800000800000008080008000
    0000800080008080000080808000C0C0C0000000FF0000FF000000FFFF00FF00
    0000FF00FF00FFFF0000FFFFFF00000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0777777777777777777000000000000000000000000000000007000000000000
    8888888888888888887070000000000087777777777777777777070000000000
    0000000000000000000070700000078888888888888888888887070700000788
    88888888888FFF8FFF887070700007888888888888899F899F87870000000788
    8888888888888888888878707000078888888888888888888887878707000788
    888888888888888888887878070007FFFFFFFFFFFFFFFFFFFFF7878707000078
    F8F8F8F8F8F8F8F8F8FF7878070000078F700000000000000F8FF78707000000
    78F77FFFFFFFFFFFF0F8FF7807000000078F7F8F8F8F8F8FF0FF8FF707000000
    00787FFFFFFFFFFFF08FF8FF0700000000077FF8F8F8F8F8F077777700000000
    000007FFFFFFFFFFFF00000000000000000007F8F8F8F8F8FF00000000000000
    000007FFFFFFFFFFFF000000000000000000007FF8F8F8F8F8F0000000000000
    0000007FFFFFFFFFFFF000000000000000000007777777777777700000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF80001FFF000
    00FFE000007FE000003FC000001F8000000F8000000780000007800000078000
    00038000000380000003C0000003E0000003F0000003F8000003FC000003FE00
    000FFF8001FFFF8001FFFF8001FFFFC000FFFFC000FFFFE0007FFFFFFFFFFFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFF280000001000000020000000010004000000
    0000C00000000000000000000000000000000000000000000000000080000080
    00000080800080000000800080008080000080808000C0C0C0000000FF0000FF
    000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000000000000000
    0000000000000000000000070000007777777777700078888888888777007888
    8889F9F7700078888888888777707FFFFFFFFFF7777007F0000000FF7770007F
    FFFFFF0FF7700007F888880777000000788888F0000000000F88888000000000
    07777777000000000000000000000000000000000000FFFFEC06FFFF8888C00F
    888780070000000388880003888F0001FF880001700080018888C0018889E003
    9F87F01F0000F80F8888F80F8888FFFF8888FFFF7000}
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyUp = FormKeyUp
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 25
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object RxLabel1: TRxLabel
      Left = 2
      Top = 2
      Width = 532
      Height = 21
      Align = alClient
      Alignment = taCenter
      Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1087#1086#1083#1103' '#1076#1083#1103' '#1087#1077#1095#1072#1090#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 25
    Width = 536
    Height = 287
    VertScrollBar.Position = 51
    VertScrollBar.Tracking = True
    Align = alClient
    BevelInner = bvNone
    BevelKind = bkSoft
    BorderStyle = bsNone
    TabOrder = 1
    OnMouseWheelDown = ScrollBox1MouseWheelDown
    OnMouseWheelUp = ScrollBox1MouseWheelUp
    object gbGeneral: TGroupBox
      Left = 0
      Top = -51
      Width = 518
      Height = 161
      Align = alTop
      Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
      TabOrder = 0
      object cbSurname: TCheckBox
        Left = 15
        Top = 16
        Width = 73
        Height = 17
        Caption = #1060#1072#1084#1080#1083#1080#1103
        TabOrder = 0
      end
      object cbName: TCheckBox
        Left = 135
        Top = 16
        Width = 49
        Height = 17
        Caption = #1048#1084#1103
        TabOrder = 1
      end
      object cbOrtch: TCheckBox
        Left = 255
        Top = 16
        Width = 81
        Height = 17
        Caption = #1054#1088#1090#1095#1077#1089#1090#1074#1086
        TabOrder = 2
      end
      object cbBirthday: TCheckBox
        Left = 135
        Top = 40
        Width = 105
        Height = 17
        Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
        TabOrder = 3
      end
      object cbBirthPlace: TCheckBox
        Left = 255
        Top = 40
        Width = 105
        Height = 17
        Caption = #1052#1077#1089#1090#1086' '#1088#1086#1078#1076#1077#1085#1080#1103
        TabOrder = 4
      end
      object cbNationality: TCheckBox
        Left = 15
        Top = 64
        Width = 105
        Height = 17
        Caption = #1053#1072#1094#1080#1086#1085#1072#1083#1100#1085#1086#1089#1090#1100
        TabOrder = 5
      end
      object cbTradeUnion: TCheckBox
        Left = 135
        Top = 64
        Width = 113
        Height = 17
        Caption = #1063#1083#1077#1085' '#1087#1088#1086#1092#1089#1086#1102#1079#1072
        TabOrder = 6
      end
      object cbSex: TCheckBox
        Left = 15
        Top = 40
        Width = 49
        Height = 17
        Caption = #1055#1086#1083
        TabOrder = 7
      end
      object cbPassportNomber: TCheckBox
        Left = 255
        Top = 64
        Width = 105
        Height = 17
        Caption = #1053#1086#1084#1077#1088' '#1087#1072#1089#1087#1086#1088#1090#1072
        TabOrder = 8
      end
      object cbWhomIsGiven: TCheckBox
        Left = 15
        Top = 88
        Width = 137
        Height = 17
        Caption = #1050#1077#1084' '#1074#1099#1076#1072#1085' '#1087#1072#1089#1087#1086#1088#1090
        TabOrder = 9
      end
      object cbWhenIsGiven: TCheckBox
        Left = 135
        Top = 88
        Width = 137
        Height = 17
        Caption = #1050#1086#1075#1076#1072' '#1074#1099#1076#1072#1085' '#1087#1072#1089#1087#1086#1088#1090
        TabOrder = 10
      end
      object cbHomeAddres: TCheckBox
        Left = 15
        Top = 112
        Width = 113
        Height = 17
        Caption = #1044#1086#1084#1072#1096#1085#1080#1081' '#1072#1076#1088#1077#1089
        TabOrder = 11
      end
      object cbTelephone: TCheckBox
        Left = 135
        Top = 112
        Width = 97
        Height = 17
        Caption = #1058#1077#1083#1077#1092#1086#1085
        TabOrder = 12
      end
      object cbOtdel: TCheckBox
        Left = 15
        Top = 136
        Width = 73
        Height = 17
        Caption = #1054#1090#1076#1077#1083
        TabOrder = 13
      end
      object cbTrade: TCheckBox
        Left = 135
        Top = 136
        Width = 97
        Height = 17
        Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
        TabOrder = 14
      end
      object cbOklad: TCheckBox
        Left = 255
        Top = 136
        Width = 97
        Height = 17
        Caption = #1054#1082#1083#1072#1076
        TabOrder = 15
      end
    end
    object gbEducational: TGroupBox
      Left = 0
      Top = 110
      Width = 518
      Height = 98
      Align = alTop
      Caption = #1055#1086#1083#1091#1095#1077#1085#1085#1086#1077' '#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
      TabOrder = 1
      object cbEducation: TCheckBox
        Left = 16
        Top = 24
        Width = 97
        Height = 17
        Caption = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
        TabOrder = 0
      end
      object cbEducationName: TCheckBox
        Left = 120
        Top = 24
        Width = 193
        Height = 17
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1091#1095#1077#1073#1085#1086#1075#1086' '#1079#1072#1074#1077#1076#1077#1085#1080#1103
        TabOrder = 1
      end
      object cbTrainingKind: TCheckBox
        Left = 16
        Top = 48
        Width = 105
        Height = 17
        Caption = #1042#1080#1076' '#1086#1073#1091#1095#1077#1085#1080#1103
        TabOrder = 2
      end
      object cbSpeciality: TCheckBox
        Left = 120
        Top = 48
        Width = 169
        Height = 17
        Caption = #1055#1086#1083#1091#1095#1077#1085#1085#1072#1103' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
        TabOrder = 3
      end
      object cbQulification: TCheckBox
        Left = 16
        Top = 72
        Width = 97
        Height = 17
        Caption = #1050#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1103
        TabOrder = 4
      end
      object cbNomDiplom: TCheckBox
        Left = 120
        Top = 72
        Width = 105
        Height = 17
        Caption = #1053#1086#1084#1077#1088' '#1076#1080#1087#1083#1086#1084#1072
        TabOrder = 5
      end
      object cbDateDiplom: TCheckBox
        Left = 256
        Top = 72
        Width = 137
        Height = 17
        Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080' '#1076#1080#1087#1083#1086#1084#1072
        TabOrder = 6
      end
    end
    object gbMaritalStatus: TGroupBox
      Left = 0
      Top = 208
      Width = 518
      Height = 46
      Align = alTop
      Caption = #1057#1077#1084#1077#1081#1085#1086#1077' '#1087#1086#1083#1086#1078#1077#1085#1080#1077
      TabOrder = 2
      object cbMaritalStatus: TCheckBox
        Left = 16
        Top = 21
        Width = 129
        Height = 17
        Caption = #1057#1077#1084#1077#1081#1085#1086#1077' '#1087#1086#1083#1086#1078#1077#1085#1080#1077
        TabOrder = 0
      end
      object cbFamily: TCheckBox
        Left = 176
        Top = 21
        Width = 97
        Height = 17
        Caption = #1063#1083#1077#1085#1099' '#1089#1077#1084#1100#1080
        TabOrder = 1
      end
    end
    object gbLastJob: TGroupBox
      Left = 0
      Top = 254
      Width = 518
      Height = 48
      Align = alTop
      Caption = #1055#1086#1089#1083#1077#1076#1085#1077#1077' '#1084#1077#1089#1090#1086' '#1088#1072#1073#1086#1090#1099
      TabOrder = 3
      object cbLastJob: TCheckBox
        Left = 16
        Top = 21
        Width = 161
        Height = 17
        Caption = #1055#1086#1089#1083#1077#1076#1085#1077#1077' '#1084#1077#1089#1090#1086' '#1088#1072#1073#1086#1090#1099
        TabOrder = 0
      end
      object cbReason: TCheckBox
        Left = 176
        Top = 21
        Width = 145
        Height = 17
        Caption = #1055#1088#1080#1095#1080#1085#1072' '#1091#1074#1086#1083#1100#1085#1077#1085#1080#1103
        TabOrder = 1
      end
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 302
      Width = 518
      Height = 49
      Align = alTop
      Caption = #1057#1090#1072#1078' '#1088#1072#1073#1086#1090#1099
      TabOrder = 4
      object cbExpGeneral: TCheckBox
        Left = 17
        Top = 21
        Width = 129
        Height = 17
        Caption = #1054#1073#1097#1080#1081' '#1089#1090#1072#1078' '#1088#1072#1073#1086#1090#1099
        TabOrder = 0
      end
      object cbExpPredpr: TCheckBox
        Left = 144
        Top = 21
        Width = 177
        Height = 17
        Caption = #1057#1090#1072#1078' '#1088#1072#1073#1086#1090#1099' '#1085#1072' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1080
        TabOrder = 1
      end
      object cbExpSpeciality: TCheckBox
        Left = 320
        Top = 21
        Width = 193
        Height = 17
        Caption = #1057#1090#1072#1078' '#1088#1072#1073#1086#1090#1099' '#1087#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
        TabOrder = 2
      end
    end
    object gbPurpose: TGroupBox
      Left = 0
      Top = 351
      Width = 518
      Height = 49
      Align = alTop
      Caption = #1053#1072#1079#1085#1072#1095#1077#1085#1080#1103' '#1080' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1103
      TabOrder = 5
      object cbPurpose: TCheckBox
        Left = 16
        Top = 21
        Width = 177
        Height = 17
        Caption = #1053#1072#1079#1085#1072#1095#1077#1085#1080#1103' '#1080' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1103
        TabOrder = 0
      end
    end
    object gbHoliday: TGroupBox
      Left = 0
      Top = 400
      Width = 518
      Height = 49
      Align = alTop
      Caption = #1054#1090#1087#1091#1089#1082#1072
      TabOrder = 6
      object cbHoliday: TCheckBox
        Left = 16
        Top = 22
        Width = 177
        Height = 17
        Caption = #1054#1090#1087#1091#1089#1082#1072
        TabOrder = 0
      end
    end
    object gbVoenkom: TGroupBox
      Left = 0
      Top = 449
      Width = 518
      Height = 101
      Align = alTop
      Caption = #1042#1086#1080#1085#1089#1082#1080#1081' '#1091#1095#1077#1090
      TabOrder = 7
      object cbGroupU: TCheckBox
        Left = 16
        Top = 24
        Width = 97
        Height = 17
        Caption = #1043#1088#1091#1087#1087#1072' '#1091#1095#1077#1090#1072
        TabOrder = 0
      end
      object cbCategory: TCheckBox
        Left = 112
        Top = 24
        Width = 113
        Height = 17
        Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103' '#1091#1095#1077#1090#1072
        TabOrder = 1
      end
      object cbStructure: TCheckBox
        Left = 232
        Top = 24
        Width = 65
        Height = 17
        Caption = #1057#1086#1089#1090#1072#1074
        TabOrder = 2
      end
      object cbRank: TCheckBox
        Left = 304
        Top = 24
        Width = 121
        Height = 17
        Caption = #1042#1086#1080#1085#1089#1082#1086#1077' '#1079#1074#1072#1085#1080#1077
        TabOrder = 3
      end
      object cbRegisrtSpecial: TCheckBox
        Left = 16
        Top = 48
        Width = 185
        Height = 17
        Caption = #1042#1086#1077#1085#1085#1086'-'#1091#1095#1077#1090#1085#1072#1103' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
        TabOrder = 4
      end
      object cbValidity: TCheckBox
        Left = 232
        Top = 48
        Width = 169
        Height = 17
        Caption = #1043#1086#1076#1085#1086#1089#1090#1100' '#1082' '#1074#1086#1077#1085#1085#1086#1081' '#1089#1083#1091#1078#1073#1077
        TabOrder = 5
      end
      object cbVoenkomat: TCheckBox
        Left = 16
        Top = 72
        Width = 153
        Height = 17
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1074#1086#1077#1085#1082#1086#1084#1072#1090#1072
        TabOrder = 6
      end
      object cbNomberAccount: TCheckBox
        Left = 232
        Top = 72
        Width = 169
        Height = 17
        Caption = #1053#1086#1084#1077#1088' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1075#1086' '#1091#1095#1077#1090#1072
        TabOrder = 7
      end
    end
    object gbDopInfo: TGroupBox
      Left = 0
      Top = 550
      Width = 518
      Height = 49
      Align = alTop
      Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
      TabOrder = 8
      object cbDopInfo: TCheckBox
        Left = 16
        Top = 22
        Width = 233
        Height = 17
        Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
        TabOrder = 0
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 312
    Width = 536
    Height = 36
    Align = alBottom
    BevelInner = bvLowered
    TabOrder = 2
    object bbPrint: TBitBtn
      Left = 16
      Top = 8
      Width = 82
      Height = 22
      Caption = #1055#1077#1095#1072#1090#1100
      TabOrder = 0
      OnClick = bbPrintClick
      Glyph.Data = {
        6E040000424D6E04000000000000360000002800000014000000120000000100
        1800000000003804000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000C0C0C0808080808080000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000C0C0C080808000000000000000000080808080808000000000
        0000000000000000000000000000000000000000000000000000000000C0C0C0
        808080000000000000C0C0C08080808080800000000000008080808080800000
        00000000000000000000000000000000000000C0C0C0808080000000000000C0
        C0C0C0C0C0C0C0C0808080808080808080808080000000000000808080808080
        000000000000000000000000808080000000000000C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C080808080808080808080808080808080808000000000000000000000
        0000000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFF
        8080808080808080808080808080808080808080808080800000000000000000
        00808080FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0FFFFFFFFFFFFC0C0C0C0C0C0C0
        C0C0808080808080808080808080808080808080808080000000000000808080
        FFFFFFC0C0C0C0C0C0FFFFFFFFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0808080808080808080808080808080000000000000808080C0C0C0FF
        FFFFFFFFFFC0C0C0C0C0C0C0C0C00000FF0000FFC0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0808080808080808080000000000000000000808080C0C0C0C0C0
        C0C0C0C000FF0000FF00C0C0C0C0C0C0C0C0C0C0C0C0808080808080000000C0
        C0C0C0C0C0C0C0C0808080000000000000000000000000808080808080FFFFFF
        C0C0C0C0C0C0C0C0C0C0C0C0808080808080FFFFFFFFFFFF000000C0C0C08080
        80808080000000000000000000000000000000000000000000808080808080FF
        FFFFC0C0C0808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
        0000000000000000000000000000000000000000000000000000008080808080
        80808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000080
        8080FFFFFFFFFFFFFFFFFF808080808080000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000008080
        8080808080808000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000}
    end
    object BitBtn2: TBitBtn
      Left = 112
      Top = 8
      Width = 82
      Height = 22
      Caption = #1054#1090#1084#1077#1085#1072
      TabOrder = 1
      Kind = bkCancel
    end
    object PanelProgres: TPanel
      Left = 2
      Top = 2
      Width = 532
      Height = 32
      Align = alClient
      TabOrder = 2
      Visible = False
      object RxLabel2: TRxLabel
        Left = 8
        Top = 8
        Width = 142
        Height = 16
        Caption = #1043#1077#1085#1077#1088#1072#1094#1080#1103' '#1086#1090#1095#1077#1090#1072':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ProgressBar: TProgressBar
        Left = 154
        Top = 1
        Width = 377
        Height = 30
        Align = alRight
        Anchors = [akLeft, akTop, akRight, akBottom]
        Step = 1
        TabOrder = 0
      end
    end
  end
end
