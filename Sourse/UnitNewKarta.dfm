object FormNewKarta: TFormNewKarta
  Left = 187
  Top = 118
  Width = 594
  Height = 432
  HorzScrollBar.Size = 13
  HorzScrollBar.Style = ssHotTrack
  HorzScrollBar.Tracking = True
  Caption = #1047#1072#1087#1086#1083#1085#1077#1085#1080#1077' '#1082#1072#1088#1090#1086#1095#1082#1080' '#1085#1072' '#1085#1086#1074#1086#1075#1086' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072' '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 35
    Width = 586
    Height = 358
    HorzScrollBar.Style = ssFlat
    VertScrollBar.Smooth = True
    VertScrollBar.Style = ssFlat
    VertScrollBar.Tracking = True
    Align = alTop
    Color = clWhite
    ParentColor = False
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 0
      Width = 174
      Height = 24
      Caption = #1051#1080#1095#1085#1072#1103' '#1082#1072#1088#1090#1086#1095#1082#1072' '#8470
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object lNomber: TLabel
      Left = 204
      Top = 0
      Width = 5
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 313
      Width = 513
      Height = 315
      Caption = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label9: TLabel
        Left = 12
        Top = 35
        Width = 173
        Height = 16
        Caption = #1055#1086#1083#1091#1095#1077#1085#1085#1086#1077' '#1086#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 12
        Top = 131
        Width = 91
        Height = 16
        Caption = #1042#1080#1076' '#1086#1073#1091#1095#1077#1085#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 264
        Top = 283
        Width = 84
        Height = 16
        Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object cbEducational: TComboBox
        Left = 208
        Top = 34
        Width = 177
        Height = 24
        ItemHeight = 16
        TabOrder = 0
        OnExit = cbEducationalExit
        OnKeyPress = cbEducationalKeyPress
      end
      object eEducationName: TLabeledEdit
        Left = 16
        Top = 88
        Width = 486
        Height = 24
        EditLabel.Width = 205
        EditLabel.Height = 16
        EditLabel.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1091#1095#1077#1073#1085#1086#1075#1086' '#1079#1072#1074#1077#1076#1077#1085#1080#1103
        TabOrder = 1
        OnExit = eEducationNameExit
        OnKeyPress = eEducationNameKeyPress
      end
      object cbTrainingKind: TComboBox
        Left = 112
        Top = 130
        Width = 177
        Height = 24
        ItemHeight = 16
        TabOrder = 2
        OnExit = cbTrainingKindExit
        OnKeyPress = cbTrainingKindKeyPress
      end
      object eSpeciality: TLabeledEdit
        Left = 16
        Top = 184
        Width = 485
        Height = 24
        EditLabel.Width = 180
        EditLabel.Height = 16
        EditLabel.Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100' '#1087#1086' '#1076#1080#1087#1083#1086#1084#1091
        TabOrder = 3
        OnExit = eSpecialityExit
        OnKeyPress = eSpecialityKeyPress
      end
      object eQualification: TLabeledEdit
        Left = 16
        Top = 232
        Width = 486
        Height = 24
        EditLabel.Width = 176
        EditLabel.Height = 16
        EditLabel.Caption = #1050#1074#1072#1083#1080#1092#1080#1082#1072#1094#1080#1103' '#1087#1086' '#1076#1080#1087#1083#1086#1084#1091
        TabOrder = 4
        OnKeyPress = eQualificationKeyPress
      end
      object eNomDiplom: TLabeledEdit
        Left = 16
        Top = 280
        Width = 209
        Height = 24
        EditLabel.Width = 103
        EditLabel.Height = 16
        EditLabel.Caption = #1053#1086#1084#1077#1088' '#1076#1080#1087#1083#1086#1084#1072
        TabOrder = 5
        OnExit = eNomDiplomExit
        OnKeyPress = eNomDiplomKeyPress
      end
      object deDiplom: TDateTimePicker
        Left = 376
        Top = 280
        Width = 121
        Height = 24
        Date = 38123.619738773150000000
        Time = 38123.619738773150000000
        TabOrder = 6
        OnKeyPress = deDiploKeyPress
      end
    end
    object GroupBox2: TGroupBox
      Left = 17
      Top = 633
      Width = 513
      Height = 207
      TabOrder = 2
      object Label12: TLabel
        Left = 18
        Top = 21
        Width = 138
        Height = 16
        Caption = #1054#1073#1097#1080#1081' '#1089#1090#1072#1078' '#1088#1072#1073#1086#1090#1099' '#1089
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 18
        Top = 53
        Width = 202
        Height = 16
        Caption = 'C'#1090#1072#1078' '#1088#1072#1073#1086#1090#1099' '#1085#1072' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1080' '#1089
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 18
        Top = 85
        Width = 216
        Height = 16
        Caption = #1057#1090#1072#1078' '#1088#1072#1073#1086#1090#1099' '#1087#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080' '#1089
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object eLastJob: TLabeledEdit
        Left = 17
        Top = 126
        Width = 473
        Height = 21
        EditLabel.Width = 166
        EditLabel.Height = 16
        EditLabel.Caption = #1055#1086#1089#1083#1077#1076#1085#1077#1077' '#1084#1077#1089#1090#1086' '#1088#1072#1073#1086#1090#1099
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -13
        EditLabel.Font.Name = 'MS Sans Serif'
        EditLabel.Font.Style = []
        EditLabel.ParentFont = False
        TabOrder = 3
        OnKeyPress = eLastJobKeyPress
      end
      object leReason: TLabeledEdit
        Left = 17
        Top = 171
        Width = 473
        Height = 21
        EditLabel.Width = 139
        EditLabel.Height = 16
        EditLabel.Caption = #1055#1088#1080#1095#1080#1085#1072' '#1091#1074#1086#1083#1100#1085#1077#1085#1080#1103
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -13
        EditLabel.Font.Name = 'MS Sans Serif'
        EditLabel.Font.Style = []
        EditLabel.ParentFont = False
        TabOrder = 4
        OnKeyPress = leReasonKeyPress
      end
      object deAllStazh: TDateTimePicker
        Left = 176
        Top = 19
        Width = 121
        Height = 21
        Date = 38123.621239699070000000
        Time = 38123.621239699070000000
        TabOrder = 0
        OnKeyPress = eAllStazhKeyPress
      end
      object deExpPredr: TDateTimePicker
        Left = 240
        Top = 51
        Width = 121
        Height = 21
        Date = 38123.621239699070000000
        Time = 38123.621239699070000000
        TabOrder = 1
        OnExit = deExpPredrExit
        OnKeyPress = deExpPredKeyPress
      end
      object deExpSpeciality: TDateTimePicker
        Left = 240
        Top = 83
        Width = 121
        Height = 21
        Date = 38123.621239699070000000
        Time = 38123.621239699070000000
        TabOrder = 2
        OnExit = deExpSpecialityExit
        OnKeyPress = deExpSpecialitKeyPress
      end
    end
    object GroupBox3: TGroupBox
      Left = 17
      Top = 846
      Width = 513
      Height = 101
      Caption = #1057#1077#1084#1100#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object Label15: TLabel
        Left = 12
        Top = 27
        Width = 142
        Height = 16
        Caption = #1057#1077#1084#1077#1081#1085#1086#1077' '#1087#1086#1083#1086#1078#1077#1085#1080#1077
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 12
        Top = 59
        Width = 95
        Height = 16
        Caption = #1057#1086#1089#1090#1072#1074' '#1089#1077#1084#1100#1080': '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lKolFamily: TLabel
        Left = 116
        Top = 59
        Width = 7
        Height = 16
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object cbMaritalStatus: TComboBox
        Left = 168
        Top = 26
        Width = 177
        Height = 24
        ItemHeight = 16
        TabOrder = 0
        OnExit = cbMaritalStatusExit
        OnKeyPress = cbMaritalStatusKeyPress
      end
      object bbFamily: TBitBtn
        Left = 169
        Top = 57
        Width = 75
        Height = 25
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
        TabOrder = 1
        OnClick = bbFamilyClick
      end
    end
    object GroupBox4: TGroupBox
      Left = 16
      Top = 955
      Width = 513
      Height = 164
      Caption = #1055#1072#1089#1087#1086#1088#1090'/'#1059#1076#1086#1089#1090#1086#1074#1077#1088#1077#1085#1080#1077
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      object Label18: TLabel
        Left = 18
        Top = 129
        Width = 84
        Height = 16
        Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object leNomerPasporta: TLabeledEdit
        Left = 17
        Top = 40
        Width = 176
        Height = 24
        EditLabel.Width = 43
        EditLabel.Height = 16
        EditLabel.Caption = #1053#1086#1084#1077#1088
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -13
        EditLabel.Font.Name = 'MS Sans Serif'
        EditLabel.Font.Style = []
        EditLabel.ParentFont = False
        TabOrder = 0
        OnExit = leNomerPasportaExit
        OnKeyPress = leNomerPasportaKeyPress
      end
      object leWhoIsGiven: TLabeledEdit
        Left = 17
        Top = 88
        Width = 472
        Height = 24
        EditLabel.Width = 69
        EditLabel.Height = 16
        EditLabel.Caption = #1050#1077#1084' '#1074#1099#1076#1072#1085
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -13
        EditLabel.Font.Name = 'MS Sans Serif'
        EditLabel.Font.Style = []
        EditLabel.ParentFont = False
        TabOrder = 1
        OnExit = leWhoIsGivenExit
        OnKeyPress = leWhoIsGivenKeyPress
      end
      object dePasport: TDateTimePicker
        Left = 112
        Top = 128
        Width = 113
        Height = 24
        Date = 38123.623196990740000000
        Time = 38123.623196990740000000
        TabOrder = 2
        OnKeyPress = dePasporKeyPress
      end
    end
    object GroupBox5: TGroupBox
      Left = 16
      Top = 1128
      Width = 513
      Height = 130
      Caption = #1040#1076#1088#1077#1089
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      object leAdress: TLabeledEdit
        Left = 17
        Top = 40
        Width = 464
        Height = 24
        EditLabel.Width = 109
        EditLabel.Height = 16
        EditLabel.Caption = #1044#1086#1084#1072#1096#1085#1080#1081' '#1072#1076#1088#1077#1089
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -13
        EditLabel.Font.Name = 'MS Sans Serif'
        EditLabel.Font.Style = []
        EditLabel.ParentFont = False
        TabOrder = 0
        OnExit = leAdressExit
        OnKeyPress = leAdressKeyPress
      end
      object leTelephone: TLabeledEdit
        Left = 17
        Top = 88
        Width = 184
        Height = 24
        EditLabel.Width = 60
        EditLabel.Height = 16
        EditLabel.Caption = #1058#1077#1083#1077#1092#1086#1085
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -13
        EditLabel.Font.Name = 'MS Sans Serif'
        EditLabel.Font.Style = []
        EditLabel.ParentFont = False
        TabOrder = 1
        OnKeyPress = leTelephoneKeyPress
      end
    end
    object GroupBox6: TGroupBox
      Left = 16
      Top = 1264
      Width = 513
      Height = 404
      Caption = #1042#1086#1080#1085#1089#1082#1080#1081' '#1091#1095#1077#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      object LbStructure: TLabel
        Left = 17
        Top = 169
        Width = 47
        Height = 16
        Caption = #1057#1086#1089#1090#1072#1074
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object LbRank: TLabel
        Left = 17
        Top = 201
        Width = 49
        Height = 16
        Caption = #1047#1074#1072#1085#1080#1077
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object LbValidity: TLabel
        Left = 17
        Top = 289
        Width = 180
        Height = 16
        Caption = #1043#1086#1076#1085#1086#1089#1090#1100' '#1082' '#1074#1086#1077#1085#1085#1086#1081' '#1089#1083#1091#1078#1073#1077
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object LbVoenkomat: TLabel
        Left = 17
        Top = 329
        Width = 172
        Height = 16
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1088#1072#1081#1074#1086#1077#1085#1082#1086#1084#1072#1090#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object leGrupaUcheta: TLabeledEdit
        Left = 17
        Top = 80
        Width = 344
        Height = 24
        EditLabel.Width = 89
        EditLabel.Height = 16
        EditLabel.Caption = #1043#1088#1091#1087#1087#1072' '#1091#1095#1077#1090#1072
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -13
        EditLabel.Font.Name = 'MS Sans Serif'
        EditLabel.Font.Style = []
        EditLabel.ParentFont = False
        TabOrder = 1
        OnKeyPress = leGrupaUchetaKeyPress
      end
      object leKategorijaUcheta: TLabeledEdit
        Left = 17
        Top = 128
        Width = 344
        Height = 24
        EditLabel.Width = 110
        EditLabel.Height = 16
        EditLabel.Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103' '#1091#1095#1077#1090#1072
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -13
        EditLabel.Font.Name = 'MS Sans Serif'
        EditLabel.Font.Style = []
        EditLabel.ParentFont = False
        TabOrder = 2
        OnKeyPress = leKategorijaUchetaKeyPress
      end
      object cbUchet: TCheckBox
        Left = 32
        Top = 32
        Width = 153
        Height = 17
        Caption = #1057#1086#1089#1090#1086#1080#1090' '#1085#1072' '#1091#1095#1077#1090#1077
        TabOrder = 0
        OnClick = cbUchetClick
        OnKeyPress = cbUchetKeyPress
      end
      object cbStructure: TComboBox
        Left = 85
        Top = 168
        Width = 177
        Height = 24
        ItemHeight = 16
        TabOrder = 3
        OnExit = cbStructureExit
        OnKeyPress = cbStructureKeyPress
      end
      object cbRank: TComboBox
        Left = 85
        Top = 200
        Width = 177
        Height = 24
        ItemHeight = 16
        TabOrder = 4
        OnExit = cbRankExit
        OnKeyPress = cbRankKeyPress
      end
      object leVUS: TLabeledEdit
        Left = 17
        Top = 248
        Width = 344
        Height = 24
        EditLabel.Width = 209
        EditLabel.Height = 16
        EditLabel.Caption = #1042#1086#1077#1085#1085#1086'-'#1091#1095#1077#1090#1085#1072#1103' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -13
        EditLabel.Font.Name = 'MS Sans Serif'
        EditLabel.Font.Style = []
        EditLabel.ParentFont = False
        TabOrder = 5
        OnKeyPress = leVUSKeyPress
      end
      object cbValidity: TComboBox
        Left = 205
        Top = 288
        Width = 177
        Height = 24
        ItemHeight = 16
        TabOrder = 6
        OnExit = cbValidityExit
        OnKeyPress = cbValidityKeyPress
      end
      object cbVoenkomat: TComboBox
        Left = 205
        Top = 328
        Width = 177
        Height = 24
        ItemHeight = 16
        TabOrder = 7
        OnExit = cbVoenkomatExit
        OnKeyPress = cbVoenkomatKeyPress
      end
      object leNomAccount: TLabeledEdit
        Left = 17
        Top = 368
        Width = 184
        Height = 24
        EditLabel.Width = 180
        EditLabel.Height = 16
        EditLabel.Caption = #1053#1086#1084#1077#1088' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1075#1086' '#1091#1095#1077#1090#1072
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -13
        EditLabel.Font.Name = 'MS Sans Serif'
        EditLabel.Font.Style = []
        EditLabel.ParentFont = False
        TabOrder = 8
        OnKeyPress = leNomAccountKeyPress
      end
    end
    object GroupBox7: TGroupBox
      Left = 16
      Top = 1675
      Width = 513
      Height = 97
      Caption = #1053#1072#1079#1085#1072#1095#1077#1085#1080#1103' '#1080' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      object Label25: TLabel
        Left = 12
        Top = 23
        Width = 72
        Height = 16
        Caption = #1053#1072#1079#1085#1072#1095#1077#1085': '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lPurpose1: TLabel
        Left = 89
        Top = 23
        Width = 3
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lPurpose2: TLabel
        Left = 89
        Top = 40
        Width = 3
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object bbTrade: TBitBtn
        Left = 16
        Top = 61
        Width = 75
        Height = 25
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
        TabOrder = 0
        OnClick = bbTradeClick
      end
    end
    object GroupBox8: TGroupBox
      Left = 17
      Top = 1783
      Width = 513
      Height = 93
      Caption = #1054#1090#1087#1091#1089#1082#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      object lHoliday: TLabel
        Left = 18
        Top = 27
        Width = 3
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object bbHolidayKind: TBitBtn
        Left = 16
        Top = 56
        Width = 75
        Height = 25
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
        TabOrder = 0
        OnClick = bbHolidayKindClick
      end
    end
    object GroupBox9: TGroupBox
      Left = 17
      Top = 1980
      Width = 513
      Height = 60
      Caption = #1044#1072#1090#1072' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      object Label21: TLabel
        Left = 22
        Top = 27
        Width = 178
        Height = 16
        Caption = #1044#1072#1090#1072' '#1079#1072#1087#1086#1083#1085#1077#1085#1080#1103' '#1082#1072#1088#1090#1086#1095#1082#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object deDataZap: TDateTimePicker
        Left = 208
        Top = 24
        Width = 113
        Height = 24
        Date = 38123.623551157410000000
        Time = 38123.623551157410000000
        TabOrder = 0
        OnKeyPress = deDataZaKeyPress
      end
    end
    object GroupBox10: TGroupBox
      Left = 17
      Top = 1887
      Width = 513
      Height = 87
      Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1077' '#1089#1074#1077#1076#1077#1085#1080#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      object lDopInfo: TLabel
        Left = 204
        Top = 24
        Width = 3
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 17
        Top = 24
        Width = 179
        Height = 16
        Caption = #1063#1080#1089#1083#1086' '#1080#1084#1077#1102#1097#1080#1093#1089#1103' '#1079#1072#1087#1080#1089#1077#1081' :'
      end
      object bbDopInfo: TBitBtn
        Left = 15
        Top = 51
        Width = 75
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 0
        OnClick = bbDopInfoClick
      end
    end
    object GroupBox11: TGroupBox
      Left = 16
      Top = 27
      Width = 513
      Height = 285
      TabOrder = 0
      object Label4: TLabel
        Left = 16
        Top = 96
        Width = 63
        Height = 16
        Caption = #1054#1090#1095#1077#1089#1090#1074#1086
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 12
        Top = 217
        Width = 110
        Height = 16
        Caption = #1053#1072#1094#1080#1086#1085#1072#1083#1100#1085#1086#1089#1090#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 16
        Top = 60
        Width = 26
        Height = 16
        Caption = #1048#1084#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 274
        Top = 130
        Width = 26
        Height = 16
        Caption = #1055#1086#1083
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 15
        Top = 161
        Width = 108
        Height = 16
        Caption = #1052#1077#1089#1090#1086' '#1088#1086#1078#1076#1077#1085#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 16
        Top = 131
        Width = 99
        Height = 16
        Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 16
        Top = 24
        Width = 59
        Height = 16
        Caption = #1060#1072#1084#1080#1083#1080#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object eOtcestvo: TEdit
        Left = 84
        Top = 96
        Width = 263
        Height = 21
        BevelInner = bvNone
        TabOrder = 2
        OnKeyPress = eOtcestvoKeyPress
      end
      object eName: TEdit
        Left = 84
        Top = 60
        Width = 263
        Height = 21
        BevelInner = bvNone
        TabOrder = 1
        OnExit = eNameExit
        OnKeyPress = eNameKeyPress
      end
      object eFamily: TEdit
        Left = 84
        Top = 24
        Width = 263
        Height = 21
        TabOrder = 0
        OnExit = eFamilyExit
        OnKeyPress = eFamilyKeyPress
      end
      object eBirth_Place: TEdit
        Left = 14
        Top = 182
        Width = 488
        Height = 21
        TabOrder = 5
        OnExit = eBirth_PlaceExit
        OnKeyPress = eBirth_PlaceKeyPress
      end
      object cbTradeUnion: TCheckBox
        Left = 16
        Top = 252
        Width = 137
        Height = 17
        Caption = #1063#1083#1077#1085' '#1087#1088#1086#1092#1089#1086#1102#1079#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnKeyPress = cbTradeUnionKeyPress
      end
      object cbNationality: TComboBox
        Left = 136
        Top = 216
        Width = 177
        Height = 21
        ItemHeight = 13
        TabOrder = 6
        OnExit = cbNationalityExit
        OnKeyPress = cbNationalityKeyPress
      end
      object deBirthday: TDateTimePicker
        Left = 128
        Top = 128
        Width = 105
        Height = 21
        Date = 37757.000000000000000000
        Time = 37757.000000000000000000
        TabOrder = 3
        OnKeyPress = deBirthdaKeyPress
      end
      object eSex: TComboBox
        Left = 312
        Top = 128
        Width = 57
        Height = 21
        ItemHeight = 13
        TabOrder = 4
        OnKeyPress = eSexcKeyPress
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 586
    Height = 35
    Align = alTop
    TabOrder = 1
    object bbOk: TBitBtn
      Left = 16
      Top = 5
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 0
      OnClick = bbOkClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object bbCancel: TBitBtn
      Left = 104
      Top = 5
      Width = 75
      Height = 25
      TabOrder = 1
      OnClick = bbCancelClick
      Kind = bkCancel
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 504
    Top = 8
  end
  object ADOTable1: TADOTable
    Connection = DataModule1.ADOConnection
    CursorType = ctStatic
    TableName = 'Nationality'
    Left = 472
    Top = 8
  end
  object AQuery: TADOQuery
    Connection = DataModule1.ADOConnection
    Parameters = <>
    Left = 440
    Top = 8
  end
  object atTemp: TADOTable
    Connection = DataModule1.ADOConnection
    Left = 408
    Top = 8
  end
end
