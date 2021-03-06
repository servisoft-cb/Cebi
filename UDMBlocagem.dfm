object DMBlocagem: TDMBlocagem
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 395
  Top = 129
  Height = 489
  Width = 944
  object sdsContrato: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT CT.*, ASS.NOME NOMEASSINATURA'#13#10'FROM CONTRATO CT'#13#10'INNER JO' +
      'IN ASSINATURA ASS'#13#10'ON CT.ID_ASSINATURA = ASS.ID'
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
    object sdsContratoNUM_CONTRATO: TStringField
      FieldName = 'NUM_CONTRATO'
      Size = 12
    end
    object sdsContratoNOMEASSINATURA: TStringField
      FieldName = 'NOMEASSINATURA'
      Size = 70
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
    object sdsContratoGEROU_PRE_CONTRATO: TStringField
      FieldName = 'GEROU_PRE_CONTRATO'
      FixedChar = True
      Size = 1
    end
    object sdsContratoNUM_CONTRATO_ANT: TStringField
      FieldName = 'NUM_CONTRATO_ANT'
      Size = 12
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
    object cdsContratoNUM_CONTRATO: TStringField
      FieldName = 'NUM_CONTRATO'
      Size = 12
    end
    object cdsContratoNOMEASSINATURA: TStringField
      FieldName = 'NOMEASSINATURA'
      Size = 70
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
    object cdsContratoGEROU_PRE_CONTRATO: TStringField
      FieldName = 'GEROU_PRE_CONTRATO'
      FixedChar = True
      Size = 1
    end
    object cdsContratoNUM_CONTRATO_ANT: TStringField
      FieldName = 'NUM_CONTRATO_ANT'
      Size = 12
    end
  end
  object dsContrato: TDataSource
    DataSet = cdsContrato
    Left = 256
    Top = 32
  end
  object dsProdutos: TDataSource
    DataSet = cdsProdutos
    Left = 840
    Top = 208
  end
  object dsEmpresa: TDataSource
    DataSet = cdsEmpresa
    Left = 832
    Top = 272
  end
  object mBlocagem: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Tipo'
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
        Name = 'Bairro'
        DataType = ftString
        Size = 40
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
        Name = 'Cep'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DtEncerramento'
        DataType = ftDate
      end
      item
        Name = 'DtInicio'
        DataType = ftDate
      end
      item
        Name = 'NumContrato'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'NomeAssinatura'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'ID_Assinatura'
        DataType = ftInteger
      end
      item
        Name = 'Apel_EBS'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Num_Endereco'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'Gerou_Pre_Contrato'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Encerrado'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Pre_Contrato'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'DTCobranca'
        DataType = ftDate
      end
      item
        Name = 'Num_Contrato_Ant'
        DataType = ftString
        Size = 12
      end
      item
        Name = 'Email'
        DataType = ftString
        Size = 70
      end
      item
        Name = 'ID_Cliente'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 184
    Top = 120
    Data = {
      580200009619E0BD010000001800000015000000000003000000580204546970
      6F0100490000000100055749445448020002001400044E6F6D65010049000000
      010005574944544802000200460008456E64657265636F010049000000010005
      57494454480200020046000642616972726F0100490000000100055749445448
      0200020028000643696461646501004900000001000557494454480200020032
      0002554601004900000001000557494454480200020002000343657001004900
      00000100055749445448020002000A000E4474456E63657272616D656E746F04
      00060000000000084474496E6963696F04000600000000000B4E756D436F6E74
      7261746F01004900000001000557494454480200020014000E4E6F6D65417373
      696E617475726101004900000001000557494454480200020046000D49445F41
      7373696E61747572610400010000000000084170656C5F454253010049000000
      0100055749445448020002000F000C4E756D5F456E64657265636F0100490000
      000100055749445448020002003C00124765726F755F5072655F436F6E747261
      746F010049000000010005574944544802000200010009456E6365727261646F
      01004900000001000557494454480200020001000C5072655F436F6E74726174
      6F01004900000001000557494454480200020001000A4454436F6272616E6361
      0400060000000000104E756D5F436F6E747261746F5F416E7401004900000001
      00055749445448020002000C0005456D61696C01004900000001000557494454
      480200020046000A49445F436C69656E746504000100000000000000}
    object mBlocagemTipo: TStringField
      FieldName = 'Tipo'
    end
    object mBlocagemNome: TStringField
      FieldName = 'Nome'
      Size = 70
    end
    object mBlocagemEndereco: TStringField
      FieldName = 'Endereco'
      Size = 70
    end
    object mBlocagemBairro: TStringField
      FieldName = 'Bairro'
      Size = 40
    end
    object mBlocagemCidade: TStringField
      FieldName = 'Cidade'
      Size = 50
    end
    object mBlocagemUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object mBlocagemCep: TStringField
      FieldName = 'Cep'
      Size = 10
    end
    object mBlocagemDtEncerramento: TDateField
      FieldName = 'DtEncerramento'
    end
    object mBlocagemDtInicio: TDateField
      FieldName = 'DtInicio'
    end
    object mBlocagemNumContrato: TStringField
      FieldName = 'NumContrato'
    end
    object mBlocagemNomeAssinatura: TStringField
      FieldName = 'NomeAssinatura'
      Size = 70
    end
    object mBlocagemID_Assinatura: TIntegerField
      FieldName = 'ID_Assinatura'
    end
    object mBlocagemApel_EBS: TStringField
      FieldName = 'Apel_EBS'
      Size = 15
    end
    object mBlocagemNum_Endereco: TStringField
      FieldName = 'Num_Endereco'
      Size = 60
    end
    object mBlocagemGerou_Pre_Contrato: TStringField
      FieldName = 'Gerou_Pre_Contrato'
      Size = 1
    end
    object mBlocagemEncerrado: TStringField
      FieldName = 'Encerrado'
      Size = 1
    end
    object mBlocagemPre_Contrato: TStringField
      FieldName = 'Pre_Contrato'
      Size = 1
    end
    object mBlocagemDTCobranca: TDateField
      FieldName = 'DTCobranca'
    end
    object mBlocagemNum_Contrato_Ant: TStringField
      FieldName = 'Num_Contrato_Ant'
      Size = 12
    end
    object mBlocagemEmail: TStringField
      FieldName = 'Email'
      Size = 70
    end
    object mBlocagemID_Cliente: TIntegerField
      FieldName = 'ID_Cliente'
    end
  end
  object dsmBlocagem: TDataSource
    DataSet = mBlocagem
    Left = 256
    Top = 120
  end
  object sdsAssinatura: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM ASSINATURA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 72
    Top = 208
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
    Left = 144
    Top = 208
  end
  object cdsAssinatura: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAssinatura'
    Left = 208
    Top = 208
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
    object cdsAssinaturasdsAssinatura_Livro: TDataSetField
      FieldName = 'sdsAssinatura_Livro'
    end
  end
  object dsAssinatura: TDataSource
    DataSet = cdsAssinatura
    Left = 280
    Top = 208
  end
  object sdsControle_Estoque: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM CONTROLE_ESTOQUE'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 368
    Top = 40
    object sdsControle_EstoqueID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsControle_EstoqueNUM_CONTRATO: TStringField
      FieldName = 'NUM_CONTRATO'
      Size = 12
    end
    object sdsControle_EstoqueDTREFERENCIA: TDateField
      FieldName = 'DTREFERENCIA'
    end
    object sdsControle_EstoqueMES: TIntegerField
      FieldName = 'MES'
    end
    object sdsControle_EstoqueANO: TIntegerField
      FieldName = 'ANO'
    end
  end
  object dspControle_Estoque: TDataSetProvider
    DataSet = sdsControle_Estoque
    Left = 440
    Top = 40
  end
  object cdsControle_Estoque: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspControle_Estoque'
    Left = 504
    Top = 40
    object cdsControle_EstoqueID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsControle_EstoqueNUM_CONTRATO: TStringField
      FieldName = 'NUM_CONTRATO'
      Size = 12
    end
    object cdsControle_EstoqueDTREFERENCIA: TDateField
      FieldName = 'DTREFERENCIA'
    end
    object cdsControle_EstoqueMES: TIntegerField
      FieldName = 'MES'
    end
    object cdsControle_EstoqueANO: TIntegerField
      FieldName = 'ANO'
    end
  end
  object dsControle_Estoque: TDataSource
    DataSet = cdsControle_Estoque
    Left = 576
    Top = 40
  end
  object dsAssinatura_Mestre: TDataSource
    DataSet = sdsAssinatura
    Left = 32
    Top = 272
  end
  object sdsAssinatura_Livro: TSQLDataSet
    CommandText = 'SELECT *'#13#10'FROM ASSINATURA_LIVRO'#13#10'WHERE ID = :ID'
    DataSource = dsAssinatura_Mestre
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
        Size = 4
      end>
    SQLConnection = dmDatabase.scoDados
    Left = 80
    Top = 336
    object sdsAssinatura_LivroID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object sdsAssinatura_LivroITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object sdsAssinatura_LivroQTD: TIntegerField
      FieldName = 'QTD'
    end
    object sdsAssinatura_LivroCOD_PRODUTO_EBS: TStringField
      FieldName = 'COD_PRODUTO_EBS'
    end
    object sdsAssinatura_LivroNOME_PRODUTO_EBS: TStringField
      FieldName = 'NOME_PRODUTO_EBS'
      Size = 100
    end
  end
  object cdsAssinatura_Livro: TClientDataSet
    Aggregates = <>
    DataSetField = cdsAssinaturasdsAssinatura_Livro
    Params = <>
    Left = 200
    Top = 336
    object cdsAssinatura_LivroID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object cdsAssinatura_LivroITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object cdsAssinatura_LivroQTD: TIntegerField
      FieldName = 'QTD'
    end
    object cdsAssinatura_LivroCOD_PRODUTO_EBS: TStringField
      FieldName = 'COD_PRODUTO_EBS'
    end
    object cdsAssinatura_LivroNOME_PRODUTO_EBS: TStringField
      FieldName = 'NOME_PRODUTO_EBS'
      Size = 100
    end
  end
  object sdsEstMovimento: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT [CODLOC]'#13#10'      ,[CODPRO]'#13#10'      ,[DATMOV]'#13#10'      ,[SEQMO' +
      'V]'#13#10'      ,[CODPRJ]'#13#10'      ,[NRODOC]'#13#10'      ,[TIPREG]'#13#10'      ,[C' +
      'ODFOR]'#13#10'      ,[SEQITE]'#13#10'      ,[ENTSAI]'#13#10'      ,[QTDMOV]'#13#10'     ' +
      ' ,[VLRMOV]'#13#10'      ,[QTDANT]'#13#10'      ,[QTDAPO]'#13#10'      ,[ORIMOV]'#13#10' ' +
      '     ,[CODCCU]'#13#10'      ,[CODCTF]'#13#10'      ,[HORMOV]'#13#10'      ,[MIGMOV' +
      ']'#13#10'      ,[CUSPRO]'#13#10'      ,[ANOASS]'#13#10'      ,[VLRANT]'#13#10'      ,[VL' +
      'RAPOS]'#13#10'      ,[CUSTMEDPRO]'#13#10'      ,[registro_integrado]'#13#10'      ' +
      ',[data_integracao]'#13#10'  FROM [dbo].[ESTMOVIMENTO]'#13#10#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase_EBS.Conexao_MSSQL
    Left = 688
    Top = 144
    object sdsEstMovimentoCODLOC: TStringField
      FieldName = 'CODLOC'
      Required = True
      FixedChar = True
      Size = 12
    end
    object sdsEstMovimentoCODPRO: TStringField
      FieldName = 'CODPRO'
      Required = True
      FixedChar = True
    end
    object sdsEstMovimentoDATMOV: TSQLTimeStampField
      FieldName = 'DATMOV'
      Required = True
    end
    object sdsEstMovimentoSEQMOV: TIntegerField
      FieldName = 'SEQMOV'
      Required = True
    end
    object sdsEstMovimentoCODPRJ: TIntegerField
      FieldName = 'CODPRJ'
    end
    object sdsEstMovimentoNRODOC: TIntegerField
      FieldName = 'NRODOC'
    end
    object sdsEstMovimentoTIPREG: TStringField
      FieldName = 'TIPREG'
      FixedChar = True
    end
    object sdsEstMovimentoCODFOR: TStringField
      FieldName = 'CODFOR'
      FixedChar = True
    end
    object sdsEstMovimentoSEQITE: TIntegerField
      FieldName = 'SEQITE'
    end
    object sdsEstMovimentoENTSAI: TStringField
      FieldName = 'ENTSAI'
      Required = True
      FixedChar = True
      Size = 1
    end
    object sdsEstMovimentoQTDMOV: TFMTBCDField
      FieldName = 'QTDMOV'
      Precision = 32
      Size = 10
    end
    object sdsEstMovimentoVLRMOV: TFMTBCDField
      FieldName = 'VLRMOV'
      Precision = 32
      Size = 10
    end
    object sdsEstMovimentoQTDANT: TFMTBCDField
      FieldName = 'QTDANT'
      Precision = 32
      Size = 10
    end
    object sdsEstMovimentoQTDAPO: TFMTBCDField
      FieldName = 'QTDAPO'
      Precision = 32
      Size = 10
    end
    object sdsEstMovimentoORIMOV: TStringField
      FieldName = 'ORIMOV'
      Required = True
      FixedChar = True
      Size = 4
    end
    object sdsEstMovimentoCODCCU: TIntegerField
      FieldName = 'CODCCU'
    end
    object sdsEstMovimentoCODCTF: TIntegerField
      FieldName = 'CODCTF'
    end
    object sdsEstMovimentoHORMOV: TIntegerField
      FieldName = 'HORMOV'
    end
    object sdsEstMovimentoMIGMOV: TBooleanField
      FieldName = 'MIGMOV'
      Required = True
    end
    object sdsEstMovimentoCUSPRO: TFMTBCDField
      FieldName = 'CUSPRO'
      Precision = 32
      Size = 10
    end
    object sdsEstMovimentoANOASS: TIntegerField
      FieldName = 'ANOASS'
    end
    object sdsEstMovimentoVLRANT: TFMTBCDField
      FieldName = 'VLRANT'
      Precision = 32
      Size = 10
    end
    object sdsEstMovimentoVLRAPOS: TFMTBCDField
      FieldName = 'VLRAPOS'
      Precision = 32
      Size = 10
    end
    object sdsEstMovimentoCUSTMEDPRO: TFMTBCDField
      FieldName = 'CUSTMEDPRO'
      Precision = 32
      Size = 10
    end
    object sdsEstMovimentoregistro_integrado: TBooleanField
      FieldName = 'registro_integrado'
      Required = True
    end
    object sdsEstMovimentodata_integracao: TSQLTimeStampField
      FieldName = 'data_integracao'
    end
  end
  object dspEstMovimento: TDataSetProvider
    DataSet = sdsEstMovimento
    OnGetTableName = dspEstMovimentoGetTableName
    Left = 736
    Top = 144
  end
  object cdsEstMovimento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEstMovimento'
    Left = 792
    Top = 144
    object cdsEstMovimentoCODLOC: TStringField
      FieldName = 'CODLOC'
      Required = True
      FixedChar = True
      Size = 12
    end
    object cdsEstMovimentoCODPRO: TStringField
      FieldName = 'CODPRO'
      Required = True
      FixedChar = True
    end
    object cdsEstMovimentoDATMOV: TSQLTimeStampField
      FieldName = 'DATMOV'
      Required = True
    end
    object cdsEstMovimentoSEQMOV: TIntegerField
      FieldName = 'SEQMOV'
      Required = True
    end
    object cdsEstMovimentoCODPRJ: TIntegerField
      FieldName = 'CODPRJ'
    end
    object cdsEstMovimentoNRODOC: TIntegerField
      FieldName = 'NRODOC'
    end
    object cdsEstMovimentoTIPREG: TStringField
      FieldName = 'TIPREG'
      FixedChar = True
    end
    object cdsEstMovimentoCODFOR: TStringField
      FieldName = 'CODFOR'
      FixedChar = True
    end
    object cdsEstMovimentoSEQITE: TIntegerField
      FieldName = 'SEQITE'
    end
    object cdsEstMovimentoENTSAI: TStringField
      FieldName = 'ENTSAI'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsEstMovimentoQTDMOV: TFMTBCDField
      FieldName = 'QTDMOV'
      Precision = 32
      Size = 10
    end
    object cdsEstMovimentoVLRMOV: TFMTBCDField
      FieldName = 'VLRMOV'
      Precision = 32
      Size = 10
    end
    object cdsEstMovimentoQTDANT: TFMTBCDField
      FieldName = 'QTDANT'
      Precision = 32
      Size = 10
    end
    object cdsEstMovimentoQTDAPO: TFMTBCDField
      FieldName = 'QTDAPO'
      Precision = 32
      Size = 10
    end
    object cdsEstMovimentoORIMOV: TStringField
      FieldName = 'ORIMOV'
      Required = True
      FixedChar = True
      Size = 4
    end
    object cdsEstMovimentoCODCCU: TIntegerField
      FieldName = 'CODCCU'
    end
    object cdsEstMovimentoCODCTF: TIntegerField
      FieldName = 'CODCTF'
    end
    object cdsEstMovimentoHORMOV: TIntegerField
      FieldName = 'HORMOV'
    end
    object cdsEstMovimentoMIGMOV: TBooleanField
      FieldName = 'MIGMOV'
      Required = True
    end
    object cdsEstMovimentoCUSPRO: TFMTBCDField
      FieldName = 'CUSPRO'
      Precision = 32
      Size = 10
    end
    object cdsEstMovimentoANOASS: TIntegerField
      FieldName = 'ANOASS'
    end
    object cdsEstMovimentoVLRANT: TFMTBCDField
      FieldName = 'VLRANT'
      Precision = 32
      Size = 10
    end
    object cdsEstMovimentoVLRAPOS: TFMTBCDField
      FieldName = 'VLRAPOS'
      Precision = 32
      Size = 10
    end
    object cdsEstMovimentoCUSTMEDPRO: TFMTBCDField
      FieldName = 'CUSTMEDPRO'
      Precision = 32
      Size = 10
    end
    object cdsEstMovimentoregistro_integrado: TBooleanField
      FieldName = 'registro_integrado'
      Required = True
    end
    object cdsEstMovimentodata_integracao: TSQLTimeStampField
      FieldName = 'data_integracao'
    end
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
      #10'      ,[gera_fci]'#13#10'      ,[nr_controle_fci]'#13#10'  FROM [dbo].[Prod' +
      'utos]'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase_EBS.Conexao_MSSQL
    Left = 688
    Top = 208
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
      Size = 6
    end
    object sdsProdutosUnidadeEntrada: TStringField
      FieldName = 'UnidadeEntrada'
      FixedChar = True
      Size = 6
    end
    object sdsProdutosUnidadeAuxiliar: TStringField
      FieldName = 'UnidadeAuxiliar'
      FixedChar = True
      Size = 6
    end
    object sdsProdutosUnidadeAuxiliar1: TStringField
      FieldName = 'UnidadeAuxiliar1'
      FixedChar = True
      Size = 6
    end
    object sdsProdutosUnidadedeCompra: TStringField
      FieldName = 'Unidade de Compra'
      FixedChar = True
      Size = 6
    end
    object sdsProdutosAtacadosomentesemaiorque: TIntegerField
      FieldName = 'Atacado somente se maior que'
    end
    object sdsProdutosPesoLquido: TFMTBCDField
      FieldName = 'Peso L'#237'quido'
      Precision = 32
      Size = 10
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
      Size = 2
    end
    object sdsProdutosReal: TFMTBCDField
      FieldName = 'Real'
      Precision = 32
      Size = 10
    end
    object sdsProdutosVirtual: TFMTBCDField
      FieldName = 'Virtual'
      Precision = 32
      Size = 10
    end
    object sdsProdutosMnimo: TFMTBCDField
      FieldName = 'M'#237'nimo'
      Precision = 32
      Size = 10
    end
    object sdsProdutosMximo: TFMTBCDField
      FieldName = 'M'#225'ximo'
      Precision = 32
      Size = 10
    end
    object sdsProdutosMdiadeVendas: TFMTBCDField
      FieldName = 'M'#233'dia de Vendas'
      Precision = 32
      Size = 10
    end
    object sdsProdutosMdiadeFabricao: TFMTBCDField
      FieldName = 'M'#233'dia de Fabrica'#231#227'o'
      Precision = 32
      Size = 10
    end
    object sdsProdutosLoteMnimodeCompras: TFMTBCDField
      FieldName = 'Lote M'#237'nimo de Compras'
      Precision = 32
      Size = 10
    end
    object sdsProdutosLoteMnimodeVendas: TFMTBCDField
      FieldName = 'Lote M'#237'nimo de Vendas'
      Precision = 32
      Size = 10
    end
    object sdsProdutosLoteMnimodeFabricao: TFMTBCDField
      FieldName = 'Lote M'#237'nimo de Fabrica'#231#227'o'
      Precision = 32
      Size = 10
    end
    object sdsProdutosValordeCompra: TFMTBCDField
      FieldName = 'Valor de Compra'
      Precision = 32
      Size = 10
    end
    object sdsProdutosValordeVenda: TFMTBCDField
      FieldName = 'Valor de Venda'
      Precision = 32
      Size = 10
    end
    object sdsProdutosMargemdeVenda: TFMTBCDField
      FieldName = 'Margem de Venda'
      Precision = 32
      Size = 10
    end
    object sdsProdutosVendaAtacado: TFMTBCDField
      FieldName = 'Venda Atacado'
      Precision = 32
      Size = 10
    end
    object sdsProdutosVendaVarejo: TFMTBCDField
      FieldName = 'Venda Varejo'
      Precision = 32
      Size = 10
    end
    object sdsProdutosMargemAtacado: TFMTBCDField
      FieldName = 'Margem Atacado'
      Precision = 32
      Size = 10
    end
    object sdsProdutosMargemVarejo: TFMTBCDField
      FieldName = 'Margem Varejo'
      Precision = 32
      Size = 10
    end
    object sdsProdutosValordeTransferncia: TFMTBCDField
      FieldName = 'Valor de Transfer'#234'ncia'
      Precision = 32
      Size = 10
    end
    object sdsProdutosValorPromoo: TFMTBCDField
      FieldName = 'Valor Promo'#231#227'o'
      Precision = 32
      Size = 10
    end
    object sdsProdutosValidadedaPromoo: TSQLTimeStampField
      FieldName = 'Validade da Promo'#231#227'o'
    end
    object sdsProdutosValorPromooAtacado: TFMTBCDField
      FieldName = 'Valor Promo'#231#227'o Atacado'
      Precision = 32
      Size = 10
    end
    object sdsProdutosValidadedaPromooAtacado: TSQLTimeStampField
      FieldName = 'Validade da Promo'#231#227'o Atacado'
    end
    object sdsProdutosValorPromooVarejo: TFMTBCDField
      FieldName = 'Valor Promo'#231#227'o Varejo'
      Precision = 32
      Size = 10
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
    object sdsProdutosQuantidadeporVolume: TFMTBCDField
      FieldName = 'Quantidade por Volume'
      Precision = 32
      Size = 10
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
    object sdsProdutosComisso: TFMTBCDField
      FieldName = 'Comiss'#227'o'
      Precision = 32
      Size = 10
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
    object sdsProdutosMargemdeVendaSubstituioTr: TFMTBCDField
      FieldName = 'Margem de Venda Substitui'#231#227'o Tr'
      Precision = 32
      Size = 10
    end
    object sdsProdutosValordosMateriais: TFMTBCDField
      FieldName = 'Valor dos Materiais'
      Precision = 32
      Size = 10
    end
    object sdsProdutosValordaModeObra: TFMTBCDField
      FieldName = 'Valor da M'#227'o de Obra'
      Precision = 32
      Size = 10
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
    object sdsProdutosFatordeConversodeUnidadep: TFMTBCDField
      FieldName = 'Fator de Convers'#227'o de Unidade p'
      Required = True
      Precision = 32
      Size = 10
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
    object sdsProdutosValordeCompraOriginal: TFMTBCDField
      FieldName = 'Valor de Compra Original'
      Precision = 32
      Size = 10
    end
    object sdsProdutosValordeDescontonaCompra: TFMTBCDField
      FieldName = 'Valor de Desconto na Compra'
      Precision = 32
      Size = 10
    end
    object sdsProdutosUnidadeVlrVenda: TStringField
      FieldName = 'UnidadeVlrVenda'
      FixedChar = True
      Size = 6
    end
    object sdsProdutosArea: TFMTBCDField
      FieldName = 'Area'
      Precision = 32
      Size = 10
    end
    object sdsProdutosCODIPI: TIntegerField
      FieldName = 'CODIPI'
    end
    object sdsProdutosLOCPAD: TStringField
      FieldName = 'LOCPAD'
      FixedChar = True
      Size = 12
    end
    object sdsProdutosCUSPRO: TFMTBCDField
      FieldName = 'CUSPRO'
      Precision = 32
      Size = 10
    end
    object sdsProdutosPerDmx: TFMTBCDField
      FieldName = 'PerDmx'
      Precision = 32
      Size = 10
    end
    object sdsProdutosICMVEN: TFMTBCDField
      FieldName = 'ICMVEN'
      Precision = 32
      Size = 10
    end
    object sdsProdutosICMCOM: TFMTBCDField
      FieldName = 'ICMCOM'
      Precision = 32
      Size = 10
    end
    object sdsProdutosUMEPRO: TStringField
      FieldName = 'UMEPRO'
      FixedChar = True
      Size = 6
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
    object sdsProdutosaliquota_diferenciada: TFMTBCDField
      FieldName = 'aliquota_diferenciada'
      Precision = 32
      Size = 10
    end
    object sdsProdutosconteudo_importacao: TFMTBCDField
      FieldName = 'conteudo_importacao'
      Precision = 32
      Size = 10
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
    Left = 736
    Top = 208
  end
  object cdsProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutos'
    Left = 800
    Top = 208
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
      Size = 6
    end
    object cdsProdutosUnidadeEntrada: TStringField
      FieldName = 'UnidadeEntrada'
      FixedChar = True
      Size = 6
    end
    object cdsProdutosUnidadeAuxiliar: TStringField
      FieldName = 'UnidadeAuxiliar'
      FixedChar = True
      Size = 6
    end
    object cdsProdutosUnidadeAuxiliar1: TStringField
      FieldName = 'UnidadeAuxiliar1'
      FixedChar = True
      Size = 6
    end
    object cdsProdutosUnidadedeCompra: TStringField
      FieldName = 'Unidade de Compra'
      FixedChar = True
      Size = 6
    end
    object cdsProdutosAtacadosomentesemaiorque: TIntegerField
      FieldName = 'Atacado somente se maior que'
    end
    object cdsProdutosPesoLquido: TFMTBCDField
      FieldName = 'Peso L'#237'quido'
      Precision = 32
      Size = 10
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
      Size = 2
    end
    object cdsProdutosReal: TFMTBCDField
      FieldName = 'Real'
      Precision = 32
      Size = 10
    end
    object cdsProdutosVirtual: TFMTBCDField
      FieldName = 'Virtual'
      Precision = 32
      Size = 10
    end
    object cdsProdutosMnimo: TFMTBCDField
      FieldName = 'M'#237'nimo'
      Precision = 32
      Size = 10
    end
    object cdsProdutosMximo: TFMTBCDField
      FieldName = 'M'#225'ximo'
      Precision = 32
      Size = 10
    end
    object cdsProdutosMdiadeVendas: TFMTBCDField
      FieldName = 'M'#233'dia de Vendas'
      Precision = 32
      Size = 10
    end
    object cdsProdutosMdiadeFabricao: TFMTBCDField
      FieldName = 'M'#233'dia de Fabrica'#231#227'o'
      Precision = 32
      Size = 10
    end
    object cdsProdutosLoteMnimodeCompras: TFMTBCDField
      FieldName = 'Lote M'#237'nimo de Compras'
      Precision = 32
      Size = 10
    end
    object cdsProdutosLoteMnimodeVendas: TFMTBCDField
      FieldName = 'Lote M'#237'nimo de Vendas'
      Precision = 32
      Size = 10
    end
    object cdsProdutosLoteMnimodeFabricao: TFMTBCDField
      FieldName = 'Lote M'#237'nimo de Fabrica'#231#227'o'
      Precision = 32
      Size = 10
    end
    object cdsProdutosValordeCompra: TFMTBCDField
      FieldName = 'Valor de Compra'
      Precision = 32
      Size = 10
    end
    object cdsProdutosValordeVenda: TFMTBCDField
      FieldName = 'Valor de Venda'
      Precision = 32
      Size = 10
    end
    object cdsProdutosMargemdeVenda: TFMTBCDField
      FieldName = 'Margem de Venda'
      Precision = 32
      Size = 10
    end
    object cdsProdutosVendaAtacado: TFMTBCDField
      FieldName = 'Venda Atacado'
      Precision = 32
      Size = 10
    end
    object cdsProdutosVendaVarejo: TFMTBCDField
      FieldName = 'Venda Varejo'
      Precision = 32
      Size = 10
    end
    object cdsProdutosMargemAtacado: TFMTBCDField
      FieldName = 'Margem Atacado'
      Precision = 32
      Size = 10
    end
    object cdsProdutosMargemVarejo: TFMTBCDField
      FieldName = 'Margem Varejo'
      Precision = 32
      Size = 10
    end
    object cdsProdutosValordeTransferncia: TFMTBCDField
      FieldName = 'Valor de Transfer'#234'ncia'
      Precision = 32
      Size = 10
    end
    object cdsProdutosValorPromoo: TFMTBCDField
      FieldName = 'Valor Promo'#231#227'o'
      Precision = 32
      Size = 10
    end
    object cdsProdutosValidadedaPromoo: TSQLTimeStampField
      FieldName = 'Validade da Promo'#231#227'o'
    end
    object cdsProdutosValorPromooAtacado: TFMTBCDField
      FieldName = 'Valor Promo'#231#227'o Atacado'
      Precision = 32
      Size = 10
    end
    object cdsProdutosValidadedaPromooAtacado: TSQLTimeStampField
      FieldName = 'Validade da Promo'#231#227'o Atacado'
    end
    object cdsProdutosValorPromooVarejo: TFMTBCDField
      FieldName = 'Valor Promo'#231#227'o Varejo'
      Precision = 32
      Size = 10
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
    object cdsProdutosQuantidadeporVolume: TFMTBCDField
      FieldName = 'Quantidade por Volume'
      Precision = 32
      Size = 10
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
    object cdsProdutosComisso: TFMTBCDField
      FieldName = 'Comiss'#227'o'
      Precision = 32
      Size = 10
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
    object cdsProdutosMargemdeVendaSubstituioTr: TFMTBCDField
      FieldName = 'Margem de Venda Substitui'#231#227'o Tr'
      Precision = 32
      Size = 10
    end
    object cdsProdutosValordosMateriais: TFMTBCDField
      FieldName = 'Valor dos Materiais'
      Precision = 32
      Size = 10
    end
    object cdsProdutosValordaModeObra: TFMTBCDField
      FieldName = 'Valor da M'#227'o de Obra'
      Precision = 32
      Size = 10
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
    object cdsProdutosFatordeConversodeUnidadep: TFMTBCDField
      FieldName = 'Fator de Convers'#227'o de Unidade p'
      Required = True
      Precision = 32
      Size = 10
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
    object cdsProdutosValordeCompraOriginal: TFMTBCDField
      FieldName = 'Valor de Compra Original'
      Precision = 32
      Size = 10
    end
    object cdsProdutosValordeDescontonaCompra: TFMTBCDField
      FieldName = 'Valor de Desconto na Compra'
      Precision = 32
      Size = 10
    end
    object cdsProdutosUnidadeVlrVenda: TStringField
      FieldName = 'UnidadeVlrVenda'
      FixedChar = True
      Size = 6
    end
    object cdsProdutosArea: TFMTBCDField
      FieldName = 'Area'
      Precision = 32
      Size = 10
    end
    object cdsProdutosCODIPI: TIntegerField
      FieldName = 'CODIPI'
    end
    object cdsProdutosLOCPAD: TStringField
      FieldName = 'LOCPAD'
      FixedChar = True
      Size = 12
    end
    object cdsProdutosCUSPRO: TFMTBCDField
      FieldName = 'CUSPRO'
      Precision = 32
      Size = 10
    end
    object cdsProdutosPerDmx: TFMTBCDField
      FieldName = 'PerDmx'
      Precision = 32
      Size = 10
    end
    object cdsProdutosICMVEN: TFMTBCDField
      FieldName = 'ICMVEN'
      Precision = 32
      Size = 10
    end
    object cdsProdutosICMCOM: TFMTBCDField
      FieldName = 'ICMCOM'
      Precision = 32
      Size = 10
    end
    object cdsProdutosUMEPRO: TStringField
      FieldName = 'UMEPRO'
      FixedChar = True
      Size = 6
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
    object cdsProdutosaliquota_diferenciada: TFMTBCDField
      FieldName = 'aliquota_diferenciada'
      Precision = 32
      Size = 10
    end
    object cdsProdutosconteudo_importacao: TFMTBCDField
      FieldName = 'conteudo_importacao'
      Precision = 32
      Size = 10
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
  object sdsEmpresa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT EMP.[Raz'#227'o] As NomeCliente, ENDE.*'#13#10'FROM [FOX_00001].[dbo' +
      '].[Empresas] EMP'#13#10'LEFT JOIN [FOX_00001].[dbo].[Empresas Endere'#231'o' +
      's] ENDE'#13#10'ON EMP.Apel =  ENDE.APEL'#13#10'WHERE ENDE.Tipo = '#39'Entrega'#39#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase_EBS.Conexao_MSSQL
    Left = 688
    Top = 272
    object sdsEmpresaNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Required = True
      FixedChar = True
      Size = 90
    end
    object sdsEmpresaApel: TStringField
      FieldName = 'Apel'
      FixedChar = True
      Size = 15
    end
    object sdsEmpresaCdigo: TSmallintField
      FieldName = 'C'#243'digo'
    end
    object sdsEmpresaTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 13
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
    object sdsEmpresaPessoa: TStringField
      FieldName = 'Pessoa'
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
    object sdsEmpresaFone: TStringField
      FieldName = 'Fone'
      FixedChar = True
      Size = 15
    end
    object sdsEmpresaRamal: TStringField
      FieldName = 'Ramal'
      FixedChar = True
      Size = 10
    end
    object sdsEmpresacd_pais: TStringField
      FieldName = 'cd_pais'
      FixedChar = True
      Size = 3
    end
    object sdsEmpresacd_municipio_ibge: TIntegerField
      FieldName = 'cd_municipio_ibge'
    end
    object sdsEmpresanro_endereco: TStringField
      FieldName = 'nro_endereco'
      FixedChar = True
      Size = 60
    end
  end
  object dspEmpresa: TDataSetProvider
    DataSet = sdsEmpresa
    Left = 736
    Top = 272
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa'
    Left = 792
    Top = 272
    object cdsEmpresaNomeCliente: TStringField
      FieldName = 'NomeCliente'
      Required = True
      FixedChar = True
      Size = 90
    end
    object cdsEmpresaApel: TStringField
      FieldName = 'Apel'
      FixedChar = True
      Size = 15
    end
    object cdsEmpresaCdigo: TSmallintField
      FieldName = 'C'#243'digo'
    end
    object cdsEmpresaTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 13
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
    object cdsEmpresaPessoa: TStringField
      FieldName = 'Pessoa'
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
    object cdsEmpresaFone: TStringField
      FieldName = 'Fone'
      FixedChar = True
      Size = 15
    end
    object cdsEmpresaRamal: TStringField
      FieldName = 'Ramal'
      FixedChar = True
      Size = 10
    end
    object cdsEmpresacd_pais: TStringField
      FieldName = 'cd_pais'
      FixedChar = True
      Size = 3
    end
    object cdsEmpresacd_municipio_ibge: TIntegerField
      FieldName = 'cd_municipio_ibge'
    end
    object cdsEmpresanro_endereco: TStringField
      FieldName = 'nro_endereco'
      FixedChar = True
      Size = 60
    end
  end
  object qPessoa: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'SELECT NOME,LOWER(EMAIL_NFE) EMAIL_NFE FROM PESSOA'
      'WHERE CODIGO = :CODIGO')
    SQLConnection = dmDatabase.scoDados
    Left = 528
    Top = 328
    object qPessoaNOME: TStringField
      FieldName = 'NOME'
      Size = 60
    end
    object qPessoaEMAIL_NFE: TStringField
      FieldName = 'EMAIL_NFE'
      Size = 200
    end
  end
end
