object frmCadAssinatura: TfrmCadAssinatura
  Left = 119
  Top = 116
  Width = 832
  Height = 600
  Caption = 'Cadastro da Modalidade de Assinaturas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 816
    Height = 562
    ActivePage = TS_Cadastro
    ActivePageDefault = TS_Consulta
    Align = alClient
    BackgroundColor = clSilver
    BoldCurrentTab = True
    FlatColor = clGray
    ParentBackgroundColor = False
    TabColors.Shadow = clSilver
    TabIndex = 1
    TabOrder = 0
    FixedDimension = 19
    object TS_Consulta: TRzTabSheet
      Caption = 'Consulta'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 73
        Width = 812
        Height = 449
        Align = alClient
        Ctl3D = False
        DataSource = DMCadAssinatura.dsAssinatura
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = SMDBGrid1DblClick
        Flat = True
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
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Width = 394
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALOR'
            Width = 91
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTATUALIZACAO_VLR'
            Width = 124
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 41
        Width = 812
        Height = 32
        Align = alTop
        Color = clSilver
        TabOrder = 0
        object btnInserir: TBitBtn
          Left = 4
          Top = 4
          Width = 75
          Height = 25
          Caption = '&Inserir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btnInserirClick
        end
        object btnExcluir: TBitBtn
          Left = 79
          Top = 4
          Width = 75
          Height = 25
          Caption = 'E&xcluir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          TabStop = False
          OnClick = btnExcluirClick
        end
      end
      object StaticText1: TStaticText
        Left = 0
        Top = 522
        Width = 812
        Height = 17
        Align = alBottom
        BorderStyle = sbsSunken
        Caption = 'Duplo clique para consultar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16384
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 812
        Height = 41
        Align = alTop
        Color = clSilver
        TabOrder = 3
        object Label6: TLabel
          Left = 8
          Top = 16
          Width = 31
          Height = 13
          Caption = 'Nome:'
        end
        object btnConsultar: TBitBtn
          Left = 381
          Top = 7
          Width = 75
          Height = 25
          Caption = 'Consultar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = btnConsultarClick
        end
        object Edit4: TEdit
          Left = 42
          Top = 8
          Width = 335
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
        end
      end
    end
    object TS_Cadastro: TRzTabSheet
      Caption = 'Cadastro'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 812
        Height = 35
        Align = alTop
        Color = 8404992
        TabOrder = 1
        object btnConfirmar: TBitBtn
          Left = 80
          Top = 5
          Width = 75
          Height = 25
          Caption = '&Confirmar'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = btnConfirmarClick
        end
        object btnCancelar: TBitBtn
          Left = 155
          Top = 5
          Width = 75
          Height = 25
          Caption = 'Ca&ncelar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = btnCancelarClick
        end
        object btnAlterar: TBitBtn
          Left = 5
          Top = 5
          Width = 75
          Height = 25
          Caption = 'Alterar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btnAlterarClick
        end
      end
      object pnlCadastro: TPanel
        Left = 0
        Top = 35
        Width = 812
        Height = 234
        Align = alTop
        Enabled = False
        TabOrder = 0
        object Label1: TLabel
          Left = 76
          Top = 35
          Width = 31
          Height = 13
          Alignment = taRightJustify
          Caption = 'Nome:'
        end
        object Label2: TLabel
          Left = 80
          Top = 73
          Width = 27
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor:'
        end
        object Label8: TLabel
          Left = 93
          Top = 17
          Width = 14
          Height = 13
          Alignment = taRightJustify
          Caption = 'ID:'
        end
        object Label3: TLabel
          Left = 5
          Top = 92
          Width = 102
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dt. Atualiza'#231#227'o Valor:'
        end
        object Label4: TLabel
          Left = 85
          Top = 123
          Width = 22
          Height = 13
          Alignment = taRightJustify
          Caption = 'Obs:'
        end
        object Label14: TLabel
          Left = 66
          Top = 53
          Width = 41
          Height = 13
          Alignment = taRightJustify
          Caption = 'Per'#237'odo:'
        end
        object SpeedButton3: TSpeedButton
          Left = 499
          Top = 48
          Width = 23
          Height = 22
          Hint = 'Abre tela do cadastro do per'#237'odo'
          Caption = '...'
          OnClick = SpeedButton3Click
        end
        object SpeedButton5: TSpeedButton
          Left = 523
          Top = 48
          Width = 23
          Height = 22
          Hint = 'Atualiza tabela de Per'#237'odo'
          Glyph.Data = {
            E6040000424DE604000000000000360000002800000014000000140000000100
            180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFCFDF9FAFBF2
            F1F1EEEEEEEBEBEBE9EAECE4E8E9E2E4E7E3E4E6E4E6E7E6E9EAEBECF0F2F4F7
            F2F6F5F7F6F6FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFF1EBE9D0C5BADBDEE2C9CC
            CEC1C3C4B6B0AEB1A397AA876AA6764FA87044AC754BB39174C7BCB3D5D6DBE5
            E7E8EFEFEEFDFDFDFFFFFFFFFFFFFFFFFFEBE5DC9F6B46DBDBDEC9C8CAB9A796
            B68861C18451D29861CD9460CE945CCC9258C58346B26E36C09E83E3E1E3EFF1
            F2FBFBFBFFFFFFFFFFFFFFFFFFF5F0EEBC8A63C3A48CC3A58CC68F61CF9B68C8
            9565CA9361CD9364C18951BF864FC18853C6884FB8763BCEB3A1F7FCFFFEFEFE
            FFFFFFFFFFFFFFFFFFF7F3EFBD916CD5B493D6AD8BD8AA84CB9668CB9664BA85
            53BA8A61C6A281BF926DBB814EC08F67B47437BE8C5EEDE6DFFFFFFFFFFFFFFF
            FFFFFFFFFFF6F2EEB98F69E3C2A3DDB99AE0BF9CCA9C72BD9473E2CFC0E5D9D0
            F1EEECEFE7E3E1CAB1DCC3AACFB193A96B33E4D1BFFFFFFFFFFFFFFFFFFFFFFF
            FFF7F2EFBA9069DFBB9BDEBD9DC79F7BD8C4B1F1EDEAFFFFFFFFFFFFFFFFFFFF
            FFFFF7F3EEEAD6C4FEFEFEB58560D7BDA9FFFFFFFFFFFFFFFFFFFFFFFFF7F3EF
            BD946CDFBC9CD9B996D8B694C8AE97F6F6F6FFFFFFFEFFFFFFFEFFFFFFFFFBF9
            F7F4EBE5FFFFFFC1A287D9C5B5FFFFFFFFFFFFFFFFFFFFFFFFF5EEEAB07E53E0
            BD9FDCB793E2BE9FCE9E73D0B499FCFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFE2D6CBEBE3DCFFFFFFFFFFFFFFFFFFFFFFFFF9F9F5BEA994C2A797BFA1
            92BB9E8CB99C89B39983F7F5F2FFFFFFAB7957BB967BB79676B89778B89777B9
            997EECE3DCFFFFFFFFFFFFFFFFFFFFFFFFF5F0E8CAB09BFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFC9B7A7D3A679DBB088D9AA84DCAD87C7986EE9DB
            CDFFFFFFFFFFFFFFFFFFFFFFFFE6D8CEB67B50E8D0BCDFC7B7F3EFEBFFFFFFFE
            FFFEFEFFFEFFFFFFFFFFFFBA9F8CD6A57DCF9B6ECD9B6CBF9164E9DDD2FFFFFF
            FFFFFFFFFFFFFFFFFFEDE4DCA86B3BBF865CC29776EAE2DBFFFFFFFFFFFFFFFF
            FFFDFFFFDED0C4D4B8A3C79B71D1A478CD9E70BF9265E8DDD0FFFFFFFFFFFFFF
            FFFFFFFFFFF9F5F2BD8F6DBC8A639D5F2DB58968E0D2C8E7DCD3DAC8B8DECBBA
            C09A77D4A882D0A479D2A478D3A77CBF8E64E8DBCFFFFFFFFFFFFFFFFFFFFFFF
            FFF7F5F2CAAB93E5CCB7CCA788C29471CDAC8ED9BDA3CAA98AD7B094E8CEB2DB
            BEA1DDB995C99D76C0946FC39168EADACFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFF
            E1D2C6C5A284F6E3D0F0DCC9E6CEB7E6CCB5E5CBB6E7CCB5E5CCB2E3C2A4C299
            78CFB9A6D2BEADB58257E7D5C6FFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFDFEFEDA
            C9BBBA9675D4B193EDD1B8EED3BCECCEB6D1AF8EBE916DC2A386EEE6E2F9F8F6
            FFFFFFBD9A80DBC9BAFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFDFEFEF6F2
            EFD9C8BDBFA38CC3A388B99D83CFBEACFAF6F4F7F4F2FFFFFFFFFFFFFFFFFFF8
            F7F5F8F7F4FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFFFFFFFFFFFFFF
            FFFEFEFFFFFFFFFFFFFF}
          Margin = 0
          OnClick = SpeedButton5Click
        end
        object DBEdit7: TDBEdit
          Left = 109
          Top = 27
          Width = 679
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'NOME'
          DataSource = DMCadAssinatura.dsAssinatura
          ParentCtl3D = False
          TabOrder = 1
        end
        object DBEdit1: TDBEdit
          Left = 109
          Top = 65
          Width = 100
          Height = 19
          CharCase = ecUpperCase
          Ctl3D = False
          DataField = 'VALOR'
          DataSource = DMCadAssinatura.dsAssinatura
          ParentCtl3D = False
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 109
          Top = 9
          Width = 88
          Height = 19
          TabStop = False
          CharCase = ecUpperCase
          Color = clSilver
          Ctl3D = False
          DataField = 'ID'
          DataSource = DMCadAssinatura.dsAssinatura
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBDateEdit1: TDBDateEdit
          Left = 109
          Top = 83
          Width = 100
          Height = 21
          DataField = 'DTATUALIZACAO_VLR'
          DataSource = DMCadAssinatura.dsAssinatura
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 4
        end
        object DBMemo1: TDBMemo
          Left = 109
          Top = 115
          Width = 684
          Height = 89
          Ctl3D = False
          DataField = 'OBS'
          DataSource = DMCadAssinatura.dsAssinatura
          ParentCtl3D = False
          ScrollBars = ssVertical
          TabOrder = 5
        end
        object Panel4: TPanel
          Left = 1
          Top = 216
          Width = 810
          Height = 17
          Align = alBottom
          Color = clSilver
          TabOrder = 6
        end
        object RxDBLookupCombo6: TRxDBLookupCombo
          Left = 109
          Top = 45
          Width = 392
          Height = 21
          DropDownCount = 8
          DropDownWidth = 500
          Ctl3D = False
          DataField = 'ID_PERIODO'
          DataSource = DMCadAssinatura.dsAssinatura
          LookupField = 'ID'
          LookupDisplay = 'NOME'
          LookupSource = DMCadAssinatura.dsPeriodo
          ParentCtl3D = False
          TabOrder = 2
        end
      end
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 269
        Width = 812
        Height = 270
        Align = alClient
        Ctl3D = False
        DataSource = DMCadAssinatura.dsAssinatura_Livro
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Flat = True
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'ITEM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_PRODUTO_EBS'
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'lkNomeProduto'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD'
            Width = 89
            Visible = True
          end>
      end
    end
  end
  object UCControls1: TUCControls
    GroupName = 'Assinatura'
    UserControl = fMenu.UserControl1
    NotAllowed = naInvisible
    Left = 481
    Top = 28
  end
end
