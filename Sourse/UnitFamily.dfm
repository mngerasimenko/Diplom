object FormFamily: TFormFamily
  Left = 210
  Top = 128
  Width = 544
  Height = 375
  Caption = #1063#1083#1077#1085#1099' '#1089#1077#1084#1100#1080
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object ActionMainMenuBar1: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 536
    Height = 24
    UseSystemFont = False
    ActionManager = ActionManagerFamily
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
  object RxDBGrid1: TRxDBGrid
    Left = 0
    Top = 24
    Width = 536
    Height = 312
    Align = alClient
    DataSource = DataSourceFamily
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    TitleButtons = True
    Columns = <
      item
        Expanded = False
        FieldName = 'FIO'
        Title.Alignment = taCenter
        Title.Caption = #1060#1072#1084#1080#1083#1080#1103' '#1048#1084#1103' '#1054#1090#1095#1077#1089#1090#1074#1086
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 284
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Birthday'
        Title.Alignment = taCenter
        Title.Caption = #1044#1077#1085#1100' '#1088#1086#1078#1076#1077#1085#1080#1103
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FamilyKind'
        Title.Alignment = taCenter
        Title.Caption = #1042#1080#1076' '#1088#1086#1076#1089#1090#1074#1072
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 115
        Visible = True
      end>
  end
  object ProgressBarFamily: TProgressBar
    Left = 0
    Top = 336
    Width = 536
    Height = 12
    Align = alBottom
    TabOrder = 2
  end
  object ActionManagerFamily: TActionManager
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
                Action = aAdd
              end
              item
                Action = aEdit
              end
              item
                Action = aDelit
              end>
            Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
          end>
        ActionBar = ActionMainMenuBar1
      end>
    Left = 448
    StyleName = 'XP Style'
    object aAdd: TAction
      Category = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnExecute = aAddExecute
    end
    object aEdit: TAction
      Category = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    end
    object aDelit: TAction
      Category = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Caption = #1059#1076#1072#1083#1080#1090#1100
    end
    object Action1: TAction
      Category = #1060#1072#1081#1083
      Caption = #1042#1099#1093#1086#1076
      OnExecute = Action1Execute
    end
  end
  object aqFamily: TADOQuery
    Connection = DataModule1.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Left = 416
  end
  object DataSourceFamily: TDataSource
    DataSet = aqFamily
    Left = 384
  end
end
