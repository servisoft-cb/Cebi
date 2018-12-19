object DMCadAssinatura: TDMCadAssinatura
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 405
  Top = 204
  Height = 443
  Width = 853
  object sdsAssinatura: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM ASSINATURA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 96
    Top = 32
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
    Left = 168
    Top = 32
  end
  object cdsAssinatura: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspAssinatura'
    Left = 232
    Top = 32
    object cdsAssinaturaID: TIntegerField
      DisplayLabel = 'ID Assinatura'
      FieldName = 'ID'
      Required = True
    end
    object cdsAssinaturaNOME: TStringField
      DisplayLabel = 'Nome Assinatura'
      FieldName = 'NOME'
      Size = 70
    end
    object cdsAssinaturaOBS: TMemoField
      DisplayLabel = 'Obs'
      FieldName = 'OBS'
      BlobType = ftMemo
      Size = 1
    end
    object cdsAssinaturaVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
    end
    object cdsAssinaturaDTATUALIZACAO_VLR: TDateField
      DisplayLabel = 'Data '#218'ltima Atualiza'#231#227'o Pre'#231'o'
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
    Left = 304
    Top = 32
  end
  object dsAssinatura_Mestre: TDataSource
    DataSet = sdsAssinatura
    Left = 48
    Top = 88
  end
  object sdsAssinatura_Livro: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
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
    Left = 96
    Top = 160
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
    IndexFieldNames = 'ID;ITEM'
    Params = <>
    BeforeInsert = cdsAssinatura_LivroBeforeInsert
    AfterInsert = cdsAssinatura_LivroAfterInsert
    BeforePost = cdsAssinatura_LivroBeforePost
    Left = 184
    Top = 160
    object cdsAssinatura_LivroID: TIntegerField
      DisplayLabel = 'ID Assinatura'
      FieldName = 'ID'
      Required = True
    end
    object cdsAssinatura_LivroITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
      Required = True
    end
    object cdsAssinatura_LivroQTD: TIntegerField
      DisplayLabel = 'Qtd.'
      FieldName = 'QTD'
    end
    object cdsAssinatura_LivroNOME_PRODUTO_EBS: TStringField
      FieldName = 'NOME_PRODUTO_EBS'
      Size = 100
    end
    object cdsAssinatura_LivrolkNomeProduto: TStringField
      DisplayLabel = 'Nome Produto'
      FieldKind = fkLookup
      FieldName = 'lkNomeProduto'
      LookupDataSet = cdsProdutos
      LookupKeyFields = 'Codigo'
      LookupResultField = 'NomeProduto'
      KeyFields = 'COD_PRODUTO_EBS'
      Size = 100
      Lookup = True
    end
    object cdsAssinatura_LivroCOD_PRODUTO_EBS: TStringField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'COD_PRODUTO_EBS'
    end
  end
  object dsAssinatura_Livro: TDataSource
    DataSet = cdsAssinatura_Livro
    Left = 264
    Top = 160
  end
  object sdsPeriodo: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 'SELECT *'#13#10'FROM PERIODO'#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase.scoDados
    Left = 80
    Top = 232
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
    Left = 152
    Top = 232
  end
  object cdsPeriodo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPeriodo'
    Left = 216
    Top = 232
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
    Left = 288
    Top = 232
  end
  object dsProdutos: TDataSource
    DataSet = cdsProdutos
    Left = 728
    Top = 72
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
    Left = 576
    Top = 72
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
    Left = 624
    Top = 72
  end
  object cdsProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutos'
    Left = 688
    Top = 72
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
end
