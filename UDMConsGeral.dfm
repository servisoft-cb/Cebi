object DMConsGeral: TDMConsGeral
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 357
  Top = 251
  Height = 332
  Width = 655
  object sdsContrato_Cli: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CT.id, ct.id_cliente, ct.id_assinatura, ct.dtcontrato, ct' +
      '.dtcobranca, ct.vlr_unitario,'#13#10'ct.qtd, ct.periodo, ct.dtencerram' +
      'ento, ct.id_periodo, ct.apel_ebs, ct.vlr_total, ct.gerou_duplica' +
      'ta,'#13#10'ct.num_contrato, ct.ano_contrato, ct.num_contrato_int, ct.p' +
      're_contrato, ct.encerrado,'#13#10'ct.ano_contrato_ant, ct.num_contrato' +
      '_int_ant, ct.num_contrato_ant, ct.id_ant, ct.gerou_pre_contrato,' +
      #13#10'ct.num_pedido, ct.dtbaixa, ct.dtemissao,'#13#10'PES.NOME NOMECLIENTE' +
      ', ASS.NOME NOMEASSINATURA, PER.NOME NOMEPERIODO, PER.QTD_MES,'#13#10'P' +
      'ES.email_nfe EMAIL_NFE_FB, PES.uf UF_FB, PES.dddfone1 DDDFONE1_F' +
      'B, PES.telefone1 TELEFONE1_FB,'#13#10'case'#13#10'  when (ct.num_contrato_an' +
      't <> '#39#39'  and ((ct.dtencerramento > :DTENC) or (ct.dtencerramento' +
      ' is null))) then '#39'RENOVA'#199#195'O'#39#13#10'  when (ct.num_contrato_ant = '#39#39'  ' +
      '  and ((ct.dtencerramento > :DTENC) or (ct.dtencerramento is nul' +
      'l))) then '#39'NOVO'#39#13#10'  when (ct.num_contrato_ant is null and ((ct.d' +
      'tencerramento > :DTENC) or (ct.dtencerramento is null))) then '#39'N' +
      'OVO'#39#13#10'  else '#39'ENCERRADO'#39#13#10'  end SITUACAO_CONTRATO,'#13#10'case'#13#10'  when' +
      ' ct.pre_contrato = '#39'S'#39' then '#39'P'#39#13#10'  else '#39'C'#39#13#10'  end TIPO_PC'#13#10#13#10'FR' +
      'OM CONTRATO CT'#13#10'INNER JOIN PESSOA PES'#13#10'ON CT.ID_CLIENTE = PES.CO' +
      'DIGO'#13#10'INNER JOIN ASSINATURA ASS'#13#10'ON CT.ID_ASSINATURA = ASS.ID'#13#10'I' +
      'NNER JOIN PERIODO PER'#13#10'ON CT.ID_PERIODO = PER.ID'#13#10#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DTENC'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTENC'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTENC'
        ParamType = ptInput
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 48
  end
  object dspContrato_Cli: TDataSetProvider
    DataSet = sdsContrato_Cli
    Left = 176
    Top = 48
  end
  object cdsContrato_Cli: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspContrato_Cli'
    Left = 248
    Top = 48
    object cdsContrato_CliID: TFMTBCDField
      FieldName = 'ID'
      Required = True
      Precision = 15
      Size = 0
    end
    object cdsContrato_CliID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsContrato_CliID_ASSINATURA: TIntegerField
      FieldName = 'ID_ASSINATURA'
    end
    object cdsContrato_CliDTCONTRATO: TDateField
      FieldName = 'DTCONTRATO'
    end
    object cdsContrato_CliDTCOBRANCA: TDateField
      FieldName = 'DTCOBRANCA'
    end
    object cdsContrato_CliVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsContrato_CliQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsContrato_CliPERIODO: TStringField
      FieldName = 'PERIODO'
      Size = 3
    end
    object cdsContrato_CliDTENCERRAMENTO: TDateField
      FieldName = 'DTENCERRAMENTO'
    end
    object cdsContrato_CliID_PERIODO: TIntegerField
      FieldName = 'ID_PERIODO'
    end
    object cdsContrato_CliAPEL_EBS: TStringField
      FieldName = 'APEL_EBS'
      Size = 15
    end
    object cdsContrato_CliVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      DisplayFormat = '0.00'
    end
    object cdsContrato_CliGEROU_DUPLICATA: TStringField
      FieldName = 'GEROU_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object cdsContrato_CliNUM_CONTRATO: TStringField
      FieldName = 'NUM_CONTRATO'
      Size = 12
    end
    object cdsContrato_CliANO_CONTRATO: TIntegerField
      FieldName = 'ANO_CONTRATO'
    end
    object cdsContrato_CliNUM_CONTRATO_INT: TIntegerField
      FieldName = 'NUM_CONTRATO_INT'
    end
    object cdsContrato_CliPRE_CONTRATO: TStringField
      FieldName = 'PRE_CONTRATO'
      FixedChar = True
      Size = 1
    end
    object cdsContrato_CliENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      FixedChar = True
      Size = 1
    end
    object cdsContrato_CliANO_CONTRATO_ANT: TIntegerField
      FieldName = 'ANO_CONTRATO_ANT'
    end
    object cdsContrato_CliNUM_CONTRATO_INT_ANT: TIntegerField
      FieldName = 'NUM_CONTRATO_INT_ANT'
    end
    object cdsContrato_CliNUM_CONTRATO_ANT: TStringField
      FieldName = 'NUM_CONTRATO_ANT'
      Size = 12
    end
    object cdsContrato_CliID_ANT: TIntegerField
      FieldName = 'ID_ANT'
    end
    object cdsContrato_CliGEROU_PRE_CONTRATO: TStringField
      FieldName = 'GEROU_PRE_CONTRATO'
      FixedChar = True
      Size = 1
    end
    object cdsContrato_CliNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsContrato_CliDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object cdsContrato_CliDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
    object cdsContrato_CliNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 60
    end
    object cdsContrato_CliNOMEASSINATURA: TStringField
      FieldName = 'NOMEASSINATURA'
      Size = 70
    end
    object cdsContrato_CliNOMEPERIODO: TStringField
      FieldName = 'NOMEPERIODO'
      Size = 30
    end
    object cdsContrato_CliQTD_MES: TIntegerField
      FieldName = 'QTD_MES'
    end
    object cdsContrato_CliEMAIL_NFE_FB: TStringField
      FieldName = 'EMAIL_NFE_FB'
      Size = 200
    end
    object cdsContrato_CliUF_FB: TStringField
      FieldName = 'UF_FB'
      FixedChar = True
      Size = 2
    end
    object cdsContrato_CliDDDFONE1_FB: TIntegerField
      FieldName = 'DDDFONE1_FB'
    end
    object cdsContrato_CliTELEFONE1_FB: TStringField
      FieldName = 'TELEFONE1_FB'
      Size = 15
    end
    object cdsContrato_CliSITUACAO_CONTRATO: TStringField
      FieldName = 'SITUACAO_CONTRATO'
      Required = True
      FixedChar = True
      Size = 9
    end
    object cdsContrato_CliTIPO_PC: TStringField
      FieldName = 'TIPO_PC'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dsContrato_Cli: TDataSource
    DataSet = cdsContrato_Cli
    Left = 304
    Top = 48
  end
  object frxReport1: TfrxReport
    Version = '5.1.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42052.436473541700000000
    ReportOptions.LastChange = 42681.965841458330000000
    ScriptLanguage = 'PascalScript'
    StoreInDFM = False
    Left = 408
    Top = 87
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    Left = 448
    Top = 87
  end
  object frxMailExport1: TfrxMailExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ShowExportDialog = True
    SmtpPort = 25
    UseIniFile = True
    TimeOut = 60
    ConfurmReading = False
    UseMAPI = SMTP
    Left = 488
    Top = 87
  end
  object frxRichObject1: TfrxRichObject
    Left = 520
    Top = 87
  end
  object frxdbContrato_Cli: TfrxDBDataset
    UserName = 'frxContrato_Cli'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ID_CLIENTE=ID_CLIENTE'
      'ID_ASSINATURA=ID_ASSINATURA'
      'DTCONTRATO=DTCONTRATO'
      'DTCOBRANCA=DTCOBRANCA'
      'VLR_UNITARIO=VLR_UNITARIO'
      'QTD=QTD'
      'PERIODO=PERIODO'
      'DTENCERRAMENTO=DTENCERRAMENTO'
      'ID_PERIODO=ID_PERIODO'
      'APEL_EBS=APEL_EBS'
      'VLR_TOTAL=VLR_TOTAL'
      'GEROU_DUPLICATA=GEROU_DUPLICATA'
      'NUM_CONTRATO=NUM_CONTRATO'
      'ANO_CONTRATO=ANO_CONTRATO'
      'NUM_CONTRATO_INT=NUM_CONTRATO_INT'
      'PRE_CONTRATO=PRE_CONTRATO'
      'ENCERRADO=ENCERRADO'
      'ANO_CONTRATO_ANT=ANO_CONTRATO_ANT'
      'NUM_CONTRATO_INT_ANT=NUM_CONTRATO_INT_ANT'
      'NUM_CONTRATO_ANT=NUM_CONTRATO_ANT'
      'ID_ANT=ID_ANT'
      'GEROU_PRE_CONTRATO=GEROU_PRE_CONTRATO'
      'NUM_PEDIDO=NUM_PEDIDO'
      'DTBAIXA=DTBAIXA'
      'DTEMISSAO=DTEMISSAO'
      'NOMECLIENTE=NOMECLIENTE'
      'NOMEASSINATURA=NOMEASSINATURA'
      'NOMEPERIODO=NOMEPERIODO'
      'QTD_MES=QTD_MES'
      'EMAIL_NFE_FB=EMAIL_NFE_FB'
      'UF_FB=UF_FB'
      'DDDFONE1_FB=DDDFONE1_FB'
      'TELEFONE1_FB=TELEFONE1_FB'
      'SITUACAO_CONTRATO=SITUACAO_CONTRATO'
      'TIPO_PC=TIPO_PC')
    DataSource = dsContrato_Cli
    BCDToCurrency = False
    Left = 408
    Top = 135
  end
end
