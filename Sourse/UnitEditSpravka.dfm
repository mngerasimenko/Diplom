object FormEditSprav: TFormEditSprav
  Left = 239
  Top = 95
  BorderStyle = bsDialog
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1086#1074
  ClientHeight = 328
  ClientWidth = 393
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
  OnKeyPress = bbOkKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pcEditSpravka: TPageControl
    Left = 0
    Top = 0
    Width = 393
    Height = 328
    ActivePage = tsEducation
    Align = alClient
    HotTrack = True
    MultiLine = True
    TabOrder = 0
    object tsNationality: TTabSheet
      Caption = #1053#1072#1094#1080#1086#1085#1072#1083#1100#1085#1086#1089#1090#1100
      OnShow = tsNationalityShow
      object Bevel1: TBevel
        Left = 3
        Top = 3
        Width = 249
        Height = 261
        Shape = bsFrame
      end
      object Bevel13: TBevel
        Left = 264
        Top = 104
        Width = 113
        Height = 50
        Shape = bsTopLine
      end
      object bbAddNational: TBitBtn
        Left = 264
        Top = 16
        Width = 112
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 4
        OnClick = bbAddNationalClick
        OnKeyPress = bbOkKeyPress
        NumGlyphs = 2
      end
      object bbEditNational: TBitBtn
        Left = 264
        Top = 43
        Width = 112
        Height = 25
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        TabOrder = 5
        OnClick = bbEditNationalClick
        OnKeyPress = bbOkKeyPress
      end
      object bbDelNational: TBitBtn
        Left = 264
        Top = 71
        Width = 112
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 6
        OnClick = bbDelNationalClick
        OnKeyPress = bbOkKeyPress
      end
      object bbOk: TBitBtn
        Left = 264
        Top = 114
        Width = 112
        Height = 25
        Caption = 'Ok'
        Default = True
        TabOrder = 0
        OnClick = bbOkClick
        OnKeyPress = bbOkKeyPress
      end
      object dbgNationality: TDBGrid
        Left = 8
        Top = 8
        Width = 238
        Height = 250
        DataSource = DataSource1
        Options = [dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnKeyPress = bbOkKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'Nationality'
            Visible = True
          end>
      end
      object bbApply: TBitBtn
        Left = 264
        Top = 142
        Width = 112
        Height = 25
        Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
        TabOrder = 1
        OnClick = bbApplyClick
        OnKeyPress = bbOkKeyPress
      end
      object bbCancel: TBitBtn
        Left = 264
        Top = 170
        Width = 112
        Height = 25
        Caption = #1054#1090#1084#1077#1085#1072
        TabOrder = 2
        OnClick = bbCancelClick
        OnKeyPress = bbOkKeyPress
      end
    end
    object tsEducation: TTabSheet
      Caption = #1054#1073#1088#1072#1079#1086#1074#1072#1085#1080#1077
      ImageIndex = 1
      OnShow = tsEducationShow
      object Bevel2: TBevel
        Left = 3
        Top = 3
        Width = 249
        Height = 261
      end
      object Bevel15: TBevel
        Left = 264
        Top = 104
        Width = 113
        Height = 50
        Shape = bsTopLine
      end
      object bbDelEdu: TBitBtn
        Left = 264
        Top = 71
        Width = 112
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 6
        OnClick = bbDelEduClick
        OnKeyPress = bbOkKeyPress
      end
      object bbEditEdu: TBitBtn
        Left = 264
        Top = 43
        Width = 112
        Height = 25
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        TabOrder = 5
        OnClick = bbEditEduClick
        OnKeyPress = bbOkKeyPress
      end
      object bbAddEdu: TBitBtn
        Left = 264
        Top = 16
        Width = 112
        Height = 25
        Cancel = True
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 4
        OnClick = bbAddEduClick
        OnKeyPress = bbOkKeyPress
        NumGlyphs = 2
      end
      object dbgEducation: TDBGrid
        Left = 8
        Top = 8
        Width = 238
        Height = 250
        DataSource = DataSource1
        Options = [dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnKeyPress = bbOkKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'Education'
            Visible = True
          end>
      end
      object BitBtn4: TBitBtn
        Left = 264
        Top = 170
        Width = 112
        Height = 25
        Caption = #1054#1090#1084#1077#1085#1072
        TabOrder = 2
        OnClick = bbCancelClick
        OnKeyPress = bbOkKeyPress
      end
      object bbApply1: TBitBtn
        Left = 264
        Top = 142
        Width = 112
        Height = 25
        Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
        TabOrder = 1
        OnClick = bbApplyClick
        OnKeyPress = bbOkKeyPress
      end
      object bbOk1: TBitBtn
        Left = 264
        Top = 114
        Width = 112
        Height = 25
        Caption = 'Ok'
        Default = True
        TabOrder = 0
        OnClick = bbOkClick
        OnKeyPress = bbOkKeyPress
      end
    end
    object tsTrainingKind: TTabSheet
      Caption = #1042#1080#1076' '#1086#1073#1091#1095#1077#1085#1080#1103
      ImageIndex = 2
      OnShow = tsTrainingKindShow
      object Bevel3: TBevel
        Left = 3
        Top = 3
        Width = 249
        Height = 261
        Shape = bsFrame
      end
      object Bevel14: TBevel
        Left = 264
        Top = 104
        Width = 113
        Height = 50
        Shape = bsTopLine
      end
      object dbgTrainingKind: TDBGrid
        Left = 8
        Top = 8
        Width = 238
        Height = 250
        DataSource = DataSource1
        Options = [dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnKeyPress = bbOkKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'TrainingKind'
            Visible = True
          end>
      end
      object bbDelTrKind: TBitBtn
        Left = 264
        Top = 71
        Width = 112
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 6
        OnClick = bbDelTrKindClick
        OnKeyPress = bbOkKeyPress
      end
      object bbEditTrKind: TBitBtn
        Left = 264
        Top = 43
        Width = 112
        Height = 25
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        TabOrder = 5
        OnClick = bbEditTrKindClick
        OnKeyPress = bbOkKeyPress
      end
      object bbAddTrKind: TBitBtn
        Left = 264
        Top = 16
        Width = 112
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 4
        OnClick = bbAddTrKindClick
        OnKeyPress = bbOkKeyPress
      end
      object BitBtn1: TBitBtn
        Left = 264
        Top = 170
        Width = 112
        Height = 25
        Caption = #1054#1090#1084#1077#1085#1072
        TabOrder = 2
        OnClick = bbCancelClick
        OnKeyPress = bbOkKeyPress
      end
      object bbApply2: TBitBtn
        Left = 264
        Top = 142
        Width = 112
        Height = 25
        Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
        TabOrder = 1
        OnClick = bbApplyClick
        OnKeyPress = bbOkKeyPress
      end
      object bbOk2: TBitBtn
        Left = 264
        Top = 114
        Width = 112
        Height = 25
        Caption = 'Ok'
        Default = True
        TabOrder = 0
        OnClick = bbOkClick
        OnKeyPress = bbOkKeyPress
      end
    end
    object tsMaritalStatus: TTabSheet
      Caption = #1057#1077#1084#1077#1081#1085#1086#1077' '#1087#1086#1083#1086#1078#1077#1085#1080#1077
      ImageIndex = 3
      OnShow = tsMaritalStatusShow
      object Bevel4: TBevel
        Left = 3
        Top = 3
        Width = 249
        Height = 261
        Shape = bsFrame
      end
      object Bevel16: TBevel
        Left = 264
        Top = 104
        Width = 113
        Height = 50
        Shape = bsTopLine
      end
      object dbgMAritalStatus: TDBGrid
        Left = 8
        Top = 8
        Width = 238
        Height = 250
        DataSource = DataSource1
        Options = [dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnKeyPress = bbOkKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'MaritalStatus'
            Visible = True
          end>
      end
      object bbDelMarStat: TBitBtn
        Left = 264
        Top = 71
        Width = 112
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 6
        OnClick = bbDelMarStatClick
        OnKeyPress = bbOkKeyPress
      end
      object bbEditMarStat: TBitBtn
        Left = 264
        Top = 43
        Width = 112
        Height = 25
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        TabOrder = 5
        OnClick = bbEditMarStatClick
        OnKeyPress = bbOkKeyPress
      end
      object bbAddMarStat: TBitBtn
        Left = 264
        Top = 16
        Width = 112
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 4
        OnClick = bbAddMarStatClick
        OnKeyPress = bbOkKeyPress
      end
      object BitBtn2: TBitBtn
        Left = 264
        Top = 170
        Width = 112
        Height = 25
        Caption = #1054#1090#1084#1077#1085#1072
        TabOrder = 2
        OnClick = bbCancelClick
        OnKeyPress = bbOkKeyPress
      end
      object bbApply3: TBitBtn
        Left = 264
        Top = 142
        Width = 112
        Height = 25
        Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
        TabOrder = 1
        OnClick = bbApplyClick
        OnKeyPress = bbOkKeyPress
      end
      object bbOk3: TBitBtn
        Left = 264
        Top = 114
        Width = 112
        Height = 25
        Caption = 'Ok'
        Default = True
        TabOrder = 0
        OnClick = bbOkClick
        OnKeyPress = bbOkKeyPress
      end
    end
    object tsFamilyKind: TTabSheet
      Caption = #1063#1083#1077#1085#1099' '#1089#1077#1084#1100#1080
      ImageIndex = 4
      OnShow = tsFamilyKindShow
      object Bevel5: TBevel
        Left = 3
        Top = 3
        Width = 249
        Height = 261
        Shape = bsFrame
      end
      object Bevel17: TBevel
        Left = 264
        Top = 104
        Width = 113
        Height = 50
        Shape = bsTopLine
      end
      object dbgFamilyKind: TDBGrid
        Left = 8
        Top = 8
        Width = 238
        Height = 250
        DataSource = DataSource1
        Options = [dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnKeyPress = bbOkKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'FamilyKind'
            Visible = True
          end>
      end
      object bbDelFamilyKind: TBitBtn
        Left = 264
        Top = 71
        Width = 112
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 6
        OnClick = bbDelFamilyKindClick
        OnKeyPress = bbOkKeyPress
      end
      object bbEditFamilyKind: TBitBtn
        Left = 264
        Top = 43
        Width = 112
        Height = 25
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        TabOrder = 5
        OnClick = bbEditFamilyKindClick
        OnKeyPress = bbOkKeyPress
      end
      object bbAddFamilyKind: TBitBtn
        Left = 264
        Top = 16
        Width = 112
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 4
        OnClick = bbAddFamilyKindClick
        OnKeyPress = bbOkKeyPress
      end
      object BitBtn3: TBitBtn
        Left = 264
        Top = 170
        Width = 112
        Height = 25
        Caption = #1054#1090#1084#1077#1085#1072
        TabOrder = 2
        OnClick = bbCancelClick
        OnKeyPress = bbOkKeyPress
      end
      object bbApply4: TBitBtn
        Left = 264
        Top = 142
        Width = 112
        Height = 25
        Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
        TabOrder = 1
        OnClick = bbApplyClick
        OnKeyPress = bbOkKeyPress
      end
      object bbOk4: TBitBtn
        Left = 264
        Top = 114
        Width = 112
        Height = 25
        Caption = 'Ok'
        Default = True
        TabOrder = 0
        OnClick = bbOkClick
        OnKeyPress = bbOkKeyPress
      end
    end
    object tsOtdel: TTabSheet
      Caption = #1054#1090#1076#1077#1083
      ImageIndex = 5
      OnShow = tsOtdelShow
      object Bevel6: TBevel
        Left = 3
        Top = 3
        Width = 249
        Height = 261
        Shape = bsFrame
      end
      object Bevel18: TBevel
        Left = 264
        Top = 104
        Width = 113
        Height = 50
        Shape = bsTopLine
      end
      object dbgOtdel: TDBGrid
        Left = 8
        Top = 8
        Width = 238
        Height = 250
        DataSource = DataSource1
        Options = [dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnKeyPress = bbOkKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'Otdel'
            Visible = True
          end>
      end
      object bbDelOtdel: TBitBtn
        Left = 264
        Top = 71
        Width = 112
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 6
        OnClick = bbDelOtdelClick
        OnKeyPress = bbOkKeyPress
      end
      object bbEditOtdel: TBitBtn
        Left = 264
        Top = 43
        Width = 112
        Height = 25
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        TabOrder = 5
        OnClick = bbEditOtdelClick
        OnKeyPress = bbOkKeyPress
      end
      object bbAddOtdel: TBitBtn
        Left = 264
        Top = 16
        Width = 112
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 4
        OnClick = bbAddOtdelClick
        OnKeyPress = bbOkKeyPress
      end
      object BitBtn5: TBitBtn
        Left = 264
        Top = 170
        Width = 112
        Height = 25
        Caption = #1054#1090#1084#1077#1085#1072
        TabOrder = 2
        OnClick = bbCancelClick
        OnKeyPress = bbOkKeyPress
      end
      object bbApply5: TBitBtn
        Left = 264
        Top = 142
        Width = 112
        Height = 25
        Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
        TabOrder = 1
        OnClick = bbApplyClick
        OnKeyPress = bbOkKeyPress
      end
      object bbOk5: TBitBtn
        Left = 264
        Top = 114
        Width = 112
        Height = 25
        Caption = 'Ok'
        Default = True
        TabOrder = 0
        OnClick = bbOkClick
        OnKeyPress = bbOkKeyPress
      end
    end
    object tsTrade: TTabSheet
      Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      ImageIndex = 6
      OnShow = tsTradeShow
      object Bevel7: TBevel
        Left = 3
        Top = 3
        Width = 249
        Height = 261
        Shape = bsFrame
      end
      object Bevel19: TBevel
        Left = 264
        Top = 104
        Width = 113
        Height = 50
        Shape = bsTopLine
      end
      object dbgTrade: TDBGrid
        Left = 8
        Top = 8
        Width = 238
        Height = 250
        DataSource = DataSource1
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnKeyPress = bbOkKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'Trade'
            Title.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
            Width = 156
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Oklad'
            Title.Caption = #1054#1082#1083#1072#1076
            Width = 59
            Visible = True
          end>
      end
      object bbDelTrade: TBitBtn
        Left = 264
        Top = 71
        Width = 112
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 6
        OnClick = bbDelTradeClick
        OnKeyPress = bbOkKeyPress
      end
      object bbEditTrada: TBitBtn
        Left = 264
        Top = 43
        Width = 112
        Height = 25
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        TabOrder = 5
        OnClick = bbEditTradaClick
        OnKeyPress = bbOkKeyPress
      end
      object bbAddTrade: TBitBtn
        Left = 264
        Top = 16
        Width = 112
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 4
        OnClick = bbAddTradeClick
        OnKeyPress = bbOkKeyPress
      end
      object BitBtn6: TBitBtn
        Left = 264
        Top = 170
        Width = 112
        Height = 25
        Caption = #1054#1090#1084#1077#1085#1072
        TabOrder = 2
        OnClick = bbCancelClick
        OnKeyPress = bbOkKeyPress
      end
      object bbApply6: TBitBtn
        Left = 264
        Top = 142
        Width = 112
        Height = 25
        Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
        TabOrder = 1
        OnClick = bbApplyClick
        OnKeyPress = bbOkKeyPress
      end
      object bbOk6: TBitBtn
        Left = 264
        Top = 114
        Width = 112
        Height = 25
        Caption = 'Ok'
        Default = True
        TabOrder = 0
        OnClick = bbOkClick
        OnKeyPress = bbOkKeyPress
      end
    end
    object tsHolidayKind: TTabSheet
      Caption = #1042#1080#1076#1099' '#1086#1090#1087#1091#1089#1082#1086#1074
      ImageIndex = 7
      OnShow = tsHolidayKindShow
      object Bevel8: TBevel
        Left = 3
        Top = 3
        Width = 249
        Height = 261
        Shape = bsFrame
      end
      object Bevel20: TBevel
        Left = 264
        Top = 104
        Width = 113
        Height = 50
        Shape = bsTopLine
      end
      object dbgHolidayKind: TDBGrid
        Left = 8
        Top = 8
        Width = 238
        Height = 250
        DataSource = DataSource1
        Options = [dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnKeyPress = bbOkKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'HolidayKind'
            Visible = True
          end>
      end
      object bbDelHolidayKind: TBitBtn
        Left = 264
        Top = 71
        Width = 112
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 6
        OnClick = bbDelHolidayKindClick
        OnKeyPress = bbOkKeyPress
      end
      object bbEditHolidayKind: TBitBtn
        Left = 264
        Top = 43
        Width = 112
        Height = 25
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        TabOrder = 5
        OnClick = bbEditHolidayKindClick
        OnKeyPress = bbOkKeyPress
      end
      object bbAddHolidayKind: TBitBtn
        Left = 264
        Top = 16
        Width = 112
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 4
        OnClick = bbAddHolidayKindClick
        OnKeyPress = bbOkKeyPress
      end
      object BitBtn7: TBitBtn
        Left = 264
        Top = 170
        Width = 112
        Height = 25
        Caption = #1054#1090#1084#1077#1085#1072
        TabOrder = 2
        OnClick = bbCancelClick
        OnKeyPress = bbOkKeyPress
      end
      object bbApply7: TBitBtn
        Left = 264
        Top = 142
        Width = 112
        Height = 25
        Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
        TabOrder = 1
        OnClick = bbApplyClick
        OnKeyPress = bbOkKeyPress
      end
      object bbOk7: TBitBtn
        Left = 264
        Top = 114
        Width = 112
        Height = 25
        Caption = 'Ok'
        Default = True
        TabOrder = 0
        OnClick = bbOkClick
        OnKeyPress = bbOkKeyPress
      end
    end
    object tsStructure: TTabSheet
      Caption = #1057#1086#1089#1090#1072#1074' '#1057#1040
      ImageIndex = 8
      OnShow = tsStructureShow
      object Bevel9: TBevel
        Left = 3
        Top = 3
        Width = 249
        Height = 261
        Shape = bsFrame
      end
      object Bevel21: TBevel
        Left = 264
        Top = 104
        Width = 113
        Height = 50
        Shape = bsTopLine
      end
      object DBGrid2: TDBGrid
        Left = 8
        Top = 8
        Width = 238
        Height = 250
        DataSource = DataSource1
        Options = [dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnKeyPress = bbOkKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'Structure'
            Visible = True
          end>
      end
      object bbDelStructure: TBitBtn
        Left = 264
        Top = 71
        Width = 112
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 6
        OnClick = bbDelStructureClick
        OnKeyPress = bbOkKeyPress
      end
      object bbEditStructure: TBitBtn
        Left = 264
        Top = 43
        Width = 112
        Height = 25
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        TabOrder = 5
        OnClick = bbEditStructureClick
        OnKeyPress = bbOkKeyPress
      end
      object bbAddStructure: TBitBtn
        Left = 264
        Top = 16
        Width = 112
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 4
        OnClick = bbAddStructureClick
        OnKeyPress = bbOkKeyPress
      end
      object BitBtn8: TBitBtn
        Left = 264
        Top = 170
        Width = 112
        Height = 25
        Caption = #1054#1090#1084#1077#1085#1072
        TabOrder = 2
        OnClick = bbCancelClick
        OnKeyPress = bbOkKeyPress
      end
      object bbApply8: TBitBtn
        Left = 264
        Top = 142
        Width = 112
        Height = 25
        Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
        TabOrder = 1
        OnClick = bbApplyClick
        OnKeyPress = bbOkKeyPress
      end
      object bbOk8: TBitBtn
        Left = 264
        Top = 114
        Width = 112
        Height = 25
        Caption = 'Ok'
        Default = True
        TabOrder = 0
        OnClick = bbOkClick
        OnKeyPress = bbOkKeyPress
      end
    end
    object tsRank: TTabSheet
      Caption = #1047#1074#1072#1085#1080#1077
      ImageIndex = 9
      OnShow = tsRankShow
      object Bevel10: TBevel
        Left = 3
        Top = 3
        Width = 249
        Height = 261
        Shape = bsFrame
      end
      object Bevel22: TBevel
        Left = 264
        Top = 104
        Width = 113
        Height = 50
        Shape = bsTopLine
      end
      object dbgRank: TDBGrid
        Left = 8
        Top = 8
        Width = 238
        Height = 250
        DataSource = DataSource1
        Options = [dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnKeyPress = bbOkKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'Rank'
            Visible = True
          end>
      end
      object bbDelRank: TBitBtn
        Left = 264
        Top = 71
        Width = 112
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 6
        OnClick = bbDelRankClick
        OnKeyPress = bbOkKeyPress
      end
      object bbEditRank: TBitBtn
        Left = 264
        Top = 43
        Width = 112
        Height = 25
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        TabOrder = 5
        OnClick = bbEditRankClick
        OnKeyPress = bbOkKeyPress
      end
      object bbAddRank: TBitBtn
        Left = 264
        Top = 16
        Width = 112
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 4
        OnClick = bbAddRankClick
        OnKeyPress = bbOkKeyPress
      end
      object BitBtn9: TBitBtn
        Left = 264
        Top = 170
        Width = 112
        Height = 25
        Caption = #1054#1090#1084#1077#1085#1072
        TabOrder = 2
        OnClick = bbCancelClick
        OnKeyPress = bbOkKeyPress
      end
      object bbApply9: TBitBtn
        Left = 264
        Top = 142
        Width = 112
        Height = 25
        Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
        TabOrder = 1
        OnClick = bbApplyClick
        OnKeyPress = bbOkKeyPress
      end
      object bbOk9: TBitBtn
        Left = 264
        Top = 114
        Width = 112
        Height = 25
        Caption = 'Ok'
        Default = True
        TabOrder = 0
        OnClick = bbOkClick
        OnKeyPress = bbOkKeyPress
      end
    end
    object tsValidity: TTabSheet
      Caption = #1043#1086#1076#1085#1086#1089#1090#1100
      ImageIndex = 10
      OnShow = tsValidityShow
      object Bevel11: TBevel
        Left = 3
        Top = 3
        Width = 249
        Height = 261
        Shape = bsFrame
      end
      object Bevel23: TBevel
        Left = 264
        Top = 104
        Width = 113
        Height = 50
        Shape = bsTopLine
      end
      object dbgValidity: TDBGrid
        Left = 8
        Top = 8
        Width = 238
        Height = 250
        DataSource = DataSource1
        Options = [dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnKeyPress = bbOkKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'Validity'
            Visible = True
          end>
      end
      object bbDelValidity: TBitBtn
        Left = 264
        Top = 71
        Width = 112
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 6
        OnClick = bbDelValidityClick
        OnKeyPress = bbOkKeyPress
      end
      object bbEditValidity: TBitBtn
        Left = 264
        Top = 43
        Width = 112
        Height = 25
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        TabOrder = 5
        OnClick = bbEditValidityClick
        OnKeyPress = bbOkKeyPress
      end
      object bbAddValidity: TBitBtn
        Left = 264
        Top = 16
        Width = 112
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 4
        OnClick = bbAddValidityClick
        OnKeyPress = bbOkKeyPress
      end
      object BitBtn10: TBitBtn
        Left = 264
        Top = 170
        Width = 112
        Height = 25
        Caption = #1054#1090#1084#1077#1085#1072
        TabOrder = 2
        OnClick = bbCancelClick
        OnKeyPress = bbOkKeyPress
      end
      object bbApply10: TBitBtn
        Left = 264
        Top = 142
        Width = 112
        Height = 25
        Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
        TabOrder = 1
        OnClick = bbApplyClick
        OnKeyPress = bbOkKeyPress
      end
      object bbOk10: TBitBtn
        Left = 264
        Top = 114
        Width = 112
        Height = 25
        Caption = 'Ok'
        Default = True
        TabOrder = 0
        OnClick = bbOkClick
        OnKeyPress = bbOkKeyPress
      end
    end
    object tsVoenkomat: TTabSheet
      Caption = #1042#1086#1077#1085#1082#1086#1084#1072#1090
      ImageIndex = 11
      OnShow = tsVoenkomatShow
      object Bevel12: TBevel
        Left = 3
        Top = 3
        Width = 249
        Height = 261
        Shape = bsFrame
      end
      object Bevel24: TBevel
        Left = 264
        Top = 104
        Width = 113
        Height = 50
        Shape = bsTopLine
      end
      object dbgVoenkomat: TDBGrid
        Left = 8
        Top = 8
        Width = 238
        Height = 250
        DataSource = DataSource1
        Options = [dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnKeyPress = bbOkKeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'Voenkomat'
            Visible = True
          end>
      end
      object bbDelVoenkomat: TBitBtn
        Left = 264
        Top = 71
        Width = 112
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 6
        OnClick = bbDelVoenkomatClick
        OnKeyPress = bbOkKeyPress
      end
      object bbEditVoenkomat: TBitBtn
        Left = 264
        Top = 43
        Width = 112
        Height = 25
        Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
        TabOrder = 5
        OnClick = bbEditVoenkomatClick
        OnKeyPress = bbOkKeyPress
      end
      object bbAddVoenkomat: TBitBtn
        Left = 264
        Top = 16
        Width = 112
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 4
        OnClick = bbAddVoenkomatClick
        OnKeyPress = bbOkKeyPress
      end
      object BitBtn11: TBitBtn
        Left = 264
        Top = 170
        Width = 112
        Height = 25
        Caption = #1054#1090#1084#1077#1085#1072
        TabOrder = 2
        OnClick = bbCancelClick
        OnKeyPress = bbOkKeyPress
      end
      object bbApply11: TBitBtn
        Left = 264
        Top = 142
        Width = 112
        Height = 25
        Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
        TabOrder = 1
        OnClick = bbApplyClick
        OnKeyPress = bbOkKeyPress
      end
      object bbOk11: TBitBtn
        Left = 264
        Top = 114
        Width = 112
        Height = 25
        Caption = 'Ok'
        Default = True
        TabOrder = 0
        OnClick = bbOkClick
        OnKeyPress = bbOkKeyPress
      end
    end
  end
  object aqSpravka: TADOQuery
    Connection = DataModule1.ADOConnection
    Parameters = <>
    Left = 180
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = aqSpravka
    Left = 244
    Top = 24
  end
  object aqWork: TADOQuery
    Connection = DataModule1.ADOConnection
    Parameters = <>
    Left = 212
    Top = 24
  end
end
