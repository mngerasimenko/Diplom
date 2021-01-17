object FormHoliday: TFormHoliday
  Left = 239
  Top = 193
  Width = 494
  Height = 281
  Caption = #1054#1090#1087#1091#1089#1082#1072
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
  object RxDBGrid1: TRxDBGrid
    Left = 0
    Top = 24
    Width = 486
    Height = 220
    Align = alClient
    DataSource = dsHoliday
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    TitleButtons = True
    Columns = <
      item
        Expanded = False
        FieldName = 'HolidayKind'
        Title.Caption = #1042#1080#1076' '#1086#1090#1087#1091#1089#1082#1072
        Width = 181
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Period'
        Title.Caption = #1055#1077#1088#1080#1086#1076
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'StartHoliday'
        Title.Caption = #1053#1072#1095#1072#1083#1086
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EndHoliday'
        Title.Caption = #1050#1086#1085#1077#1094
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Basis'
        Title.Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1077
        Width = 82
        Visible = True
      end>
  end
  object ActionMainMenuBar1: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 486
    Height = 24
    UseSystemFont = False
    ActionManager = ActionManager1
    Caption = 'ActionMainMenuBar1'
    ColorMap.HighlightColor = 14410210
    ColorMap.BtnSelectedColor = clBtnFace
    ColorMap.UnusedColor = 14410210
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Spacing = 0
  end
  object ProgressBarHoliday: TProgressBar
    Left = 0
    Top = 244
    Width = 486
    Height = 10
    Align = alBottom
    TabOrder = 2
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = Action1
              end>
            Caption = #1060#1072#1081#1083
          end
          item
            Items = <
              item
                Action = Action2
              end
              item
                Action = Action3
              end
              item
                Action = Action4
              end>
            Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
          end>
        ActionBar = ActionMainMenuBar1
      end>
    Left = 392
    Top = 64
    StyleName = 'XP Style'
    object Action1: TAction
      Category = #1060#1072#1081#1083
      Caption = #1042#1099#1093#1086#1076
      OnExecute = Action1Execute
    end
    object Action2: TAction
      Category = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnExecute = Action2Execute
    end
    object Action3: TAction
      Category = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    end
    object Action4: TAction
      Category = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Caption = #1059#1076#1072#1083#1080#1090#1100
    end
  end
  object aqHoliday: TADOQuery
    Active = True
    Connection = DataModule1.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      
        'Select Holiday.idHoliday, Holiday.idSotrudnik, Holiday.idHoliday' +
        'Kind,'
      
        '           Holiday.Period, Holiday.StartHoliday, Holiday.EndHoli' +
        'day, Holiday.Basis,'
      '           HolidayKind.idHolidayKind, HolidayKind.HolidayKind'
      'From Holiday, HolidayKind'
      
        'where Holiday.idSotrudnik=1 and Holiday.idHolidayKind=HolidayKin' +
        'd.idHolidayKind'
      ''
      '')
    Left = 424
    Top = 64
  end
  object dsHoliday: TDataSource
    DataSet = aqHoliday
    Left = 448
    Top = 96
  end
end
