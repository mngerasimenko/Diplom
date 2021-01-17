object FormPurpose: TFormPurpose
  Left = 212
  Top = 144
  Width = 544
  Height = 375
  Caption = #1053#1072#1079#1085#1072#1095#1077#1085#1080#1103' '#1080' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1103
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
  object ActionMainMenuBar1: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 536
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
  object ProgressBarPurpose: TProgressBar
    Left = 0
    Top = 338
    Width = 536
    Height = 10
    Align = alBottom
    TabOrder = 1
  end
  object RxDBGrid1: TRxDBGrid
    Left = 0
    Top = 24
    Width = 536
    Height = 314
    Align = alClient
    BiDiMode = bdLeftToRight
    DataSource = DataSource
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    TitleButtons = True
    Columns = <
      item
        Expanded = False
        FieldName = 'Otdel'
        Title.Alignment = taCenter
        Title.Caption = #1054#1090#1076#1077#1083
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Trade'
        Title.Alignment = taCenter
        Title.Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Oklad'
        Title.Alignment = taCenter
        Title.Caption = #1054#1082#1083#1072#1076
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Basis'
        Title.Alignment = taCenter
        Title.Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1077
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DatePurpose'
        Title.Alignment = taCenter
        Title.Caption = #1044#1072#1090#1072
        Visible = True
      end>
  end
  object ActionManager1: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = AExit
              end>
            Caption = #1060#1072#1081#1083
          end
          item
            Items = <
              item
                Action = aAddPurpose
              end
              item
                Action = aEditPurpose
              end
              item
                Action = aDelPurpose
              end>
            Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
          end>
        ActionBar = ActionMainMenuBar1
      end>
    Left = 480
    Top = 40
    StyleName = 'XP Style'
    object AExit: TAction
      Category = #1060#1072#1081#1083
      Caption = #1042#1099#1093#1086#1076
      OnExecute = AExitExecute
    end
    object aAddPurpose: TAction
      Category = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      OnExecute = aAddPurposeExecute
    end
    object aEditPurpose: TAction
      Category = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    end
    object aDelPurpose: TAction
      Category = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
      Caption = #1059#1076#1072#1083#1080#1090#1100
    end
  end
  object DataSource: TDataSource
    DataSet = aqPurpose
    Left = 448
    Top = 40
  end
  object aqPurpose: TADOQuery
    Connection = DataModule1.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select *'
      'from Purpose'
      ''
      'Where idSotrudnik=0'
      ''
      ' ')
    Left = 416
    Top = 40
  end
  object atPurpose: TADOTable
    Connection = DataModule1.ADOConnection
    CursorType = ctStatic
    TableName = 'Purpose'
    Left = 376
    Top = 40
  end
end
