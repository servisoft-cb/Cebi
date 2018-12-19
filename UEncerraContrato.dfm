object frmEncerraContrato: TfrmEncerraContrato
  Left = 77
  Top = 71
  Width = 892
  Height = 594
  Caption = 'Encerra Contrato'
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
    Width = 884
    Height = 560
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
        Width = 880
        Height = 39
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label7: TLabel
          Left = 12
          Top = 14
          Width = 108
          Height = 13
          Alignment = taRightJustify
          Caption = 'Dt.Encerramento Final:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 714
          Top = 10
          Width = 84
          Height = 13
          Caption = 'Total Encerrados:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object lblQtdEncerrado: TLabel
          Left = 800
          Top = 10
          Width = 6
          Height = 13
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object btnConsultar: TBitBtn
          Left = 223
          Top = 3
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
        object DateEdit5: TDateEdit
          Left = 121
          Top = 6
          Width = 100
          Height = 21
          NumGlyphs = 2
          TabOrder = 0
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 39
        Width = 880
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
        object Shape4: TShape
          Left = 603
          Top = 4
          Width = 27
          Height = 15
          Brush.Color = 4227200
        end
        object Label29: TLabel
          Left = 632
          Top = 6
          Width = 92
          Height = 13
          Caption = 'Ativou Pr'#233' Contrato'
        end
        object Shape5: TShape
          Left = 739
          Top = 4
          Width = 27
          Height = 15
          Brush.Color = 4210816
        end
        object Label30: TLabel
          Left = 767
          Top = 6
          Width = 91
          Height = 13
          Caption = 'Dt.Contrato expirou'
        end
        object btnEncerrar: TBitBtn
          Left = 7
          Top = 5
          Width = 75
          Height = 25
          Caption = 'Encerrar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = False
          OnClick = btnEncerrarClick
        end
      end
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 71
        Width = 880
        Height = 449
        Align = alClient
        Ctl3D = True
        DataSource = DMCadContrato.dsContrato_Consulta
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnTitleClick = SMDBGrid1TitleClick
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
        OnGetCellParams = SMDBGrid1GetCellParams
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 27
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 13
        RowCount = 2
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUM_CONTRATO'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Contrato'
            Width = 94
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTCONTRATO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTCOBRANCA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_TOTAL'
            Width = 66
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUM_PEDIDO'
            Title.Alignment = taCenter
            Title.Caption = 'N'#186' Pedido'
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DTENCERRAMENTO'
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMECLIENTE'
            Width = 226
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMEASSINATURA'
            Width = 236
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOMEPERIODO'
            Title.Alignment = taCenter
            Title.Caption = 'Per'#237'odo'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_MES'
            Title.Alignment = taCenter
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GEROU_PRE_CONTRATO'
            Title.Alignment = taCenter
            Title.Caption = 'Gerou Pr'#233' Contrato'
            Width = 64
            Visible = True
          end>
      end
      object StaticText1: TStaticText
        Left = 0
        Top = 520
        Width = 880
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
  end
  object UCControls1: TUCControls
    GroupName = 'Encerrar Contrato'
    UserControl = fMenu.UserControl1
    NotAllowed = naDisabled
    Left = 713
    Top = 212
  end
end
