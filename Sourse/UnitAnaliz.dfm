object FormAnaliz: TFormAnaliz
  Left = 202
  Top = 122
  Width = 544
  Height = 373
  Caption = #1040#1085#1072#1083#1080#1079' '#1089#1086#1089#1090#1072#1074#1072' '#1087#1088#1077#1076#1087#1088#1080#1103#1090#1080#1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnPaint = FormPaint
  PixelsPerInch = 96
  TextHeight = 13
  object Shape5: TShape
    Left = 16
    Top = 88
    Width = 14
    Height = 14
  end
  object Shape6: TShape
    Left = 16
    Top = 64
    Width = 14
    Height = 14
  end
  object Shape7: TShape
    Left = 16
    Top = 40
    Width = 14
    Height = 14
  end
  object Shape8: TShape
    Left = 16
    Top = 16
    Width = 14
    Height = 14
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 536
    Height = 291
    ActivePage = tsAge
    Align = alClient
    TabOrder = 0
    object tsAge: TTabSheet
      Caption = #1042#1086#1079#1088#1072#1089#1090#1085#1086#1081' '#1089#1086#1089#1090#1072#1074
      object pAge: TPanel
        Left = 0
        Top = 0
        Width = 528
        Height = 263
        Align = alClient
        BevelInner = bvLowered
        BevelOuter = bvLowered
        TabOrder = 0
        DesignSize = (
          528
          263)
        object pbAge: TPaintBox
          Left = 2
          Top = 2
          Width = 524
          Height = 259
          Align = alClient
          Color = clSilver
          ParentColor = False
          OnPaint = pbAgePaint
        end
        object ScrollBox1: TScrollBox
          Left = 3
          Top = 27
          Width = 94
          Height = 207
          VertScrollBar.Smooth = True
          VertScrollBar.Style = ssFlat
          VertScrollBar.Tracking = True
          Anchors = [akLeft, akTop, akBottom]
          BorderStyle = bsNone
          Color = clWhite
          ParentColor = False
          TabOrder = 0
          object Shape1: TShape
            Left = 8
            Top = 40
            Width = 14
            Height = 14
            Brush.Color = clGreen
          end
          object Label1: TLabel
            Left = 32
            Top = 40
            Width = 30
            Height = 13
            Caption = #1044#1086' 20'
          end
          object Label2: TLabel
            Left = 32
            Top = 64
            Width = 27
            Height = 13
            Caption = '21-30'
          end
          object Shape2: TShape
            Left = 8
            Top = 64
            Width = 14
            Height = 14
            Brush.Color = clBlue
          end
          object Shape4: TShape
            Left = 8
            Top = 88
            Width = 14
            Height = 14
            Brush.Color = clYellow
          end
          object Label3: TLabel
            Left = 32
            Top = 88
            Width = 27
            Height = 13
            Caption = '31-40'
          end
          object Label4: TLabel
            Left = 32
            Top = 112
            Width = 27
            Height = 13
            Caption = '41-50'
          end
          object Shape3: TShape
            Left = 8
            Top = 112
            Width = 14
            Height = 14
            Brush.Color = clFuchsia
          end
          object Shape11: TShape
            Left = 8
            Top = 136
            Width = 14
            Height = 14
            Brush.Color = clAqua
          end
          object Label5: TLabel
            Left = 32
            Top = 136
            Width = 27
            Height = 13
            Caption = '51-60'
          end
          object Label6: TLabel
            Left = 32
            Top = 160
            Width = 27
            Height = 13
            Caption = '61-70'
          end
          object Shape10: TShape
            Left = 8
            Top = 160
            Width = 14
            Height = 14
            Brush.Color = clRed
          end
          object Shape9: TShape
            Left = 8
            Top = 184
            Width = 14
            Height = 14
            Brush.Color = clLime
          end
          object Label7: TLabel
            Left = 32
            Top = 184
            Width = 45
            Height = 13
            Caption = #1073#1086#1083#1077#1077' 70'
          end
          object Label8: TLabel
            Left = 10
            Top = 1
            Width = 50
            Height = 13
            Caption = #1042#1086#1079#1088#1072#1089#1090
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label9: TLabel
            Left = 2
            Top = 17
            Width = 76
            Height = 13
            Caption = #1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
    end
    object tsNationality: TTabSheet
      Caption = #1053#1072#1094#1080#1086#1085#1072#1083#1100#1085#1099#1081' '#1089#1086#1089#1090#1072#1074
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 528
        Height = 263
        Align = alClient
        BevelInner = bvLowered
        BevelOuter = bvLowered
        TabOrder = 0
        DesignSize = (
          528
          263)
        object pbNationality: TPaintBox
          Left = 8
          Top = 5
          Width = 516
          Height = 252
          Anchors = [akLeft, akTop, akRight, akBottom]
          OnPaint = pbNationalityPaint
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 291
    Width = 536
    Height = 52
    Align = alBottom
    TabOrder = 1
    object bbPrinter: TBitBtn
      Left = 16
      Top = 16
      Width = 75
      Height = 25
      Caption = #1055#1077#1095#1072#1090#1100
      TabOrder = 0
      OnClick = bbPrinterClick
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B004000000000000000000000000000000000000C9C9C9C9C9C9
        C9C9C9C9C9C9CACACAC3C3C3C9C9C9D9D9D9E9E9E9E0E0E0CACACAC3C3C3C9C9
        C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C8C8C8C8
        C8C8C5C5C5D8D8D8CECECE9A9A9A5656567F7F7FCBCBCBD7D7D7C7C7C7C7C7C7
        C8C8C8C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9CACACAC6C6C6C9C9C9D2D2D2D5D5
        D59090905A5A5A636363A19F9F6564644A4A4A848484CDCDCDD5D5D5CACACAC5
        C5C5C9C9C9C9C9C9C9C9C9C9C9C9C4C4C4D7D7D7CECECE989898575757787878
        AEAEAEC4C4C45453536461618D8B8B616161464646898989C8C8C8DADADAC6C6
        C6C8C8C8C9C9C9C9C9C9DCDCDC8E8E8E5E5E5E767676C9C9C9BFBFBFA0A0A09E
        9E9EAEABAB666565414141636262848484515151474747818181D1D1D1CECECE
        C8C8C8C9C9C9848484868686C6C6C6CECECEA1A1A1AFAFAFB8B8B8B5B5B5B6B3
        B39C9B9B9999996161613939395C5C5C6C6C6C5454543C3C3CA6A6A6CDCDCDC8
        C8C8AAAAAAACACACAFAFAFABABABCBCBCBCFCFCFC3C3C3B0B0B0B0AFAF959393
        9594949494949393935656563838384C4C4C5B5B5B464646DADADAC4C4C49F9F
        9FC0C0C0AFAFAFDFDFDFD3D3D3CECECEC1C1C1B9B9B9B8B6B6969292908F8F8C
        8C8C8484848686867C7C7C5757572F2F2F272727C9C9C9CDCDCDC2C2C2EEEEEE
        B2B2B2D8D8D8CED0CED3D4D3D9D9D9A7A7A7AAAAAAA1A0A09191918181818181
        817B7B7B7E7E7E7C7C7C818181292929292929C8C8C8BEBEBEE6E6E6B1B0B1D4
        D5D4E2DAE2EADFE6CECFCEC9C9C9AAAAAA9D9D9D9D9D9DA1A1A1838383777777
        7373737373737474744444444646465B5B5BC4C4C4EEEEEEA9ABA9E5DFE7C1E2
        B87BABB05747D8B5B1B7A4A6A3A7A7A7BEBEBE82807F9E9D9D9595957A7A7A67
        67677373733939397373738F8F8F9E9E9EDDDDDDBCBEBCA69BA676B07660AF7F
        A29AA2B2B3B2D4D4D4C2C1C1636364636B6F6868687D7D7DADADAD8888887171
        713030306B6B6BDCDCDCC6C6C6B1B1B1BDBCBDC3C5C3C1B6C19C8D97878987B8
        B8B9807F7F4F54568C8885C8A192959696575757A9A8A89C9C9CA1A1A1646464
        9C9C9CD2D2D2CBCBCBCCCCCCC2C2C2B6B6B6B9BBB9C8CBC9B9B8B96F6E6E6166
        69CEB2A3C79277C09583E6D4CC4B4E4F737272ACACACAFAFAFD2D2D2CECECEC7
        C7C7C9C9C9C8C8C8CACACACCCCCCC3C3C3B3B3B3BEBEBECECDCDB5B5B6D9D7D6
        C29883C69B84CAA491CDCFD1514F4EBABABAD7D6D6C1C1C1C8C8C8C9C9C9C9C9
        C9C9C9C9C9C9C9C9C9C9CACACACDCDCDC0C0C0BBBBBB999898BBBFC1DCBFB0C8
        A192BE886CEADCD5D2DCE150504FBDBDBDDCDCDCC6C6C6C9C9C9C9C9C9C9C9C9
        C9C9C9C9C9C9C9C9C9C7C7C7CBCBCBCBCBCBC6C5C5AAABACE5E2E1CE9D89ECE0
        D9C59781DAB6A4D8D8D84D4C4C767676D2D2D2C6C6C6C9C9C9C9C9C9C9C9C9C9
        C9C9C9C9C9C9C9C9C9C9C9C8C8C8CBCBCBC6C5C5ABACACF2FCFFC68A6CDAB7A7
        F6EDE7E3E2E19D9C9C8D8D8DD0D0D0C8C8C8C9C9C9C9C9C9C9C9C9C9C9C9C9C9
        C9C9C9C9C9C9C9C9C9C9C8C8C8CBCBCBC6C5C5A8A6A6E6EBEEE7ECEFB0B2B3A7
        A7A7C3C3C3D5D5D5C7C7C7C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9
        C9C9C9C9C9C9C9C9C9C8C8C8CBCBCBC6C6C6A7A6A5A9A8A8BEBEBDCDCDCDCBCB
        CBC7C7C7C9C9C9C9C9C9}
    end
    object bbClose: TBitBtn
      Left = 272
      Top = 16
      Width = 75
      Height = 25
      Caption = #1042#1099#1093#1086#1076
      TabOrder = 1
      Kind = bkCancel
    end
    object bbSavePict: TBitBtn
      Left = 104
      Top = 16
      Width = 156
      Height = 25
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1082#1072#1082' '#1088#1080#1089#1091#1085#1086#1082
      TabOrder = 2
      OnClick = bbSavePictClick
      Glyph.Data = {
        AA040000424DAA04000000000000360000002800000014000000130000000100
        1800000000007404000000000000000000000000000000000000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        00808000808000808000808000808000808000808000808000808000808000DD
        DDDDD1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1
        D1D1D1D1D1D1DDDDDD808000808000808000808000808000DDDDDD9595957171
        7171717171717171717171717171717171717171717171717171717171717171
        7171959595DDDDDD808000808000808000808000919191919191919191919191
        9191919191919191919191919191919191919191919191919191919191917171
        71D1D1D180800080800080800080800097979781CC8181CC8182CF8884D49386
        D99F86D99F88DEAB8BE3B98CE5BF8DE7C390ECD199ECCF919191717171D1D1D1
        8080008080008080008080009A9B9B217623217623237829237829237829247E
        2F3689494793615BB18193F2DF93F3E195F7EB919191717171D1D1D180800080
        80008080008080009F9F9F014601014601014401014401014701014701014D01
        013C0123802D92F0D996F8ED94F5E7919191717171D1D1D18080008080008080
        00808000A4A4A5015001015001013C0101390101390101390111741109680979
        C67981CC817BCA7B75C775919191717171D1D1D1808000808000808000808000
        AAA9AA217E21217E21014A01013901013F0101500145A14565BE6567C26795AB
        3DD19C19E5980D919191717171D1D1D1808000808000808000808000AFAFAF5B
        B35B5BB35B015601014A010164010D730D909129B48413CA8109DF7B01E37F01
        E58101919191717171D1D1D1808000808000808000808000B4B4B547B54747B5
        470B750B17791411710E795F01C66101C66101C96401CC6701CC6701CC670191
        9191717171D1D1D1808000808000808000808000B8B9B945AF3245AF3269A942
        BFC97AAFBF6DFAE099ECBF74D9994EB34E01B34E01B34E01B853019191917171
        71D1D1D1808000808000808000808000BDBDBEFFD274FFD274FFD274FFD274FF
        D274FFD274FFD274FFD274FDD782EFCF96C68D64A03B01919191717171D1D1D1
        808000808000808000808000C1C1C2FDD078FDD078FFAD27FFAD27FEBC4AFEB7
        3FFFB233FDD078F8E9B9F8EDC4F8EDC4F9E6BB919191717171D1D1D180800080
        8000808000808000C4C4C6F4D5A3F4D5A3F6C983F6C983F4D5A3F4D5A3F4D5A3
        F4D5A3F4D5A3F4D5A3F4D5A3F7D5A2919191717171D1D1D18080008080008080
        00808000C7C7C8F3CF9DF3CF9DF3CE9CF3CE9CF3CC9AF3CC9AF3CB99F3CA98F3
        C997F3C997F3C896F6CB99919191959595DDDDDD808000808000808000808000
        C2C3C3C2C3C3C0C0C1BEBDBFBBBBBDB9B8B9B6B6B6B3B3B4B0B1B1AEADAEAAAB
        ABA8A7A9A4A5A6919191DDDDDD80800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080008080008080008080008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000}
    end
  end
  object aqSostav: TADOQuery
    Connection = DataModule1.ADOConnection
    Parameters = <>
    Left = 328
  end
  object SaveDialog: TSaveDialog
    DefaultExt = 'bmp'
    FileName = #1044#1080#1072#1075#1088#1072#1084#1072
    Filter = 'Bmp - '#1060#1072#1081#1083#1099'|*.bmp'
    Left = 360
  end
end
