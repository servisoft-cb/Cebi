object fConvCliente: TfConvCliente
  Left = 185
  Top = 173
  Width = 696
  Height = 480
  Caption = 'fConvCliente'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 680
    Height = 49
    Align = alTop
    Color = clSilver
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 25
      Width = 56
      Height = 13
      Caption = 'Data Inicial:'
    end
    object Label2: TLabel
      Left = 285
      Top = 8
      Width = 28
      Height = 13
      Caption = 'Lidos:'
    end
    object Label3: TLabel
      Left = 264
      Top = 24
      Width = 49
      Height = 13
      Caption = 'Gravados:'
    end
    object lblGravado: TLabel
      Left = 315
      Top = 24
      Width = 67
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
    end
    object lblLido: TLabel
      Left = 315
      Top = 8
      Width = 67
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = '0'
    end
    object DateEdit1: TDateEdit
      Left = 66
      Top = 17
      Width = 100
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 472
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Consultar'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 49
    Width = 680
    Height = 393
    ActivePage = TabSheet3
    Align = alClient
    TabIndex = 2
    TabOrder = 1
    FixedDimension = 19
    object TabSheet1: TRzTabSheet
      Caption = 'Contratos'
      object SMDBGrid1: TSMDBGrid
        Left = 0
        Top = 0
        Width = 676
        Height = 370
        Align = alClient
        DataSource = dsContrato
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 2
        RowCount = 2
      end
    end
    object TabSheet2: TRzTabSheet
      Caption = 'Clientes'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 676
        Height = 41
        Align = alTop
        Color = clSilver
        TabOrder = 0
        object BitBtn2: TBitBtn
          Left = 8
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Converter'
          TabOrder = 0
          OnClick = BitBtn2Click
        end
      end
      object SMDBGrid2: TSMDBGrid
        Left = 0
        Top = 41
        Width = 676
        Height = 329
        Align = alClient
        DataSource = dsmCliente
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 1
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
        ExOptions = [eoENTERlikeTAB, eoKeepSelection, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap]
        RegistryKey = 'Software\Scalabium'
        RegistrySection = 'SMDBGrid'
        WidthOfIndicator = 11
        DefaultRowHeight = 17
        ScrollBars = ssHorizontal
        ColCount = 19
        RowCount = 2
      end
    end
    object TabSheet3: TRzTabSheet
      Caption = 'TabSheet3'
      object Memo1: TMemo
        Left = 0
        Top = 0
        Width = 676
        Height = 370
        Align = alClient
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
  object sdsContrato: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CONTRATO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase_Ant.scoDados_Ant
    Left = 384
    Top = 128
    object sdsContratoCONTA13ID: TStringField
      FieldName = 'CONTA13ID'
      Required = True
      FixedChar = True
      Size = 13
    end
    object sdsContratoEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object sdsContratoTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
    end
    object sdsContratoCONTICOD: TIntegerField
      FieldName = 'CONTICOD'
    end
    object sdsContratoVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
    end
    object sdsContratoCNTRA60COD: TStringField
      FieldName = 'CNTRA60COD'
      FixedChar = True
      Size = 60
    end
    object sdsContratoCNTRCSTATUS: TStringField
      FieldName = 'CNTRCSTATUS'
      FixedChar = True
      Size = 1
    end
    object sdsContratoTPCTICOD: TIntegerField
      FieldName = 'TPCTICOD'
    end
    object sdsContratoSCONICOD: TIntegerField
      FieldName = 'SCONICOD'
    end
    object sdsContratoCONTDATIVACAO: TSQLTimeStampField
      FieldName = 'CONTDATIVACAO'
    end
    object sdsContratoCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object sdsContratoCONTIDIAVENCTO: TIntegerField
      FieldName = 'CONTIDIAVENCTO'
    end
    object sdsContratoCONTCREAJUSTE: TStringField
      FieldName = 'CONTCREAJUSTE'
      FixedChar = True
      Size = 1
    end
    object sdsContratoCONTCTIPOVENCTO: TStringField
      FieldName = 'CONTCTIPOVENCTO'
      FixedChar = True
      Size = 1
    end
    object sdsContratoCONTA60DESCR: TStringField
      FieldName = 'CONTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object sdsContratoCONTA13IDCONTRATANTE: TStringField
      FieldName = 'CONTA13IDCONTRATANTE'
      FixedChar = True
      Size = 13
    end
    object sdsContratoCONTA60CONTATO: TStringField
      FieldName = 'CONTA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object sdsContratoCONTA13IDEMPCONBRANCA: TStringField
      FieldName = 'CONTA13IDEMPCONBRANCA'
      FixedChar = True
      Size = 13
    end
    object sdsContratoCONTA60RESPONSAVEL: TStringField
      FieldName = 'CONTA60RESPONSAVEL'
      FixedChar = True
      Size = 60
    end
    object sdsContratoCONTIPERIODO: TIntegerField
      FieldName = 'CONTIPERIODO'
    end
    object sdsContratoCONTDINICIO: TSQLTimeStampField
      FieldName = 'CONTDINICIO'
    end
    object sdsContratoCONTDTERMINO: TSQLTimeStampField
      FieldName = 'CONTDTERMINO'
    end
    object sdsContratoCONTCRENOVACAOAUTO: TStringField
      FieldName = 'CONTCRENOVACAOAUTO'
      FixedChar = True
      Size = 1
    end
    object sdsContratoCONTDLIMITERENOVAUTO: TSQLTimeStampField
      FieldName = 'CONTDLIMITERENOVAUTO'
    end
    object sdsContratoCONTDULTRENOV: TSQLTimeStampField
      FieldName = 'CONTDULTRENOV'
    end
    object sdsContratoCONTDDATABASE: TSQLTimeStampField
      FieldName = 'CONTDDATABASE'
    end
    object sdsContratoCONTN3VLRPARCELA: TFMTBCDField
      FieldName = 'CONTN3VLRPARCELA'
      Precision = 15
      Size = 3
    end
    object sdsContratoCONTCSITUACAO: TStringField
      FieldName = 'CONTCSITUACAO'
      FixedChar = True
      Size = 1
    end
    object sdsContratoCONTDDATASITUACAO: TSQLTimeStampField
      FieldName = 'CONTDDATASITUACAO'
    end
    object sdsContratoCONTA254OBS: TStringField
      FieldName = 'CONTA254OBS'
      FixedChar = True
      Size = 254
    end
    object sdsContratoPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object sdsContratoTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
    end
    object sdsContratoCONTA5SERIENF: TStringField
      FieldName = 'CONTA5SERIENF'
      FixedChar = True
      Size = 5
    end
    object sdsContratoAVALA13ID: TStringField
      FieldName = 'AVALA13ID'
      FixedChar = True
      Size = 13
    end
    object sdsContratoPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
    end
    object sdsContratoHTPDICOD: TIntegerField
      FieldName = 'HTPDICOD'
    end
    object sdsContratoCONTN3PERCJUROSMES: TFMTBCDField
      FieldName = 'CONTN3PERCJUROSMES'
      Precision = 15
      Size = 3
    end
    object sdsContratoCONTCMODALIDADE: TStringField
      FieldName = 'CONTCMODALIDADE'
      FixedChar = True
      Size = 1
    end
    object sdsContratoCONTDEMISSAO: TSQLTimeStampField
      FieldName = 'CONTDEMISSAO'
    end
    object sdsContratoCONTCEXEBIRDADOEMP: TStringField
      FieldName = 'CONTCEXEBIRDADOEMP'
      FixedChar = True
      Size = 1
    end
    object sdsContratoCONTCEXEBIRRODAP: TStringField
      FieldName = 'CONTCEXEBIRRODAP'
      FixedChar = True
      Size = 1
    end
    object sdsContratoCONTN2VLRTOTAL: TFMTBCDField
      FieldName = 'CONTN2VLRTOTAL'
      Precision = 15
      Size = 2
    end
    object sdsContratoNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
    end
    object sdsContratoREGISTRO: TSQLTimeStampField
      FieldName = 'REGISTRO'
    end
    object sdsContratoPENDENDE: TStringField
      FieldName = 'PENDENDE'
      FixedChar = True
      Size = 1
    end
    object sdsContratoCNTRCGERANF: TStringField
      FieldName = 'CNTRCGERANF'
      FixedChar = True
      Size = 1
    end
    object sdsContratoCNTRDCANC: TSQLTimeStampField
      FieldName = 'CNTRDCANC'
    end
    object sdsContratoFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
    end
    object sdsContratoCNTRCFATESPECIFICO: TStringField
      FieldName = 'CNTRCFATESPECIFICO'
      FixedChar = True
      Size = 1
    end
    object sdsContratoCNTRDATIVACAO: TSQLTimeStampField
      FieldName = 'CNTRDATIVACAO'
    end
    object sdsContratoCONTDULTREAJUSTE: TSQLTimeStampField
      FieldName = 'CONTDULTREAJUSTE'
    end
    object sdsContratoOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
    end
    object sdsContratoINDIICOD: TIntegerField
      FieldName = 'INDIICOD'
    end
    object sdsContratoCECUA15COD: TStringField
      FieldName = 'CECUA15COD'
      FixedChar = True
      Size = 15
    end
    object sdsContratoCONTN2VLRTETO: TFMTBCDField
      FieldName = 'CONTN2VLRTETO'
      Precision = 15
      Size = 2
    end
    object sdsContratoCONTCMENSALISTA: TStringField
      FieldName = 'CONTCMENSALISTA'
      FixedChar = True
      Size = 1
    end
    object sdsContratoCONTA60REFCOMERCIAL: TStringField
      FieldName = 'CONTA60REFCOMERCIAL'
      Size = 60
    end
    object sdsContratoCONTN3VLRANTESREAJ: TFMTBCDField
      FieldName = 'CONTN3VLRANTESREAJ'
      Precision = 15
      Size = 3
    end
    object sdsContratoPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
    end
    object sdsContratoCONTIVENCTONFEMIS: TIntegerField
      FieldName = 'CONTIVENCTONFEMIS'
    end
    object sdsContratoCNTRA13ID: TStringField
      FieldName = 'CNTRA13ID'
      Size = 13
    end
    object sdsContratoCNTRDEMIS: TSQLTimeStampField
      FieldName = 'CNTRDEMIS'
    end
    object sdsContratoCNTRCREAJUSTE: TStringField
      FieldName = 'CNTRCREAJUSTE'
      Size = 1
    end
    object sdsContratoCONTCCONFVALOR: TStringField
      FieldName = 'CONTCCONFVALOR'
      Size = 1
    end
    object sdsContratoCONTCFATURPARC: TStringField
      FieldName = 'CONTCFATURPARC'
      Size = 1
    end
    object sdsContratoCONTCCLASSIFIC: TStringField
      FieldName = 'CONTCCLASSIFIC'
      Size = 1
    end
    object sdsContratoCONTINROPARCELAS: TIntegerField
      FieldName = 'CONTINROPARCELAS'
    end
    object sdsContratoCONTIEMIPARCELA: TIntegerField
      FieldName = 'CONTIEMIPARCELA'
    end
    object sdsContratoCNTRTIPO: TStringField
      FieldName = 'CNTRTIPO'
      FixedChar = True
      Size = 1
    end
    object sdsContratoUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
    end
    object sdsContratoCONTCGERAFATDATACONT: TStringField
      FieldName = 'CONTCGERAFATDATACONT'
      FixedChar = True
      Size = 1
    end
    object sdsContratoPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Size = 13
    end
    object sdsContratoCONTCDIVIDETOTAL: TStringField
      FieldName = 'CONTCDIVIDETOTAL'
      Size = 1
    end
    object sdsContratoCNTRCFORCAFATPER: TStringField
      FieldName = 'CNTRCFORCAFATPER'
      Size = 1
    end
    object sdsContratoCONTIDIAFATURAMENTO: TIntegerField
      FieldName = 'CONTIDIAFATURAMENTO'
    end
    object sdsContratoCONTA13IDVINCULOADENDO: TStringField
      FieldName = 'CONTA13IDVINCULOADENDO'
      FixedChar = True
      Size = 13
    end
    object sdsContratoCONTN2VLRADENDO: TFMTBCDField
      FieldName = 'CONTN2VLRADENDO'
      Precision = 15
      Size = 2
    end
    object sdsContratoVENDICOD1: TIntegerField
      FieldName = 'VENDICOD1'
    end
    object sdsContratoCONTCPERIODICIDADETIPO: TStringField
      FieldName = 'CONTCPERIODICIDADETIPO'
      FixedChar = True
      Size = 1
    end
    object sdsContratoCONTCTIPOADENDO: TStringField
      FieldName = 'CONTCTIPOADENDO'
      FixedChar = True
      Size = 1
    end
    object sdsContratoCONTIPERIODICIDADEQTDE: TIntegerField
      FieldName = 'CONTIPERIODICIDADEQTDE'
    end
    object sdsContratoPLCTA15COD_BKP: TStringField
      FieldName = 'PLCTA15COD_BKP'
      Size = 15
    end
    object sdsContratoCONTBCABCONTRATO: TMemoField
      FieldName = 'CONTBCABCONTRATO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsContratoCONTBCORPOCONTRATO: TMemoField
      FieldName = 'CONTBCORPOCONTRATO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsContratoCONTBRODCONTRATO: TMemoField
      FieldName = 'CONTBRODCONTRATO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsContratoCONTTADENDO: TMemoField
      FieldName = 'CONTTADENDO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsContratoCONTBOBSADENDO: TMemoField
      FieldName = 'CONTBOBSADENDO'
      BlobType = ftMemo
      Size = 1
    end
    object sdsContratoTIPOCONTRATO: TStringField
      FieldName = 'TIPOCONTRATO'
      Size = 60
    end
    object sdsContratoCIDADEEMPCOBRANCA: TStringField
      FieldName = 'CIDADEEMPCOBRANCA'
      Size = 60
    end
    object sdsContratoCIDADECONTRATANTE: TStringField
      FieldName = 'CIDADECONTRATANTE'
      Size = 60
    end
  end
  object dspContrato: TDataSetProvider
    DataSet = sdsContrato
    Left = 448
    Top = 128
  end
  object cdsContrato: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspContrato'
    Left = 512
    Top = 128
    object cdsContratoCONTA13ID: TStringField
      FieldName = 'CONTA13ID'
      Required = True
      FixedChar = True
      Size = 13
    end
    object cdsContratoEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object cdsContratoTERMICOD: TIntegerField
      FieldName = 'TERMICOD'
    end
    object cdsContratoCONTICOD: TIntegerField
      FieldName = 'CONTICOD'
    end
    object cdsContratoVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
    end
    object cdsContratoCNTRA60COD: TStringField
      FieldName = 'CNTRA60COD'
      FixedChar = True
      Size = 60
    end
    object cdsContratoCNTRCSTATUS: TStringField
      FieldName = 'CNTRCSTATUS'
      FixedChar = True
      Size = 1
    end
    object cdsContratoTPCTICOD: TIntegerField
      FieldName = 'TPCTICOD'
    end
    object cdsContratoSCONICOD: TIntegerField
      FieldName = 'SCONICOD'
    end
    object cdsContratoCONTDATIVACAO: TSQLTimeStampField
      FieldName = 'CONTDATIVACAO'
    end
    object cdsContratoCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      FixedChar = True
      Size = 13
    end
    object cdsContratoCONTIDIAVENCTO: TIntegerField
      FieldName = 'CONTIDIAVENCTO'
    end
    object cdsContratoCONTCREAJUSTE: TStringField
      FieldName = 'CONTCREAJUSTE'
      FixedChar = True
      Size = 1
    end
    object cdsContratoCONTCTIPOVENCTO: TStringField
      FieldName = 'CONTCTIPOVENCTO'
      FixedChar = True
      Size = 1
    end
    object cdsContratoCONTA60DESCR: TStringField
      FieldName = 'CONTA60DESCR'
      FixedChar = True
      Size = 60
    end
    object cdsContratoCONTA13IDCONTRATANTE: TStringField
      FieldName = 'CONTA13IDCONTRATANTE'
      FixedChar = True
      Size = 13
    end
    object cdsContratoCONTA60CONTATO: TStringField
      FieldName = 'CONTA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object cdsContratoCONTA13IDEMPCONBRANCA: TStringField
      FieldName = 'CONTA13IDEMPCONBRANCA'
      FixedChar = True
      Size = 13
    end
    object cdsContratoCONTA60RESPONSAVEL: TStringField
      FieldName = 'CONTA60RESPONSAVEL'
      FixedChar = True
      Size = 60
    end
    object cdsContratoCONTIPERIODO: TIntegerField
      FieldName = 'CONTIPERIODO'
    end
    object cdsContratoCONTDINICIO: TSQLTimeStampField
      FieldName = 'CONTDINICIO'
    end
    object cdsContratoCONTDTERMINO: TSQLTimeStampField
      FieldName = 'CONTDTERMINO'
    end
    object cdsContratoCONTCRENOVACAOAUTO: TStringField
      FieldName = 'CONTCRENOVACAOAUTO'
      FixedChar = True
      Size = 1
    end
    object cdsContratoCONTDLIMITERENOVAUTO: TSQLTimeStampField
      FieldName = 'CONTDLIMITERENOVAUTO'
    end
    object cdsContratoCONTDULTRENOV: TSQLTimeStampField
      FieldName = 'CONTDULTRENOV'
    end
    object cdsContratoCONTDDATABASE: TSQLTimeStampField
      FieldName = 'CONTDDATABASE'
    end
    object cdsContratoCONTN3VLRPARCELA: TFMTBCDField
      FieldName = 'CONTN3VLRPARCELA'
      Precision = 15
      Size = 3
    end
    object cdsContratoCONTCSITUACAO: TStringField
      FieldName = 'CONTCSITUACAO'
      FixedChar = True
      Size = 1
    end
    object cdsContratoCONTDDATASITUACAO: TSQLTimeStampField
      FieldName = 'CONTDDATASITUACAO'
    end
    object cdsContratoCONTA254OBS: TStringField
      FieldName = 'CONTA254OBS'
      FixedChar = True
      Size = 254
    end
    object cdsContratoPLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object cdsContratoTPDCICOD: TIntegerField
      FieldName = 'TPDCICOD'
    end
    object cdsContratoCONTA5SERIENF: TStringField
      FieldName = 'CONTA5SERIENF'
      FixedChar = True
      Size = 5
    end
    object cdsContratoAVALA13ID: TStringField
      FieldName = 'AVALA13ID'
      FixedChar = True
      Size = 13
    end
    object cdsContratoPORTICOD: TIntegerField
      FieldName = 'PORTICOD'
    end
    object cdsContratoHTPDICOD: TIntegerField
      FieldName = 'HTPDICOD'
    end
    object cdsContratoCONTN3PERCJUROSMES: TFMTBCDField
      FieldName = 'CONTN3PERCJUROSMES'
      Precision = 15
      Size = 3
    end
    object cdsContratoCONTCMODALIDADE: TStringField
      FieldName = 'CONTCMODALIDADE'
      FixedChar = True
      Size = 1
    end
    object cdsContratoCONTDEMISSAO: TSQLTimeStampField
      FieldName = 'CONTDEMISSAO'
    end
    object cdsContratoCONTCEXEBIRDADOEMP: TStringField
      FieldName = 'CONTCEXEBIRDADOEMP'
      FixedChar = True
      Size = 1
    end
    object cdsContratoCONTCEXEBIRRODAP: TStringField
      FieldName = 'CONTCEXEBIRRODAP'
      FixedChar = True
      Size = 1
    end
    object cdsContratoCONTN2VLRTOTAL: TFMTBCDField
      FieldName = 'CONTN2VLRTOTAL'
      Precision = 15
      Size = 2
    end
    object cdsContratoNUMEICOD: TIntegerField
      FieldName = 'NUMEICOD'
    end
    object cdsContratoREGISTRO: TSQLTimeStampField
      FieldName = 'REGISTRO'
    end
    object cdsContratoPENDENDE: TStringField
      FieldName = 'PENDENDE'
      FixedChar = True
      Size = 1
    end
    object cdsContratoCNTRCGERANF: TStringField
      FieldName = 'CNTRCGERANF'
      FixedChar = True
      Size = 1
    end
    object cdsContratoCNTRDCANC: TSQLTimeStampField
      FieldName = 'CNTRDCANC'
    end
    object cdsContratoFORNICOD: TIntegerField
      FieldName = 'FORNICOD'
    end
    object cdsContratoCNTRCFATESPECIFICO: TStringField
      FieldName = 'CNTRCFATESPECIFICO'
      FixedChar = True
      Size = 1
    end
    object cdsContratoCNTRDATIVACAO: TSQLTimeStampField
      FieldName = 'CNTRDATIVACAO'
    end
    object cdsContratoCONTDULTREAJUSTE: TSQLTimeStampField
      FieldName = 'CONTDULTREAJUSTE'
    end
    object cdsContratoOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
    end
    object cdsContratoINDIICOD: TIntegerField
      FieldName = 'INDIICOD'
    end
    object cdsContratoCECUA15COD: TStringField
      FieldName = 'CECUA15COD'
      FixedChar = True
      Size = 15
    end
    object cdsContratoCONTN2VLRTETO: TFMTBCDField
      FieldName = 'CONTN2VLRTETO'
      Precision = 15
      Size = 2
    end
    object cdsContratoCONTCMENSALISTA: TStringField
      FieldName = 'CONTCMENSALISTA'
      FixedChar = True
      Size = 1
    end
    object cdsContratoCONTA60REFCOMERCIAL: TStringField
      FieldName = 'CONTA60REFCOMERCIAL'
      Size = 60
    end
    object cdsContratoCONTN3VLRANTESREAJ: TFMTBCDField
      FieldName = 'CONTN3VLRANTESREAJ'
      Precision = 15
      Size = 3
    end
    object cdsContratoPLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
    end
    object cdsContratoCONTIVENCTONFEMIS: TIntegerField
      FieldName = 'CONTIVENCTONFEMIS'
    end
    object cdsContratoCNTRA13ID: TStringField
      FieldName = 'CNTRA13ID'
      Size = 13
    end
    object cdsContratoCNTRDEMIS: TSQLTimeStampField
      FieldName = 'CNTRDEMIS'
    end
    object cdsContratoCNTRCREAJUSTE: TStringField
      FieldName = 'CNTRCREAJUSTE'
      Size = 1
    end
    object cdsContratoCONTCCONFVALOR: TStringField
      FieldName = 'CONTCCONFVALOR'
      Size = 1
    end
    object cdsContratoCONTCFATURPARC: TStringField
      FieldName = 'CONTCFATURPARC'
      Size = 1
    end
    object cdsContratoCONTCCLASSIFIC: TStringField
      FieldName = 'CONTCCLASSIFIC'
      Size = 1
    end
    object cdsContratoCONTINROPARCELAS: TIntegerField
      FieldName = 'CONTINROPARCELAS'
    end
    object cdsContratoCONTIEMIPARCELA: TIntegerField
      FieldName = 'CONTIEMIPARCELA'
    end
    object cdsContratoCNTRTIPO: TStringField
      FieldName = 'CNTRTIPO'
      FixedChar = True
      Size = 1
    end
    object cdsContratoUSUAICOD: TIntegerField
      FieldName = 'USUAICOD'
    end
    object cdsContratoCONTCGERAFATDATACONT: TStringField
      FieldName = 'CONTCGERAFATDATACONT'
      FixedChar = True
      Size = 1
    end
    object cdsContratoPDVDA13ID: TStringField
      FieldName = 'PDVDA13ID'
      Size = 13
    end
    object cdsContratoCONTCDIVIDETOTAL: TStringField
      FieldName = 'CONTCDIVIDETOTAL'
      Size = 1
    end
    object cdsContratoCNTRCFORCAFATPER: TStringField
      FieldName = 'CNTRCFORCAFATPER'
      Size = 1
    end
    object cdsContratoCONTIDIAFATURAMENTO: TIntegerField
      FieldName = 'CONTIDIAFATURAMENTO'
    end
    object cdsContratoCONTA13IDVINCULOADENDO: TStringField
      FieldName = 'CONTA13IDVINCULOADENDO'
      FixedChar = True
      Size = 13
    end
    object cdsContratoCONTN2VLRADENDO: TFMTBCDField
      FieldName = 'CONTN2VLRADENDO'
      Precision = 15
      Size = 2
    end
    object cdsContratoVENDICOD1: TIntegerField
      FieldName = 'VENDICOD1'
    end
    object cdsContratoCONTCPERIODICIDADETIPO: TStringField
      FieldName = 'CONTCPERIODICIDADETIPO'
      FixedChar = True
      Size = 1
    end
    object cdsContratoCONTCTIPOADENDO: TStringField
      FieldName = 'CONTCTIPOADENDO'
      FixedChar = True
      Size = 1
    end
    object cdsContratoCONTIPERIODICIDADEQTDE: TIntegerField
      FieldName = 'CONTIPERIODICIDADEQTDE'
    end
    object cdsContratoPLCTA15COD_BKP: TStringField
      FieldName = 'PLCTA15COD_BKP'
      Size = 15
    end
    object cdsContratoCONTBCABCONTRATO: TMemoField
      FieldName = 'CONTBCABCONTRATO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsContratoCONTBCORPOCONTRATO: TMemoField
      FieldName = 'CONTBCORPOCONTRATO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsContratoCONTBRODCONTRATO: TMemoField
      FieldName = 'CONTBRODCONTRATO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsContratoCONTTADENDO: TMemoField
      FieldName = 'CONTTADENDO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsContratoCONTBOBSADENDO: TMemoField
      FieldName = 'CONTBOBSADENDO'
      BlobType = ftMemo
      Size = 1
    end
    object cdsContratoTIPOCONTRATO: TStringField
      FieldName = 'TIPOCONTRATO'
      Size = 60
    end
    object cdsContratoCIDADEEMPCOBRANCA: TStringField
      FieldName = 'CIDADEEMPCOBRANCA'
      Size = 60
    end
    object cdsContratoCIDADECONTRATANTE: TStringField
      FieldName = 'CIDADECONTRATANTE'
      Size = 60
    end
  end
  object dsContrato: TDataSource
    DataSet = cdsContrato
    Left = 584
    Top = 128
  end
  object mCliente: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Apel'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Nome'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'Endereco'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'Endereco_Num'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Bairro'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'Cidade'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'UF'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CNPJCPF'
        DataType = ftString
        Size = 18
      end
      item
        Name = 'Pessoa'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CodAnt'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Fone1'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Fone2'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Fax'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Cep'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'InscEstadual'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'RG'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Pais'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CodCidade'
        DataType = ftLargeint
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 233
    Top = 101
    Data = {
      F00100009619E0BD010000001800000012000000000003000000F00104417065
      6C0100490000000100055749445448020002001400044E6F6D65010049000000
      010005574944544802000200460008456E64657265636F010049000000010005
      57494454480200020046000C456E64657265636F5F4E756D0100490000000100
      0557494454480200020014000642616972726F01004900000001000557494454
      48020002001E0006436964616465010049000000010005574944544802000200
      3200025546010049000000010005574944544802000200020007434E504A4350
      46010049000000010005574944544802000200120006506573736F6101004900
      0000010005574944544802000200010006436F64416E74010049000000010005
      574944544802000200140005466F6E6531010049000000010005574944544802
      000200140005466F6E6532010049000000010005574944544802000200140003
      4661780100490000000100055749445448020002001400034365700100490000
      000100055749445448020002000A000C496E7363457374616475616C01004900
      0000010005574944544802000200140002524701004900000001000557494454
      4802000200140004506169730100490000000100055749445448020002000200
      09436F6443696461646508000100000000000000}
    object mClienteApel: TStringField
      FieldName = 'Apel'
    end
    object mClienteNome: TStringField
      FieldName = 'Nome'
      Size = 70
    end
    object mClienteEndereco: TStringField
      FieldName = 'Endereco'
      Size = 70
    end
    object mClienteEndereco_Num: TStringField
      FieldName = 'Endereco_Num'
    end
    object mClienteBairro: TStringField
      FieldName = 'Bairro'
      Size = 30
    end
    object mClienteCidade: TStringField
      FieldName = 'Cidade'
      Size = 50
    end
    object mClienteUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object mClienteCNPJCPF: TStringField
      FieldName = 'CNPJCPF'
      Size = 18
    end
    object mClientePessoa: TStringField
      FieldName = 'Pessoa'
      Size = 1
    end
    object mClienteCodAnt: TStringField
      FieldName = 'CodAnt'
    end
    object mClienteFone1: TStringField
      FieldName = 'Fone1'
    end
    object mClienteFone2: TStringField
      FieldName = 'Fone2'
    end
    object mClienteFax: TStringField
      FieldName = 'Fax'
    end
    object mClienteCep: TStringField
      FieldName = 'Cep'
      Size = 10
    end
    object mClienteInscEstadual: TStringField
      FieldName = 'InscEstadual'
    end
    object mClienteRG: TStringField
      FieldName = 'RG'
    end
    object mClientePais: TStringField
      FieldName = 'Pais'
      Size = 2
    end
    object mClienteCodCidade: TLargeintField
      FieldName = 'CodCidade'
    end
  end
  object dsmCliente: TDataSource
    DataSet = mCliente
    Left = 273
    Top = 101
  end
  object sdsCliente: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CLIENTE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase_Ant.scoDados_Ant
    Left = 384
    Top = 176
    object sdsClienteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Required = True
      FixedChar = True
      Size = 13
    end
    object sdsClienteEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object sdsClienteCLIEICOD: TIntegerField
      FieldName = 'CLIEICOD'
      Required = True
    end
    object sdsClienteCLIEA5FISJURID: TStringField
      FieldName = 'CLIEA5FISJURID'
      FixedChar = True
      Size = 5
    end
    object sdsClienteCLIEA14CGC: TStringField
      FieldName = 'CLIEA14CGC'
      FixedChar = True
      Size = 14
    end
    object sdsClienteCLIEA20IE: TStringField
      FieldName = 'CLIEA20IE'
      FixedChar = True
    end
    object sdsClienteCLIEA11CPF: TStringField
      FieldName = 'CLIEA11CPF'
      FixedChar = True
      Size = 11
    end
    object sdsClienteCLIEA10RG: TStringField
      FieldName = 'CLIEA10RG'
      FixedChar = True
      Size = 10
    end
    object sdsClienteCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object sdsClienteCLIEA60NOMEFANT: TStringField
      FieldName = 'CLIEA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object sdsClienteCLIEA60CONTATO: TStringField
      FieldName = 'CLIEA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object sdsClienteCLIEA15FONE1: TStringField
      FieldName = 'CLIEA15FONE1'
      FixedChar = True
      Size = 15
    end
    object sdsClienteCLIEA15FONE2: TStringField
      FieldName = 'CLIEA15FONE2'
      FixedChar = True
      Size = 15
    end
    object sdsClienteCLIEA15FAX: TStringField
      FieldName = 'CLIEA15FAX'
      FixedChar = True
      Size = 15
    end
    object sdsClienteCLIEA30OUTROSDOC: TStringField
      FieldName = 'CLIEA30OUTROSDOC'
      FixedChar = True
      Size = 30
    end
    object sdsClienteCLIECSEXO: TStringField
      FieldName = 'CLIECSEXO'
      FixedChar = True
      Size = 1
    end
    object sdsClienteCLIEA60PROFISSAO: TStringField
      FieldName = 'CLIEA60PROFISSAO'
      FixedChar = True
      Size = 60
    end
    object sdsClienteCLIEA60ENDRES: TStringField
      FieldName = 'CLIEA60ENDRES'
      FixedChar = True
      Size = 60
    end
    object sdsClienteCLIEA60BAIRES: TStringField
      FieldName = 'CLIEA60BAIRES'
      FixedChar = True
      Size = 60
    end
    object sdsClienteCLIEA60CIDRES: TStringField
      FieldName = 'CLIEA60CIDRES'
      FixedChar = True
      Size = 60
    end
    object sdsClienteCLIEA2UFRES: TStringField
      FieldName = 'CLIEA2UFRES'
      FixedChar = True
      Size = 2
    end
    object sdsClienteCLIEA8CEPRES: TStringField
      FieldName = 'CLIEA8CEPRES'
      FixedChar = True
      Size = 8
    end
    object sdsClienteCLIEA60EMAIL: TStringField
      FieldName = 'CLIEA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object sdsClienteCLIEA60URL: TStringField
      FieldName = 'CLIEA60URL'
      FixedChar = True
      Size = 60
    end
    object sdsClienteCLIEN2RENDA: TFMTBCDField
      FieldName = 'CLIEN2RENDA'
      Precision = 15
      Size = 3
    end
    object sdsClienteCLIEN2LIMITECRED: TFMTBCDField
      FieldName = 'CLIEN2LIMITECRED'
      Precision = 15
      Size = 3
    end
    object sdsClienteCLIEA60NOMEPAI: TStringField
      FieldName = 'CLIEA60NOMEPAI'
      FixedChar = True
      Size = 60
    end
    object sdsClienteCLIEA60NOMEMAE: TStringField
      FieldName = 'CLIEA60NOMEMAE'
      FixedChar = True
      Size = 60
    end
    object sdsClienteCLIEDNASC: TSQLTimeStampField
      FieldName = 'CLIEDNASC'
    end
    object sdsClienteCLIECESTADOCIVIL: TStringField
      FieldName = 'CLIECESTADOCIVIL'
      FixedChar = True
      Size = 1
    end
    object sdsClienteCLIEA60CONJUGE: TStringField
      FieldName = 'CLIEA60CONJUGE'
      FixedChar = True
      Size = 60
    end
    object sdsClienteCLIEA60CONJUGEMAE: TStringField
      FieldName = 'CLIEA60CONJUGEMAE'
      FixedChar = True
      Size = 60
    end
    object sdsClienteCLIEN2CONJUGERENDA: TFMTBCDField
      FieldName = 'CLIEN2CONJUGERENDA'
      Precision = 15
      Size = 3
    end
    object sdsClienteCLIEDNASCCONJUGE: TSQLTimeStampField
      FieldName = 'CLIEDNASCCONJUGE'
    end
    object sdsClienteCLIEA60CONJUGEEMPR: TStringField
      FieldName = 'CLIEA60CONJUGEEMPR'
      FixedChar = True
      Size = 60
    end
    object sdsClienteCLIEA15CONJFONEMPR: TStringField
      FieldName = 'CLIEA15CONJFONEMPR'
      FixedChar = True
      Size = 15
    end
    object sdsClienteCLIEA60EMPRESA: TStringField
      FieldName = 'CLIEA60EMPRESA'
      FixedChar = True
      Size = 60
    end
    object sdsClienteCLIEA60ENDEMPRESA: TStringField
      FieldName = 'CLIEA60ENDEMPRESA'
      FixedChar = True
      Size = 60
    end
    object sdsClienteCLIEA60BAIEMPRESA: TStringField
      FieldName = 'CLIEA60BAIEMPRESA'
      FixedChar = True
      Size = 60
    end
    object sdsClienteCLIEA60CIDEMPRESA: TStringField
      FieldName = 'CLIEA60CIDEMPRESA'
      FixedChar = True
      Size = 60
    end
    object sdsClienteCLIEA2UFEMPRESA: TStringField
      FieldName = 'CLIEA2UFEMPRESA'
      FixedChar = True
      Size = 2
    end
    object sdsClienteCLIEA8CEPEMPRESA: TStringField
      FieldName = 'CLIEA8CEPEMPRESA'
      FixedChar = True
      Size = 8
    end
    object sdsClienteCLIEDAMISEMPRESA: TSQLTimeStampField
      FieldName = 'CLIEDAMISEMPRESA'
    end
    object sdsClienteCLIEA15FONEEMPRESA: TStringField
      FieldName = 'CLIEA15FONEEMPRESA'
      FixedChar = True
      Size = 30
    end
    object sdsClienteBANCA5COD: TStringField
      FieldName = 'BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object sdsClienteCLIEA5AGENCIA: TStringField
      FieldName = 'CLIEA5AGENCIA'
      FixedChar = True
      Size = 5
    end
    object sdsClienteCLIEA10CONTA: TStringField
      FieldName = 'CLIEA10CONTA'
      FixedChar = True
      Size = 10
    end
    object sdsClienteCLIEA60TITULAR: TStringField
      FieldName = 'CLIEA60TITULAR'
      FixedChar = True
      Size = 60
    end
    object sdsClienteCLIEDABERTCONTA: TSQLTimeStampField
      FieldName = 'CLIEDABERTCONTA'
    end
    object sdsClienteCLIETOBS: TStringField
      FieldName = 'CLIETOBS'
      FixedChar = True
      Size = 254
    end
    object sdsClienteTPCLICOD: TIntegerField
      FieldName = 'TPCLICOD'
    end
    object sdsClienteMTBLICOD: TIntegerField
      FieldName = 'MTBLICOD'
    end
    object sdsClientePROFICOD: TIntegerField
      FieldName = 'PROFICOD'
    end
    object sdsClienteVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
    end
    object sdsClienteCLIEDCAD: TSQLTimeStampField
      FieldName = 'CLIEDCAD'
    end
    object sdsClienteCLIEDPRICOMPRA: TSQLTimeStampField
      FieldName = 'CLIEDPRICOMPRA'
    end
    object sdsClienteCLIEDULTCOMPRA: TSQLTimeStampField
      FieldName = 'CLIEDULTCOMPRA'
    end
    object sdsClienteCLIEA254PATHFOTO: TStringField
      FieldName = 'CLIEA254PATHFOTO'
      FixedChar = True
      Size = 254
    end
    object sdsClienteCLIECRECAVISATRASO: TStringField
      FieldName = 'CLIECRECAVISATRASO'
      FixedChar = True
      Size = 1
    end
    object sdsClienteCLIEA30NATURALIDADE: TStringField
      FieldName = 'CLIEA30NATURALIDADE'
      FixedChar = True
      Size = 30
    end
    object sdsClienteCLIECRECEBECARTAO: TStringField
      FieldName = 'CLIECRECEBECARTAO'
      FixedChar = True
      Size = 1
    end
    object sdsClienteCLIEDENVCARTIMP: TSQLTimeStampField
      FieldName = 'CLIEDENVCARTIMP'
    end
    object sdsClienteCLIEDRETCARTIMP: TSQLTimeStampField
      FieldName = 'CLIEDRETCARTIMP'
    end
    object sdsClienteCLIEDENVCARTCLI: TSQLTimeStampField
      FieldName = 'CLIEDENVCARTCLI'
    end
    object sdsClienteCLIEA10CODCONV: TStringField
      FieldName = 'CLIEA10CODCONV'
      FixedChar = True
      Size = 10
    end
    object sdsClienteCLIEA10CODANT: TStringField
      FieldName = 'CLIEA10CODANT'
      FixedChar = True
      Size = 10
    end
    object sdsClienteCLIEA20NROCARTCRED: TStringField
      FieldName = 'CLIEA20NROCARTCRED'
      FixedChar = True
    end
    object sdsClientePENDENTE: TStringField
      FieldName = 'PENDENTE'
      FixedChar = True
      Size = 1
    end
    object sdsClienteREGISTRO: TSQLTimeStampField
      FieldName = 'REGISTRO'
    end
    object sdsClienteCLIEA35NROCARTCRED: TStringField
      FieldName = 'CLIEA35NROCARTCRED'
      FixedChar = True
      Size = 35
    end
    object sdsClienteCLIEA60EMAILCONJUG: TStringField
      FieldName = 'CLIEA60EMAILCONJUG'
      FixedChar = True
      Size = 60
    end
    object sdsClienteCLIEDCASAMENTO: TSQLTimeStampField
      FieldName = 'CLIEDCASAMENTO'
    end
    object sdsClienteTPRCICOD: TIntegerField
      FieldName = 'TPRCICOD'
    end
    object sdsClienteCLIEA60ENDCOB: TStringField
      FieldName = 'CLIEA60ENDCOB'
      FixedChar = True
      Size = 60
    end
    object sdsClienteCLIEA60BAICOB: TStringField
      FieldName = 'CLIEA60BAICOB'
      FixedChar = True
      Size = 60
    end
    object sdsClienteCLIEA60CIDCOB: TStringField
      FieldName = 'CLIEA60CIDCOB'
      FixedChar = True
      Size = 60
    end
    object sdsClienteCLIEA2UFCOB: TStringField
      FieldName = 'CLIEA2UFCOB'
      FixedChar = True
      Size = 2
    end
    object sdsClienteCLIEA8CEPCOB: TStringField
      FieldName = 'CLIEA8CEPCOB'
      FixedChar = True
      Size = 8
    end
    object sdsClientePLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
    end
    object sdsClienteCLIEA30TEMPOMORADIA: TStringField
      FieldName = 'CLIEA30TEMPOMORADIA'
      FixedChar = True
      Size = 30
    end
    object sdsClienteCLIECCASAPROPRIA: TStringField
      FieldName = 'CLIECCASAPROPRIA'
      FixedChar = True
      Size = 1
    end
    object sdsClienteCLIEA30LOCALIMOV1: TStringField
      FieldName = 'CLIEA30LOCALIMOV1'
      FixedChar = True
      Size = 30
    end
    object sdsClienteCLIEA30LOCALIMOV2: TStringField
      FieldName = 'CLIEA30LOCALIMOV2'
      FixedChar = True
      Size = 30
    end
    object sdsClienteCLIEA30MODVEICULO: TStringField
      FieldName = 'CLIEA30MODVEICULO'
      FixedChar = True
      Size = 30
    end
    object sdsClienteCLIEA30TIPOIMOV1: TStringField
      FieldName = 'CLIEA30TIPOIMOV1'
      FixedChar = True
      Size = 30
    end
    object sdsClienteCLIEA30TIPOIMOV2: TStringField
      FieldName = 'CLIEA30TIPOIMOV2'
      FixedChar = True
      Size = 30
    end
    object sdsClienteCLIEA4ANOVEICULO: TStringField
      FieldName = 'CLIEA4ANOVEICULO'
      FixedChar = True
      Size = 4
    end
    object sdsClienteCLIEA60IMOB: TStringField
      FieldName = 'CLIEA60IMOB'
      FixedChar = True
      Size = 60
    end
    object sdsClienteCLIEA8PLACAVEICULO: TStringField
      FieldName = 'CLIEA8PLACAVEICULO'
      FixedChar = True
      Size = 8
    end
    object sdsClienteCLIECSTATUSIMOV1: TStringField
      FieldName = 'CLIECSTATUSIMOV1'
      FixedChar = True
      Size = 1
    end
    object sdsClienteCLIECSTATUSIMOV2: TStringField
      FieldName = 'CLIECSTATUSIMOV2'
      FixedChar = True
      Size = 1
    end
    object sdsClienteCLIEN2VLRALUGUEL: TFMTBCDField
      FieldName = 'CLIEN2VLRALUGUEL'
      Precision = 15
      Size = 2
    end
    object sdsClienteCLIEIDIAVCTOCARTAO: TIntegerField
      FieldName = 'CLIEIDIAVCTOCARTAO'
    end
    object sdsClienteCLIEA30CODCONTABIL: TStringField
      FieldName = 'CLIEA30CODCONTABIL'
      FixedChar = True
      Size = 30
    end
    object sdsClienteCLIEBIMAGEM: TBlobField
      FieldName = 'CLIEBIMAGEM'
      Size = 1
    end
    object sdsClienteGRPCA13ID: TStringField
      FieldName = 'GRPCA13ID'
      FixedChar = True
      Size = 13
    end
    object sdsClienteOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
    end
    object sdsClientePORTICOD: TIntegerField
      FieldName = 'PORTICOD'
    end
    object sdsClienteCLIECTARIFABANCO: TStringField
      FieldName = 'CLIECTARIFABANCO'
      FixedChar = True
      Size = 1
    end
    object sdsClienteTRANICOD: TIntegerField
      FieldName = 'TRANICOD'
    end
    object sdsClienteCLIECGERANF: TStringField
      FieldName = 'CLIECGERANF'
      FixedChar = True
      Size = 1
    end
    object sdsClienteCLIEN2PERCDESCDUPL: TFMTBCDField
      FieldName = 'CLIEN2PERCDESCDUPL'
      Precision = 15
      Size = 2
    end
    object sdsClienteCLIEA60ENDENT: TStringField
      FieldName = 'CLIEA60ENDENT'
      FixedChar = True
      Size = 60
    end
    object sdsClienteCLIEA60BAIENT: TStringField
      FieldName = 'CLIEA60BAIENT'
      FixedChar = True
      Size = 60
    end
    object sdsClienteCLIEA60CIDENT: TStringField
      FieldName = 'CLIEA60CIDENT'
      FixedChar = True
      Size = 60
    end
    object sdsClienteCLIEA2UFENT: TStringField
      FieldName = 'CLIEA2UFENT'
      FixedChar = True
      Size = 2
    end
    object sdsClienteCLIEA8CEPENT: TStringField
      FieldName = 'CLIEA8CEPENT'
      FixedChar = True
      Size = 8
    end
    object sdsClienteVENDICODEXT: TIntegerField
      FieldName = 'VENDICODEXT'
    end
    object sdsClienteCLIECDIASEMAGRUPDUPL: TStringField
      FieldName = 'CLIECDIASEMAGRUPDUPL'
      FixedChar = True
      Size = 1
    end
    object sdsClienteCLIEN2PERCCOMISS: TFMTBCDField
      FieldName = 'CLIEN2PERCCOMISS'
      Precision = 15
      Size = 2
    end
    object sdsClienteCOBRA13ID: TStringField
      FieldName = 'COBRA13ID'
      FixedChar = True
      Size = 13
    end
    object sdsClienteCLIEDDTVENDPREF: TSQLTimeStampField
      FieldName = 'CLIEDDTVENDPREF'
    end
    object sdsClienteHORAICOD: TIntegerField
      FieldName = 'HORAICOD'
    end
    object sdsClienteCLIA60VERSAO: TStringField
      FieldName = 'CLIA60VERSAO'
      Size = 60
    end
    object sdsClienteCLIETDADOSCONV: TMemoField
      FieldName = 'CLIETDADOSCONV'
      BlobType = ftMemo
      Size = 1
    end
    object sdsClienteCLIETOBS1: TMemoField
      FieldName = 'CLIETOBS1'
      BlobType = ftMemo
      Size = 1
    end
    object sdsClienteCLIECTIPOENDRES: TStringField
      FieldName = 'CLIECTIPOENDRES'
      FixedChar = True
      Size = 1
    end
    object sdsClienteCLIECTIPOENDCOB: TStringField
      FieldName = 'CLIECTIPOENDCOB'
      FixedChar = True
      Size = 1
    end
    object sdsClienteCLIECTIPOENDENT: TStringField
      FieldName = 'CLIECTIPOENDENT'
      FixedChar = True
      Size = 1
    end
    object sdsClienteCLIEDNAORECAVISO: TSQLTimeStampField
      FieldName = 'CLIEDNAORECAVISO'
    end
    object sdsClienteCLIECVISITATIPO: TStringField
      FieldName = 'CLIECVISITATIPO'
      FixedChar = True
      Size = 1
    end
    object sdsClienteCLIEA13VISITADIA: TStringField
      FieldName = 'CLIEA13VISITADIA'
      FixedChar = True
      Size = 13
    end
    object sdsClienteCLIEA10CONTADV: TStringField
      FieldName = 'CLIEA10CONTADV'
      FixedChar = True
      Size = 1
    end
    object sdsClienteCLIEA60NACIONALIDADE: TStringField
      FieldName = 'CLIEA60NACIONALIDADE'
      FixedChar = True
      Size = 60
    end
    object sdsClienteATRMICOD: TIntegerField
      FieldName = 'ATRMICOD'
    end
    object sdsClienteCLIEA254OBSEMPRESA: TStringField
      FieldName = 'CLIEA254OBSEMPRESA'
      FixedChar = True
      Size = 254
    end
    object sdsClienteCLIEA5ANOMESANIVER: TStringField
      FieldName = 'CLIEA5ANOMESANIVER'
      FixedChar = True
      Size = 5
    end
    object sdsClienteCLIECGERABLOQUETO: TStringField
      FieldName = 'CLIECGERABLOQUETO'
      FixedChar = True
      Size = 1
    end
    object sdsClienteCLIECTAXABCO: TStringField
      FieldName = 'CLIECTAXABCO'
      FixedChar = True
      Size = 1
    end
    object sdsClienteCLIEDCONJUGEADMIS: TSQLTimeStampField
      FieldName = 'CLIEDCONJUGEADMIS'
    end
    object sdsClienteCLIEICONTRQUIT: TIntegerField
      FieldName = 'CLIEICONTRQUIT'
    end
    object sdsClienteCLIEN2DESCOESP: TFMTBCDField
      FieldName = 'CLIEN2DESCOESP'
      Precision = 15
      Size = 3
    end
    object sdsClienteCLIEN3PERCCOMISS: TFMTBCDField
      FieldName = 'CLIEN3PERCCOMISS'
      Precision = 15
      Size = 3
    end
    object sdsClientePLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object sdsClienteCIDAICOD: TIntegerField
      FieldName = 'CIDAICOD'
    end
    object sdsClienteBAIRICOD: TIntegerField
      FieldName = 'BAIRICOD'
    end
    object sdsClienteRUAICOD: TIntegerField
      FieldName = 'RUAICOD'
    end
    object sdsClienteCLIEA15ENDRESTEMPMORA: TStringField
      FieldName = 'CLIEA15ENDRESTEMPMORA'
      FixedChar = True
      Size = 15
    end
    object sdsClienteCLIEA15ENDCOBTEMPMORA: TStringField
      FieldName = 'CLIEA15ENDCOBTEMPMORA'
      FixedChar = True
      Size = 15
    end
    object sdsClienteCLIEA15ENDENTTEMPMORA: TStringField
      FieldName = 'CLIEA15ENDENTTEMPMORA'
      FixedChar = True
      Size = 15
    end
    object sdsClienteCLIEA15ENDCODTEMPMORA: TStringField
      FieldName = 'CLIEA15ENDCODTEMPMORA'
      FixedChar = True
      Size = 15
    end
    object sdsClienteCLIECATIVO: TStringField
      FieldName = 'CLIECATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsClienteCLIEA3200OBSFINAN: TStringField
      FieldName = 'CLIEA3200OBSFINAN'
      Size = 3200
    end
    object sdsClienteCLIEA15FONECOB: TStringField
      FieldName = 'CLIEA15FONECOB'
      Size = 15
    end
    object sdsClienteCLIEA13IDPAI: TStringField
      FieldName = 'CLIEA13IDPAI'
      FixedChar = True
      Size = 13
    end
    object sdsClienteCLIEA254LEMBRETE: TStringField
      FieldName = 'CLIEA254LEMBRETE'
      Size = 254
    end
    object sdsClienteCLORICOD: TIntegerField
      FieldName = 'CLORICOD'
    end
    object sdsClienteCLIEA60EMPRESAS: TStringField
      FieldName = 'CLIEA60EMPRESAS'
      Size = 60
    end
    object sdsClientePAISICOD: TIntegerField
      FieldName = 'PAISICOD'
    end
    object sdsClienteCLIEA10ENDCOBCOMP: TStringField
      FieldName = 'CLIEA10ENDCOBCOMP'
      Size = 30
    end
    object sdsClienteCLIEA10ENDENTCOMP: TStringField
      FieldName = 'CLIEA10ENDENTCOMP'
      Size = 30
    end
    object sdsClienteCLIEA10ENDRESCOMP: TStringField
      FieldName = 'CLIEA10ENDRESCOMP'
      Size = 30
    end
    object sdsClienteCLIEA60CONTATO2: TStringField
      FieldName = 'CLIEA60CONTATO2'
      Size = 60
    end
    object sdsClienteCLIEA8SENHAINTERNET: TStringField
      FieldName = 'CLIEA8SENHAINTERNET'
      Size = 8
    end
    object sdsClienteCLIEAIENDRESNUM: TIntegerField
      FieldName = 'CLIEAIENDRESNUM'
    end
    object sdsClienteCLIEIENDCOBNUM: TIntegerField
      FieldName = 'CLIEIENDCOBNUM'
    end
    object sdsClienteCLIEIENDENTNUM: TIntegerField
      FieldName = 'CLIEIENDENTNUM'
    end
    object sdsClienteCLIEIENDRESNUM: TIntegerField
      FieldName = 'CLIEIENDRESNUM'
    end
    object sdsClienteCLIEA60IDSITE: TStringField
      FieldName = 'CLIEA60IDSITE'
      FixedChar = True
      Size = 60
    end
    object sdsClienteCLIECUSAREGRAFINANNF: TStringField
      FieldName = 'CLIECUSAREGRAFINANNF'
      Size = 1
    end
    object sdsClienteCLIEIMEDIAVENDAS: TIntegerField
      FieldName = 'CLIEIMEDIAVENDAS'
    end
    object sdsClienteCLIECNGERAPARCNF: TStringField
      FieldName = 'CLIECNGERAPARCNF'
      FixedChar = True
      Size = 1
    end
    object sdsClienteCLIEDULT_CONT_CALL: TSQLTimeStampField
      FieldName = 'CLIEDULT_CONT_CALL'
    end
    object sdsClienteCLIECNCONCDESCST: TStringField
      FieldName = 'CLIECNCONCDESCST'
      Size = 1
    end
    object sdsClienteCLIEC1UTILENDGRUPO: TStringField
      FieldName = 'CLIEC1UTILENDGRUPO'
      FixedChar = True
      Size = 1
    end
    object sdsClienteCLIEC1AGRUPADUPLI: TStringField
      FieldName = 'CLIEC1AGRUPADUPLI'
      FixedChar = True
      Size = 1
    end
    object sdsClienteCLIEA10CODANTIGO: TStringField
      FieldName = 'CLIEA10CODANTIGO'
      Size = 10
    end
    object sdsClienteCLIEA20INSCSUFRAMA: TStringField
      FieldName = 'CLIEA20INSCSUFRAMA'
    end
    object sdsClienteCLIEACOMUN: TStringField
      FieldName = 'CLIEACOMUN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object sdsClienteCLIEAICODANT: TIntegerField
      FieldName = 'CLIEAICODANT'
    end
    object sdsClienteCLIECANEXOEMAILNFE: TStringField
      FieldName = 'CLIECANEXOEMAILNFE'
      FixedChar = True
      Size = 1
    end
    object sdsClienteCLIECCONTRIBUINTEICMS: TStringField
      FieldName = 'CLIECCONTRIBUINTEICMS'
      FixedChar = True
      Size = 1
    end
    object sdsClienteCLIEINATUREZAJURICIA: TIntegerField
      FieldName = 'CLIEINATUREZAJURICIA'
    end
    object sdsClienteCLIEN2ALIQUOTAICMS: TFMTBCDField
      FieldName = 'CLIEN2ALIQUOTAICMS'
      Precision = 15
      Size = 2
    end
    object sdsClienteCLIECREGIMEAPURACAO: TStringField
      FieldName = 'CLIECREGIMEAPURACAO'
      FixedChar = True
      Size = 1
    end
    object sdsClienteCLIEAMODULOS: TStringField
      FieldName = 'CLIEAMODULOS'
      Size = 60
    end
    object sdsClienteCLIECTIPOFRETE: TStringField
      FieldName = 'CLIECTIPOFRETE'
      FixedChar = True
      Size = 1
    end
    object sdsClienteCLIEICRT: TIntegerField
      FieldName = 'CLIEICRT'
    end
    object sdsClienteCLIEINROCOMPUTADOR: TIntegerField
      FieldName = 'CLIEINROCOMPUTADOR'
    end
    object sdsClienteCLIEA20IM: TStringField
      FieldName = 'CLIEA20IM'
    end
    object sdsClienteCLIEITIPOLOGRADOURO: TIntegerField
      FieldName = 'CLIEITIPOLOGRADOURO'
    end
    object sdsClienteCLIEITIPOLOGRADOUROCOB: TIntegerField
      FieldName = 'CLIEITIPOLOGRADOUROCOB'
    end
    object sdsClienteCLIEITIPOLOGRADOUROENT: TIntegerField
      FieldName = 'CLIEITIPOLOGRADOUROENT'
    end
    object sdsClienteCLIEINUMATENDIMENTOMENSAL: TIntegerField
      FieldName = 'CLIEINUMATENDIMENTOMENSAL'
    end
    object sdsClienteTIOSICOD: TIntegerField
      FieldName = 'TIOSICOD'
    end
    object sdsClientePRODICODIMPLANTACAO: TIntegerField
      FieldName = 'PRODICODIMPLANTACAO'
    end
    object sdsClienteCLIEN2HORASIMPLANTACAO: TFMTBCDField
      FieldName = 'CLIEN2HORASIMPLANTACAO'
      Precision = 15
      Size = 2
    end
    object sdsClienteCLIECENVIABOLETONF: TStringField
      FieldName = 'CLIECENVIABOLETONF'
      FixedChar = True
      Size = 1
    end
  end
  object dspCliente: TDataSetProvider
    DataSet = sdsCliente
    Left = 448
    Top = 176
  end
  object cdsCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCliente'
    Left = 512
    Top = 176
    object cdsClienteCLIEA13ID: TStringField
      FieldName = 'CLIEA13ID'
      Required = True
      FixedChar = True
      Size = 13
    end
    object cdsClienteEMPRICOD: TIntegerField
      FieldName = 'EMPRICOD'
    end
    object cdsClienteCLIEICOD: TIntegerField
      FieldName = 'CLIEICOD'
      Required = True
    end
    object cdsClienteCLIEA5FISJURID: TStringField
      FieldName = 'CLIEA5FISJURID'
      FixedChar = True
      Size = 5
    end
    object cdsClienteCLIEA14CGC: TStringField
      FieldName = 'CLIEA14CGC'
      FixedChar = True
      Size = 14
    end
    object cdsClienteCLIEA20IE: TStringField
      FieldName = 'CLIEA20IE'
      FixedChar = True
    end
    object cdsClienteCLIEA11CPF: TStringField
      FieldName = 'CLIEA11CPF'
      FixedChar = True
      Size = 11
    end
    object cdsClienteCLIEA10RG: TStringField
      FieldName = 'CLIEA10RG'
      FixedChar = True
      Size = 10
    end
    object cdsClienteCLIEA60RAZAOSOC: TStringField
      FieldName = 'CLIEA60RAZAOSOC'
      FixedChar = True
      Size = 60
    end
    object cdsClienteCLIEA60NOMEFANT: TStringField
      FieldName = 'CLIEA60NOMEFANT'
      FixedChar = True
      Size = 60
    end
    object cdsClienteCLIEA60CONTATO: TStringField
      FieldName = 'CLIEA60CONTATO'
      FixedChar = True
      Size = 60
    end
    object cdsClienteCLIEA15FONE1: TStringField
      FieldName = 'CLIEA15FONE1'
      FixedChar = True
      Size = 15
    end
    object cdsClienteCLIEA15FONE2: TStringField
      FieldName = 'CLIEA15FONE2'
      FixedChar = True
      Size = 15
    end
    object cdsClienteCLIEA15FAX: TStringField
      FieldName = 'CLIEA15FAX'
      FixedChar = True
      Size = 15
    end
    object cdsClienteCLIEA30OUTROSDOC: TStringField
      FieldName = 'CLIEA30OUTROSDOC'
      FixedChar = True
      Size = 30
    end
    object cdsClienteCLIECSEXO: TStringField
      FieldName = 'CLIECSEXO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCLIEA60PROFISSAO: TStringField
      FieldName = 'CLIEA60PROFISSAO'
      FixedChar = True
      Size = 60
    end
    object cdsClienteCLIEA60ENDRES: TStringField
      FieldName = 'CLIEA60ENDRES'
      FixedChar = True
      Size = 60
    end
    object cdsClienteCLIEA60BAIRES: TStringField
      FieldName = 'CLIEA60BAIRES'
      FixedChar = True
      Size = 60
    end
    object cdsClienteCLIEA60CIDRES: TStringField
      FieldName = 'CLIEA60CIDRES'
      FixedChar = True
      Size = 60
    end
    object cdsClienteCLIEA2UFRES: TStringField
      FieldName = 'CLIEA2UFRES'
      FixedChar = True
      Size = 2
    end
    object cdsClienteCLIEA8CEPRES: TStringField
      FieldName = 'CLIEA8CEPRES'
      FixedChar = True
      Size = 8
    end
    object cdsClienteCLIEA60EMAIL: TStringField
      FieldName = 'CLIEA60EMAIL'
      FixedChar = True
      Size = 60
    end
    object cdsClienteCLIEA60URL: TStringField
      FieldName = 'CLIEA60URL'
      FixedChar = True
      Size = 60
    end
    object cdsClienteCLIEN2RENDA: TFMTBCDField
      FieldName = 'CLIEN2RENDA'
      Precision = 15
      Size = 3
    end
    object cdsClienteCLIEN2LIMITECRED: TFMTBCDField
      FieldName = 'CLIEN2LIMITECRED'
      Precision = 15
      Size = 3
    end
    object cdsClienteCLIEA60NOMEPAI: TStringField
      FieldName = 'CLIEA60NOMEPAI'
      FixedChar = True
      Size = 60
    end
    object cdsClienteCLIEA60NOMEMAE: TStringField
      FieldName = 'CLIEA60NOMEMAE'
      FixedChar = True
      Size = 60
    end
    object cdsClienteCLIEDNASC: TSQLTimeStampField
      FieldName = 'CLIEDNASC'
    end
    object cdsClienteCLIECESTADOCIVIL: TStringField
      FieldName = 'CLIECESTADOCIVIL'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCLIEA60CONJUGE: TStringField
      FieldName = 'CLIEA60CONJUGE'
      FixedChar = True
      Size = 60
    end
    object cdsClienteCLIEA60CONJUGEMAE: TStringField
      FieldName = 'CLIEA60CONJUGEMAE'
      FixedChar = True
      Size = 60
    end
    object cdsClienteCLIEN2CONJUGERENDA: TFMTBCDField
      FieldName = 'CLIEN2CONJUGERENDA'
      Precision = 15
      Size = 3
    end
    object cdsClienteCLIEDNASCCONJUGE: TSQLTimeStampField
      FieldName = 'CLIEDNASCCONJUGE'
    end
    object cdsClienteCLIEA60CONJUGEEMPR: TStringField
      FieldName = 'CLIEA60CONJUGEEMPR'
      FixedChar = True
      Size = 60
    end
    object cdsClienteCLIEA15CONJFONEMPR: TStringField
      FieldName = 'CLIEA15CONJFONEMPR'
      FixedChar = True
      Size = 15
    end
    object cdsClienteCLIEA60EMPRESA: TStringField
      FieldName = 'CLIEA60EMPRESA'
      FixedChar = True
      Size = 60
    end
    object cdsClienteCLIEA60ENDEMPRESA: TStringField
      FieldName = 'CLIEA60ENDEMPRESA'
      FixedChar = True
      Size = 60
    end
    object cdsClienteCLIEA60BAIEMPRESA: TStringField
      FieldName = 'CLIEA60BAIEMPRESA'
      FixedChar = True
      Size = 60
    end
    object cdsClienteCLIEA60CIDEMPRESA: TStringField
      FieldName = 'CLIEA60CIDEMPRESA'
      FixedChar = True
      Size = 60
    end
    object cdsClienteCLIEA2UFEMPRESA: TStringField
      FieldName = 'CLIEA2UFEMPRESA'
      FixedChar = True
      Size = 2
    end
    object cdsClienteCLIEA8CEPEMPRESA: TStringField
      FieldName = 'CLIEA8CEPEMPRESA'
      FixedChar = True
      Size = 8
    end
    object cdsClienteCLIEDAMISEMPRESA: TSQLTimeStampField
      FieldName = 'CLIEDAMISEMPRESA'
    end
    object cdsClienteCLIEA15FONEEMPRESA: TStringField
      FieldName = 'CLIEA15FONEEMPRESA'
      FixedChar = True
      Size = 30
    end
    object cdsClienteBANCA5COD: TStringField
      FieldName = 'BANCA5COD'
      FixedChar = True
      Size = 5
    end
    object cdsClienteCLIEA5AGENCIA: TStringField
      FieldName = 'CLIEA5AGENCIA'
      FixedChar = True
      Size = 5
    end
    object cdsClienteCLIEA10CONTA: TStringField
      FieldName = 'CLIEA10CONTA'
      FixedChar = True
      Size = 10
    end
    object cdsClienteCLIEA60TITULAR: TStringField
      FieldName = 'CLIEA60TITULAR'
      FixedChar = True
      Size = 60
    end
    object cdsClienteCLIEDABERTCONTA: TSQLTimeStampField
      FieldName = 'CLIEDABERTCONTA'
    end
    object cdsClienteCLIETOBS: TStringField
      FieldName = 'CLIETOBS'
      FixedChar = True
      Size = 254
    end
    object cdsClienteTPCLICOD: TIntegerField
      FieldName = 'TPCLICOD'
    end
    object cdsClienteMTBLICOD: TIntegerField
      FieldName = 'MTBLICOD'
    end
    object cdsClientePROFICOD: TIntegerField
      FieldName = 'PROFICOD'
    end
    object cdsClienteVENDICOD: TIntegerField
      FieldName = 'VENDICOD'
    end
    object cdsClienteCLIEDCAD: TSQLTimeStampField
      FieldName = 'CLIEDCAD'
    end
    object cdsClienteCLIEDPRICOMPRA: TSQLTimeStampField
      FieldName = 'CLIEDPRICOMPRA'
    end
    object cdsClienteCLIEDULTCOMPRA: TSQLTimeStampField
      FieldName = 'CLIEDULTCOMPRA'
    end
    object cdsClienteCLIEA254PATHFOTO: TStringField
      FieldName = 'CLIEA254PATHFOTO'
      FixedChar = True
      Size = 254
    end
    object cdsClienteCLIECRECAVISATRASO: TStringField
      FieldName = 'CLIECRECAVISATRASO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCLIEA30NATURALIDADE: TStringField
      FieldName = 'CLIEA30NATURALIDADE'
      FixedChar = True
      Size = 30
    end
    object cdsClienteCLIECRECEBECARTAO: TStringField
      FieldName = 'CLIECRECEBECARTAO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCLIEDENVCARTIMP: TSQLTimeStampField
      FieldName = 'CLIEDENVCARTIMP'
    end
    object cdsClienteCLIEDRETCARTIMP: TSQLTimeStampField
      FieldName = 'CLIEDRETCARTIMP'
    end
    object cdsClienteCLIEDENVCARTCLI: TSQLTimeStampField
      FieldName = 'CLIEDENVCARTCLI'
    end
    object cdsClienteCLIEA10CODCONV: TStringField
      FieldName = 'CLIEA10CODCONV'
      FixedChar = True
      Size = 10
    end
    object cdsClienteCLIEA10CODANT: TStringField
      FieldName = 'CLIEA10CODANT'
      FixedChar = True
      Size = 10
    end
    object cdsClienteCLIEA20NROCARTCRED: TStringField
      FieldName = 'CLIEA20NROCARTCRED'
      FixedChar = True
    end
    object cdsClientePENDENTE: TStringField
      FieldName = 'PENDENTE'
      FixedChar = True
      Size = 1
    end
    object cdsClienteREGISTRO: TSQLTimeStampField
      FieldName = 'REGISTRO'
    end
    object cdsClienteCLIEA35NROCARTCRED: TStringField
      FieldName = 'CLIEA35NROCARTCRED'
      FixedChar = True
      Size = 35
    end
    object cdsClienteCLIEA60EMAILCONJUG: TStringField
      FieldName = 'CLIEA60EMAILCONJUG'
      FixedChar = True
      Size = 60
    end
    object cdsClienteCLIEDCASAMENTO: TSQLTimeStampField
      FieldName = 'CLIEDCASAMENTO'
    end
    object cdsClienteTPRCICOD: TIntegerField
      FieldName = 'TPRCICOD'
    end
    object cdsClienteCLIEA60ENDCOB: TStringField
      FieldName = 'CLIEA60ENDCOB'
      FixedChar = True
      Size = 60
    end
    object cdsClienteCLIEA60BAICOB: TStringField
      FieldName = 'CLIEA60BAICOB'
      FixedChar = True
      Size = 60
    end
    object cdsClienteCLIEA60CIDCOB: TStringField
      FieldName = 'CLIEA60CIDCOB'
      FixedChar = True
      Size = 60
    end
    object cdsClienteCLIEA2UFCOB: TStringField
      FieldName = 'CLIEA2UFCOB'
      FixedChar = True
      Size = 2
    end
    object cdsClienteCLIEA8CEPCOB: TStringField
      FieldName = 'CLIEA8CEPCOB'
      FixedChar = True
      Size = 8
    end
    object cdsClientePLRCICOD: TIntegerField
      FieldName = 'PLRCICOD'
    end
    object cdsClienteCLIEA30TEMPOMORADIA: TStringField
      FieldName = 'CLIEA30TEMPOMORADIA'
      FixedChar = True
      Size = 30
    end
    object cdsClienteCLIECCASAPROPRIA: TStringField
      FieldName = 'CLIECCASAPROPRIA'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCLIEA30LOCALIMOV1: TStringField
      FieldName = 'CLIEA30LOCALIMOV1'
      FixedChar = True
      Size = 30
    end
    object cdsClienteCLIEA30LOCALIMOV2: TStringField
      FieldName = 'CLIEA30LOCALIMOV2'
      FixedChar = True
      Size = 30
    end
    object cdsClienteCLIEA30MODVEICULO: TStringField
      FieldName = 'CLIEA30MODVEICULO'
      FixedChar = True
      Size = 30
    end
    object cdsClienteCLIEA30TIPOIMOV1: TStringField
      FieldName = 'CLIEA30TIPOIMOV1'
      FixedChar = True
      Size = 30
    end
    object cdsClienteCLIEA30TIPOIMOV2: TStringField
      FieldName = 'CLIEA30TIPOIMOV2'
      FixedChar = True
      Size = 30
    end
    object cdsClienteCLIEA4ANOVEICULO: TStringField
      FieldName = 'CLIEA4ANOVEICULO'
      FixedChar = True
      Size = 4
    end
    object cdsClienteCLIEA60IMOB: TStringField
      FieldName = 'CLIEA60IMOB'
      FixedChar = True
      Size = 60
    end
    object cdsClienteCLIEA8PLACAVEICULO: TStringField
      FieldName = 'CLIEA8PLACAVEICULO'
      FixedChar = True
      Size = 8
    end
    object cdsClienteCLIECSTATUSIMOV1: TStringField
      FieldName = 'CLIECSTATUSIMOV1'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCLIECSTATUSIMOV2: TStringField
      FieldName = 'CLIECSTATUSIMOV2'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCLIEN2VLRALUGUEL: TFMTBCDField
      FieldName = 'CLIEN2VLRALUGUEL'
      Precision = 15
      Size = 2
    end
    object cdsClienteCLIEIDIAVCTOCARTAO: TIntegerField
      FieldName = 'CLIEIDIAVCTOCARTAO'
    end
    object cdsClienteCLIEA30CODCONTABIL: TStringField
      FieldName = 'CLIEA30CODCONTABIL'
      FixedChar = True
      Size = 30
    end
    object cdsClienteCLIEBIMAGEM: TBlobField
      FieldName = 'CLIEBIMAGEM'
      Size = 1
    end
    object cdsClienteGRPCA13ID: TStringField
      FieldName = 'GRPCA13ID'
      FixedChar = True
      Size = 13
    end
    object cdsClienteOPESICOD: TIntegerField
      FieldName = 'OPESICOD'
    end
    object cdsClientePORTICOD: TIntegerField
      FieldName = 'PORTICOD'
    end
    object cdsClienteCLIECTARIFABANCO: TStringField
      FieldName = 'CLIECTARIFABANCO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteTRANICOD: TIntegerField
      FieldName = 'TRANICOD'
    end
    object cdsClienteCLIECGERANF: TStringField
      FieldName = 'CLIECGERANF'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCLIEN2PERCDESCDUPL: TFMTBCDField
      FieldName = 'CLIEN2PERCDESCDUPL'
      Precision = 15
      Size = 2
    end
    object cdsClienteCLIEA60ENDENT: TStringField
      FieldName = 'CLIEA60ENDENT'
      FixedChar = True
      Size = 60
    end
    object cdsClienteCLIEA60BAIENT: TStringField
      FieldName = 'CLIEA60BAIENT'
      FixedChar = True
      Size = 60
    end
    object cdsClienteCLIEA60CIDENT: TStringField
      FieldName = 'CLIEA60CIDENT'
      FixedChar = True
      Size = 60
    end
    object cdsClienteCLIEA2UFENT: TStringField
      FieldName = 'CLIEA2UFENT'
      FixedChar = True
      Size = 2
    end
    object cdsClienteCLIEA8CEPENT: TStringField
      FieldName = 'CLIEA8CEPENT'
      FixedChar = True
      Size = 8
    end
    object cdsClienteVENDICODEXT: TIntegerField
      FieldName = 'VENDICODEXT'
    end
    object cdsClienteCLIECDIASEMAGRUPDUPL: TStringField
      FieldName = 'CLIECDIASEMAGRUPDUPL'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCLIEN2PERCCOMISS: TFMTBCDField
      FieldName = 'CLIEN2PERCCOMISS'
      Precision = 15
      Size = 2
    end
    object cdsClienteCOBRA13ID: TStringField
      FieldName = 'COBRA13ID'
      FixedChar = True
      Size = 13
    end
    object cdsClienteCLIEDDTVENDPREF: TSQLTimeStampField
      FieldName = 'CLIEDDTVENDPREF'
    end
    object cdsClienteHORAICOD: TIntegerField
      FieldName = 'HORAICOD'
    end
    object cdsClienteCLIA60VERSAO: TStringField
      FieldName = 'CLIA60VERSAO'
      Size = 60
    end
    object cdsClienteCLIETDADOSCONV: TMemoField
      FieldName = 'CLIETDADOSCONV'
      BlobType = ftMemo
      Size = 1
    end
    object cdsClienteCLIETOBS1: TMemoField
      FieldName = 'CLIETOBS1'
      BlobType = ftMemo
      Size = 1
    end
    object cdsClienteCLIECTIPOENDRES: TStringField
      FieldName = 'CLIECTIPOENDRES'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCLIECTIPOENDCOB: TStringField
      FieldName = 'CLIECTIPOENDCOB'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCLIECTIPOENDENT: TStringField
      FieldName = 'CLIECTIPOENDENT'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCLIEDNAORECAVISO: TSQLTimeStampField
      FieldName = 'CLIEDNAORECAVISO'
    end
    object cdsClienteCLIECVISITATIPO: TStringField
      FieldName = 'CLIECVISITATIPO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCLIEA13VISITADIA: TStringField
      FieldName = 'CLIEA13VISITADIA'
      FixedChar = True
      Size = 13
    end
    object cdsClienteCLIEA10CONTADV: TStringField
      FieldName = 'CLIEA10CONTADV'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCLIEA60NACIONALIDADE: TStringField
      FieldName = 'CLIEA60NACIONALIDADE'
      FixedChar = True
      Size = 60
    end
    object cdsClienteATRMICOD: TIntegerField
      FieldName = 'ATRMICOD'
    end
    object cdsClienteCLIEA254OBSEMPRESA: TStringField
      FieldName = 'CLIEA254OBSEMPRESA'
      FixedChar = True
      Size = 254
    end
    object cdsClienteCLIEA5ANOMESANIVER: TStringField
      FieldName = 'CLIEA5ANOMESANIVER'
      FixedChar = True
      Size = 5
    end
    object cdsClienteCLIECGERABLOQUETO: TStringField
      FieldName = 'CLIECGERABLOQUETO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCLIECTAXABCO: TStringField
      FieldName = 'CLIECTAXABCO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCLIEDCONJUGEADMIS: TSQLTimeStampField
      FieldName = 'CLIEDCONJUGEADMIS'
    end
    object cdsClienteCLIEICONTRQUIT: TIntegerField
      FieldName = 'CLIEICONTRQUIT'
    end
    object cdsClienteCLIEN2DESCOESP: TFMTBCDField
      FieldName = 'CLIEN2DESCOESP'
      Precision = 15
      Size = 3
    end
    object cdsClienteCLIEN3PERCCOMISS: TFMTBCDField
      FieldName = 'CLIEN3PERCCOMISS'
      Precision = 15
      Size = 3
    end
    object cdsClientePLCTA15COD: TStringField
      FieldName = 'PLCTA15COD'
      FixedChar = True
      Size = 15
    end
    object cdsClienteCIDAICOD: TIntegerField
      FieldName = 'CIDAICOD'
    end
    object cdsClienteBAIRICOD: TIntegerField
      FieldName = 'BAIRICOD'
    end
    object cdsClienteRUAICOD: TIntegerField
      FieldName = 'RUAICOD'
    end
    object cdsClienteCLIEA15ENDRESTEMPMORA: TStringField
      FieldName = 'CLIEA15ENDRESTEMPMORA'
      FixedChar = True
      Size = 15
    end
    object cdsClienteCLIEA15ENDCOBTEMPMORA: TStringField
      FieldName = 'CLIEA15ENDCOBTEMPMORA'
      FixedChar = True
      Size = 15
    end
    object cdsClienteCLIEA15ENDENTTEMPMORA: TStringField
      FieldName = 'CLIEA15ENDENTTEMPMORA'
      FixedChar = True
      Size = 15
    end
    object cdsClienteCLIEA15ENDCODTEMPMORA: TStringField
      FieldName = 'CLIEA15ENDCODTEMPMORA'
      FixedChar = True
      Size = 15
    end
    object cdsClienteCLIECATIVO: TStringField
      FieldName = 'CLIECATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCLIEA3200OBSFINAN: TStringField
      FieldName = 'CLIEA3200OBSFINAN'
      Size = 3200
    end
    object cdsClienteCLIEA15FONECOB: TStringField
      FieldName = 'CLIEA15FONECOB'
      Size = 15
    end
    object cdsClienteCLIEA13IDPAI: TStringField
      FieldName = 'CLIEA13IDPAI'
      FixedChar = True
      Size = 13
    end
    object cdsClienteCLIEA254LEMBRETE: TStringField
      FieldName = 'CLIEA254LEMBRETE'
      Size = 254
    end
    object cdsClienteCLORICOD: TIntegerField
      FieldName = 'CLORICOD'
    end
    object cdsClienteCLIEA60EMPRESAS: TStringField
      FieldName = 'CLIEA60EMPRESAS'
      Size = 60
    end
    object cdsClientePAISICOD: TIntegerField
      FieldName = 'PAISICOD'
    end
    object cdsClienteCLIEA10ENDCOBCOMP: TStringField
      FieldName = 'CLIEA10ENDCOBCOMP'
      Size = 30
    end
    object cdsClienteCLIEA10ENDENTCOMP: TStringField
      FieldName = 'CLIEA10ENDENTCOMP'
      Size = 30
    end
    object cdsClienteCLIEA10ENDRESCOMP: TStringField
      FieldName = 'CLIEA10ENDRESCOMP'
      Size = 30
    end
    object cdsClienteCLIEA60CONTATO2: TStringField
      FieldName = 'CLIEA60CONTATO2'
      Size = 60
    end
    object cdsClienteCLIEA8SENHAINTERNET: TStringField
      FieldName = 'CLIEA8SENHAINTERNET'
      Size = 8
    end
    object cdsClienteCLIEAIENDRESNUM: TIntegerField
      FieldName = 'CLIEAIENDRESNUM'
    end
    object cdsClienteCLIEIENDCOBNUM: TIntegerField
      FieldName = 'CLIEIENDCOBNUM'
    end
    object cdsClienteCLIEIENDENTNUM: TIntegerField
      FieldName = 'CLIEIENDENTNUM'
    end
    object cdsClienteCLIEIENDRESNUM: TIntegerField
      FieldName = 'CLIEIENDRESNUM'
    end
    object cdsClienteCLIEA60IDSITE: TStringField
      FieldName = 'CLIEA60IDSITE'
      FixedChar = True
      Size = 60
    end
    object cdsClienteCLIECUSAREGRAFINANNF: TStringField
      FieldName = 'CLIECUSAREGRAFINANNF'
      Size = 1
    end
    object cdsClienteCLIEIMEDIAVENDAS: TIntegerField
      FieldName = 'CLIEIMEDIAVENDAS'
    end
    object cdsClienteCLIECNGERAPARCNF: TStringField
      FieldName = 'CLIECNGERAPARCNF'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCLIEDULT_CONT_CALL: TSQLTimeStampField
      FieldName = 'CLIEDULT_CONT_CALL'
    end
    object cdsClienteCLIECNCONCDESCST: TStringField
      FieldName = 'CLIECNCONCDESCST'
      Size = 1
    end
    object cdsClienteCLIEC1UTILENDGRUPO: TStringField
      FieldName = 'CLIEC1UTILENDGRUPO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCLIEC1AGRUPADUPLI: TStringField
      FieldName = 'CLIEC1AGRUPADUPLI'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCLIEA10CODANTIGO: TStringField
      FieldName = 'CLIEA10CODANTIGO'
      Size = 10
    end
    object cdsClienteCLIEA20INSCSUFRAMA: TStringField
      FieldName = 'CLIEA20INSCSUFRAMA'
    end
    object cdsClienteCLIEACOMUN: TStringField
      FieldName = 'CLIEACOMUN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsClienteCLIEAICODANT: TIntegerField
      FieldName = 'CLIEAICODANT'
    end
    object cdsClienteCLIECANEXOEMAILNFE: TStringField
      FieldName = 'CLIECANEXOEMAILNFE'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCLIECCONTRIBUINTEICMS: TStringField
      FieldName = 'CLIECCONTRIBUINTEICMS'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCLIEINATUREZAJURICIA: TIntegerField
      FieldName = 'CLIEINATUREZAJURICIA'
    end
    object cdsClienteCLIEN2ALIQUOTAICMS: TFMTBCDField
      FieldName = 'CLIEN2ALIQUOTAICMS'
      Precision = 15
      Size = 2
    end
    object cdsClienteCLIECREGIMEAPURACAO: TStringField
      FieldName = 'CLIECREGIMEAPURACAO'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCLIEAMODULOS: TStringField
      FieldName = 'CLIEAMODULOS'
      Size = 60
    end
    object cdsClienteCLIECTIPOFRETE: TStringField
      FieldName = 'CLIECTIPOFRETE'
      FixedChar = True
      Size = 1
    end
    object cdsClienteCLIEICRT: TIntegerField
      FieldName = 'CLIEICRT'
    end
    object cdsClienteCLIEINROCOMPUTADOR: TIntegerField
      FieldName = 'CLIEINROCOMPUTADOR'
    end
    object cdsClienteCLIEA20IM: TStringField
      FieldName = 'CLIEA20IM'
    end
    object cdsClienteCLIEITIPOLOGRADOURO: TIntegerField
      FieldName = 'CLIEITIPOLOGRADOURO'
    end
    object cdsClienteCLIEITIPOLOGRADOUROCOB: TIntegerField
      FieldName = 'CLIEITIPOLOGRADOUROCOB'
    end
    object cdsClienteCLIEITIPOLOGRADOUROENT: TIntegerField
      FieldName = 'CLIEITIPOLOGRADOUROENT'
    end
    object cdsClienteCLIEINUMATENDIMENTOMENSAL: TIntegerField
      FieldName = 'CLIEINUMATENDIMENTOMENSAL'
    end
    object cdsClienteTIOSICOD: TIntegerField
      FieldName = 'TIOSICOD'
    end
    object cdsClientePRODICODIMPLANTACAO: TIntegerField
      FieldName = 'PRODICODIMPLANTACAO'
    end
    object cdsClienteCLIEN2HORASIMPLANTACAO: TFMTBCDField
      FieldName = 'CLIEN2HORASIMPLANTACAO'
      Precision = 15
      Size = 2
    end
    object cdsClienteCLIECENVIABOLETONF: TStringField
      FieldName = 'CLIECENVIABOLETONF'
      FixedChar = True
      Size = 1
    end
  end
  object dsCliente: TDataSource
    DataSet = cdsCliente
    Left = 584
    Top = 176
  end
end
