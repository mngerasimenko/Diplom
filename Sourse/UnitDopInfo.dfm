object FormDopInfo: TFormDopInfo
  Left = 233
  Top = 181
  Width = 488
  Height = 282
  Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1077#1094#1080#1103
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
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object ActionMainMenuBar1: TActionMainMenuBar
    Left = 0
    Top = 0
    Width = 480
    Height = 24
    UseSystemFont = False
    ActionManager = ActionManagerDopInfo
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
    Width = 480
    Height = 219
    Align = alClient
    DataSource = dsDopInfo
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
        FieldName = 'DopInformation'
        Title.Alignment = taCenter
        Title.Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'MS Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 469
        Visible = True
      end>
  end
  object ProgressBarDopInfo: TProgressBar
    Left = 0
    Top = 243
    Width = 480
    Height = 12
    Align = alBottom
    TabOrder = 2
  end
  object dsDopInfo: TDataSource
    DataSet = aqDopInfo
    Left = 384
  end
  object aqDopInfo: TADOQuery
    Connection = DataModule1.ADOConnection
    CursorType = ctStatic
    Parameters = <>
    Left = 416
  end
  object ActionManagerDopInfo: TActionManager
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = aClose
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
    object aClose: TAction
      Category = #1060#1072#1081#1083
      Caption = #1042#1099#1093#1086#1076
      OnExecute = aCloseExecute
    end
  end
end
