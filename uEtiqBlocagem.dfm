object frmEtiqBlocagem: TfrmEtiqBlocagem
  Left = 196
  Top = 133
  Width = 800
  Height = 560
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'frmEtiqBlocagem'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 784
    Height = 29
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label3: TLabel
      Left = 44
      Top = 13
      Width = 90
      Height = 13
      Alignment = taRightJustify
      Caption = 'Arquivo de retorno:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object BitBtn2: TBitBtn
      Left = 508
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Gerar'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn1: TBitBtn
      Left = 583
      Top = 2
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object FilenameEdit1: TFilenameEdit
      Left = 136
      Top = 5
      Width = 366
      Height = 21
      DefaultExt = '*.txt'
      Filter = 'Text files (*.txt)|*.txt|All files (*.*)|*.*'
      Ctl3D = False
      NumGlyphs = 1
      ParentCtl3D = False
      TabOrder = 0
    end
  end
  object SMDBGrid1: TSMDBGrid
    Left = 0
    Top = 29
    Width = 784
    Height = 493
    Align = alClient
    Ctl3D = False
    DataSource = dsEtiquetas
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    ParentCtl3D = False
    ReadOnly = True
    TabOrder = 1
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
    ExOptions = [eoCheckBoxSelect, eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 27
    DefaultRowHeight = 17
    ScrollBars = ssHorizontal
    ColCount = 8
    RowCount = 2
    Columns = <
      item
        Expanded = False
        FieldName = 'Id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Endereco'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Bairro'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cep'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Uf'
        Visible = True
      end>
  end
  object cdsEtiquetas: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Id'
        DataType = ftInteger
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Endereco'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'Bairro'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'Cidade'
        DataType = ftString
        Size = 36
      end
      item
        Name = 'Cep'
        DataType = ftString
        Size = 9
      end
      item
        Name = 'Uf'
        DataType = ftString
        Size = 2
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'Id'
    Params = <>
    StoreDefs = True
    Left = 248
    Top = 104
    Data = {
      D60000009619E0BD010000001800000007000000000003000000D60002496404
      00010000000000044E6F6D650100490000000100055749445448020002003200
      08456E64657265636F0100490000000100055749445448020002003200064261
      6972726F01004900000001000557494454480200020028000643696461646501
      0049000000010005574944544802000200240003436570010049000000010005
      5749445448020002000900025566010049000000010005574944544802000200
      020001000D44454641554C545F4F524445520200820000000000}
    object cdsEtiquetasId: TIntegerField
      FieldName = 'Id'
    end
    object cdsEtiquetasNome: TStringField
      FieldName = 'Nome'
      Size = 50
    end
    object cdsEtiquetasEndereco: TStringField
      FieldName = 'Endereco'
      Size = 50
    end
    object cdsEtiquetasBairro: TStringField
      FieldName = 'Bairro'
      Size = 40
    end
    object cdsEtiquetasCidade: TStringField
      FieldName = 'Cidade'
      Size = 36
    end
    object cdsEtiquetasCep: TStringField
      FieldName = 'Cep'
      Size = 9
    end
    object cdsEtiquetasUf: TStringField
      FieldName = 'Uf'
      Size = 2
    end
  end
  object dsEtiquetas: TDataSource
    DataSet = cdsEtiquetas
    Left = 280
    Top = 104
  end
end
