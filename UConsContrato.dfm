object frmConsContrato: TfrmConsContrato
  Left = 155
  Top = 78
  Width = 935
  Height = 594
  Caption = 'Consulta Contrato'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 919
    Height = 556
    ActivePage = TS_Consulta
    ActivePageDefault = TS_Consulta
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabIndex = 0
    TabOrder = 0
    FixedDimension = 19
    object TS_Consulta: TRzTabSheet
      Caption = 'Consulta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 915
        Height = 125
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label6: TLabel
          Left = 164
          Top = 16
          Width = 35
          Height = 13
          Alignment = taRightJustify
          Caption = 'Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 147
          Top = 38
          Width = 52
          Height = 13
          Alignment = taRightJustify
          Caption = 'Assinatura:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 112
          Top = 62
          Width = 87
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dt.Contrato Inicial:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 305
          Top = 62
          Width = 25
          Height = 13
          Alignment = taRightJustify
          Caption = 'Final:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 106
          Top = 85
          Width = 93
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dt.Cobran'#231'a Inicial:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 305
          Top = 85
          Width = 25
          Height = 13
          Alignment = taRightJustify
          Caption = 'Final:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 102
          Top = 108
          Width = 97
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dt.Encerramento Ini:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 305
          Top = 108
          Width = 25
          Height = 13
          Alignment = taRightJustify
          Caption = 'Final:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 433
          Top = 62
          Width = 77
          Height = 13
          Caption = 'Qtd.Assinaturas:'
        end
        object Label23: TLabel
          Left = 435
          Top = 86
          Width = 51
          Height = 13
          Caption = 'N'#186' Pedido:'
        end
        object RxDBLookupCombo4: TRxDBLookupCombo
          Left = 200
          Top = 31
          Width = 372
          Height = 21
          DropDownCount = 8
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = DMCadContrato.dsAssinatura
          TabOrder = 1
        end
        object RadioGroup1: TRadioGroup
          Left = 1
          Top = 1
          Width = 92
          Height = 123
          Align = alLeft
          Caption = 'Op'#231#227'o'
          ItemIndex = 3
          Items.Strings = (
            'Ativos'
            'Encerrados'
            'Pr'#233' Contrato'
            'Ambos')
          TabOrder = 0
        end
        object DateEdit1: TDateEdit
          Left = 200
          Top = 54
          Width = 100
          Height = 21
          NumGlyphs = 2
          TabOrder = 2
        end
        object DateEdit2: TDateEdit
          Left = 331
          Top = 54
          Width = 100
          Height = 21
          NumGlyphs = 2
          TabOrder = 3
        end
        object DateEdit3: TDateEdit
          Left = 200
          Top = 77
          Width = 100
          Height = 21
          NumGlyphs = 2
          TabOrder = 4
        end
        object DateEdit4: TDateEdit
          Left = 331
          Top = 77
          Width = 100
          Height = 21
          NumGlyphs = 2
          TabOrder = 5
        end
        object DateEdit5: TDateEdit
          Left = 200
          Top = 100
          Width = 100
          Height = 21
          NumGlyphs = 2
          TabOrder = 6
        end
        object DateEdit6: TDateEdit
          Left = 331
          Top = 100
          Width = 100
          Height = 21
          NumGlyphs = 2
          TabOrder = 7
        end
        object CurrencyEdit1: TCurrencyEdit
          Left = 515
          Top = 54
          Width = 57
          Height = 21
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          TabOrder = 8
        end
        object CurrencyEdit2: TCurrencyEdit
          Left = 487
          Top = 78
          Width = 85
          Height = 21
          AutoSize = False
          DecimalPlaces = 0
          DisplayFormat = '0'
          TabOrder = 9
        end
        object Edit1: TEdit
          Left = 199
          Top = 8
          Width = 372
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 10
        end
        object btnConsultar: TNxButton
          Left = 598
          Top = 93
          Width = 173
          Height = 29
          Caption = 'Efetuar Pesquisa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Glyph.Data = {
            AE060000424DAE06000000000000360000002800000017000000170000000100
            1800000000007806000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF7F2F0F5F2F0FCFDFDFFFFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B778D2D52869876
            72B0A3A1FCFDFE000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A7780
            0055B812A5FA5E90BDBBA29FFAF5F4000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFF5C6377004EAD29BEFFA9ECFFA3F7FF3A89BFF6F5F6000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF75737F0051AC17B1FFA4E7FDD5FFFF12A6E45E90B5FFFCFC00
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFD6C6C7D0057BB25BAFFA5E7FEC7FFFF099DDF6A8A
            A8FFFFFDFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF54657D0057B120B5FFA1E5FECFFFFF
            109CDD4D7EA5FFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFCFEFEDADDDDDAD9D9CFCFCFEDEFEFFFFFFFFFFFFFFFFFFF00024A21BCFFA5
            EAFFCAFFFF11A7E86587A9FFFFFCFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
            FFFFFFDDE0E0958E8D7A63657D60628467678065658D77799C9393D3D1D1ADAA
            A749343776B3E0B4FFFF19A4DF5A84A9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFD2D8D84C3334846269967570A39388A99E9AAB9E99AE9890
            B69DA4A28E8F867070E7D0CC806B6E005499467EA7FFFFFAFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFC2C2C2533638A27B799D80649A9A7C94988895
            97979498949198849E9478C4AFA8C8B5B7AFA1A1B6B3B1FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FBFBFB816D6E8A66679C6F4A987D
            5A978F7499978499998D99998C989783948769987854C9B1A9C1B4B6DED8D8FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000E0DCDB74575C
            98634797653998765499876899927799977F99967F99907799826295704B9B64
            3AD4CFD8A39C9BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000887F83865B54984D1A945C319969439A77559A7F5F998365998364997F5F
            99735095673F81400DC9A391B2ACB0ECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000BDAFB38C57459140079352258D562D875732885D3A8D
            6744946E4B92694587532D91572CBB753CCA906BADAAB0CECDCDFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C6B7BB8F56428528008B3D08A766
            34CA9765D0A272BC8D5F9E6940A06B3ECB9867EFB984FFCB8ACD8A5FBBB8C0DD
            DBDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000B8AEB1906152
            AD5529ECB177FFD29AFED7A5FCDEAEFEE7B6FFEABBFFE8B8FDDCABF7D09CFCCB
            90CF9675AEAAB2CBCBCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            00009B96988F6B68EAA769FFD19BF4CD9BF4D8AAF4E0B4F4E4BBF4E5BDF4E4BB
            F4DDB1F6DBABF8C98AC6A399A8A6A9F1F1F1FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000D2D0D07E6B73B47F67FED295F6DBADF4E4BAF5E5C2F5
            E7C8F5E9CAF4E7C8F5E8C3F9E9B9D29E73DDDEE8A6A2A1FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FCFEFE9B8F91B6A0A5CD9972FDE8
            B2F6EDC7F5E9CCF4EDD4F5EED9F5EED6F9EFCDE4C299F3E4DD867F80D7D8D8FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFD4D6D6
            574849C3AEB2CDA88FF0D9B4F6ECD0F6F3E3F6F1E5F4E8D3E2C2ABE1D0CF9E95
            96C6C7C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
            0000FFFFFFFFFFFFD3D5D59F969797888CC0A6A1D1B6ACD5BEB2D7C0B7D5BDB8
            C1B4B8ADA7AAC0BFBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFCFDFDD2D0D0A3A0A2CEC5C7E1
            D7D8DCD3D4A09C9EE7E5E5F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000}
          GlyphSpacing = 5
          ParentFont = False
          TabOrder = 11
          Transparent = True
          OnClick = btnConsultarClick
        end
        object ckNotificacao: TCheckBox
          Left = 440
          Top = 104
          Width = 152
          Height = 17
          Caption = 'Mostrar s'#243' com notifica'#231#227'o'
          TabOrder = 12
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 125
        Width = 915
        Height = 39
        Align = alTop
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        DesignSize = (
          915
          39)
        object Shape2: TShape
          Left = 522
          Top = 4
          Width = 27
          Height = 15
          Anchors = [akTop, akRight]
          Brush.Color = clRed
        end
        object Label17: TLabel
          Left = 551
          Top = 6
          Width = 148
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Apel EBS diferente do cadastro'
        end
        object Shape1: TShape
          Left = 522
          Top = 20
          Width = 27
          Height = 15
          Anchors = [akTop, akRight]
          Brush.Color = clYellow
        end
        object Label1: TLabel
          Left = 551
          Top = 22
          Width = 123
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Sem endere'#231'o de entrega'
        end
        object Shape3: TShape
          Left = 714
          Top = 4
          Width = 27
          Height = 15
          Anchors = [akTop, akRight]
          Brush.Color = 9240518
        end
        object Label8: TLabel
          Left = 743
          Top = 6
          Width = 101
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Email diferente do fox'
        end
        object Shape4: TShape
          Left = 714
          Top = 20
          Width = 27
          Height = 15
          Anchors = [akTop, akRight]
          Brush.Color = 9943551
        end
        object Label9: TLabel
          Left = 743
          Top = 22
          Width = 100
          Height = 13
          Anchors = [akTop, akRight]
          Caption = 'Fone diferente do fox'
        end
        object RzProgressBar1: TRzProgressBar
          Left = 23
          Top = 8
          Width = 434
          BorderOuter = fsFlat
          BorderWidth = 0
          InteriorOffset = 0
          PartsComplete = 0
          Percent = 0
          TotalParts = 0
          Visible = False
        end
      end
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 164
        Width = 915
        Height = 369
        Align = alClient
        Ctl3D = True
        DataSource = DMCadContrato.dsmConsulta
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Flat = False
        BandsFont.Charset = DEFAULT_CHARSET
        BandsFont.Color = clWindowText
        BandsFont.Height = -11
        BandsFont.Name = 'MS Sans Serif'
        BandsFont.Style = []
        Groupings = <>
        GridStyle.Style = gsCustom
        GridStyle.OddColor = clWindow
        GridStyle.EvenColor = clWindow
        TitleHeight.PixelCount = 24
        FooterColor = clBtnFace
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        OnGetCellParams = SMDBGrid1GetCellParams
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 12
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NumContrato'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Contrato'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeCliente'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Cliente'
            Width = 312
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Apel_EBS'
            Title.Alignment = taCenter
            Title.Caption = 'Apel EBS'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DtContrato'
            Title.Alignment = taCenter
            Title.Caption = 'Data Contrato'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NomeAssinatura'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Assinatura'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fone'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fone_EBS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EmailNFe'
            Title.Alignment = taCenter
            Title.Caption = 'Email NFe'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EmailNFe_EBS'
            Width = 200
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ExisteApel'
            Title.Alignment = taCenter
            Title.Caption = 'Existe Apel'
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ExisteEnd'
            Title.Alignment = taCenter
            Title.Caption = 'Existe Endere'#231'o'
            Visible = True
          end>
      end
    end
  end
end
