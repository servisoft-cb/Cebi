object frmConsEstoque: TfrmConsEstoque
  Left = 158
  Top = 178
  Width = 873
  Height = 506
  Caption = 'Consulta Estoque'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 857
    Height = 76
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label7: TLabel
      Left = 36
      Top = 13
      Width = 56
      Height = 13
      Alignment = taRightJustify
      Caption = 'Data Inicial:'
    end
    object Label8: TLabel
      Left = 227
      Top = 13
      Width = 25
      Height = 13
      Alignment = taRightJustify
      Caption = 'Final:'
    end
    object Label5: TLabel
      Left = 34
      Top = 35
      Width = 58
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Contrato:'
    end
    object btnConsultar: TBitBtn
      Left = 94
      Top = 50
      Width = 99
      Height = 25
      Caption = 'Consultar'
      TabOrder = 2
      OnClick = btnConsultarClick
    end
    object DateEdit2: TDateEdit
      Left = 93
      Top = 5
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
    end
    object DateEdit3: TDateEdit
      Left = 255
      Top = 5
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object Edit2: TEdit
      Left = 93
      Top = 27
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 76
    Width = 857
    Height = 392
    ActivePage = TabSheet1
    ActivePageDefault = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 1
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = ' Contrato '
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 37
        Width = 853
        Height = 332
        Align = alClient
        DataSource = DMConsEstoque.dsmEstoque
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ReadOnly = True
        TabOrder = 0
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
        ExOptions = [eoCheckBoxSelect, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 27
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 4
        RowCount = 2
        Columns = <
          item
            Expanded = False
            FieldName = 'Num_Contrato'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Contrato'
            Width = 114
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DtReferencia'
            Title.Alignment = taCenter
            Title.Caption = 'Data Estoque'
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID'
            Title.Alignment = taCenter
            Width = 127
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 853
        Height = 37
        Align = alTop
        Color = clSilver
        TabOrder = 1
        object btnExcluir: TBitBtn
          Left = 8
          Top = 8
          Width = 145
          Height = 25
          Caption = 'Excluir os selecionados'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btnExcluirClick
        end
      end
    end
  end
  object UCControls1: TUCControls
    GroupName = 'Consulta Estoque'
    UserControl = fMenu.UserControl1
    NotAllowed = naDisabled
    Left = 680
    Top = 32
  end
end
