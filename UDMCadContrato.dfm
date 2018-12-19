object DMCadContrato: TDMCadContrato
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 220
  Top = 136
  Height = 527
  Width = 1024
  object sdsContrato: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CONTRATO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 32
    object sdsContratoID: TFMTBCDField
      FieldName = 'ID'
      Required = True
      Precision = 15
      Size = 0
    end
    object sdsContratoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsContratoID_ASSINATURA: TIntegerField
      FieldName = 'ID_ASSINATURA'
    end
    object sdsContratoDTCONTRATO: TDateField
      FieldName = 'DTCONTRATO'
    end
    object sdsContratoDTCOBRANCA: TDateField
      FieldName = 'DTCOBRANCA'
    end
    object sdsContratoQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsContratoPERIODO: TStringField
      FieldName = 'PERIODO'
      Size = 3
    end
    object sdsContratoDTENCERRAMENTO: TDateField
      FieldName = 'DTENCERRAMENTO'
    end
    object sdsContratoID_PERIODO: TIntegerField
      FieldName = 'ID_PERIODO'
    end
    object sdsContratoAPEL_EBS: TStringField
      FieldName = 'APEL_EBS'
      Size = 15
    end
    object sdsContratoVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsContratoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsContratoGEROU_DUPLICATA: TStringField
      FieldName = 'GEROU_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object sdsContratoANO_CONTRATO: TIntegerField
      FieldName = 'ANO_CONTRATO'
    end
    object sdsContratoNUM_CONTRATO: TStringField
      FieldName = 'NUM_CONTRATO'
      Size = 12
    end
    object sdsContratoNUM_CONTRATO_INT: TIntegerField
      FieldName = 'NUM_CONTRATO_INT'
    end
    object sdsContratoPRE_CONTRATO: TStringField
      FieldName = 'PRE_CONTRATO'
      FixedChar = True
      Size = 1
    end
    object sdsContratoENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      FixedChar = True
      Size = 1
    end
    object sdsContratoANO_CONTRATO_ANT: TIntegerField
      FieldName = 'ANO_CONTRATO_ANT'
    end
    object sdsContratoNUM_CONTRATO_INT_ANT: TIntegerField
      FieldName = 'NUM_CONTRATO_INT_ANT'
    end
    object sdsContratoNUM_CONTRATO_ANT: TStringField
      FieldName = 'NUM_CONTRATO_ANT'
      Size = 12
    end
    object sdsContratoID_ANT: TIntegerField
      FieldName = 'ID_ANT'
    end
    object sdsContratoGEROU_PRE_CONTRATO: TStringField
      FieldName = 'GEROU_PRE_CONTRATO'
      FixedChar = True
      Size = 1
    end
    object sdsContratoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsContratoNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object sdsContratoDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object sdsContratoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
  end
  object dspContrato: TDataSetProvider
    DataSet = sdsContrato
    Left = 120
    Top = 32
  end
  object cdsContrato: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspContrato'
    OnNewRecord = cdsContratoNewRecord
    Left = 184
    Top = 32
    object cdsContratoID: TFMTBCDField
      FieldName = 'ID'
      Required = True
      Precision = 15
      Size = 0
    end
    object cdsContratoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object cdsContratoID_ASSINATURA: TIntegerField
      FieldName = 'ID_ASSINATURA'
    end
    object cdsContratoDTCONTRATO: TDateField
      FieldName = 'DTCONTRATO'
    end
    object cdsContratoDTCOBRANCA: TDateField
      FieldName = 'DTCOBRANCA'
    end
    object cdsContratoQTD: TFloatField
      FieldName = 'QTD'
    end
    object cdsContratoPERIODO: TStringField
      FieldName = 'PERIODO'
      Size = 3
    end
    object cdsContratoDTENCERRAMENTO: TDateField
      FieldName = 'DTENCERRAMENTO'
    end
    object cdsContratoID_PERIODO: TIntegerField
      FieldName = 'ID_PERIODO'
    end
    object cdsContratoAPEL_EBS: TStringField
      FieldName = 'APEL_EBS'
      Size = 15
    end
    object cdsContratoVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object cdsContratoVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object cdsContratoGEROU_DUPLICATA: TStringField
      FieldName = 'GEROU_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object cdsContratoANO_CONTRATO: TIntegerField
      FieldName = 'ANO_CONTRATO'
    end
    object cdsContratoNUM_CONTRATO: TStringField
      FieldName = 'NUM_CONTRATO'
      Size = 12
    end
    object cdsContratoNUM_CONTRATO_INT: TIntegerField
      FieldName = 'NUM_CONTRATO_INT'
    end
    object cdsContratoPRE_CONTRATO: TStringField
      FieldName = 'PRE_CONTRATO'
      FixedChar = True
      Size = 1
    end
    object cdsContratoENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      FixedChar = True
      Size = 1
    end
    object cdsContratoANO_CONTRATO_ANT: TIntegerField
      FieldName = 'ANO_CONTRATO_ANT'
    end
    object cdsContratoNUM_CONTRATO_INT_ANT: TIntegerField
      FieldName = 'NUM_CONTRATO_INT_ANT'
    end
    object cdsContratoNUM_CONTRATO_ANT: TStringField
      FieldName = 'NUM_CONTRATO_ANT'
      Size = 12
    end
    object cdsContratoID_ANT: TIntegerField
      FieldName = 'ID_ANT'
    end
    object cdsContratoGEROU_PRE_CONTRATO: TStringField
      FieldName = 'GEROU_PRE_CONTRATO'
      FixedChar = True
      Size = 1
    end
    object cdsContratoOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsContratoNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsContratoDTBAIXA: TDateField
      FieldName = 'DTBAIXA'
    end
    object cdsContratoDTEMISSAO: TDateField
      FieldName = 'DTEMISSAO'
    end
  end
  object dsContrato: TDataSource
    DataSet = cdsContrato
    Left = 256
    Top = 32
  end
  object sdsAssinatura: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM ASSINATURA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 96
    object sdsAssinaturaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsAssinaturaNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object sdsAssinaturaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsAssinaturaVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object sdsAssinaturaDTATUALIZACAO_VLR: TDateField
      FieldName = 'DTATUALIZACAO_VLR'
    end
    object sdsAssinaturaID_PERIODO: TIntegerField
      FieldName = 'ID_PERIODO'
    end
  end
  object dspAssinatura: TDataSetProvider
    DataSet = sdsAssinatura
    Left = 120
    Top = 96
  end
  object cdsAssinatura: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAssinatura'
    Left = 184
    Top = 96
    object cdsAssinaturaID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsAssinaturaNOME: TStringField
      FieldName = 'NOME'
      Size = 70
    end
    object cdsAssinaturaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsAssinaturaVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object cdsAssinaturaDTATUALIZACAO_VLR: TDateField
      FieldName = 'DTATUALIZACAO_VLR'
    end
    object cdsAssinaturaID_PERIODO: TIntegerField
      FieldName = 'ID_PERIODO'
    end
  end
  object dsAssinatura: TDataSource
    DataSet = cdsAssinatura
    Left = 256
    Top = 96
  end
  object sdsContrato_Consulta: TSQLDataSet
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
      'B, PES.telefone1 TELEFONE1_FB'#13#10#13#10'FROM CONTRATO CT'#13#10'INNER JOIN PE' +
      'SSOA PES'#13#10'ON CT.ID_CLIENTE = PES.CODIGO'#13#10'INNER JOIN ASSINATURA A' +
      'SS'#13#10'ON CT.ID_ASSINATURA = ASS.ID'#13#10'INNER JOIN PERIODO PER'#13#10'ON CT.' +
      'ID_PERIODO = PER.ID'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 368
    Top = 64
    object sdsContrato_ConsultaID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
    end
    object sdsContrato_ConsultaID_ASSINATURA: TIntegerField
      FieldName = 'ID_ASSINATURA'
    end
    object sdsContrato_ConsultaDTCONTRATO: TDateField
      FieldName = 'DTCONTRATO'
    end
    object sdsContrato_ConsultaDTCOBRANCA: TDateField
      FieldName = 'DTCOBRANCA'
    end
    object sdsContrato_ConsultaQTD: TFloatField
      FieldName = 'QTD'
    end
    object sdsContrato_ConsultaPERIODO: TStringField
      FieldName = 'PERIODO'
      Size = 3
    end
    object sdsContrato_ConsultaDTENCERRAMENTO: TDateField
      FieldName = 'DTENCERRAMENTO'
    end
    object sdsContrato_ConsultaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 60
    end
    object sdsContrato_ConsultaNOMEASSINATURA: TStringField
      FieldName = 'NOMEASSINATURA'
      Size = 70
    end
    object sdsContrato_ConsultaAPEL_EBS: TStringField
      FieldName = 'APEL_EBS'
      Size = 15
    end
    object sdsContrato_ConsultaID_PERIODO: TIntegerField
      FieldName = 'ID_PERIODO'
    end
    object sdsContrato_ConsultaNOMEPERIODO: TStringField
      FieldName = 'NOMEPERIODO'
      Size = 30
    end
    object sdsContrato_ConsultaQTD_MES: TIntegerField
      FieldName = 'QTD_MES'
    end
    object sdsContrato_ConsultaVLR_UNITARIO: TFloatField
      FieldName = 'VLR_UNITARIO'
    end
    object sdsContrato_ConsultaVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
    end
    object sdsContrato_ConsultaGEROU_DUPLICATA: TStringField
      FieldName = 'GEROU_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object sdsContrato_ConsultaANO_CONTRATO: TIntegerField
      FieldName = 'ANO_CONTRATO'
    end
    object sdsContrato_ConsultaID: TFMTBCDField
      FieldName = 'ID'
      Required = True
      Precision = 15
      Size = 0
    end
    object sdsContrato_ConsultaNUM_CONTRATO: TStringField
      FieldName = 'NUM_CONTRATO'
      Size = 12
    end
    object sdsContrato_ConsultaNUM_CONTRATO_INT: TIntegerField
      FieldName = 'NUM_CONTRATO_INT'
    end
    object sdsContrato_ConsultaPRE_CONTRATO: TStringField
      FieldName = 'PRE_CONTRATO'
      FixedChar = True
      Size = 1
    end
    object sdsContrato_ConsultaENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      FixedChar = True
      Size = 1
    end
    object sdsContrato_ConsultaANO_CONTRATO_ANT: TIntegerField
      FieldName = 'ANO_CONTRATO_ANT'
    end
    object sdsContrato_ConsultaNUM_CONTRATO_INT_ANT: TIntegerField
      FieldName = 'NUM_CONTRATO_INT_ANT'
    end
    object sdsContrato_ConsultaNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object sdsContrato_ConsultaNUM_CONTRATO_ANT: TStringField
      DisplayLabel = 'N'#186' Contrato Anterior'
      FieldName = 'NUM_CONTRATO_ANT'
      Size = 12
    end
    object sdsContrato_ConsultaGEROU_PRE_CONTRATO: TStringField
      FieldName = 'GEROU_PRE_CONTRATO'
      FixedChar = True
      Size = 1
    end
    object sdsContrato_ConsultaEMAIL_NFE_FB: TStringField
      FieldName = 'EMAIL_NFE_FB'
      Size = 200
    end
    object sdsContrato_ConsultaUF_FB: TStringField
      FieldName = 'UF_FB'
      FixedChar = True
      Size = 2
    end
    object sdsContrato_ConsultaDDDFONE1_FB: TIntegerField
      FieldName = 'DDDFONE1_FB'
    end
    object sdsContrato_ConsultaTELEFONE1_FB: TStringField
      FieldName = 'TELEFONE1_FB'
      Size = 15
    end
  end
  object dspContrato_Consulta: TDataSetProvider
    DataSet = sdsContrato_Consulta
    Left = 440
    Top = 64
  end
  object cdsContrato_Consulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspContrato_Consulta'
    Left = 504
    Top = 64
    object cdsContrato_ConsultaID_CLIENTE: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'ID_CLIENTE'
    end
    object cdsContrato_ConsultaID_ASSINATURA: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'C'#243'd. Assinatura'
      FieldName = 'ID_ASSINATURA'
    end
    object cdsContrato_ConsultaDTCONTRATO: TDateField
      Alignment = taCenter
      DisplayLabel = 'Data Contrato'
      FieldName = 'DTCONTRATO'
    end
    object cdsContrato_ConsultaDTCOBRANCA: TDateField
      Alignment = taCenter
      DisplayLabel = 'Data Cobran'#231'a'
      FieldName = 'DTCOBRANCA'
    end
    object cdsContrato_ConsultaQTD: TFloatField
      DisplayLabel = 'Qtde.'
      FieldName = 'QTD'
    end
    object cdsContrato_ConsultaPERIODO: TStringField
      DisplayLabel = 'Per'#237'odo'
      FieldName = 'PERIODO'
      Size = 3
    end
    object cdsContrato_ConsultaDTENCERRAMENTO: TDateField
      Alignment = taCenter
      DisplayLabel = 'Data Encerramento'
      FieldName = 'DTENCERRAMENTO'
    end
    object cdsContrato_ConsultaNOMEASSINATURA: TStringField
      DisplayLabel = 'Nome Assinatura'
      FieldName = 'NOMEASSINATURA'
      Size = 70
    end
    object cdsContrato_ConsultaAPEL_EBS: TStringField
      DisplayLabel = 'C'#243'digo na EBS'
      FieldName = 'APEL_EBS'
      Size = 15
    end
    object cdsContrato_ConsultaID_PERIODO: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'C'#243'd. Per'#237'odo'
      FieldName = 'ID_PERIODO'
    end
    object cdsContrato_ConsultaNOMEPERIODO: TStringField
      DisplayLabel = 'Nome Per'#237'odo'
      FieldName = 'NOMEPERIODO'
      Size = 30
    end
    object cdsContrato_ConsultaQTD_MES: TIntegerField
      Alignment = taCenter
      DisplayLabel = 'Qtd. M'#234's Per'#237'odo'
      FieldName = 'QTD_MES'
    end
    object cdsContrato_ConsultaVLR_UNITARIO: TFloatField
      DisplayLabel = 'Vlr. Unit'#225'rio'
      FieldName = 'VLR_UNITARIO'
    end
    object cdsContrato_ConsultaVLR_TOTAL: TFloatField
      DisplayLabel = 'Vlr. Total'
      FieldName = 'VLR_TOTAL'
    end
    object cdsContrato_ConsultaGEROU_DUPLICATA: TStringField
      DisplayLabel = 'Gerou Duplicata'
      FieldName = 'GEROU_DUPLICATA'
      FixedChar = True
      Size = 1
    end
    object cdsContrato_ConsultaANO_CONTRATO: TIntegerField
      DisplayLabel = 'Ano Contrato'
      FieldName = 'ANO_CONTRATO'
    end
    object cdsContrato_ConsultaID: TFMTBCDField
      FieldName = 'ID'
      Required = True
      Precision = 15
      Size = 0
    end
    object cdsContrato_ConsultaNUM_CONTRATO: TStringField
      FieldName = 'NUM_CONTRATO'
      Size = 12
    end
    object cdsContrato_ConsultaNUM_CONTRATO_INT: TIntegerField
      FieldName = 'NUM_CONTRATO_INT'
    end
    object cdsContrato_ConsultaPRE_CONTRATO: TStringField
      FieldName = 'PRE_CONTRATO'
      FixedChar = True
      Size = 1
    end
    object cdsContrato_ConsultaENCERRADO: TStringField
      FieldName = 'ENCERRADO'
      FixedChar = True
      Size = 1
    end
    object cdsContrato_ConsultaANO_CONTRATO_ANT: TIntegerField
      FieldName = 'ANO_CONTRATO_ANT'
    end
    object cdsContrato_ConsultaNUM_CONTRATO_INT_ANT: TIntegerField
      FieldName = 'NUM_CONTRATO_INT_ANT'
    end
    object cdsContrato_ConsultaNUM_PEDIDO: TIntegerField
      FieldName = 'NUM_PEDIDO'
    end
    object cdsContrato_ConsultaNUM_CONTRATO_ANT: TStringField
      DisplayLabel = 'N'#186' Contrato Anterior'
      FieldName = 'NUM_CONTRATO_ANT'
      Size = 12
    end
    object cdsContrato_ConsultaGEROU_PRE_CONTRATO: TStringField
      FieldName = 'GEROU_PRE_CONTRATO'
      FixedChar = True
      Size = 1
    end
    object cdsContrato_ConsultaEMAIL_NFE_FB: TStringField
      FieldName = 'EMAIL_NFE_FB'
      Size = 200
    end
    object cdsContrato_ConsultaUF_FB: TStringField
      FieldName = 'UF_FB'
      FixedChar = True
      Size = 2
    end
    object cdsContrato_ConsultaDDDFONE1_FB: TIntegerField
      FieldName = 'DDDFONE1_FB'
    end
    object cdsContrato_ConsultaTELEFONE1_FB: TStringField
      FieldName = 'TELEFONE1_FB'
      Size = 15
    end
    object cdsContrato_ConsultaUF: TStringField
      FieldKind = fkLookup
      FieldName = 'UF'
      LookupDataSet = cdsEmpresa
      LookupKeyFields = 'Apel'
      LookupResultField = 'EStado'
      KeyFields = 'APEL_EBS'
      Size = 2
      Lookup = True
    end
    object cdsContrato_ConsultaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 60
    end
  end
  object dsContrato_Consulta: TDataSource
    DataSet = cdsContrato_Consulta
    Left = 576
    Top = 64
  end
  object sdsPessoa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PESSOA'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 168
    object sdsPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object sdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsPessoaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object sdsPessoaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object sdsPessoaCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object sdsPessoaNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object sdsPessoaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object sdsPessoaID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object sdsPessoaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object sdsPessoaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object sdsPessoaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object sdsPessoaDDDFONE1: TIntegerField
      FieldName = 'DDDFONE1'
    end
    object sdsPessoaTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 15
    end
    object sdsPessoaDDDFONE2: TIntegerField
      FieldName = 'DDDFONE2'
    end
    object sdsPessoaTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object sdsPessoaDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object sdsPessoaFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object sdsPessoaPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object sdsPessoaINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object sdsPessoaENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 40
    end
    object sdsPessoaCOMPLEMENTO_END_ENT: TStringField
      FieldName = 'COMPLEMENTO_END_ENT'
      Size = 60
    end
    object sdsPessoaNUM_END_ENT: TStringField
      FieldName = 'NUM_END_ENT'
    end
    object sdsPessoaBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 26
    end
    object sdsPessoaID_CIDADE_ENT: TIntegerField
      FieldName = 'ID_CIDADE_ENT'
    end
    object sdsPessoaCIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 40
    end
    object sdsPessoaCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 10
    end
    object sdsPessoaUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object sdsPessoaPESSOA_ENT: TStringField
      FieldName = 'PESSOA_ENT'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaCNPJ_CPF_ENT: TStringField
      FieldName = 'CNPJ_CPF_ENT'
      Size = 18
    end
    object sdsPessoaINSC_EST_ENT: TStringField
      FieldName = 'INSC_EST_ENT'
      Size = 18
    end
    object sdsPessoaENDERECO_PGTO: TStringField
      FieldName = 'ENDERECO_PGTO'
      Size = 40
    end
    object sdsPessoaCOMPLEMENTO_END_PGTO: TStringField
      FieldName = 'COMPLEMENTO_END_PGTO'
      Size = 60
    end
    object sdsPessoaNUM_END_PGTO: TStringField
      FieldName = 'NUM_END_PGTO'
    end
    object sdsPessoaBAIRRO_PGTO: TStringField
      FieldName = 'BAIRRO_PGTO'
      Size = 26
    end
    object sdsPessoaID_CIDADE_PGTO: TIntegerField
      FieldName = 'ID_CIDADE_PGTO'
    end
    object sdsPessoaCIDADE_PGTO: TStringField
      FieldName = 'CIDADE_PGTO'
      Size = 40
    end
    object sdsPessoaCEP_PGTO: TStringField
      FieldName = 'CEP_PGTO'
      Size = 10
    end
    object sdsPessoaUF_PGTO: TStringField
      FieldName = 'UF_PGTO'
      FixedChar = True
      Size = 2
    end
    object sdsPessoaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object sdsPessoaDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object sdsPessoaHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
    object sdsPessoaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object sdsPessoaCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 10
    end
    object sdsPessoaRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object sdsPessoaID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
    object sdsPessoaDDD_ENT: TIntegerField
      FieldName = 'DDD_ENT'
    end
    object sdsPessoaFONE_ENT: TStringField
      FieldName = 'FONE_ENT'
      Size = 15
    end
    object sdsPessoaDDD_PGTO: TIntegerField
      FieldName = 'DDD_PGTO'
    end
    object sdsPessoaFONE_PGTO: TStringField
      FieldName = 'FONE_PGTO'
      Size = 15
    end
    object sdsPessoaINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaNOME_ENTREGA: TStringField
      FieldName = 'NOME_ENTREGA'
      Size = 60
    end
    object sdsPessoaPESSOA_PGTO: TStringField
      FieldName = 'PESSOA_PGTO'
      FixedChar = True
      Size = 1
    end
    object sdsPessoaCNPJ_CPG_PGTO: TStringField
      FieldName = 'CNPJ_CPG_PGTO'
      Size = 18
    end
    object sdsPessoaINSC_EST_PGTO: TStringField
      FieldName = 'INSC_EST_PGTO'
      Size = 18
    end
    object sdsPessoaTP_CLIENTE: TStringField
      FieldName = 'TP_CLIENTE'
      Size = 1
    end
    object sdsPessoaTP_FORNECEDOR: TStringField
      FieldName = 'TP_FORNECEDOR'
      Size = 1
    end
    object sdsPessoaTP_TRANSPORTADORA: TStringField
      FieldName = 'TP_TRANSPORTADORA'
      Size = 1
    end
    object sdsPessoaTP_VENDEDOR: TStringField
      FieldName = 'TP_VENDEDOR'
      Size = 1
    end
    object sdsPessoaAPEL_EBS: TStringField
      FieldName = 'APEL_EBS'
      Size = 15
    end
    object sdsPessoaEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 200
    end
  end
  object dspPessoa: TDataSetProvider
    DataSet = sdsPessoa
    Left = 120
    Top = 168
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoa'
    Left = 184
    Top = 168
    object cdsPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsPessoaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsPessoaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsPessoaCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsPessoaNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object cdsPessoaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsPessoaID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsPessoaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsPessoaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsPessoaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsPessoaDDDFONE1: TIntegerField
      FieldName = 'DDDFONE1'
    end
    object cdsPessoaTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 15
    end
    object cdsPessoaDDDFONE2: TIntegerField
      FieldName = 'DDDFONE2'
    end
    object cdsPessoaTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object cdsPessoaDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object cdsPessoaFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cdsPessoaPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsPessoaINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object cdsPessoaENDERECO_ENT: TStringField
      FieldName = 'ENDERECO_ENT'
      Size = 40
    end
    object cdsPessoaCOMPLEMENTO_END_ENT: TStringField
      FieldName = 'COMPLEMENTO_END_ENT'
      Size = 60
    end
    object cdsPessoaNUM_END_ENT: TStringField
      FieldName = 'NUM_END_ENT'
    end
    object cdsPessoaBAIRRO_ENT: TStringField
      FieldName = 'BAIRRO_ENT'
      Size = 26
    end
    object cdsPessoaID_CIDADE_ENT: TIntegerField
      FieldName = 'ID_CIDADE_ENT'
    end
    object cdsPessoaCIDADE_ENT: TStringField
      FieldName = 'CIDADE_ENT'
      Size = 40
    end
    object cdsPessoaCEP_ENT: TStringField
      FieldName = 'CEP_ENT'
      Size = 10
    end
    object cdsPessoaUF_ENT: TStringField
      FieldName = 'UF_ENT'
      FixedChar = True
      Size = 2
    end
    object cdsPessoaPESSOA_ENT: TStringField
      FieldName = 'PESSOA_ENT'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCNPJ_CPF_ENT: TStringField
      FieldName = 'CNPJ_CPF_ENT'
      Size = 18
    end
    object cdsPessoaINSC_EST_ENT: TStringField
      FieldName = 'INSC_EST_ENT'
      Size = 18
    end
    object cdsPessoaENDERECO_PGTO: TStringField
      FieldName = 'ENDERECO_PGTO'
      Size = 40
    end
    object cdsPessoaCOMPLEMENTO_END_PGTO: TStringField
      FieldName = 'COMPLEMENTO_END_PGTO'
      Size = 60
    end
    object cdsPessoaNUM_END_PGTO: TStringField
      FieldName = 'NUM_END_PGTO'
    end
    object cdsPessoaBAIRRO_PGTO: TStringField
      FieldName = 'BAIRRO_PGTO'
      Size = 26
    end
    object cdsPessoaID_CIDADE_PGTO: TIntegerField
      FieldName = 'ID_CIDADE_PGTO'
    end
    object cdsPessoaCIDADE_PGTO: TStringField
      FieldName = 'CIDADE_PGTO'
      Size = 40
    end
    object cdsPessoaCEP_PGTO: TStringField
      FieldName = 'CEP_PGTO'
      Size = 10
    end
    object cdsPessoaUF_PGTO: TStringField
      FieldName = 'UF_PGTO'
      FixedChar = True
      Size = 2
    end
    object cdsPessoaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object cdsPessoaDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
    end
    object cdsPessoaHRCADASTRO: TTimeField
      FieldName = 'HRCADASTRO'
    end
    object cdsPessoaOBS: TMemoField
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsPessoaCAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
      Size = 10
    end
    object cdsPessoaRG: TStringField
      FieldName = 'RG'
      Size = 10
    end
    object cdsPessoaID_PAIS: TIntegerField
      FieldName = 'ID_PAIS'
    end
    object cdsPessoaDDD_ENT: TIntegerField
      FieldName = 'DDD_ENT'
    end
    object cdsPessoaFONE_ENT: TStringField
      FieldName = 'FONE_ENT'
      Size = 15
    end
    object cdsPessoaDDD_PGTO: TIntegerField
      FieldName = 'DDD_PGTO'
    end
    object cdsPessoaFONE_PGTO: TStringField
      FieldName = 'FONE_PGTO'
      Size = 15
    end
    object cdsPessoaINATIVO: TStringField
      FieldName = 'INATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaNOME_ENTREGA: TStringField
      FieldName = 'NOME_ENTREGA'
      Size = 60
    end
    object cdsPessoaPESSOA_PGTO: TStringField
      FieldName = 'PESSOA_PGTO'
      FixedChar = True
      Size = 1
    end
    object cdsPessoaCNPJ_CPG_PGTO: TStringField
      FieldName = 'CNPJ_CPG_PGTO'
      Size = 18
    end
    object cdsPessoaINSC_EST_PGTO: TStringField
      FieldName = 'INSC_EST_PGTO'
      Size = 18
    end
    object cdsPessoaTP_CLIENTE: TStringField
      FieldName = 'TP_CLIENTE'
      Size = 1
    end
    object cdsPessoaTP_FORNECEDOR: TStringField
      FieldName = 'TP_FORNECEDOR'
      Size = 1
    end
    object cdsPessoaTP_TRANSPORTADORA: TStringField
      FieldName = 'TP_TRANSPORTADORA'
      Size = 1
    end
    object cdsPessoaTP_VENDEDOR: TStringField
      FieldName = 'TP_VENDEDOR'
      Size = 1
    end
    object cdsPessoaAPEL_EBS: TStringField
      FieldName = 'APEL_EBS'
      Size = 15
    end
    object cdsPessoaEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 200
    end
  end
  object dsPessoa: TDataSource
    DataSet = cdsPessoa
    Left = 256
    Top = 168
  end
  object sdsPeriodo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PERIODO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 224
    object sdsPeriodoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPeriodoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object sdsPeriodoQTD_MES: TIntegerField
      FieldName = 'QTD_MES'
    end
  end
  object dspPeriodo: TDataSetProvider
    DataSet = sdsPeriodo
    Left = 120
    Top = 224
  end
  object cdsPeriodo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPeriodo'
    Left = 184
    Top = 224
    object cdsPeriodoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPeriodoNOME: TStringField
      FieldName = 'NOME'
      Size = 30
    end
    object cdsPeriodoQTD_MES: TIntegerField
      FieldName = 'QTD_MES'
    end
  end
  object dsPeriodo: TDataSource
    DataSet = cdsPeriodo
    Left = 256
    Top = 224
  end
  object qProximoContrato: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ANO_CONTRATO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT MAX(NUM_CONTRATO_INT) NUM_CONTRATO'
      'FROM CONTRATO'
      'WHERE ANO_CONTRATO = :ANO_CONTRATO')
    SQLConnection = dmDatabase.scoDados
    Left = 392
    Top = 168
    object qProximoContratoNUM_CONTRATO: TIntegerField
      FieldName = 'NUM_CONTRATO'
    end
  end
  object qContrato_Ant: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NUM_CONTRATO_ANT'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT NUM_CONTRATO, NUM_CONTRATO_ANT'
      'FROM CONTRATO'
      'WHERE NUM_CONTRATO_ANT = :NUM_CONTRATO_ANT'
      '')
    SQLConnection = dmDatabase.scoDados
    Left = 376
    Top = 256
    object qContrato_AntNUM_CONTRATO: TStringField
      FieldName = 'NUM_CONTRATO'
      Size = 12
    end
    object qContrato_AntNUM_CONTRATO_ANT: TStringField
      FieldName = 'NUM_CONTRATO_ANT'
      Size = 12
    end
  end
  object mConsulta: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'NumContrato'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ID_Cliente'
        DataType = ftInteger
      end
      item
        Name = 'NomeCliente'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Apel_EBS'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'DtContrato'
        DataType = ftDate
      end
      item
        Name = 'Status'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NomeAssinatura'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'ExisteApel'
        DataType = ftBoolean
      end
      item
        Name = 'ExisteEnd'
        DataType = ftBoolean
      end
      item
        Name = 'EmailNFe'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'EmailNFe_EBS'
        DataType = ftString
        Size = 200
      end
      item
        Name = 'Fone'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Fone_EBS'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 240
    Top = 368
    Data = {
      740100009619E0BD01000000180000000D00000000000300000074010B4E756D
      436F6E747261746F01004900000001000557494454480200020014000A49445F
      436C69656E746504000100000000000B4E6F6D65436C69656E74650100490000
      000100055749445448020002003C00084170656C5F4542530100490000000100
      055749445448020002000F000A4474436F6E747261746F040006000000000006
      53746174757301004900000001000557494454480200020001000E4E6F6D6541
      7373696E61747572610100490000000100055749445448020002003C000A4578
      697374654170656C020003000000000009457869737465456E64020003000000
      000008456D61696C4E4665010049000000010005574944544802000200C8000C
      456D61696C4E46655F454253010049000000010005574944544802000200C800
      04466F6E65010049000000010005574944544802000200140008466F6E655F45
      425301004900000001000557494454480200020014000000}
    object mConsultaNumContrato: TStringField
      FieldName = 'NumContrato'
    end
    object mConsultaID_Cliente: TIntegerField
      FieldName = 'ID_Cliente'
    end
    object mConsultaNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Size = 60
    end
    object mConsultaApel_EBS: TStringField
      FieldName = 'Apel_EBS'
      Size = 15
    end
    object mConsultaDtContrato: TDateField
      FieldName = 'DtContrato'
    end
    object mConsultaStatus: TStringField
      FieldName = 'Status'
      Size = 1
    end
    object mConsultaNomeAssinatura: TStringField
      FieldName = 'NomeAssinatura'
      Size = 60
    end
    object mConsultaExisteApel: TBooleanField
      FieldName = 'ExisteApel'
    end
    object mConsultaExisteEnd: TBooleanField
      FieldName = 'ExisteEnd'
    end
    object mConsultaEmailNFe: TStringField
      FieldName = 'EmailNFe'
      Size = 200
    end
    object mConsultaEmailNFe_EBS: TStringField
      FieldName = 'EmailNFe_EBS'
      Size = 200
    end
    object mConsultaFone: TStringField
      FieldName = 'Fone'
    end
    object mConsultaFone_EBS: TStringField
      FieldName = 'Fone_EBS'
    end
  end
  object dsmConsulta: TDataSource
    DataSet = mConsulta
    Left = 272
    Top = 368
  end
  object dsProdutos: TDataSource
    DataSet = cdsProdutos
    Left = 872
    Top = 128
  end
  object sdsProdutos: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT [C'#243'digo] Codigo,  isnull([Linha01],'#39#39') + '#39' '#39' + isnull([Li' +
      'nha02],'#39#39') + '#39' '#39' + isnull([Linha03],'#39#39') As NomeProduto'#13#10'      ,[' +
      'Tipo]'#13#10'      ,[Linha01]'#13#10'      ,[Linha02]'#13#10'      ,[Linha03]'#13#10'   ' +
      '   ,[Marca]'#13#10'      ,[Unidade]'#13#10'      ,[UnidadeEntrada]'#13#10'      ,[' +
      'UnidadeAuxiliar]'#13#10'      ,[UnidadeAuxiliar1]'#13#10'      ,[Unidade de ' +
      'Compra]'#13#10'      ,[Atacado somente se maior que]'#13#10'      ,[Peso L'#237'q' +
      'uido]'#13#10'      ,[Localiza'#231#227'o do Produto]'#13#10'      ,[Dias para Reposi' +
      #231#227'o]'#13#10'      ,[Meses de garantia]'#13#10'      ,[Grupo]'#13#10'      ,[Subgru' +
      'po]'#13#10'      ,[Situa'#231#227'o do Produto]'#13#10'      ,[Situa'#231#227'o Tribut'#225'ria]'#13 +
      #10'      ,[C'#243'digo do NCM]'#13#10'      ,[Letra do NCM]'#13#10'      ,[Real]'#13#10' ' +
      '     ,[Virtual]'#13#10'      ,[M'#237'nimo]'#13#10'      ,[M'#225'ximo]'#13#10'      ,[M'#233'dia' +
      ' de Vendas]'#13#10'      ,[M'#233'dia de Fabrica'#231#227'o]'#13#10'      ,[Lote M'#237'nimo d' +
      'e Compras]'#13#10'      ,[Lote M'#237'nimo de Vendas]'#13#10'      ,[Lote M'#237'nimo ' +
      'de Fabrica'#231#227'o]'#13#10'      ,[Valor de Compra]'#13#10'      ,[Valor de Venda' +
      ']'#13#10'      ,[Margem de Venda]'#13#10'      ,[Venda Atacado]'#13#10'      ,[Ven' +
      'da Varejo]'#13#10'      ,[Margem Atacado]'#13#10'      ,[Margem Varejo]'#13#10'   ' +
      '   ,[Valor de Transfer'#234'ncia]'#13#10'      ,[Valor Promo'#231#227'o]'#13#10'      ,[V' +
      'alidade da Promo'#231#227'o]'#13#10'      ,[Valor Promo'#231#227'o Atacado]'#13#10'      ,[V' +
      'alidade da Promo'#231#227'o Atacado]'#13#10'      ,[Valor Promo'#231#227'o Varejo]'#13#10'  ' +
      '    ,[Validade da Promo'#231#227'o Varejo]'#13#10'      ,['#218'ltima Atualiza'#231#227'o d' +
      'o Produto]'#13#10'      ,['#218'ltima Atualiza'#231#227'o de Venda]'#13#10'      ,[Quanti' +
      'dade por Volume]'#13#10'      ,[N'#250'mero do Desenho]'#13#10'      ,[Especifica' +
      #231#245'es T'#233'cnicas]'#13#10'      ,[C'#243'digo de Barras]'#13#10'      ,[Lista de Pre'#231 +
      'os]'#13#10'      ,[Comiss'#227'o]'#13#10'      ,[Moeda Venda]'#13#10'      ,[Condi'#231#227'o d' +
      'e Pagamento]'#13#10'      ,[Margem de Venda Substitui'#231#227'o Tribut'#225'ria]'#13#10 +
      '      ,[Valor dos Materiais]'#13#10'      ,[Valor da M'#227'o de Obra]'#13#10'   ' +
      '   ,[Centro]'#13#10'      ,[Outras Informa'#231#245'es01]'#13#10'      ,[Outras Info' +
      'rma'#231#245'es02]'#13#10'      ,[Outras Informa'#231#245'es03]'#13#10'      ,[Outras Inform' +
      'a'#231#245'es04]'#13#10'      ,[Outras Informa'#231#245'es05]'#13#10'      ,[Outras Informa'#231 +
      #245'es06]'#13#10'      ,[Outras Informa'#231#245'es07]'#13#10'      ,[Outras Informa'#231#245'e' +
      's08]'#13#10'      ,[Outras Informa'#231#245'es09]'#13#10'      ,[Outras Informa'#231#245'es1' +
      '0]'#13#10'      ,[Arquivo com Especifica'#231#227'o T'#233'cnica]'#13#10'      ,[Fator de' +
      ' Convers'#227'o de Unidade para Produ'#231#227'o]'#13#10'      ,[Obrigat'#243'rio Licen'#231 +
      'a]'#13#10'      ,[Foto]'#13#10'      ,[Data do Invent'#225'rio]'#13#10'      ,[Vendedor' +
      '01]'#13#10'      ,[Valor de Compra Original]'#13#10'      ,[Valor de Descont' +
      'o na Compra]'#13#10'      ,[UnidadeVlrVenda]'#13#10'      ,[Area]'#13#10'      ,[C' +
      'ODIPI]'#13#10'      ,[LOCPAD]'#13#10'      ,[CUSPRO]'#13#10'      ,[PerDmx]'#13#10'     ' +
      ' ,[ICMVEN]'#13#10'      ,[ICMCOM]'#13#10'      ,[UMEPRO]'#13#10'      ,[cd_conta_c' +
      'ontabil]'#13#10'      ,[cd_formacalculo_icmsst]'#13#10'      ,[pr_aliquota_i' +
      'nt_icmsst]'#13#10'      ,[ultimo_lote]'#13#10'      ,[ultima_serie]'#13#10'      ,' +
      '[peso_embalagem]'#13#10'      ,[sit_trib_ipi]'#13#10'      ,[sit_trib_pis]'#13#10 +
      '      ,[sit_trib_cofins]'#13#10'      ,[produto_configuravel]'#13#10'      ,' +
      '[prodpeso]'#13#10'      ,[data_integracao]'#13#10'      ,[aliquota_diferenci' +
      'ada]'#13#10'      ,[conteudo_importacao]'#13#10'      ,[produto_importacao]'#13 +
      #10'      ,[gera_fci]'#13#10'      ,[nr_controle_fci]'#13#10'  FROM [FOX_00001]' +
      '.[dbo].[Produtos]'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase_EBS.Conexao_MSSQL
    Left = 720
    Top = 128
    object sdsProdutosCodigo: TStringField
      FieldName = 'Codigo'
      Required = True
      FixedChar = True
    end
    object sdsProdutosNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Required = True
      FixedChar = True
      Size = 122
    end
    object sdsProdutosTipo: TStringField
      FieldName = 'Tipo'
      Required = True
      FixedChar = True
    end
    object sdsProdutosLinha01: TStringField
      FieldName = 'Linha01'
      Required = True
      FixedChar = True
      Size = 40
    end
    object sdsProdutosLinha02: TStringField
      FieldName = 'Linha02'
      FixedChar = True
      Size = 40
    end
    object sdsProdutosLinha03: TStringField
      FieldName = 'Linha03'
      FixedChar = True
      Size = 40
    end
    object sdsProdutosMarca: TStringField
      FieldName = 'Marca'
      FixedChar = True
      Size = 15
    end
    object sdsProdutosUnidade: TStringField
      FieldName = 'Unidade'
      Required = True
      FixedChar = True
      Size = 3
    end
    object sdsProdutosUnidadeEntrada: TStringField
      FieldName = 'UnidadeEntrada'
      FixedChar = True
      Size = 3
    end
    object sdsProdutosUnidadeAuxiliar: TStringField
      FieldName = 'UnidadeAuxiliar'
      FixedChar = True
      Size = 3
    end
    object sdsProdutosUnidadeAuxiliar1: TStringField
      FieldName = 'UnidadeAuxiliar1'
      FixedChar = True
      Size = 3
    end
    object sdsProdutosUnidadedeCompra: TStringField
      FieldName = 'Unidade de Compra'
      FixedChar = True
      Size = 3
    end
    object sdsProdutosAtacadosomentesemaiorque: TIntegerField
      FieldName = 'Atacado somente se maior que'
    end
    object sdsProdutosPesoLquido: TFloatField
      FieldName = 'Peso L'#237'quido'
    end
    object sdsProdutosLocalizaodoProduto: TStringField
      FieldName = 'Localiza'#231#227'o do Produto'
      FixedChar = True
      Size = 40
    end
    object sdsProdutosDiasparaReposio: TSmallintField
      FieldName = 'Dias para Reposi'#231#227'o'
    end
    object sdsProdutosMesesdegarantia: TSmallintField
      FieldName = 'Meses de garantia'
    end
    object sdsProdutosGrupo: TIntegerField
      FieldName = 'Grupo'
      Required = True
    end
    object sdsProdutosSubgrupo: TIntegerField
      FieldName = 'Subgrupo'
    end
    object sdsProdutosSituaodoProduto: TStringField
      FieldName = 'Situa'#231#227'o do Produto'
      FixedChar = True
    end
    object sdsProdutosSituaoTributria: TStringField
      FieldName = 'Situa'#231#227'o Tribut'#225'ria'
      FixedChar = True
      Size = 5
    end
    object sdsProdutosCdigodoNCM: TStringField
      FieldName = 'C'#243'digo do NCM'
      FixedChar = True
      Size = 12
    end
    object sdsProdutosLetradoNCM: TStringField
      FieldName = 'Letra do NCM'
      FixedChar = True
      Size = 1
    end
    object sdsProdutosReal: TFloatField
      FieldName = 'Real'
    end
    object sdsProdutosVirtual: TFloatField
      FieldName = 'Virtual'
    end
    object sdsProdutosMnimo: TFloatField
      FieldName = 'M'#237'nimo'
    end
    object sdsProdutosMximo: TFloatField
      FieldName = 'M'#225'ximo'
    end
    object sdsProdutosMdiadeVendas: TFloatField
      FieldName = 'M'#233'dia de Vendas'
    end
    object sdsProdutosMdiadeFabricao: TFloatField
      FieldName = 'M'#233'dia de Fabrica'#231#227'o'
    end
    object sdsProdutosLoteMnimodeCompras: TFloatField
      FieldName = 'Lote M'#237'nimo de Compras'
    end
    object sdsProdutosLoteMnimodeVendas: TFloatField
      FieldName = 'Lote M'#237'nimo de Vendas'
    end
    object sdsProdutosLoteMnimodeFabricao: TFloatField
      FieldName = 'Lote M'#237'nimo de Fabrica'#231#227'o'
    end
    object sdsProdutosValordeCompra: TFloatField
      FieldName = 'Valor de Compra'
    end
    object sdsProdutosValordeVenda: TFloatField
      FieldName = 'Valor de Venda'
    end
    object sdsProdutosMargemdeVenda: TFloatField
      FieldName = 'Margem de Venda'
    end
    object sdsProdutosVendaAtacado: TFloatField
      FieldName = 'Venda Atacado'
    end
    object sdsProdutosVendaVarejo: TFloatField
      FieldName = 'Venda Varejo'
    end
    object sdsProdutosMargemAtacado: TFloatField
      FieldName = 'Margem Atacado'
    end
    object sdsProdutosMargemVarejo: TFloatField
      FieldName = 'Margem Varejo'
    end
    object sdsProdutosValordeTransferncia: TFloatField
      FieldName = 'Valor de Transfer'#234'ncia'
    end
    object sdsProdutosValorPromoo: TFloatField
      FieldName = 'Valor Promo'#231#227'o'
    end
    object sdsProdutosValidadedaPromoo: TSQLTimeStampField
      FieldName = 'Validade da Promo'#231#227'o'
    end
    object sdsProdutosValorPromooAtacado: TFloatField
      FieldName = 'Valor Promo'#231#227'o Atacado'
    end
    object sdsProdutosValidadedaPromooAtacado: TSQLTimeStampField
      FieldName = 'Validade da Promo'#231#227'o Atacado'
    end
    object sdsProdutosValorPromooVarejo: TFloatField
      FieldName = 'Valor Promo'#231#227'o Varejo'
    end
    object sdsProdutosValidadedaPromooVarejo: TSQLTimeStampField
      FieldName = 'Validade da Promo'#231#227'o Varejo'
    end
    object sdsProdutosltimaAtualizaodoProduto: TSQLTimeStampField
      FieldName = #218'ltima Atualiza'#231#227'o do Produto'
    end
    object sdsProdutosltimaAtualizaodeVenda: TSQLTimeStampField
      FieldName = #218'ltima Atualiza'#231#227'o de Venda'
    end
    object sdsProdutosQuantidadeporVolume: TFloatField
      FieldName = 'Quantidade por Volume'
    end
    object sdsProdutosNmerodoDesenho: TStringField
      FieldName = 'N'#250'mero do Desenho'
      FixedChar = True
      Size = 15
    end
    object sdsProdutosEspecificaesTcnicas: TMemoField
      FieldName = 'Especifica'#231#245'es T'#233'cnicas'
      BlobType = ftMemo
      Size = 1
    end
    object sdsProdutosCdigodeBarras: TStringField
      FieldName = 'C'#243'digo de Barras'
      FixedChar = True
      Size = 16
    end
    object sdsProdutosListadePreos: TBooleanField
      FieldName = 'Lista de Pre'#231'os'
      Required = True
    end
    object sdsProdutosComisso: TFloatField
      FieldName = 'Comiss'#227'o'
    end
    object sdsProdutosMoedaVenda: TStringField
      FieldName = 'Moeda Venda'
      Required = True
      FixedChar = True
      Size = 10
    end
    object sdsProdutosCondiodePagamento: TSmallintField
      FieldName = 'Condi'#231#227'o de Pagamento'
    end
    object sdsProdutosMargemdeVendaSubstituioTr: TFloatField
      FieldName = 'Margem de Venda Substitui'#231#227'o Tr'
    end
    object sdsProdutosValordosMateriais: TFloatField
      FieldName = 'Valor dos Materiais'
    end
    object sdsProdutosValordaModeObra: TFloatField
      FieldName = 'Valor da M'#227'o de Obra'
    end
    object sdsProdutosCentro: TIntegerField
      FieldName = 'Centro'
    end
    object sdsProdutosOutrasInformaes01: TStringField
      FieldName = 'Outras Informa'#231#245'es01'
      FixedChar = True
      Size = 30
    end
    object sdsProdutosOutrasInformaes02: TStringField
      FieldName = 'Outras Informa'#231#245'es02'
      FixedChar = True
      Size = 30
    end
    object sdsProdutosOutrasInformaes03: TStringField
      FieldName = 'Outras Informa'#231#245'es03'
      FixedChar = True
      Size = 30
    end
    object sdsProdutosOutrasInformaes04: TStringField
      FieldName = 'Outras Informa'#231#245'es04'
      FixedChar = True
      Size = 30
    end
    object sdsProdutosOutrasInformaes05: TStringField
      FieldName = 'Outras Informa'#231#245'es05'
      FixedChar = True
      Size = 30
    end
    object sdsProdutosOutrasInformaes06: TStringField
      FieldName = 'Outras Informa'#231#245'es06'
      FixedChar = True
      Size = 30
    end
    object sdsProdutosOutrasInformaes07: TStringField
      FieldName = 'Outras Informa'#231#245'es07'
      FixedChar = True
      Size = 30
    end
    object sdsProdutosOutrasInformaes08: TStringField
      FieldName = 'Outras Informa'#231#245'es08'
      FixedChar = True
      Size = 30
    end
    object sdsProdutosOutrasInformaes09: TStringField
      FieldName = 'Outras Informa'#231#245'es09'
      FixedChar = True
      Size = 30
    end
    object sdsProdutosOutrasInformaes10: TStringField
      FieldName = 'Outras Informa'#231#245'es10'
      FixedChar = True
      Size = 30
    end
    object sdsProdutosArquivocomEspecificaoTcni: TStringField
      FieldName = 'Arquivo com Especifica'#231#227'o T'#233'cni'
      FixedChar = True
      Size = 100
    end
    object sdsProdutosFatordeConversodeUnidadep: TFloatField
      FieldName = 'Fator de Convers'#227'o de Unidade p'
      Required = True
    end
    object sdsProdutosObrigatrioLicena: TBooleanField
      FieldName = 'Obrigat'#243'rio Licen'#231'a'
      Required = True
    end
    object sdsProdutosFoto: TBlobField
      FieldName = 'Foto'
      Size = 1
    end
    object sdsProdutosDatadoInventrio: TSQLTimeStampField
      FieldName = 'Data do Invent'#225'rio'
    end
    object sdsProdutosVendedor01: TSmallintField
      FieldName = 'Vendedor01'
    end
    object sdsProdutosValordeCompraOriginal: TFloatField
      FieldName = 'Valor de Compra Original'
    end
    object sdsProdutosValordeDescontonaCompra: TFloatField
      FieldName = 'Valor de Desconto na Compra'
    end
    object sdsProdutosUnidadeVlrVenda: TStringField
      FieldName = 'UnidadeVlrVenda'
      FixedChar = True
      Size = 3
    end
    object sdsProdutosArea: TFloatField
      FieldName = 'Area'
    end
    object sdsProdutosCODIPI: TIntegerField
      FieldName = 'CODIPI'
    end
    object sdsProdutosLOCPAD: TStringField
      FieldName = 'LOCPAD'
      FixedChar = True
      Size = 12
    end
    object sdsProdutosCUSPRO: TFloatField
      FieldName = 'CUSPRO'
    end
    object sdsProdutosPerDmx: TFloatField
      FieldName = 'PerDmx'
    end
    object sdsProdutosICMVEN: TFloatField
      FieldName = 'ICMVEN'
    end
    object sdsProdutosICMCOM: TFloatField
      FieldName = 'ICMCOM'
    end
    object sdsProdutosUMEPRO: TStringField
      FieldName = 'UMEPRO'
      FixedChar = True
      Size = 3
    end
    object sdsProdutoscd_conta_contabil: TIntegerField
      FieldName = 'cd_conta_contabil'
    end
    object sdsProdutoscd_formacalculo_icmsst: TIntegerField
      FieldName = 'cd_formacalculo_icmsst'
    end
    object sdsProdutospr_aliquota_int_icmsst: TFMTBCDField
      FieldName = 'pr_aliquota_int_icmsst'
      Precision = 19
      Size = 8
    end
    object sdsProdutosultimo_lote: TStringField
      FieldName = 'ultimo_lote'
      FixedChar = True
      Size = 25
    end
    object sdsProdutosultima_serie: TStringField
      FieldName = 'ultima_serie'
      FixedChar = True
      Size = 35
    end
    object sdsProdutospeso_embalagem: TFMTBCDField
      FieldName = 'peso_embalagem'
      Precision = 19
      Size = 8
    end
    object sdsProdutossit_trib_ipi: TStringField
      FieldName = 'sit_trib_ipi'
      FixedChar = True
      Size = 2
    end
    object sdsProdutossit_trib_pis: TStringField
      FieldName = 'sit_trib_pis'
      FixedChar = True
      Size = 2
    end
    object sdsProdutossit_trib_cofins: TStringField
      FieldName = 'sit_trib_cofins'
      FixedChar = True
      Size = 2
    end
    object sdsProdutosproduto_configuravel: TBooleanField
      FieldName = 'produto_configuravel'
      Required = True
    end
    object sdsProdutosprodpeso: TStringField
      FieldName = 'prodpeso'
      FixedChar = True
      Size = 1
    end
    object sdsProdutosdata_integracao: TSQLTimeStampField
      FieldName = 'data_integracao'
    end
    object sdsProdutosaliquota_diferenciada: TFloatField
      FieldName = 'aliquota_diferenciada'
    end
    object sdsProdutosconteudo_importacao: TFloatField
      FieldName = 'conteudo_importacao'
    end
    object sdsProdutosproduto_importacao: TBooleanField
      FieldName = 'produto_importacao'
    end
    object sdsProdutosgera_fci: TBooleanField
      FieldName = 'gera_fci'
    end
    object sdsProdutosnr_controle_fci: TStringField
      FieldName = 'nr_controle_fci'
      FixedChar = True
      Size = 36
    end
  end
  object dspProdutos: TDataSetProvider
    DataSet = sdsProdutos
    Left = 768
    Top = 128
  end
  object cdsProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutos'
    Left = 832
    Top = 128
    object cdsProdutosCodigo: TStringField
      FieldName = 'Codigo'
      Required = True
      FixedChar = True
    end
    object cdsProdutosNomeProduto: TStringField
      FieldName = 'NomeProduto'
      Required = True
      FixedChar = True
      Size = 122
    end
    object cdsProdutosTipo: TStringField
      FieldName = 'Tipo'
      Required = True
      FixedChar = True
    end
    object cdsProdutosLinha01: TStringField
      FieldName = 'Linha01'
      Required = True
      FixedChar = True
      Size = 40
    end
    object cdsProdutosLinha02: TStringField
      FieldName = 'Linha02'
      FixedChar = True
      Size = 40
    end
    object cdsProdutosLinha03: TStringField
      FieldName = 'Linha03'
      FixedChar = True
      Size = 40
    end
    object cdsProdutosMarca: TStringField
      FieldName = 'Marca'
      FixedChar = True
      Size = 15
    end
    object cdsProdutosUnidade: TStringField
      FieldName = 'Unidade'
      Required = True
      FixedChar = True
      Size = 3
    end
    object cdsProdutosUnidadeEntrada: TStringField
      FieldName = 'UnidadeEntrada'
      FixedChar = True
      Size = 3
    end
    object cdsProdutosUnidadeAuxiliar: TStringField
      FieldName = 'UnidadeAuxiliar'
      FixedChar = True
      Size = 3
    end
    object cdsProdutosUnidadeAuxiliar1: TStringField
      FieldName = 'UnidadeAuxiliar1'
      FixedChar = True
      Size = 3
    end
    object cdsProdutosUnidadedeCompra: TStringField
      FieldName = 'Unidade de Compra'
      FixedChar = True
      Size = 3
    end
    object cdsProdutosAtacadosomentesemaiorque: TIntegerField
      FieldName = 'Atacado somente se maior que'
    end
    object cdsProdutosPesoLquido: TFloatField
      FieldName = 'Peso L'#237'quido'
    end
    object cdsProdutosLocalizaodoProduto: TStringField
      FieldName = 'Localiza'#231#227'o do Produto'
      FixedChar = True
      Size = 40
    end
    object cdsProdutosDiasparaReposio: TSmallintField
      FieldName = 'Dias para Reposi'#231#227'o'
    end
    object cdsProdutosMesesdegarantia: TSmallintField
      FieldName = 'Meses de garantia'
    end
    object cdsProdutosGrupo: TIntegerField
      FieldName = 'Grupo'
      Required = True
    end
    object cdsProdutosSubgrupo: TIntegerField
      FieldName = 'Subgrupo'
    end
    object cdsProdutosSituaodoProduto: TStringField
      FieldName = 'Situa'#231#227'o do Produto'
      FixedChar = True
    end
    object cdsProdutosSituaoTributria: TStringField
      FieldName = 'Situa'#231#227'o Tribut'#225'ria'
      FixedChar = True
      Size = 5
    end
    object cdsProdutosCdigodoNCM: TStringField
      FieldName = 'C'#243'digo do NCM'
      FixedChar = True
      Size = 12
    end
    object cdsProdutosLetradoNCM: TStringField
      FieldName = 'Letra do NCM'
      FixedChar = True
      Size = 1
    end
    object cdsProdutosReal: TFloatField
      FieldName = 'Real'
    end
    object cdsProdutosVirtual: TFloatField
      FieldName = 'Virtual'
    end
    object cdsProdutosMnimo: TFloatField
      FieldName = 'M'#237'nimo'
    end
    object cdsProdutosMximo: TFloatField
      FieldName = 'M'#225'ximo'
    end
    object cdsProdutosMdiadeVendas: TFloatField
      FieldName = 'M'#233'dia de Vendas'
    end
    object cdsProdutosMdiadeFabricao: TFloatField
      FieldName = 'M'#233'dia de Fabrica'#231#227'o'
    end
    object cdsProdutosLoteMnimodeCompras: TFloatField
      FieldName = 'Lote M'#237'nimo de Compras'
    end
    object cdsProdutosLoteMnimodeVendas: TFloatField
      FieldName = 'Lote M'#237'nimo de Vendas'
    end
    object cdsProdutosLoteMnimodeFabricao: TFloatField
      FieldName = 'Lote M'#237'nimo de Fabrica'#231#227'o'
    end
    object cdsProdutosValordeCompra: TFloatField
      FieldName = 'Valor de Compra'
    end
    object cdsProdutosValordeVenda: TFloatField
      FieldName = 'Valor de Venda'
    end
    object cdsProdutosMargemdeVenda: TFloatField
      FieldName = 'Margem de Venda'
    end
    object cdsProdutosVendaAtacado: TFloatField
      FieldName = 'Venda Atacado'
    end
    object cdsProdutosVendaVarejo: TFloatField
      FieldName = 'Venda Varejo'
    end
    object cdsProdutosMargemAtacado: TFloatField
      FieldName = 'Margem Atacado'
    end
    object cdsProdutosMargemVarejo: TFloatField
      FieldName = 'Margem Varejo'
    end
    object cdsProdutosValordeTransferncia: TFloatField
      FieldName = 'Valor de Transfer'#234'ncia'
    end
    object cdsProdutosValorPromoo: TFloatField
      FieldName = 'Valor Promo'#231#227'o'
    end
    object cdsProdutosValidadedaPromoo: TSQLTimeStampField
      FieldName = 'Validade da Promo'#231#227'o'
    end
    object cdsProdutosValorPromooAtacado: TFloatField
      FieldName = 'Valor Promo'#231#227'o Atacado'
    end
    object cdsProdutosValidadedaPromooAtacado: TSQLTimeStampField
      FieldName = 'Validade da Promo'#231#227'o Atacado'
    end
    object cdsProdutosValorPromooVarejo: TFloatField
      FieldName = 'Valor Promo'#231#227'o Varejo'
    end
    object cdsProdutosValidadedaPromooVarejo: TSQLTimeStampField
      FieldName = 'Validade da Promo'#231#227'o Varejo'
    end
    object cdsProdutosltimaAtualizaodoProduto: TSQLTimeStampField
      FieldName = #218'ltima Atualiza'#231#227'o do Produto'
    end
    object cdsProdutosltimaAtualizaodeVenda: TSQLTimeStampField
      FieldName = #218'ltima Atualiza'#231#227'o de Venda'
    end
    object cdsProdutosQuantidadeporVolume: TFloatField
      FieldName = 'Quantidade por Volume'
    end
    object cdsProdutosNmerodoDesenho: TStringField
      FieldName = 'N'#250'mero do Desenho'
      FixedChar = True
      Size = 15
    end
    object cdsProdutosEspecificaesTcnicas: TMemoField
      FieldName = 'Especifica'#231#245'es T'#233'cnicas'
      BlobType = ftMemo
      Size = 1
    end
    object cdsProdutosCdigodeBarras: TStringField
      FieldName = 'C'#243'digo de Barras'
      FixedChar = True
      Size = 16
    end
    object cdsProdutosListadePreos: TBooleanField
      FieldName = 'Lista de Pre'#231'os'
      Required = True
    end
    object cdsProdutosComisso: TFloatField
      FieldName = 'Comiss'#227'o'
    end
    object cdsProdutosMoedaVenda: TStringField
      FieldName = 'Moeda Venda'
      Required = True
      FixedChar = True
      Size = 10
    end
    object cdsProdutosCondiodePagamento: TSmallintField
      FieldName = 'Condi'#231#227'o de Pagamento'
    end
    object cdsProdutosMargemdeVendaSubstituioTr: TFloatField
      FieldName = 'Margem de Venda Substitui'#231#227'o Tr'
    end
    object cdsProdutosValordosMateriais: TFloatField
      FieldName = 'Valor dos Materiais'
    end
    object cdsProdutosValordaModeObra: TFloatField
      FieldName = 'Valor da M'#227'o de Obra'
    end
    object cdsProdutosCentro: TIntegerField
      FieldName = 'Centro'
    end
    object cdsProdutosOutrasInformaes01: TStringField
      FieldName = 'Outras Informa'#231#245'es01'
      FixedChar = True
      Size = 30
    end
    object cdsProdutosOutrasInformaes02: TStringField
      FieldName = 'Outras Informa'#231#245'es02'
      FixedChar = True
      Size = 30
    end
    object cdsProdutosOutrasInformaes03: TStringField
      FieldName = 'Outras Informa'#231#245'es03'
      FixedChar = True
      Size = 30
    end
    object cdsProdutosOutrasInformaes04: TStringField
      FieldName = 'Outras Informa'#231#245'es04'
      FixedChar = True
      Size = 30
    end
    object cdsProdutosOutrasInformaes05: TStringField
      FieldName = 'Outras Informa'#231#245'es05'
      FixedChar = True
      Size = 30
    end
    object cdsProdutosOutrasInformaes06: TStringField
      FieldName = 'Outras Informa'#231#245'es06'
      FixedChar = True
      Size = 30
    end
    object cdsProdutosOutrasInformaes07: TStringField
      FieldName = 'Outras Informa'#231#245'es07'
      FixedChar = True
      Size = 30
    end
    object cdsProdutosOutrasInformaes08: TStringField
      FieldName = 'Outras Informa'#231#245'es08'
      FixedChar = True
      Size = 30
    end
    object cdsProdutosOutrasInformaes09: TStringField
      FieldName = 'Outras Informa'#231#245'es09'
      FixedChar = True
      Size = 30
    end
    object cdsProdutosOutrasInformaes10: TStringField
      FieldName = 'Outras Informa'#231#245'es10'
      FixedChar = True
      Size = 30
    end
    object cdsProdutosArquivocomEspecificaoTcni: TStringField
      FieldName = 'Arquivo com Especifica'#231#227'o T'#233'cni'
      FixedChar = True
      Size = 100
    end
    object cdsProdutosFatordeConversodeUnidadep: TFloatField
      FieldName = 'Fator de Convers'#227'o de Unidade p'
      Required = True
    end
    object cdsProdutosObrigatrioLicena: TBooleanField
      FieldName = 'Obrigat'#243'rio Licen'#231'a'
      Required = True
    end
    object cdsProdutosFoto: TBlobField
      FieldName = 'Foto'
      Size = 1
    end
    object cdsProdutosDatadoInventrio: TSQLTimeStampField
      FieldName = 'Data do Invent'#225'rio'
    end
    object cdsProdutosVendedor01: TSmallintField
      FieldName = 'Vendedor01'
    end
    object cdsProdutosValordeCompraOriginal: TFloatField
      FieldName = 'Valor de Compra Original'
    end
    object cdsProdutosValordeDescontonaCompra: TFloatField
      FieldName = 'Valor de Desconto na Compra'
    end
    object cdsProdutosUnidadeVlrVenda: TStringField
      FieldName = 'UnidadeVlrVenda'
      FixedChar = True
      Size = 3
    end
    object cdsProdutosArea: TFloatField
      FieldName = 'Area'
    end
    object cdsProdutosCODIPI: TIntegerField
      FieldName = 'CODIPI'
    end
    object cdsProdutosLOCPAD: TStringField
      FieldName = 'LOCPAD'
      FixedChar = True
      Size = 12
    end
    object cdsProdutosCUSPRO: TFloatField
      FieldName = 'CUSPRO'
    end
    object cdsProdutosPerDmx: TFloatField
      FieldName = 'PerDmx'
    end
    object cdsProdutosICMVEN: TFloatField
      FieldName = 'ICMVEN'
    end
    object cdsProdutosICMCOM: TFloatField
      FieldName = 'ICMCOM'
    end
    object cdsProdutosUMEPRO: TStringField
      FieldName = 'UMEPRO'
      FixedChar = True
      Size = 3
    end
    object cdsProdutoscd_conta_contabil: TIntegerField
      FieldName = 'cd_conta_contabil'
    end
    object cdsProdutoscd_formacalculo_icmsst: TIntegerField
      FieldName = 'cd_formacalculo_icmsst'
    end
    object cdsProdutospr_aliquota_int_icmsst: TFMTBCDField
      FieldName = 'pr_aliquota_int_icmsst'
      Precision = 19
      Size = 8
    end
    object cdsProdutosultimo_lote: TStringField
      FieldName = 'ultimo_lote'
      FixedChar = True
      Size = 25
    end
    object cdsProdutosultima_serie: TStringField
      FieldName = 'ultima_serie'
      FixedChar = True
      Size = 35
    end
    object cdsProdutospeso_embalagem: TFMTBCDField
      FieldName = 'peso_embalagem'
      Precision = 19
      Size = 8
    end
    object cdsProdutossit_trib_ipi: TStringField
      FieldName = 'sit_trib_ipi'
      FixedChar = True
      Size = 2
    end
    object cdsProdutossit_trib_pis: TStringField
      FieldName = 'sit_trib_pis'
      FixedChar = True
      Size = 2
    end
    object cdsProdutossit_trib_cofins: TStringField
      FieldName = 'sit_trib_cofins'
      FixedChar = True
      Size = 2
    end
    object cdsProdutosproduto_configuravel: TBooleanField
      FieldName = 'produto_configuravel'
      Required = True
    end
    object cdsProdutosprodpeso: TStringField
      FieldName = 'prodpeso'
      FixedChar = True
      Size = 1
    end
    object cdsProdutosdata_integracao: TSQLTimeStampField
      FieldName = 'data_integracao'
    end
    object cdsProdutosaliquota_diferenciada: TFloatField
      FieldName = 'aliquota_diferenciada'
    end
    object cdsProdutosconteudo_importacao: TFloatField
      FieldName = 'conteudo_importacao'
    end
    object cdsProdutosproduto_importacao: TBooleanField
      FieldName = 'produto_importacao'
    end
    object cdsProdutosgera_fci: TBooleanField
      FieldName = 'gera_fci'
    end
    object cdsProdutosnr_controle_fci: TStringField
      FieldName = 'nr_controle_fci'
      FixedChar = True
      Size = 36
    end
  end
  object dsEmpresa: TDataSource
    DataSet = cdsEmpresa
    Left = 872
    Top = 176
  end
  object sdsEmpresa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT EMP.*'#13#10'FROM dbo.Empresas EMP'#13#10'where (tipo = '#39'Cliente'#39#13#10'  ' +
      'or tipo = '#39'Ambos'#39')'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase_EBS.Conexao_MSSQL
    Left = 728
    Top = 176
    object sdsEmpresaApel: TStringField
      FieldName = 'Apel'
      Required = True
      FixedChar = True
      Size = 15
    end
    object sdsEmpresaRazo: TStringField
      FieldName = 'Raz'#227'o'
      Required = True
      FixedChar = True
      Size = 90
    end
    object sdsEmpresaTipo: TStringField
      FieldName = 'Tipo'
      Required = True
      FixedChar = True
      Size = 15
    end
    object sdsEmpresaCadastro: TSQLTimeStampField
      FieldName = 'Cadastro'
      Required = True
    end
    object sdsEmpresaPessoa: TStringField
      FieldName = 'Pessoa'
      Required = True
      FixedChar = True
      Size = 8
    end
    object sdsEmpresaCNPJCPF: TStringField
      FieldName = 'CNPJ/CPF'
      FixedChar = True
      Size = 18
    end
    object sdsEmpresaIEstRG: TStringField
      FieldName = 'IEst/RG'
      FixedChar = True
      Size = 18
    end
    object sdsEmpresaCCM: TStringField
      FieldName = 'CCM'
      FixedChar = True
    end
    object sdsEmpresaRamo: TIntegerField
      FieldName = 'Ramo'
      Required = True
    end
    object sdsEmpresaEndereo: TStringField
      FieldName = 'Endere'#231'o'
      FixedChar = True
      Size = 70
    end
    object sdsEmpresaBairro: TStringField
      FieldName = 'Bairro'
      FixedChar = True
    end
    object sdsEmpresaCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 9
    end
    object sdsEmpresaCidade: TStringField
      FieldName = 'Cidade'
      FixedChar = True
      Size = 30
    end
    object sdsEmpresaEstado: TStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 2
    end
    object sdsEmpresaSuframa: TStringField
      FieldName = 'Suframa'
      FixedChar = True
      Size = 15
    end
    object sdsEmpresaRegio: TStringField
      FieldName = 'Regi'#227'o'
      FixedChar = True
      Size = 4
    end
    object sdsEmpresaPas: TStringField
      FieldName = 'Pa'#237's'
      FixedChar = True
      Size = 3
    end
    object sdsEmpresaFone1: TStringField
      FieldName = 'Fone1'
      FixedChar = True
      Size = 15
    end
    object sdsEmpresaRamal1: TStringField
      FieldName = 'Ramal1'
      FixedChar = True
      Size = 10
    end
    object sdsEmpresaFone2: TStringField
      FieldName = 'Fone2'
      FixedChar = True
      Size = 15
    end
    object sdsEmpresaRamal2: TStringField
      FieldName = 'Ramal2'
      FixedChar = True
      Size = 10
    end
    object sdsEmpresaFax: TStringField
      FieldName = 'Fax'
      FixedChar = True
      Size = 15
    end
    object sdsEmpresaContato: TStringField
      FieldName = 'Contato'
      FixedChar = True
      Size = 50
    end
    object sdsEmpresaDpto: TStringField
      FieldName = 'Dpto'
      FixedChar = True
      Size = 40
    end
    object sdsEmpresaVendedor: TIntegerField
      FieldName = 'Vendedor'
    end
    object sdsEmpresaCondPag: TSmallintField
      FieldName = 'CondPag'
    end
    object sdsEmpresaCrdito: TFMTBCDField
      FieldName = 'Cr'#233'dito'
      Precision = 19
      Size = 8
    end
    object sdsEmpresaTransp: TIntegerField
      FieldName = 'Transp'
    end
    object sdsEmpresaemail: TStringField
      FieldName = 'e-mail'
      FixedChar = True
      Size = 50
    end
    object sdsEmpresaSite: TStringField
      FieldName = 'Site'
      FixedChar = True
      Size = 80
    end
    object sdsEmpresaBloqueado: TStringField
      FieldName = 'Bloqueado'
      FixedChar = True
      Size = 80
    end
    object sdsEmpresaObsFinanceira: TMemoField
      FieldName = 'Obs Financeira'
      BlobType = ftMemo
      Size = 1
    end
    object sdsEmpresaObsGerais: TMemoField
      FieldName = 'Obs Gerais'
      BlobType = ftMemo
      Size = 1
    end
    object sdsEmpresaObservaesGlobais: TMemoField
      FieldName = 'Observa'#231#245'es Globais'
      BlobType = ftMemo
      Size = 1
    end
    object sdsEmpresaHora: TStringField
      FieldName = 'Hora'
      FixedChar = True
      Size = 5
    end
    object sdsEmpresaHora2: TStringField
      FieldName = 'Hora2'
      FixedChar = True
      Size = 5
    end
    object sdsEmpresaTabeladePreos: TIntegerField
      FieldName = 'Tabela de Pre'#231'os'
    end
    object sdsEmpresaVendedor2: TIntegerField
      FieldName = 'Vendedor2'
    end
    object sdsEmpresaVendedor3: TIntegerField
      FieldName = 'Vendedor3'
    end
    object sdsEmpresaltimaAtualizao: TSQLTimeStampField
      FieldName = #218'ltima Atualiza'#231#227'o'
    end
    object sdsEmpresaltimaAtualizaoHora: TSQLTimeStampField
      FieldName = #218'ltima Atualiza'#231#227'o Hora'
    end
    object sdsEmpresaProcedncia: TSmallintField
      FieldName = 'Proced'#234'ncia'
    end
    object sdsEmpresaClienteBloqueado: TBooleanField
      FieldName = 'Cliente Bloqueado'
      Required = True
    end
    object sdsEmpresaTipodeCompra: TStringField
      FieldName = 'Tipo de Compra'
      FixedChar = True
      Size = 8
    end
    object sdsEmpresaConta: TIntegerField
      FieldName = 'Conta'
    end
    object sdsEmpresaBanco: TIntegerField
      FieldName = 'Banco'
    end
    object sdsEmpresaContaContbilCliente: TIntegerField
      FieldName = 'Conta Cont'#225'bil Cliente'
    end
    object sdsEmpresaContaContbilFornecedor: TIntegerField
      FieldName = 'Conta Cont'#225'bil Fornecedor'
    end
    object sdsEmpresaAgncia: TStringField
      FieldName = 'Ag'#234'ncia'
      FixedChar = True
      Size = 5
    end
    object sdsEmpresaDgitodaAgncia: TStringField
      FieldName = 'D'#237'gito da Ag'#234'ncia'
      FixedChar = True
      Size = 1
    end
    object sdsEmpresaContaCorrente: TStringField
      FieldName = 'Conta Corrente'
      FixedChar = True
      Size = 13
    end
    object sdsEmpresaDgitodaContaCorrente: TStringField
      FieldName = 'D'#237'gito da Conta Corrente'
      FixedChar = True
      Size = 2
    end
    object sdsEmpresaDescontoporPontualidade: TFloatField
      FieldName = 'Desconto por Pontualidade'
    end
    object sdsEmpresaDescPorCliente: TFloatField
      FieldName = 'DescPorCliente'
    end
    object sdsEmpresaFixVar: TStringField
      FieldName = 'FixVar'
      Required = True
      FixedChar = True
      Size = 8
    end
    object sdsEmpresaAbrEmp: TStringField
      FieldName = 'AbrEmp'
      FixedChar = True
      Size = 30
    end
    object sdsEmpresaPercFrete: TFloatField
      FieldName = 'PercFrete'
    end
    object sdsEmpresaPercEmbalagem: TFloatField
      FieldName = 'PercEmbalagem'
    end
    object sdsEmpresaBCOPGT: TStringField
      FieldName = 'BCOPGT'
      FixedChar = True
      Size = 3
    end
    object sdsEmpresaCONMRE: TStringField
      FieldName = 'CONMRE'
      FixedChar = True
      Size = 1
    end
    object sdsEmpresaVariasTabelas: TBooleanField
      FieldName = 'VariasTabelas'
      Required = True
    end
    object sdsEmpresaClienteIntFiscal: TIntegerField
      FieldName = 'ClienteIntFiscal'
    end
    object sdsEmpresaFornecedorIntFiscal: TIntegerField
      FieldName = 'FornecedorIntFiscal'
    end
    object sdsEmpresaCodFoxDados: TIntegerField
      FieldName = 'CodFoxDados'
    end
    object sdsEmpresacalcula_pis: TBooleanField
      FieldName = 'calcula_pis'
      Required = True
    end
    object sdsEmpresacalcula_cofins: TBooleanField
      FieldName = 'calcula_cofins'
      Required = True
    end
    object sdsEmpresacontribuinte_icms: TBooleanField
      FieldName = 'contribuinte_icms'
      Required = True
    end
    object sdsEmpresachk_simples_nacional: TBooleanField
      FieldName = 'chk_simples_nacional'
      Required = True
    end
    object sdsEmpresacd_municipio_ibge: TIntegerField
      FieldName = 'cd_municipio_ibge'
    end
    object sdsEmpresacd_cnae_fiscal: TIntegerField
      FieldName = 'cd_cnae_fiscal'
    end
    object sdsEmpresacod_exportador: TStringField
      FieldName = 'cod_exportador'
      FixedChar = True
      Size = 60
    end
    object sdsEmpresacodigo_formapagamento: TIntegerField
      FieldName = 'codigo_formapagamento'
    end
    object sdsEmpresaper_credito_icms: TFloatField
      FieldName = 'per_credito_icms'
    end
    object sdsEmpresaemail_nfe: TStringField
      FieldName = 'email_nfe'
      FixedChar = True
      Size = 255
    end
    object sdsEmpresadescontarbaseST_SUFRAMA: TBooleanField
      FieldName = 'descontarbaseST_SUFRAMA'
      Required = True
    end
    object sdsEmpresaprorural: TIntegerField
      FieldName = 'prorural'
    end
    object sdsEmpresatplograd: TStringField
      FieldName = 'tplograd'
      FixedChar = True
      Size = 4
    end
    object sdsEmpresacomplem: TStringField
      FieldName = 'complem'
      FixedChar = True
      Size = 50
    end
    object sdsEmpresaddd_cel: TStringField
      FieldName = 'ddd_cel'
      FixedChar = True
      Size = 2
    end
    object sdsEmpresacelular: TStringField
      FieldName = 'celular'
      FixedChar = True
      Size = 9
    end
    object sdsEmpresadata_integracao: TSQLTimeStampField
      FieldName = 'data_integracao'
    end
    object sdsEmpresaprod_rural: TBooleanField
      FieldName = 'prod_rural'
      Required = True
    end
    object sdsEmpresatp_doc_RG_IE: TStringField
      FieldName = 'tp_doc_RG_IE'
      FixedChar = True
      Size = 11
    end
    object sdsEmpresaper_pis: TFloatField
      FieldName = 'per_pis'
    end
    object sdsEmpresaper_cofins: TFloatField
      FieldName = 'per_cofins'
    end
    object sdsEmpresaper_ret_csll: TFloatField
      FieldName = 'per_ret_csll'
    end
    object sdsEmpresaper_ret_ir: TFloatField
      FieldName = 'per_ret_ir'
    end
    object sdsEmpresareter_pis_cof_cs_ir_produto: TBooleanField
      FieldName = 'reter_pis_cof_cs_ir_produto'
    end
    object sdsEmpresaObs_para_Nota_Fiscal: TMemoField
      FieldName = 'Obs_para_Nota_Fiscal'
      BlobType = ftMemo
      Size = 1
    end
    object sdsEmpresadata_base_1: TSQLTimeStampField
      FieldName = 'data_base_1'
    end
    object sdsEmpresadata_base_2: TSQLTimeStampField
      FieldName = 'data_base_2'
    end
    object sdsEmpresaindice_data_base_1: TStringField
      FieldName = 'indice_data_base_1'
      FixedChar = True
      Size = 10
    end
    object sdsEmpresaindice_data_base_2: TStringField
      FieldName = 'indice_data_base_2'
      FixedChar = True
      Size = 10
    end
    object sdsEmpresanro_endereco: TStringField
      FieldName = 'nro_endereco'
      FixedChar = True
      Size = 60
    end
  end
  object dspEmpresa: TDataSetProvider
    DataSet = sdsEmpresa
    Left = 776
    Top = 176
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'RAZ'#195'O'
    Params = <>
    ProviderName = 'dspEmpresa'
    Left = 832
    Top = 176
    object cdsEmpresaApel: TStringField
      FieldName = 'Apel'
      Required = True
      FixedChar = True
      Size = 15
    end
    object cdsEmpresaRazo: TStringField
      FieldName = 'Raz'#227'o'
      Required = True
      FixedChar = True
      Size = 90
    end
    object cdsEmpresaTipo: TStringField
      FieldName = 'Tipo'
      Required = True
      FixedChar = True
      Size = 15
    end
    object cdsEmpresaCadastro: TSQLTimeStampField
      FieldName = 'Cadastro'
      Required = True
    end
    object cdsEmpresaPessoa: TStringField
      FieldName = 'Pessoa'
      Required = True
      FixedChar = True
      Size = 8
    end
    object cdsEmpresaCNPJCPF: TStringField
      FieldName = 'CNPJ/CPF'
      FixedChar = True
      Size = 18
    end
    object cdsEmpresaIEstRG: TStringField
      FieldName = 'IEst/RG'
      FixedChar = True
      Size = 18
    end
    object cdsEmpresaCCM: TStringField
      FieldName = 'CCM'
      FixedChar = True
    end
    object cdsEmpresaRamo: TIntegerField
      FieldName = 'Ramo'
      Required = True
    end
    object cdsEmpresaEndereo: TStringField
      FieldName = 'Endere'#231'o'
      FixedChar = True
      Size = 70
    end
    object cdsEmpresaBairro: TStringField
      FieldName = 'Bairro'
      FixedChar = True
    end
    object cdsEmpresaCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 9
    end
    object cdsEmpresaCidade: TStringField
      FieldName = 'Cidade'
      FixedChar = True
      Size = 30
    end
    object cdsEmpresaEstado: TStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 2
    end
    object cdsEmpresaSuframa: TStringField
      FieldName = 'Suframa'
      FixedChar = True
      Size = 15
    end
    object cdsEmpresaRegio: TStringField
      FieldName = 'Regi'#227'o'
      FixedChar = True
      Size = 4
    end
    object cdsEmpresaPas: TStringField
      FieldName = 'Pa'#237's'
      FixedChar = True
      Size = 3
    end
    object cdsEmpresaFone1: TStringField
      FieldName = 'Fone1'
      FixedChar = True
      Size = 15
    end
    object cdsEmpresaRamal1: TStringField
      FieldName = 'Ramal1'
      FixedChar = True
      Size = 10
    end
    object cdsEmpresaFone2: TStringField
      FieldName = 'Fone2'
      FixedChar = True
      Size = 15
    end
    object cdsEmpresaRamal2: TStringField
      FieldName = 'Ramal2'
      FixedChar = True
      Size = 10
    end
    object cdsEmpresaFax: TStringField
      FieldName = 'Fax'
      FixedChar = True
      Size = 15
    end
    object cdsEmpresaContato: TStringField
      FieldName = 'Contato'
      FixedChar = True
      Size = 50
    end
    object cdsEmpresaDpto: TStringField
      FieldName = 'Dpto'
      FixedChar = True
      Size = 40
    end
    object cdsEmpresaVendedor: TIntegerField
      FieldName = 'Vendedor'
    end
    object cdsEmpresaCondPag: TSmallintField
      FieldName = 'CondPag'
    end
    object cdsEmpresaCrdito: TFMTBCDField
      FieldName = 'Cr'#233'dito'
      Precision = 19
      Size = 8
    end
    object cdsEmpresaTransp: TIntegerField
      FieldName = 'Transp'
    end
    object cdsEmpresaemail: TStringField
      FieldName = 'e-mail'
      FixedChar = True
      Size = 50
    end
    object cdsEmpresaSite: TStringField
      FieldName = 'Site'
      FixedChar = True
      Size = 80
    end
    object cdsEmpresaBloqueado: TStringField
      FieldName = 'Bloqueado'
      FixedChar = True
      Size = 80
    end
    object cdsEmpresaObsFinanceira: TMemoField
      FieldName = 'Obs Financeira'
      BlobType = ftMemo
      Size = 1
    end
    object cdsEmpresaObsGerais: TMemoField
      FieldName = 'Obs Gerais'
      BlobType = ftMemo
      Size = 1
    end
    object cdsEmpresaObservaesGlobais: TMemoField
      FieldName = 'Observa'#231#245'es Globais'
      BlobType = ftMemo
      Size = 1
    end
    object cdsEmpresaHora: TStringField
      FieldName = 'Hora'
      FixedChar = True
      Size = 5
    end
    object cdsEmpresaHora2: TStringField
      FieldName = 'Hora2'
      FixedChar = True
      Size = 5
    end
    object cdsEmpresaTabeladePreos: TIntegerField
      FieldName = 'Tabela de Pre'#231'os'
    end
    object cdsEmpresaVendedor2: TIntegerField
      FieldName = 'Vendedor2'
    end
    object cdsEmpresaVendedor3: TIntegerField
      FieldName = 'Vendedor3'
    end
    object cdsEmpresaltimaAtualizao: TSQLTimeStampField
      FieldName = #218'ltima Atualiza'#231#227'o'
    end
    object cdsEmpresaltimaAtualizaoHora: TSQLTimeStampField
      FieldName = #218'ltima Atualiza'#231#227'o Hora'
    end
    object cdsEmpresaProcedncia: TSmallintField
      FieldName = 'Proced'#234'ncia'
    end
    object cdsEmpresaClienteBloqueado: TBooleanField
      FieldName = 'Cliente Bloqueado'
      Required = True
    end
    object cdsEmpresaTipodeCompra: TStringField
      FieldName = 'Tipo de Compra'
      FixedChar = True
      Size = 8
    end
    object cdsEmpresaConta: TIntegerField
      FieldName = 'Conta'
    end
    object cdsEmpresaBanco: TIntegerField
      FieldName = 'Banco'
    end
    object cdsEmpresaContaContbilCliente: TIntegerField
      FieldName = 'Conta Cont'#225'bil Cliente'
    end
    object cdsEmpresaContaContbilFornecedor: TIntegerField
      FieldName = 'Conta Cont'#225'bil Fornecedor'
    end
    object cdsEmpresaAgncia: TStringField
      FieldName = 'Ag'#234'ncia'
      FixedChar = True
      Size = 5
    end
    object cdsEmpresaDgitodaAgncia: TStringField
      FieldName = 'D'#237'gito da Ag'#234'ncia'
      FixedChar = True
      Size = 1
    end
    object cdsEmpresaContaCorrente: TStringField
      FieldName = 'Conta Corrente'
      FixedChar = True
      Size = 13
    end
    object cdsEmpresaDgitodaContaCorrente: TStringField
      FieldName = 'D'#237'gito da Conta Corrente'
      FixedChar = True
      Size = 2
    end
    object cdsEmpresaDescontoporPontualidade: TFloatField
      FieldName = 'Desconto por Pontualidade'
    end
    object cdsEmpresaDescPorCliente: TFloatField
      FieldName = 'DescPorCliente'
    end
    object cdsEmpresaFixVar: TStringField
      FieldName = 'FixVar'
      Required = True
      FixedChar = True
      Size = 8
    end
    object cdsEmpresaAbrEmp: TStringField
      FieldName = 'AbrEmp'
      FixedChar = True
      Size = 30
    end
    object cdsEmpresaPercFrete: TFloatField
      FieldName = 'PercFrete'
    end
    object cdsEmpresaPercEmbalagem: TFloatField
      FieldName = 'PercEmbalagem'
    end
    object cdsEmpresaBCOPGT: TStringField
      FieldName = 'BCOPGT'
      FixedChar = True
      Size = 3
    end
    object cdsEmpresaCONMRE: TStringField
      FieldName = 'CONMRE'
      FixedChar = True
      Size = 1
    end
    object cdsEmpresaVariasTabelas: TBooleanField
      FieldName = 'VariasTabelas'
      Required = True
    end
    object cdsEmpresaClienteIntFiscal: TIntegerField
      FieldName = 'ClienteIntFiscal'
    end
    object cdsEmpresaFornecedorIntFiscal: TIntegerField
      FieldName = 'FornecedorIntFiscal'
    end
    object cdsEmpresaCodFoxDados: TIntegerField
      FieldName = 'CodFoxDados'
    end
    object cdsEmpresacalcula_pis: TBooleanField
      FieldName = 'calcula_pis'
      Required = True
    end
    object cdsEmpresacalcula_cofins: TBooleanField
      FieldName = 'calcula_cofins'
      Required = True
    end
    object cdsEmpresacontribuinte_icms: TBooleanField
      FieldName = 'contribuinte_icms'
      Required = True
    end
    object cdsEmpresachk_simples_nacional: TBooleanField
      FieldName = 'chk_simples_nacional'
      Required = True
    end
    object cdsEmpresacd_municipio_ibge: TIntegerField
      FieldName = 'cd_municipio_ibge'
    end
    object cdsEmpresacd_cnae_fiscal: TIntegerField
      FieldName = 'cd_cnae_fiscal'
    end
    object cdsEmpresacod_exportador: TStringField
      FieldName = 'cod_exportador'
      FixedChar = True
      Size = 60
    end
    object cdsEmpresacodigo_formapagamento: TIntegerField
      FieldName = 'codigo_formapagamento'
    end
    object cdsEmpresaper_credito_icms: TFloatField
      FieldName = 'per_credito_icms'
    end
    object cdsEmpresaemail_nfe: TStringField
      FieldName = 'email_nfe'
      FixedChar = True
      Size = 255
    end
    object cdsEmpresadescontarbaseST_SUFRAMA: TBooleanField
      FieldName = 'descontarbaseST_SUFRAMA'
      Required = True
    end
    object cdsEmpresaprorural: TIntegerField
      FieldName = 'prorural'
    end
    object cdsEmpresatplograd: TStringField
      FieldName = 'tplograd'
      FixedChar = True
      Size = 4
    end
    object cdsEmpresacomplem: TStringField
      FieldName = 'complem'
      FixedChar = True
      Size = 50
    end
    object cdsEmpresaddd_cel: TStringField
      FieldName = 'ddd_cel'
      FixedChar = True
      Size = 2
    end
    object cdsEmpresacelular: TStringField
      FieldName = 'celular'
      FixedChar = True
      Size = 9
    end
    object cdsEmpresadata_integracao: TSQLTimeStampField
      FieldName = 'data_integracao'
    end
    object cdsEmpresaprod_rural: TBooleanField
      FieldName = 'prod_rural'
      Required = True
    end
    object cdsEmpresatp_doc_RG_IE: TStringField
      FieldName = 'tp_doc_RG_IE'
      FixedChar = True
      Size = 11
    end
    object cdsEmpresaper_pis: TFloatField
      FieldName = 'per_pis'
    end
    object cdsEmpresaper_cofins: TFloatField
      FieldName = 'per_cofins'
    end
    object cdsEmpresaper_ret_csll: TFloatField
      FieldName = 'per_ret_csll'
    end
    object cdsEmpresaper_ret_ir: TFloatField
      FieldName = 'per_ret_ir'
    end
    object cdsEmpresareter_pis_cof_cs_ir_produto: TBooleanField
      FieldName = 'reter_pis_cof_cs_ir_produto'
    end
    object cdsEmpresaObs_para_Nota_Fiscal: TMemoField
      FieldName = 'Obs_para_Nota_Fiscal'
      BlobType = ftMemo
      Size = 1
    end
    object cdsEmpresadata_base_1: TSQLTimeStampField
      FieldName = 'data_base_1'
    end
    object cdsEmpresadata_base_2: TSQLTimeStampField
      FieldName = 'data_base_2'
    end
    object cdsEmpresaindice_data_base_1: TStringField
      FieldName = 'indice_data_base_1'
      FixedChar = True
      Size = 10
    end
    object cdsEmpresaindice_data_base_2: TStringField
      FieldName = 'indice_data_base_2'
      FixedChar = True
      Size = 10
    end
    object cdsEmpresanro_endereco: TStringField
      FieldName = 'nro_endereco'
      FixedChar = True
      Size = 60
    end
  end
  object sdsDuplicatas: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT [PagRec]'#13#10'      ,[Nota]'#13#10'      ,[Empresa]'#13#10'      ,[Tipo]'#13 +
      #10'      ,[Parcela]'#13#10'      ,[Descri'#231#227'o]'#13#10'      ,[Emiss'#227'o]'#13#10'      ,' +
      '[Vencimento]'#13#10'      ,[Pagamento]'#13#10'      ,[Libera'#231#227'o]'#13#10'      ,[Va' +
      'lor Original]'#13#10'      ,[Acr'#233'scimo]'#13#10'      ,[Abatimento]'#13#10'      ,[' +
      'Banco]'#13#10'      ,[Conta]'#13#10'      ,[Centro]'#13#10'      ,[Cheque]'#13#10'      ' +
      ',[Moeda]'#13#10'      ,[Valor da Moeda]'#13#10'      ,[Controle]'#13#10'      ,[Si' +
      'tua'#231#227'o]'#13#10'      ,[Enviada]'#13#10'      ,[Marca'#231#227'o]'#13#10'      ,[Border'#244']'#13#10 +
      '      ,[Comiss'#227'o]'#13#10'      ,[Obs]'#13#10'      ,[Data Integra'#231#227'o Fato Ge' +
      'rador]'#13#10'      ,[Data Integra'#231#227'o Fato Pagamento]'#13#10'      ,[LINDIG]' +
      #13#10'      ,[Usu'#225'rio]'#13#10'      ,[Altera'#231#227'o]'#13#10'      ,[Conciliado]'#13#10'   ' +
      '   ,[Carteira]'#13#10'      ,[VlrMrD]'#13#10'      ,[PerMrD]'#13#10'      ,[SeqNos' +
      'soNumero]'#13#10'      ,[VlrDsP]'#13#10'      ,[PerJur]'#13#10'      ,[VlrJur]'#13#10'  ' +
      '    ,[CODPRJ]'#13#10'      ,[CODFPG]'#13#10'      ,[CheBan]'#13#10'      ,[CheAge]' +
      #13#10'      ,[CheEmi]'#13#10'      ,[CheCco]'#13#10'      ,[PerMul]'#13#10'      ,[Vlr' +
      'Mul]'#13#10'      ,[NOSNUM]'#13#10'      ,[AGECCE]'#13#10'      ,[CODBAR]'#13#10'      ,' +
      '[LOCPAG]'#13#10'      ,[INSTRU]'#13#10'      ,[cd_operacao_contabil]'#13#10'      ' +
      ',[registro_integrado]'#13#10'      ,[cd_operacao_baixa]'#13#10'      ,[baixa' +
      '_integrado]'#13#10'      ,[proveniente_rateio]'#13#10'      ,[vl_ipi_parcela' +
      ']'#13#10'      ,[vl_icms_substituicao_parcela]'#13#10'      ,[vl_despesas_fi' +
      'nanceiras_parcela]'#13#10'      ,[parc_origem_baixa]'#13#10'      ,[id_carte' +
      'ira]'#13#10'      ,[cod_motivo]'#13#10'      ,[desc_motivo]'#13#10'      ,[ultima_' +
      'mov_cnab]'#13#10'      ,[ultima_data_cnab]'#13#10'      ,[cd_cobranca]'#13#10'    ' +
      '  ,[seq_remessa]'#13#10'      ,[emailboleto_enviado]'#13#10'  FROM [FOX_0000' +
      '1].[dbo].[Duplicatas]'#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase_EBS.Conexao_MSSQL
    Left = 728
    Top = 240
    object sdsDuplicatasPagRec: TStringField
      FieldName = 'PagRec'
      Required = True
      FixedChar = True
      Size = 1
    end
    object sdsDuplicatasNota: TFloatField
      FieldName = 'Nota'
      Required = True
    end
    object sdsDuplicatasEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      FixedChar = True
      Size = 15
    end
    object sdsDuplicatasTipo: TStringField
      FieldName = 'Tipo'
      Required = True
      FixedChar = True
      Size = 30
    end
    object sdsDuplicatasParcela: TSmallintField
      FieldName = 'Parcela'
      Required = True
    end
    object sdsDuplicatasDescrio: TStringField
      FieldName = 'Descri'#231#227'o'
      FixedChar = True
      Size = 80
    end
    object sdsDuplicatasEmisso: TSQLTimeStampField
      FieldName = 'Emiss'#227'o'
      Required = True
    end
    object sdsDuplicatasVencimento: TSQLTimeStampField
      FieldName = 'Vencimento'
      Required = True
    end
    object sdsDuplicatasPagamento: TSQLTimeStampField
      FieldName = 'Pagamento'
    end
    object sdsDuplicatasLiberao: TSQLTimeStampField
      FieldName = 'Libera'#231#227'o'
      Required = True
    end
    object sdsDuplicatasValorOriginal: TFMTBCDField
      FieldName = 'Valor Original'
      Precision = 19
      Size = 8
    end
    object sdsDuplicatasAcrscimo: TFMTBCDField
      FieldName = 'Acr'#233'scimo'
      Precision = 19
      Size = 8
    end
    object sdsDuplicatasAbatimento: TFMTBCDField
      FieldName = 'Abatimento'
      Precision = 19
      Size = 8
    end
    object sdsDuplicatasBanco: TIntegerField
      FieldName = 'Banco'
    end
    object sdsDuplicatasConta: TIntegerField
      FieldName = 'Conta'
    end
    object sdsDuplicatasCentro: TIntegerField
      FieldName = 'Centro'
    end
    object sdsDuplicatasCheque: TIntegerField
      FieldName = 'Cheque'
    end
    object sdsDuplicatasMoeda: TStringField
      FieldName = 'Moeda'
      FixedChar = True
      Size = 10
    end
    object sdsDuplicatasValordaMoeda: TFMTBCDField
      FieldName = 'Valor da Moeda'
      Precision = 19
      Size = 8
    end
    object sdsDuplicatasControle: TStringField
      FieldName = 'Controle'
      FixedChar = True
      Size = 18
    end
    object sdsDuplicatasSituao: TStringField
      FieldName = 'Situa'#231#227'o'
      Required = True
      FixedChar = True
      Size = 30
    end
    object sdsDuplicatasEnviada: TStringField
      FieldName = 'Enviada'
      FixedChar = True
      Size = 1
    end
    object sdsDuplicatasMarcao: TBooleanField
      FieldName = 'Marca'#231#227'o'
      Required = True
    end
    object sdsDuplicatasBorder: TIntegerField
      FieldName = 'Border'#244
    end
    object sdsDuplicatasComisso: TFloatField
      FieldName = 'Comiss'#227'o'
    end
    object sdsDuplicatasObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
      Size = 1
    end
    object sdsDuplicatasDataIntegraoFatoGerador: TSQLTimeStampField
      FieldName = 'Data Integra'#231#227'o Fato Gerador'
    end
    object sdsDuplicatasDataIntegraoFatoPagamento: TSQLTimeStampField
      FieldName = 'Data Integra'#231#227'o Fato Pagamento'
    end
    object sdsDuplicatasLINDIG: TStringField
      FieldName = 'LINDIG'
      FixedChar = True
      Size = 70
    end
    object sdsDuplicatasUsurio: TStringField
      FieldName = 'Usu'#225'rio'
      FixedChar = True
    end
    object sdsDuplicatasAlterao: TSQLTimeStampField
      FieldName = 'Altera'#231#227'o'
    end
    object sdsDuplicatasConciliado: TBooleanField
      FieldName = 'Conciliado'
      Required = True
    end
    object sdsDuplicatasCarteira: TStringField
      FieldName = 'Carteira'
      FixedChar = True
      Size = 3
    end
    object sdsDuplicatasVlrMrD: TFMTBCDField
      FieldName = 'VlrMrD'
      Precision = 19
      Size = 8
    end
    object sdsDuplicatasPerMrD: TFMTBCDField
      FieldName = 'PerMrD'
      Precision = 19
      Size = 8
    end
    object sdsDuplicatasSeqNossoNumero: TStringField
      FieldName = 'SeqNossoNumero'
      FixedChar = True
      Size = 40
    end
    object sdsDuplicatasVlrDsP: TFMTBCDField
      FieldName = 'VlrDsP'
      Precision = 19
      Size = 8
    end
    object sdsDuplicatasPerJur: TFMTBCDField
      FieldName = 'PerJur'
      Precision = 19
      Size = 8
    end
    object sdsDuplicatasVlrJur: TFMTBCDField
      FieldName = 'VlrJur'
      Precision = 19
      Size = 8
    end
    object sdsDuplicatasCODPRJ: TIntegerField
      FieldName = 'CODPRJ'
    end
    object sdsDuplicatasCODFPG: TIntegerField
      FieldName = 'CODFPG'
    end
    object sdsDuplicatasCheBan: TIntegerField
      FieldName = 'CheBan'
    end
    object sdsDuplicatasCheAge: TStringField
      FieldName = 'CheAge'
      FixedChar = True
      Size = 10
    end
    object sdsDuplicatasCheEmi: TStringField
      FieldName = 'CheEmi'
      FixedChar = True
      Size = 60
    end
    object sdsDuplicatasCheCco: TStringField
      FieldName = 'CheCco'
      FixedChar = True
    end
    object sdsDuplicatasPerMul: TFMTBCDField
      FieldName = 'PerMul'
      Precision = 19
      Size = 8
    end
    object sdsDuplicatasVlrMul: TFMTBCDField
      FieldName = 'VlrMul'
      Precision = 19
      Size = 8
    end
    object sdsDuplicatasNOSNUM: TStringField
      FieldName = 'NOSNUM'
      FixedChar = True
      Size = 30
    end
    object sdsDuplicatasAGECCE: TStringField
      FieldName = 'AGECCE'
      FixedChar = True
    end
    object sdsDuplicatasCODBAR: TStringField
      FieldName = 'CODBAR'
      FixedChar = True
      Size = 70
    end
    object sdsDuplicatasLOCPAG: TStringField
      FieldName = 'LOCPAG'
      FixedChar = True
      Size = 100
    end
    object sdsDuplicatasINSTRU: TStringField
      FieldName = 'INSTRU'
      FixedChar = True
      Size = 255
    end
    object sdsDuplicatascd_operacao_contabil: TIntegerField
      FieldName = 'cd_operacao_contabil'
    end
    object sdsDuplicatasregistro_integrado: TBooleanField
      FieldName = 'registro_integrado'
      Required = True
    end
    object sdsDuplicatascd_operacao_baixa: TIntegerField
      FieldName = 'cd_operacao_baixa'
    end
    object sdsDuplicatasbaixa_integrado: TBooleanField
      FieldName = 'baixa_integrado'
      Required = True
    end
    object sdsDuplicatasproveniente_rateio: TBooleanField
      FieldName = 'proveniente_rateio'
      Required = True
    end
    object sdsDuplicatasvl_ipi_parcela: TFMTBCDField
      FieldName = 'vl_ipi_parcela'
      Precision = 19
      Size = 8
    end
    object sdsDuplicatasvl_icms_substituicao_parcela: TFMTBCDField
      FieldName = 'vl_icms_substituicao_parcela'
      Precision = 19
      Size = 8
    end
    object sdsDuplicatasvl_despesas_financeiras_parcela: TFMTBCDField
      FieldName = 'vl_despesas_financeiras_parcela'
      Precision = 19
      Size = 8
    end
    object sdsDuplicatasparc_origem_baixa: TIntegerField
      FieldName = 'parc_origem_baixa'
    end
    object sdsDuplicatasid_carteira: TIntegerField
      FieldName = 'id_carteira'
    end
    object sdsDuplicatascod_motivo: TStringField
      FieldName = 'cod_motivo'
      FixedChar = True
      Size = 10
    end
    object sdsDuplicatasdesc_motivo: TStringField
      FieldName = 'desc_motivo'
      FixedChar = True
      Size = 255
    end
    object sdsDuplicatasultima_mov_cnab: TIntegerField
      FieldName = 'ultima_mov_cnab'
    end
    object sdsDuplicatasultima_data_cnab: TSQLTimeStampField
      FieldName = 'ultima_data_cnab'
    end
    object sdsDuplicatascd_cobranca: TIntegerField
      FieldName = 'cd_cobranca'
    end
    object sdsDuplicatasseq_remessa: TIntegerField
      FieldName = 'seq_remessa'
    end
    object sdsDuplicatasemailboleto_enviado: TBooleanField
      FieldName = 'emailboleto_enviado'
    end
  end
  object dspDuplicatas: TDataSetProvider
    DataSet = sdsDuplicatas
    OnGetTableName = dspDuplicatasGetTableName
    Left = 784
    Top = 240
  end
  object cdsDuplicatas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDuplicatas'
    BeforePost = cdsDuplicatasBeforePost
    Left = 840
    Top = 240
    object cdsDuplicatasPagRec: TStringField
      FieldName = 'PagRec'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDuplicatasNota: TFloatField
      FieldName = 'Nota'
      Required = True
    end
    object cdsDuplicatasEmpresa: TStringField
      FieldName = 'Empresa'
      Required = True
      FixedChar = True
      Size = 15
    end
    object cdsDuplicatasTipo: TStringField
      FieldName = 'Tipo'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cdsDuplicatasParcela: TSmallintField
      FieldName = 'Parcela'
      Required = True
    end
    object cdsDuplicatasDescrio: TStringField
      FieldName = 'Descri'#231#227'o'
      FixedChar = True
      Size = 80
    end
    object cdsDuplicatasEmisso: TSQLTimeStampField
      FieldName = 'Emiss'#227'o'
      Required = True
    end
    object cdsDuplicatasVencimento: TSQLTimeStampField
      FieldName = 'Vencimento'
      Required = True
    end
    object cdsDuplicatasPagamento: TSQLTimeStampField
      FieldName = 'Pagamento'
    end
    object cdsDuplicatasLiberao: TSQLTimeStampField
      FieldName = 'Libera'#231#227'o'
      Required = True
    end
    object cdsDuplicatasValorOriginal: TFMTBCDField
      FieldName = 'Valor Original'
      Precision = 19
      Size = 8
    end
    object cdsDuplicatasAcrscimo: TFMTBCDField
      FieldName = 'Acr'#233'scimo'
      Precision = 19
      Size = 8
    end
    object cdsDuplicatasAbatimento: TFMTBCDField
      FieldName = 'Abatimento'
      Precision = 19
      Size = 8
    end
    object cdsDuplicatasBanco: TIntegerField
      FieldName = 'Banco'
    end
    object cdsDuplicatasConta: TIntegerField
      FieldName = 'Conta'
    end
    object cdsDuplicatasCentro: TIntegerField
      FieldName = 'Centro'
    end
    object cdsDuplicatasCheque: TIntegerField
      FieldName = 'Cheque'
    end
    object cdsDuplicatasMoeda: TStringField
      FieldName = 'Moeda'
      FixedChar = True
      Size = 10
    end
    object cdsDuplicatasValordaMoeda: TFMTBCDField
      FieldName = 'Valor da Moeda'
      Precision = 19
      Size = 8
    end
    object cdsDuplicatasControle: TStringField
      FieldName = 'Controle'
      FixedChar = True
      Size = 18
    end
    object cdsDuplicatasSituao: TStringField
      FieldName = 'Situa'#231#227'o'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cdsDuplicatasEnviada: TStringField
      FieldName = 'Enviada'
      FixedChar = True
      Size = 1
    end
    object cdsDuplicatasMarcao: TBooleanField
      FieldName = 'Marca'#231#227'o'
      Required = True
    end
    object cdsDuplicatasBorder: TIntegerField
      FieldName = 'Border'#244
    end
    object cdsDuplicatasComisso: TFloatField
      FieldName = 'Comiss'#227'o'
    end
    object cdsDuplicatasObs: TMemoField
      FieldName = 'Obs'
      BlobType = ftMemo
      Size = 1
    end
    object cdsDuplicatasDataIntegraoFatoGerador: TSQLTimeStampField
      FieldName = 'Data Integra'#231#227'o Fato Gerador'
    end
    object cdsDuplicatasDataIntegraoFatoPagamento: TSQLTimeStampField
      FieldName = 'Data Integra'#231#227'o Fato Pagamento'
    end
    object cdsDuplicatasLINDIG: TStringField
      FieldName = 'LINDIG'
      FixedChar = True
      Size = 70
    end
    object cdsDuplicatasUsurio: TStringField
      FieldName = 'Usu'#225'rio'
      FixedChar = True
    end
    object cdsDuplicatasAlterao: TSQLTimeStampField
      FieldName = 'Altera'#231#227'o'
    end
    object cdsDuplicatasConciliado: TBooleanField
      FieldName = 'Conciliado'
      Required = True
    end
    object cdsDuplicatasCarteira: TStringField
      FieldName = 'Carteira'
      FixedChar = True
      Size = 3
    end
    object cdsDuplicatasVlrMrD: TFMTBCDField
      FieldName = 'VlrMrD'
      Precision = 19
      Size = 8
    end
    object cdsDuplicatasPerMrD: TFMTBCDField
      FieldName = 'PerMrD'
      Precision = 19
      Size = 8
    end
    object cdsDuplicatasSeqNossoNumero: TStringField
      FieldName = 'SeqNossoNumero'
      FixedChar = True
      Size = 40
    end
    object cdsDuplicatasVlrDsP: TFMTBCDField
      FieldName = 'VlrDsP'
      Precision = 19
      Size = 8
    end
    object cdsDuplicatasPerJur: TFMTBCDField
      FieldName = 'PerJur'
      Precision = 19
      Size = 8
    end
    object cdsDuplicatasVlrJur: TFMTBCDField
      FieldName = 'VlrJur'
      Precision = 19
      Size = 8
    end
    object cdsDuplicatasCODPRJ: TIntegerField
      FieldName = 'CODPRJ'
    end
    object cdsDuplicatasCODFPG: TIntegerField
      FieldName = 'CODFPG'
    end
    object cdsDuplicatasCheBan: TIntegerField
      FieldName = 'CheBan'
    end
    object cdsDuplicatasCheAge: TStringField
      FieldName = 'CheAge'
      FixedChar = True
      Size = 10
    end
    object cdsDuplicatasCheEmi: TStringField
      FieldName = 'CheEmi'
      FixedChar = True
      Size = 60
    end
    object cdsDuplicatasCheCco: TStringField
      FieldName = 'CheCco'
      FixedChar = True
    end
    object cdsDuplicatasPerMul: TFMTBCDField
      FieldName = 'PerMul'
      Precision = 19
      Size = 8
    end
    object cdsDuplicatasVlrMul: TFMTBCDField
      FieldName = 'VlrMul'
      Precision = 19
      Size = 8
    end
    object cdsDuplicatasNOSNUM: TStringField
      FieldName = 'NOSNUM'
      FixedChar = True
      Size = 30
    end
    object cdsDuplicatasAGECCE: TStringField
      FieldName = 'AGECCE'
      FixedChar = True
    end
    object cdsDuplicatasCODBAR: TStringField
      FieldName = 'CODBAR'
      FixedChar = True
      Size = 70
    end
    object cdsDuplicatasLOCPAG: TStringField
      FieldName = 'LOCPAG'
      FixedChar = True
      Size = 100
    end
    object cdsDuplicatasINSTRU: TStringField
      FieldName = 'INSTRU'
      FixedChar = True
      Size = 255
    end
    object cdsDuplicatascd_operacao_contabil: TIntegerField
      FieldName = 'cd_operacao_contabil'
    end
    object cdsDuplicatasregistro_integrado: TBooleanField
      FieldName = 'registro_integrado'
      Required = True
    end
    object cdsDuplicatascd_operacao_baixa: TIntegerField
      FieldName = 'cd_operacao_baixa'
    end
    object cdsDuplicatasbaixa_integrado: TBooleanField
      FieldName = 'baixa_integrado'
      Required = True
    end
    object cdsDuplicatasproveniente_rateio: TBooleanField
      FieldName = 'proveniente_rateio'
      Required = True
    end
    object cdsDuplicatasvl_ipi_parcela: TFMTBCDField
      FieldName = 'vl_ipi_parcela'
      Precision = 19
      Size = 8
    end
    object cdsDuplicatasvl_icms_substituicao_parcela: TFMTBCDField
      FieldName = 'vl_icms_substituicao_parcela'
      Precision = 19
      Size = 8
    end
    object cdsDuplicatasvl_despesas_financeiras_parcela: TFMTBCDField
      FieldName = 'vl_despesas_financeiras_parcela'
      Precision = 19
      Size = 8
    end
    object cdsDuplicatasparc_origem_baixa: TIntegerField
      FieldName = 'parc_origem_baixa'
    end
    object cdsDuplicatasid_carteira: TIntegerField
      FieldName = 'id_carteira'
    end
    object cdsDuplicatascod_motivo: TStringField
      FieldName = 'cod_motivo'
      FixedChar = True
      Size = 10
    end
    object cdsDuplicatasdesc_motivo: TStringField
      FieldName = 'desc_motivo'
      FixedChar = True
      Size = 255
    end
    object cdsDuplicatasultima_mov_cnab: TIntegerField
      FieldName = 'ultima_mov_cnab'
    end
    object cdsDuplicatasultima_data_cnab: TSQLTimeStampField
      FieldName = 'ultima_data_cnab'
    end
    object cdsDuplicatascd_cobranca: TIntegerField
      FieldName = 'cd_cobranca'
    end
    object cdsDuplicatasseq_remessa: TIntegerField
      FieldName = 'seq_remessa'
    end
    object cdsDuplicatasemailboleto_enviado: TBooleanField
      FieldName = 'emailboleto_enviado'
    end
  end
  object dsDuplicatas: TDataSource
    DataSet = cdsDuplicatas
    Left = 896
    Top = 240
  end
  object sdsUF: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM UF'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 48
    Top = 288
  end
  object dspUF: TDataSetProvider
    DataSet = sdsUF
    Left = 120
    Top = 288
  end
  object cdsUF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUF'
    Left = 184
    Top = 288
    object cdsUFUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
    object cdsUFPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object cdsUFIDPAIS: TIntegerField
      FieldName = 'IDPAIS'
    end
    object cdsUFCODUF: TStringField
      FieldName = 'CODUF'
      Size = 2
    end
    object cdsUFPERC_ICMS_INTERNO: TFloatField
      FieldName = 'PERC_ICMS_INTERNO'
    end
  end
  object dsUF: TDataSource
    DataSet = cdsUF
    Left = 256
    Top = 288
  end
end
