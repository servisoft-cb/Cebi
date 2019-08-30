object DMCadPessoa: TDMCadPessoa
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 122
  Top = 127
  Height = 577
  Width = 1070
  object sdsPessoa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PESSOA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 56
    Top = 32
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
    OnUpdateError = dspPessoaUpdateError
    Left = 128
    Top = 32
  end
  object cdsPessoa: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'CODIGO'
    Params = <>
    ProviderName = 'dspPessoa'
    OnNewRecord = cdsPessoaNewRecord
    Left = 192
    Top = 32
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
    Left = 264
    Top = 32
  end
  object sdsUF: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM UF'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 552
    Top = 200
    object sdsUFUF: TStringField
      FieldName = 'UF'
      Required = True
      Size = 2
    end
    object sdsUFPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
    end
    object sdsUFIDPAIS: TIntegerField
      FieldName = 'IDPAIS'
    end
    object sdsUFCODUF: TStringField
      FieldName = 'CODUF'
      Size = 2
    end
    object sdsUFPERC_ICMS_INTERNO: TFloatField
      FieldName = 'PERC_ICMS_INTERNO'
    end
  end
  object dspUF: TDataSetProvider
    DataSet = sdsUF
    Left = 584
    Top = 200
  end
  object cdsUF: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'UF'
    Params = <>
    ProviderName = 'dspUF'
    Left = 624
    Top = 200
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
    Left = 664
    Top = 200
  end
  object sdsCidade: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CIDADE'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 554
    Top = 316
    object sdsCidadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsCidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object sdsCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object dspCidade: TDataSetProvider
    DataSet = sdsCidade
    Left = 586
    Top = 316
  end
  object cdsCidade: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspCidade'
    Left = 626
    Top = 316
    object cdsCidadeID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsCidadeNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsCidadeUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object dsCidade: TDataSource
    DataSet = cdsCidade
    Left = 666
    Top = 316
  end
  object sdsPais: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PAIS'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 554
    Top = 364
    object sdsPaisID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsPaisNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object sdsPaisCODPAIS: TStringField
      FieldName = 'CODPAIS'
      Size = 5
    end
  end
  object dspPais: TDataSetProvider
    DataSet = sdsPais
    Left = 586
    Top = 364
  end
  object cdsPais: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME'
    Params = <>
    ProviderName = 'dspPais'
    Left = 626
    Top = 364
    object cdsPaisID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsPaisNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsPaisCODPAIS: TStringField
      FieldName = 'CODPAIS'
      Size = 5
    end
  end
  object dsPais: TDataSource
    DataSet = cdsPais
    Left = 666
    Top = 364
  end
  object sdsPessoa_Consulta: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT P.codigo, P.nome, P.fantasia, P.endereco, P.complemento_e' +
      'nd, P.num_end,'#13#10'P.bairro, P.id_cidade, P.cidade, P.uf, P.cep, P.' +
      'dddfone1, P.dddfone2, P.dddfax,'#13#10'P.ddd_ent, P.ddd_pgto, P.telefo' +
      'ne1, P.telefone2, P.fax, P.pessoa, P.cnpj_cpf, P.inscr_est, P.ap' +
      'el_ebs'#13#10'FROM PESSOA P'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 440
    Top = 32
  end
  object dspPessoa_Consulta: TDataSetProvider
    DataSet = sdsPessoa_Consulta
    OnUpdateError = dspPessoaUpdateError
    Left = 512
    Top = 32
  end
  object cdsPessoa_Consulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPessoa_Consulta'
    OnNewRecord = cdsPessoaNewRecord
    Left = 576
    Top = 32
    object cdsPessoa_ConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
    object cdsPessoa_ConsultaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object cdsPessoa_ConsultaFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 30
    end
    object cdsPessoa_ConsultaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object cdsPessoa_ConsultaCOMPLEMENTO_END: TStringField
      FieldName = 'COMPLEMENTO_END'
      Size = 60
    end
    object cdsPessoa_ConsultaNUM_END: TStringField
      FieldName = 'NUM_END'
    end
    object cdsPessoa_ConsultaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object cdsPessoa_ConsultaID_CIDADE: TIntegerField
      FieldName = 'ID_CIDADE'
    end
    object cdsPessoa_ConsultaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object cdsPessoa_ConsultaUF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object cdsPessoa_ConsultaCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object cdsPessoa_ConsultaDDDFONE1: TIntegerField
      FieldName = 'DDDFONE1'
    end
    object cdsPessoa_ConsultaDDDFONE2: TIntegerField
      FieldName = 'DDDFONE2'
    end
    object cdsPessoa_ConsultaDDDFAX: TIntegerField
      FieldName = 'DDDFAX'
    end
    object cdsPessoa_ConsultaDDD_ENT: TIntegerField
      FieldName = 'DDD_ENT'
    end
    object cdsPessoa_ConsultaDDD_PGTO: TIntegerField
      FieldName = 'DDD_PGTO'
    end
    object cdsPessoa_ConsultaTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 15
    end
    object cdsPessoa_ConsultaTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Size = 15
    end
    object cdsPessoa_ConsultaFAX: TStringField
      FieldName = 'FAX'
      Size = 15
    end
    object cdsPessoa_ConsultaPESSOA: TStringField
      FieldName = 'PESSOA'
      FixedChar = True
      Size = 1
    end
    object cdsPessoa_ConsultaCNPJ_CPF: TStringField
      FieldName = 'CNPJ_CPF'
      Size = 18
    end
    object cdsPessoa_ConsultaINSCR_EST: TStringField
      FieldName = 'INSCR_EST'
      Size = 18
    end
    object cdsPessoa_ConsultaAPEL_EBS: TStringField
      FieldName = 'APEL_EBS'
      Size = 15
    end
  end
  object dsPessoa_Consulta: TDataSource
    DataSet = cdsPessoa_Consulta
    Left = 648
    Top = 32
  end
  object dsEmpresa: TDataSource
    DataSet = cdsEmpresa
    Left = 920
    Top = 144
  end
  object sdsEmpresa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT EMP.*'#13#10'FROM [FOX_00001].[dbo].[Empresas] EMP'#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase_EBS.Conexao_MSSQL
    Left = 776
    Top = 144
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
      Size = 33
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
    object sdsEmpresaDescontoporPontualidade: TFMTBCDField
      FieldName = 'Desconto por Pontualidade'
      Precision = 32
      Size = 10
    end
    object sdsEmpresaDescPorCliente: TFMTBCDField
      FieldName = 'DescPorCliente'
      Precision = 32
      Size = 10
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
    object sdsEmpresaPercFrete: TFMTBCDField
      FieldName = 'PercFrete'
      Precision = 32
      Size = 10
    end
    object sdsEmpresaPercEmbalagem: TFMTBCDField
      FieldName = 'PercEmbalagem'
      Precision = 32
      Size = 10
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
    object sdsEmpresaper_credito_icms: TFMTBCDField
      FieldName = 'per_credito_icms'
      Precision = 32
      Size = 10
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
    object sdsEmpresaper_pis: TFMTBCDField
      FieldName = 'per_pis'
      Precision = 32
      Size = 10
    end
    object sdsEmpresaper_cofins: TFMTBCDField
      FieldName = 'per_cofins'
      Precision = 32
      Size = 10
    end
    object sdsEmpresaper_ret_csll: TFMTBCDField
      FieldName = 'per_ret_csll'
      Precision = 32
      Size = 10
    end
    object sdsEmpresaper_ret_ir: TFMTBCDField
      FieldName = 'per_ret_ir'
      Precision = 32
      Size = 10
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
    object sdsEmpresanr_protocolo_portal: TStringField
      FieldName = 'nr_protocolo_portal'
      FixedChar = True
      Size = 50
    end
    object sdsEmpresaintegracao_portal: TIntegerField
      FieldName = 'integracao_portal'
    end
    object sdsEmpresarejeicao_integracao_portal: TStringField
      FieldName = 'rejeicao_integracao_portal'
      FixedChar = True
      Size = 2000
    end
    object sdsEmpresaintegracao_bi: TIntegerField
      FieldName = 'integracao_bi'
    end
    object sdsEmpresaident_estrangeiro: TStringField
      FieldName = 'ident_estrangeiro'
      FixedChar = True
    end
    object sdsEmpresautiliza_campos_nfe: TBooleanField
      FieldName = 'utiliza_campos_nfe'
    end
    object sdsEmpresanro_endereco: TStringField
      FieldName = 'nro_endereco'
      FixedChar = True
      Size = 60
    end
    object sdsEmpresausar_aliq_diferenciada: TBooleanField
      FieldName = 'usar_aliq_diferenciada'
    end
    object sdsEmpresaconsumidor_final: TBooleanField
      FieldName = 'consumidor_final'
    end
    object sdsEmpresaintegrou_pdv: TIntegerField
      FieldName = 'integrou_pdv'
      Required = True
    end
    object sdsEmpresaid_empresa_pdv: TIntegerField
      FieldName = 'id_empresa_pdv'
      Required = True
    end
    object sdsEmpresaobs_remessa_boleto: TStringField
      FieldName = 'obs_remessa_boleto'
      FixedChar = True
      Size = 500
    end
    object sdsEmpresaintegrou_mobile: TIntegerField
      FieldName = 'integrou_mobile'
      Required = True
    end
    object sdsEmpresaaliquota_funrural: TFMTBCDField
      FieldName = 'aliquota_funrural'
      Precision = 32
      Size = 10
    end
  end
  object dspEmpresa: TDataSetProvider
    DataSet = sdsEmpresa
    Left = 824
    Top = 144
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa'
    Left = 880
    Top = 144
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
      Size = 33
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
    object cdsEmpresaDescontoporPontualidade: TFMTBCDField
      FieldName = 'Desconto por Pontualidade'
      Precision = 32
      Size = 10
    end
    object cdsEmpresaDescPorCliente: TFMTBCDField
      FieldName = 'DescPorCliente'
      Precision = 32
      Size = 10
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
    object cdsEmpresaPercFrete: TFMTBCDField
      FieldName = 'PercFrete'
      Precision = 32
      Size = 10
    end
    object cdsEmpresaPercEmbalagem: TFMTBCDField
      FieldName = 'PercEmbalagem'
      Precision = 32
      Size = 10
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
    object cdsEmpresaper_credito_icms: TFMTBCDField
      FieldName = 'per_credito_icms'
      Precision = 32
      Size = 10
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
    object cdsEmpresaper_pis: TFMTBCDField
      FieldName = 'per_pis'
      Precision = 32
      Size = 10
    end
    object cdsEmpresaper_cofins: TFMTBCDField
      FieldName = 'per_cofins'
      Precision = 32
      Size = 10
    end
    object cdsEmpresaper_ret_csll: TFMTBCDField
      FieldName = 'per_ret_csll'
      Precision = 32
      Size = 10
    end
    object cdsEmpresaper_ret_ir: TFMTBCDField
      FieldName = 'per_ret_ir'
      Precision = 32
      Size = 10
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
    object cdsEmpresanr_protocolo_portal: TStringField
      FieldName = 'nr_protocolo_portal'
      FixedChar = True
      Size = 50
    end
    object cdsEmpresaintegracao_portal: TIntegerField
      FieldName = 'integracao_portal'
    end
    object cdsEmpresarejeicao_integracao_portal: TStringField
      FieldName = 'rejeicao_integracao_portal'
      FixedChar = True
      Size = 2000
    end
    object cdsEmpresaintegracao_bi: TIntegerField
      FieldName = 'integracao_bi'
    end
    object cdsEmpresaident_estrangeiro: TStringField
      FieldName = 'ident_estrangeiro'
      FixedChar = True
    end
    object cdsEmpresautiliza_campos_nfe: TBooleanField
      FieldName = 'utiliza_campos_nfe'
    end
    object cdsEmpresanro_endereco: TStringField
      FieldName = 'nro_endereco'
      FixedChar = True
      Size = 60
    end
    object cdsEmpresausar_aliq_diferenciada: TBooleanField
      FieldName = 'usar_aliq_diferenciada'
    end
    object cdsEmpresaconsumidor_final: TBooleanField
      FieldName = 'consumidor_final'
    end
    object cdsEmpresaintegrou_pdv: TIntegerField
      FieldName = 'integrou_pdv'
      Required = True
    end
    object cdsEmpresaid_empresa_pdv: TIntegerField
      FieldName = 'id_empresa_pdv'
      Required = True
    end
    object cdsEmpresaobs_remessa_boleto: TStringField
      FieldName = 'obs_remessa_boleto'
      FixedChar = True
      Size = 500
    end
    object cdsEmpresaintegrou_mobile: TIntegerField
      FieldName = 'integrou_mobile'
      Required = True
    end
    object cdsEmpresaaliquota_funrural: TFMTBCDField
      FieldName = 'aliquota_funrural'
      Precision = 32
      Size = 10
    end
  end
end
