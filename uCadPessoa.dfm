object frmCadPessoa: TfrmCadPessoa
  Left = 91
  Top = 121
  Width = 877
  Height = 594
  Caption = 'Cadastro de Pessoas'
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
    Width = 861
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
    OnChange = RzPageControl1Change
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
        Width = 857
        Height = 38
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label6: TLabel
          Left = 6
          Top = 16
          Width = 37
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
          Font.Color = clBlue
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
          OnKeyDown = Edit4KeyDown
        end
        object CheckBox1: TCheckBox
          Left = 464
          Top = 16
          Width = 97
          Height = 17
          Caption = 'Exibir inativos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 38
        Width = 857
        Height = 32
        Align = alTop
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object btnInserir: TBitBtn
          Left = 4
          Top = 5
          Width = 75
          Height = 25
          Caption = '&Inserir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btnInserirClick
        end
        object btnExcluir: TBitBtn
          Left = 79
          Top = 5
          Width = 75
          Height = 25
          Caption = 'E&xcluir'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          TabStop = False
          OnClick = btnExcluirClick
        end
        object btnAtualizar: TBitBtn
          Left = 288
          Top = 5
          Width = 233
          Height = 25
          Caption = 'Atualizar Conforme EBS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = btnAtualizarClick
        end
      end
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 70
        Width = 857
        Height = 446
        Align = alClient
        Ctl3D = False
        DataSource = DMCadPessoa.dsPessoa_Consulta
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = SMDBGrid1DblClick
        OnTitleClick = SMDBGrid1TitleClick
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
        OnGetCellParams = SMDBGrid1GetCellParams
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 20
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Title.Alignment = taCenter
            Title.Caption = 'C'#243'digo'
            Width = 50
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'APEL_EBS'
            Title.Alignment = taCenter
            Title.Caption = 'Apel EBS'
            Width = 136
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Title.Alignment = taCenter
            Title.Caption = 'Nome'
            Width = 207
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FANTASIA'
            Title.Alignment = taCenter
            Title.Caption = 'Fant'#225'sia'
            Width = 111
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PESSOA'
            Title.Alignment = taCenter
            Title.Caption = 'Pessoa'
            Width = 56
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CNPJ_CPF'
            Title.Alignment = taCenter
            Title.Caption = 'CNPJ / CPF'
            Width = 120
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DDDFONE1'
            Title.Alignment = taCenter
            Title.Caption = 'DDD'
            Width = 31
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TELEFONE1'
            Title.Alignment = taCenter
            Title.Caption = 'Fone 1'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENDERECO'
            Title.Alignment = taCenter
            Title.Caption = 'Endere'#231'o'
            Width = 197
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUM_END'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Endere'#231'o'
            Width = 54
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COMPLEMENTO_END'
            Title.Alignment = taCenter
            Title.Caption = 'Complemento Endere'#231'o'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BAIRRO'
            Title.Alignment = taCenter
            Title.Caption = 'Bairro'
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIDADE'
            Title.Alignment = taCenter
            Title.Caption = 'Cidade'
            Width = 139
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'UF'
            Title.Alignment = taCenter
            Width = 28
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CEP'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DDDFONE2'
            Title.Alignment = taCenter
            Title.Caption = 'DDD'
            Width = 33
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TELEFONE2'
            Title.Alignment = taCenter
            Title.Caption = 'Fone 2'
            Width = 85
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'DDDFAX'
            Title.Alignment = taCenter
            Title.Caption = 'DDD'
            Width = 37
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'FAX'
            Title.Alignment = taCenter
            Width = 81
            Visible = True
          end>
      end
      object StaticText1: TStaticText
        Left = 0
        Top = 516
        Width = 857
        Height = 17
        Align = alBottom
        BorderStyle = sbsSunken
        Caption = 'Duplo clique para consultar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
    end
    object TS_Cadastro: TRzTabSheet
      Caption = 'Cadastro'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 857
        Height = 35
        Align = alTop
        Color = 8404992
        TabOrder = 0
        object btnConfirmar: TBitBtn
          Left = 79
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
          Left = 154
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
          Left = 4
          Top = 5
          Width = 75
          Height = 25
          Caption = '&Alterar'
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
      object RZPageControlDados: TRzPageControl
        Left = 0
        Top = 35
        Width = 857
        Height = 498
        ActivePage = TS_Pessoa_Dados
        ActivePageDefault = TS_Pessoa_Dados
        Align = alClient
        BackgroundColor = clSilver
        BoldCurrentTab = True
        FlatColor = clGray
        ParentBackgroundColor = False
        TabColors.Shadow = clSilver
        TabIndex = 0
        TabOrder = 1
        FixedDimension = 19
        object TS_Pessoa_Dados: TRzTabSheet
          Caption = 'Dados'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          object Label1: TLabel
            Left = 64
            Top = 79
            Width = 31
            Height = 13
            Alignment = taRightJustify
            Caption = 'Nome:'
          end
          object Label4: TLabel
            Left = 408
            Top = 171
            Width = 17
            Height = 13
            Alignment = taRightJustify
            Caption = 'UF:'
          end
          object Label2: TLabel
            Left = 46
            Top = 115
            Width = 49
            Height = 13
            Alignment = taRightJustify
            Caption = 'Endere'#231'o:'
          end
          object Label8: TLabel
            Left = 713
            Top = 13
            Width = 14
            Height = 13
            Alignment = taRightJustify
            Caption = 'ID:'
          end
          object Label3: TLabel
            Left = 530
            Top = 151
            Width = 22
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cep:'
          end
          object Label5: TLabel
            Left = 28
            Top = 133
            Width = 67
            Height = 13
            Alignment = taRightJustify
            Caption = 'Complemento:'
          end
          object Label7: TLabel
            Left = 65
            Top = 151
            Width = 30
            Height = 13
            Alignment = taRightJustify
            Caption = 'Bairro:'
          end
          object Label9: TLabel
            Left = 266
            Top = 43
            Width = 55
            Height = 13
            Alignment = taRightJustify
            Caption = 'CNPJ/CPF:'
          end
          object Label10: TLabel
            Left = 57
            Top = 43
            Width = 38
            Height = 13
            Alignment = taRightJustify
            Caption = 'Pessoa:'
          end
          object Label11: TLabel
            Left = 59
            Top = 171
            Width = 36
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cidade:'
          end
          object Label12: TLabel
            Left = 529
            Top = 171
            Width = 23
            Height = 13
            Alignment = taRightJustify
            Caption = 'Pais:'
          end
          object lblInscEstadual: TLabel
            Left = 28
            Top = 61
            Width = 67
            Height = 13
            Alignment = taRightJustify
            Caption = 'Insc.Estadual:'
          end
          object Label16: TLabel
            Left = 18
            Top = 207
            Width = 77
            Height = 13
            Alignment = taRightJustify
            Caption = 'Fone (DDD/N'#186'):'
          end
          object Label17: TLabel
            Left = 251
            Top = 207
            Width = 77
            Height = 13
            Alignment = taRightJustify
            Caption = 'Fone (DDD/N'#186'):'
          end
          object Label18: TLabel
            Left = 483
            Top = 207
            Width = 70
            Height = 13
            Alignment = taRightJustify
            Caption = 'Fax (DDD/N'#186'):'
          end
          object Label19: TLabel
            Left = 537
            Top = 115
            Width = 15
            Height = 13
            Alignment = taRightJustify
            Caption = 'N'#186':'
          end
          object Label20: TLabel
            Left = 52
            Top = 97
            Width = 43
            Height = 13
            Alignment = taRightJustify
            Caption = 'Fantasia:'
          end
          object Label21: TLabel
            Left = 648
            Top = 151
            Width = 61
            Height = 13
            Alignment = taRightJustify
            Caption = 'Caixa Postal:'
          end
          object Label22: TLabel
            Left = 688
            Top = 31
            Width = 39
            Height = 13
            Alignment = taRightJustify
            Caption = 'Usu'#225'rio:'
          end
          object Label23: TLabel
            Left = 668
            Top = 49
            Width = 59
            Height = 13
            Alignment = taRightJustify
            Caption = 'Dt.Cadastro:'
          end
          object Label24: TLabel
            Left = 668
            Top = 67
            Width = 59
            Height = 13
            Alignment = taRightJustify
            Caption = 'Hr.Cadastro:'
          end
          object lblRG: TLabel
            Left = 302
            Top = 61
            Width = 19
            Height = 13
            Alignment = taRightJustify
            Caption = 'RG:'
          end
          object SpeedButton4: TSpeedButton
            Left = 360
            Top = 161
            Width = 23
            Height = 22
            Hint = 'Atualiza tabela Cidade'
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
            OnClick = SpeedButton4Click
          end
          object Label13: TLabel
            Left = 44
            Top = 16
            Width = 51
            Height = 13
            Alignment = taRightJustify
            Caption = 'Apel. EBS:'
          end
          object Label14: TLabel
            Left = 376
            Top = 376
            Width = 403
            Height = 52
            Caption = 
              'OBS.:'#13#10'O Campo Apel.EBS deve estar igual ao cadastro no programa' +
              ' do FOX, '#13#10'pois '#233' por este campo que o sistema procura o endere'#231 +
              'o e monta'#13#10'a blocagem'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label15: TLabel
            Left = 44
            Top = 189
            Width = 51
            Height = 13
            Alignment = taRightJustify
            Caption = 'Email NFe:'
          end
          object Label25: TLabel
            Left = 230
            Top = 15
            Width = 84
            Height = 13
            Caption = 'F2 para pesquisar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit7: TDBEdit
            Left = 96
            Top = 73
            Width = 380
            Height = 19
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'NOME'
            DataSource = DMCadPessoa.dsPessoa
            ParentCtl3D = False
            TabOrder = 5
          end
          object RxDBLookupCombo1: TRxDBLookupCombo
            Left = 426
            Top = 163
            Width = 52
            Height = 21
            DropDownCount = 8
            Ctl3D = False
            DataField = 'UF'
            DataSource = DMCadPessoa.dsPessoa
            LookupField = 'UF'
            LookupDisplay = 'UF'
            LookupSource = DMCadPessoa.dsUF
            ParentCtl3D = False
            TabOrder = 14
            OnChange = RxDBLookupCombo1Change
          end
          object DBEdit1: TDBEdit
            Left = 96
            Top = 109
            Width = 380
            Height = 19
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'ENDERECO'
            DataSource = DMCadPessoa.dsPessoa
            ParentCtl3D = False
            TabOrder = 7
          end
          object DBEdit4: TDBEdit
            Left = 728
            Top = 5
            Width = 73
            Height = 19
            TabStop = False
            CharCase = ecUpperCase
            Color = clSilver
            Ctl3D = False
            DataField = 'CODIGO'
            DataSource = DMCadPessoa.dsPessoa
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 25
          end
          object DBEdit2: TDBEdit
            Left = 553
            Top = 109
            Width = 89
            Height = 19
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'NUM_END'
            DataSource = DMCadPessoa.dsPessoa
            ParentCtl3D = False
            TabOrder = 8
          end
          object DBEdit3: TDBEdit
            Left = 96
            Top = 127
            Width = 380
            Height = 19
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'COMPLEMENTO_END'
            DataSource = DMCadPessoa.dsPessoa
            ParentCtl3D = False
            TabOrder = 9
          end
          object DBEdit5: TDBEdit
            Left = 96
            Top = 145
            Width = 380
            Height = 19
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'BAIRRO'
            DataSource = DMCadPessoa.dsPessoa
            ParentCtl3D = False
            TabOrder = 10
          end
          object DBEdit6: TDBEdit
            Left = 323
            Top = 37
            Width = 153
            Height = 19
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'CNPJ_CPF'
            DataSource = DMCadPessoa.dsPessoa
            ParentCtl3D = False
            TabOrder = 2
            OnEnter = DBEdit6Enter
            OnExit = DBEdit6Exit
          end
          object RxDBComboBox1: TRxDBComboBox
            Left = 96
            Top = 35
            Width = 93
            Height = 21
            Style = csDropDownList
            DataField = 'PESSOA'
            DataSource = DMCadPessoa.dsPessoa
            DropDownCount = 2
            EnableValues = True
            ItemHeight = 13
            Items.Strings = (
              'Jur'#237'dica'
              'F'#237'sica')
            TabOrder = 1
            Values.Strings = (
              'J'
              'F')
            OnExit = RxDBComboBox1Exit
          end
          object RxDBLookupCombo2: TRxDBLookupCombo
            Left = 96
            Top = 163
            Width = 265
            Height = 21
            DropDownCount = 8
            DropDownWidth = 500
            Ctl3D = False
            DataField = 'ID_CIDADE'
            DataSource = DMCadPessoa.dsPessoa
            LookupField = 'ID'
            LookupDisplay = 'NOME;UF'
            LookupSource = DMCadPessoa.dsCidade
            ParentCtl3D = False
            TabOrder = 13
            OnExit = RxDBLookupCombo2Exit
          end
          object RxDBLookupCombo3: TRxDBLookupCombo
            Left = 553
            Top = 163
            Width = 250
            Height = 21
            DropDownCount = 8
            Ctl3D = False
            DataField = 'ID_PAIS'
            DataSource = DMCadPessoa.dsPessoa
            LookupField = 'ID'
            LookupDisplay = 'NOME'
            LookupSource = DMCadPessoa.dsPais
            ParentCtl3D = False
            TabOrder = 15
          end
          object dbeInscEstadual: TDBEdit
            Left = 96
            Top = 55
            Width = 124
            Height = 19
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'INSCR_EST'
            DataSource = DMCadPessoa.dsPessoa
            ParentCtl3D = False
            TabOrder = 3
          end
          object DBEdit11: TDBEdit
            Left = 96
            Top = 201
            Width = 41
            Height = 19
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'DDDFONE1'
            DataSource = DMCadPessoa.dsPessoa
            ParentCtl3D = False
            TabOrder = 17
          end
          object DBEdit12: TDBEdit
            Left = 136
            Top = 201
            Width = 105
            Height = 19
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'TELEFONE1'
            DataSource = DMCadPessoa.dsPessoa
            ParentCtl3D = False
            TabOrder = 18
          end
          object DBEdit13: TDBEdit
            Left = 331
            Top = 201
            Width = 41
            Height = 19
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'DDDFONE2'
            DataSource = DMCadPessoa.dsPessoa
            ParentCtl3D = False
            TabOrder = 19
          end
          object DBEdit14: TDBEdit
            Left = 371
            Top = 201
            Width = 105
            Height = 19
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'TELEFONE2'
            DataSource = DMCadPessoa.dsPessoa
            ParentCtl3D = False
            TabOrder = 20
          end
          object DBEdit15: TDBEdit
            Left = 553
            Top = 201
            Width = 41
            Height = 19
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'DDDFAX'
            DataSource = DMCadPessoa.dsPessoa
            ParentCtl3D = False
            TabOrder = 21
          end
          object DBEdit16: TDBEdit
            Left = 593
            Top = 201
            Width = 105
            Height = 19
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'FAX'
            DataSource = DMCadPessoa.dsPessoa
            ParentCtl3D = False
            TabOrder = 22
          end
          object DBEdit17: TDBEdit
            Left = 553
            Top = 145
            Width = 89
            Height = 19
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'CEP'
            DataSource = DMCadPessoa.dsPessoa
            ParentCtl3D = False
            TabOrder = 11
          end
          object DBEdit18: TDBEdit
            Left = 96
            Top = 91
            Width = 380
            Height = 19
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'FANTASIA'
            DataSource = DMCadPessoa.dsPessoa
            ParentCtl3D = False
            TabOrder = 6
          end
          object DBEdit19: TDBEdit
            Left = 713
            Top = 145
            Width = 89
            Height = 19
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'CAIXAPOSTAL'
            DataSource = DMCadPessoa.dsPessoa
            ParentCtl3D = False
            TabOrder = 12
          end
          object DBEdit20: TDBEdit
            Left = 728
            Top = 23
            Width = 73
            Height = 19
            TabStop = False
            CharCase = ecUpperCase
            Color = clSilver
            Ctl3D = False
            DataField = 'USUARIO'
            DataSource = DMCadPessoa.dsPessoa
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 26
          end
          object DBEdit21: TDBEdit
            Left = 728
            Top = 41
            Width = 73
            Height = 19
            TabStop = False
            CharCase = ecUpperCase
            Color = clSilver
            Ctl3D = False
            DataField = 'DTCADASTRO'
            DataSource = DMCadPessoa.dsPessoa
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 27
          end
          object DBEdit22: TDBEdit
            Left = 728
            Top = 59
            Width = 73
            Height = 19
            TabStop = False
            CharCase = ecUpperCase
            Color = clSilver
            Ctl3D = False
            DataField = 'HRCADASTRO'
            DataSource = DMCadPessoa.dsPessoa
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 28
          end
          object dbeRG: TDBEdit
            Left = 323
            Top = 55
            Width = 153
            Height = 19
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'RG'
            DataSource = DMCadPessoa.dsPessoa
            ParentCtl3D = False
            TabOrder = 4
          end
          object DBCheckBox1: TDBCheckBox
            Left = 721
            Top = 96
            Width = 97
            Height = 17
            Caption = 'Inativo'
            Ctl3D = False
            DataField = 'INATIVO'
            DataSource = DMCadPessoa.dsPessoa
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 24
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object GroupBox1: TGroupBox
            Left = 96
            Top = 240
            Width = 169
            Height = 97
            Caption = ' Op'#231#227'o (Pessoa) '
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 23
            object DBCheckBox2: TDBCheckBox
              Left = 8
              Top = 24
              Width = 97
              Height = 17
              Caption = 'Cliente'
              DataField = 'TP_CLIENTE'
              DataSource = DMCadPessoa.dsPessoa
              TabOrder = 0
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox3: TDBCheckBox
              Left = 8
              Top = 40
              Width = 97
              Height = 17
              Caption = 'Fornecedor'
              DataField = 'TP_FORNECEDOR'
              DataSource = DMCadPessoa.dsPessoa
              TabOrder = 1
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox4: TDBCheckBox
              Left = 8
              Top = 56
              Width = 97
              Height = 17
              Caption = 'Transportadora'
              DataField = 'TP_TRANSPORTADORA'
              DataSource = DMCadPessoa.dsPessoa
              TabOrder = 2
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox5: TDBCheckBox
              Left = 8
              Top = 72
              Width = 97
              Height = 17
              Caption = 'Vendedor'
              DataField = 'TP_VENDEDOR'
              DataSource = DMCadPessoa.dsPessoa
              TabOrder = 3
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
          object DBEdit8: TDBEdit
            Left = 96
            Top = 10
            Width = 129
            Height = 19
            CharCase = ecUpperCase
            Color = 16777088
            Ctl3D = False
            DataField = 'APEL_EBS'
            DataSource = DMCadPessoa.dsPessoa
            ParentCtl3D = False
            TabOrder = 0
            OnEnter = DBEdit8Enter
            OnExit = DBEdit8Exit
            OnKeyDown = DBEdit8KeyDown
          end
          object DBEdit9: TDBEdit
            Left = 96
            Top = 183
            Width = 380
            Height = 19
            CharCase = ecUpperCase
            Ctl3D = False
            DataField = 'EMAIL_NFE'
            DataSource = DMCadPessoa.dsPessoa
            ParentCtl3D = False
            TabOrder = 16
          end
        end
        object TS_Pessoa_Endereco: TRzTabSheet
          Caption = 'Endere'#231'o Entrega/Cobran'#231'a'
          Enabled = False
          object GroupBox2: TGroupBox
            Left = 0
            Top = 168
            Width = 853
            Height = 140
            Align = alTop
            Caption = ' Dados Cobran'#231'a '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object Label31: TLabel
              Left = 41
              Top = 25
              Width = 38
              Height = 13
              Alignment = taRightJustify
              Caption = 'Pessoa:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label32: TLabel
              Left = 248
              Top = 25
              Width = 55
              Height = 13
              Alignment = taRightJustify
              Caption = 'CNPJ/CPF:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label33: TLabel
              Left = 468
              Top = 25
              Width = 67
              Height = 13
              Alignment = taRightJustify
              Caption = 'Insc.Estadual:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label35: TLabel
              Left = 30
              Top = 49
              Width = 49
              Height = 13
              Alignment = taRightJustify
              Caption = 'Endere'#231'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label36: TLabel
              Left = 12
              Top = 73
              Width = 67
              Height = 13
              Alignment = taRightJustify
              Caption = 'Complemento:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label37: TLabel
              Left = 520
              Top = 49
              Width = 15
              Height = 13
              Alignment = taRightJustify
              Caption = 'N'#186':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label38: TLabel
              Left = 49
              Top = 97
              Width = 30
              Height = 13
              Alignment = taRightJustify
              Caption = 'Bairro:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label39: TLabel
              Left = 513
              Top = 97
              Width = 22
              Height = 13
              Alignment = taRightJustify
              Caption = 'Cep:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label40: TLabel
              Left = 43
              Top = 121
              Width = 36
              Height = 13
              Alignment = taRightJustify
              Caption = 'Cidade:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label41: TLabel
              Left = 355
              Top = 120
              Width = 17
              Height = 13
              Alignment = taRightJustify
              Caption = 'UF:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object RxDBComboBox2: TRxDBComboBox
              Left = 80
              Top = 17
              Width = 93
              Height = 21
              DataField = 'PESSOA_PGTO'
              DataSource = DMCadPessoa.dsPessoa
              EnableValues = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 13
              Items.Strings = (
                'Jur'#237'dica'
                'F'#237'sica')
              ParentFont = False
              TabOrder = 0
              Values.Strings = (
                'J'
                'F')
            end
            object DBEdit25: TDBEdit
              Left = 306
              Top = 17
              Width = 154
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CNPJ_CPG_PGTO'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit26: TDBEdit
              Left = 539
              Top = 17
              Width = 154
              Height = 21
              CharCase = ecUpperCase
              DataField = 'INSC_EST_PGTO'
              DataSource = DMCadPessoa.dsPessoa
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit28: TDBEdit
              Left = 80
              Top = 41
              Width = 380
              Height = 21
              CharCase = ecUpperCase
              Ctl3D = True
              DataField = 'ENDERECO_PGTO'
              DataSource = DMCadPessoa.dsPessoa
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 3
            end
            object DBEdit29: TDBEdit
              Left = 80
              Top = 65
              Width = 380
              Height = 21
              CharCase = ecUpperCase
              Ctl3D = True
              DataField = 'COMPLEMENTO_END_PGTO'
              DataSource = DMCadPessoa.dsPessoa
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 5
            end
            object DBEdit30: TDBEdit
              Left = 539
              Top = 41
              Width = 89
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NUM_END_PGTO'
              DataSource = DMCadPessoa.dsPessoa
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object DBEdit31: TDBEdit
              Left = 80
              Top = 89
              Width = 380
              Height = 21
              CharCase = ecUpperCase
              Ctl3D = True
              DataField = 'BAIRRO_PGTO'
              DataSource = DMCadPessoa.dsPessoa
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 6
            end
            object DBEdit32: TDBEdit
              Left = 539
              Top = 89
              Width = 89
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CEP_PGTO'
              DataSource = DMCadPessoa.dsPessoa
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
            end
            object RxDBLookupCombo8: TRxDBLookupCombo
              Left = 80
              Top = 113
              Width = 265
              Height = 21
              DropDownCount = 8
              DataField = 'ID_CIDADE_PGTO'
              DataSource = DMCadPessoa.dsPessoa
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              LookupField = 'ID'
              LookupDisplay = 'NOME'
              LookupSource = DMCadPessoa.dsCidade
              ParentFont = False
              TabOrder = 8
              OnChange = RxDBLookupCombo8Change
            end
            object RxDBLookupCombo9: TRxDBLookupCombo
              Left = 373
              Top = 114
              Width = 89
              Height = 21
              DropDownCount = 8
              DataField = 'UF_PGTO'
              DataSource = DMCadPessoa.dsPessoa
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              LookupField = 'UF'
              LookupDisplay = 'UF'
              LookupSource = DMCadPessoa.dsUF
              ParentFont = False
              TabOrder = 9
            end
          end
          object GroupBox3: TGroupBox
            Left = 0
            Top = 0
            Width = 853
            Height = 168
            Align = alTop
            Caption = ' Dados Entrega '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Label42: TLabel
              Left = 41
              Top = 25
              Width = 38
              Height = 13
              Alignment = taRightJustify
              Caption = 'Pessoa:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label43: TLabel
              Left = 248
              Top = 25
              Width = 55
              Height = 13
              Alignment = taRightJustify
              Caption = 'CNPJ/CPF:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label44: TLabel
              Left = 516
              Top = 25
              Width = 67
              Height = 13
              Alignment = taRightJustify
              Caption = 'Insc.Estadual:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label45: TLabel
              Left = 48
              Top = 49
              Width = 31
              Height = 13
              Alignment = taRightJustify
              Caption = 'Nome:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label46: TLabel
              Left = 30
              Top = 73
              Width = 49
              Height = 13
              Alignment = taRightJustify
              Caption = 'Endere'#231'o:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label47: TLabel
              Left = 12
              Top = 97
              Width = 67
              Height = 13
              Alignment = taRightJustify
              Caption = 'Complemento:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label48: TLabel
              Left = 568
              Top = 73
              Width = 15
              Height = 13
              Alignment = taRightJustify
              Caption = 'N'#186':'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label49: TLabel
              Left = 49
              Top = 121
              Width = 30
              Height = 13
              Alignment = taRightJustify
              Caption = 'Bairro:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label50: TLabel
              Left = 561
              Top = 121
              Width = 22
              Height = 13
              Alignment = taRightJustify
              Caption = 'Cep:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label51: TLabel
              Left = 43
              Top = 145
              Width = 36
              Height = 13
              Alignment = taRightJustify
              Caption = 'Cidade:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object Label52: TLabel
              Left = 401
              Top = 146
              Width = 17
              Height = 13
              Alignment = taRightJustify
              Caption = 'UF:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object SpeedButton1: TSpeedButton
              Left = 344
              Top = 138
              Width = 23
              Height = 22
              Hint = 'Atualiza tabela Cidade'
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
              OnClick = SpeedButton4Click
            end
            object RxDBComboBox3: TRxDBComboBox
              Left = 80
              Top = 17
              Width = 93
              Height = 21
              DataField = 'PESSOA_ENT'
              DataSource = DMCadPessoa.dsPessoa
              EnableValues = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ItemHeight = 13
              Items.Strings = (
                'Jur'#237'dica'
                'F'#237'sica')
              ParentFont = False
              TabOrder = 0
              Values.Strings = (
                'J'
                'F')
            end
            object DBEdit33: TDBEdit
              Left = 307
              Top = 17
              Width = 174
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CNPJ_CPF_ENT'
              DataSource = DMCadPessoa.dsPessoa
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit34: TDBEdit
              Left = 587
              Top = 17
              Width = 154
              Height = 21
              CharCase = ecUpperCase
              DataField = 'INSC_EST_ENT'
              DataSource = DMCadPessoa.dsPessoa
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit35: TDBEdit
              Left = 80
              Top = 41
              Width = 400
              Height = 21
              CharCase = ecUpperCase
              Ctl3D = True
              DataField = 'NOME_ENTREGA'
              DataSource = DMCadPessoa.dsPessoa
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 3
            end
            object DBEdit36: TDBEdit
              Left = 80
              Top = 65
              Width = 400
              Height = 21
              CharCase = ecUpperCase
              Ctl3D = True
              DataField = 'ENDERECO_ENT'
              DataSource = DMCadPessoa.dsPessoa
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 4
            end
            object DBEdit37: TDBEdit
              Left = 80
              Top = 89
              Width = 400
              Height = 21
              CharCase = ecUpperCase
              Ctl3D = True
              DataField = 'COMPLEMENTO_END_ENT'
              DataSource = DMCadPessoa.dsPessoa
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 6
            end
            object DBEdit38: TDBEdit
              Left = 587
              Top = 65
              Width = 89
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NUM_END_ENT'
              DataSource = DMCadPessoa.dsPessoa
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object DBEdit39: TDBEdit
              Left = 80
              Top = 113
              Width = 400
              Height = 21
              CharCase = ecUpperCase
              Ctl3D = True
              DataField = 'BAIRRO_ENT'
              DataSource = DMCadPessoa.dsPessoa
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentCtl3D = False
              ParentFont = False
              TabOrder = 7
            end
            object DBEdit40: TDBEdit
              Left = 587
              Top = 113
              Width = 89
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CEP_ENT'
              DataSource = DMCadPessoa.dsPessoa
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
            end
            object RxDBLookupCombo10: TRxDBLookupCombo
              Left = 80
              Top = 137
              Width = 265
              Height = 21
              DropDownCount = 8
              DataField = 'ID_CIDADE_ENT'
              DataSource = DMCadPessoa.dsPessoa
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              LookupField = 'ID'
              LookupDisplay = 'NOME'
              LookupSource = DMCadPessoa.dsCidade
              ParentFont = False
              TabOrder = 9
            end
            object RxDBLookupCombo11: TRxDBLookupCombo
              Left = 419
              Top = 138
              Width = 62
              Height = 21
              DropDownCount = 8
              DataField = 'UF_ENT'
              DataSource = DMCadPessoa.dsPessoa
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              LookupField = 'UF'
              LookupDisplay = 'UF'
              LookupSource = DMCadPessoa.dsUF
              ParentFont = False
              TabOrder = 10
            end
          end
        end
      end
    end
  end
  object UCControls1: TUCControls
    GroupName = 'Pessoa'
    UserControl = fMenu.UserControl1
    NotAllowed = naDisabled
    Left = 713
    Top = 25
  end
end
