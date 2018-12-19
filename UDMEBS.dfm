object DMEBS: TDMEBS
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 218
  Top = 89
  Height = 572
  Width = 1002
  object dsProdutos: TDataSource
    DataSet = cdsProdutos
    Left = 248
    Top = 392
  end
  object dsEmpresa: TDataSource
    DataSet = cdsEmpresa
    Left = 784
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
    Left = 80
    Top = 392
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
    Left = 128
    Top = 392
  end
  object cdsProdutos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspProdutos'
    Left = 192
    Top = 392
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
  object sdsFGEMunicipio: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT [cd_municipio]'#13#10'      ,[estado]'#13#10'      ,[desc_municipio]'#13 +
      #10'      ,[cd_ibge]'#13#10'      ,[per_iss]'#13#10'      ,[cod_mun_cordilheira' +
      ']'#13#10'      ,[cod_suframa]'#13#10'      ,[desconto_suframa]'#13#10'      ,[desc' +
      '_sem_acento]'#13#10'  FROM [dbo].[FGEMunicipio]'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase_EBS.Conexao_MSSQL
    Left = 88
    Top = 312
    object sdsFGEMunicipiocd_municipio: TIntegerField
      FieldName = 'cd_municipio'
      Required = True
    end
    object sdsFGEMunicipioestado: TStringField
      FieldName = 'estado'
      FixedChar = True
      Size = 2
    end
    object sdsFGEMunicipiodesc_municipio: TStringField
      FieldName = 'desc_municipio'
      FixedChar = True
      Size = 40
    end
    object sdsFGEMunicipiocd_ibge: TIntegerField
      FieldName = 'cd_ibge'
    end
    object sdsFGEMunicipioper_iss: TFloatField
      FieldName = 'per_iss'
    end
    object sdsFGEMunicipiocod_mun_cordilheira: TIntegerField
      FieldName = 'cod_mun_cordilheira'
    end
    object sdsFGEMunicipiocod_suframa: TIntegerField
      FieldName = 'cod_suframa'
    end
    object sdsFGEMunicipiodesconto_suframa: TBooleanField
      FieldName = 'desconto_suframa'
      Required = True
    end
    object sdsFGEMunicipiodesc_sem_acento: TStringField
      FieldName = 'desc_sem_acento'
      FixedChar = True
      Size = 255
    end
  end
  object dspFGEMunicipio: TDataSetProvider
    DataSet = sdsFGEMunicipio
    Left = 144
    Top = 312
  end
  object cdsFGEMunicipio: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspFGEMunicipio'
    Left = 208
    Top = 312
    object cdsFGEMunicipiocd_municipio: TIntegerField
      FieldName = 'cd_municipio'
      Required = True
    end
    object cdsFGEMunicipioestado: TStringField
      FieldName = 'estado'
      FixedChar = True
      Size = 2
    end
    object cdsFGEMunicipiodesc_municipio: TStringField
      FieldName = 'desc_municipio'
      FixedChar = True
      Size = 40
    end
    object cdsFGEMunicipiocd_ibge: TIntegerField
      FieldName = 'cd_ibge'
    end
    object cdsFGEMunicipioper_iss: TFloatField
      FieldName = 'per_iss'
    end
    object cdsFGEMunicipiocod_mun_cordilheira: TIntegerField
      FieldName = 'cod_mun_cordilheira'
    end
    object cdsFGEMunicipiocod_suframa: TIntegerField
      FieldName = 'cod_suframa'
    end
    object cdsFGEMunicipiodesconto_suframa: TBooleanField
      FieldName = 'desconto_suframa'
      Required = True
    end
    object cdsFGEMunicipiodesc_sem_acento: TStringField
      FieldName = 'desc_sem_acento'
      FixedChar = True
      Size = 255
    end
  end
  object sdsEmpresa: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT [Apel]'#13#10'      ,[Raz'#227'o]'#13#10'      ,[Tipo]'#13#10'      ,[Cadastro]'#13 +
      #10'      ,[Pessoa]'#13#10'      ,[CNPJ/CPF]'#13#10'      ,[IEst/RG]'#13#10'      ,[C' +
      'CM]'#13#10'      ,[Ramo]'#13#10'      ,[Endere'#231'o]'#13#10'      ,[Bairro]'#13#10'      ,[' +
      'CEP]'#13#10'      ,[Cidade]'#13#10'      ,[Estado]'#13#10'      ,[Suframa]'#13#10'      ' +
      ',[Regi'#227'o]'#13#10'      ,[Pa'#237's]'#13#10'      ,[Fone1]'#13#10'      ,[Ramal1]'#13#10'     ' +
      ' ,[Fone2]'#13#10'      ,[Ramal2]'#13#10'      ,[Fax]'#13#10'      ,[Contato]'#13#10'    ' +
      '  ,[Dpto]'#13#10'      ,[Vendedor]'#13#10'      ,[CondPag]'#13#10'      ,[Cr'#233'dito]' +
      #13#10'      ,[Transp]'#13#10'      ,[e-mail]'#13#10'      ,[Site]'#13#10'      ,[Bloqu' +
      'eado]'#13#10'      ,[Obs Financeira]'#13#10'      ,[Obs Gerais]'#13#10'      ,[Obs' +
      'erva'#231#245'es Globais]'#13#10'      ,[Hora]'#13#10'      ,[Hora2]'#13#10'      ,[Tabela' +
      ' de Pre'#231'os]'#13#10'      ,[Vendedor2]'#13#10'      ,[Vendedor3]'#13#10'      ,['#218'lt' +
      'ima Atualiza'#231#227'o]'#13#10'      ,['#218'ltima Atualiza'#231#227'o Hora]'#13#10'      ,[Proc' +
      'ed'#234'ncia]'#13#10'      ,[Cliente Bloqueado]'#13#10'      ,[Tipo de Compra]'#13#10' ' +
      '     ,[Conta]'#13#10'      ,[Banco]'#13#10'      ,[Conta Cont'#225'bil Cliente]'#13#10 +
      '      ,[Conta Cont'#225'bil Fornecedor]'#13#10'      ,[Ag'#234'ncia]'#13#10'      ,[D'#237 +
      'gito da Ag'#234'ncia]'#13#10'      ,[Conta Corrente]'#13#10'      ,[D'#237'gito da Con' +
      'ta Corrente]'#13#10'      ,[Desconto por Pontualidade]'#13#10'      ,[DescPo' +
      'rCliente]'#13#10'      ,[FixVar]'#13#10'      ,[AbrEmp]'#13#10'      ,[PercFrete]'#13 +
      #10'      ,[PercEmbalagem]'#13#10'      ,[BCOPGT]'#13#10'      ,[CONMRE]'#13#10'     ' +
      ' ,[VariasTabelas]'#13#10'      ,[ClienteIntFiscal]'#13#10'      ,[Fornecedor' +
      'IntFiscal]'#13#10'      ,[CodFoxDados]'#13#10'      ,[calcula_pis]'#13#10'      ,[' +
      'calcula_cofins]'#13#10'      ,[contribuinte_icms]'#13#10'      ,[chk_simples' +
      '_nacional]'#13#10'      ,[cd_municipio_ibge]'#13#10'      ,[cd_cnae_fiscal]'#13 +
      #10'      ,[cod_exportador]'#13#10'      ,[codigo_formapagamento]'#13#10'      ' +
      ',[per_credito_icms]'#13#10'      ,[email_nfe]'#13#10'      ,[descontarbaseST' +
      '_SUFRAMA]'#13#10'      ,[prorural]'#13#10'      ,[tplograd]'#13#10'      ,[complem' +
      ']'#13#10'      ,[ddd_cel]'#13#10'      ,[celular]'#13#10'      ,[data_integracao]'#13 +
      #10'      ,[prod_rural]'#13#10'      ,[tp_doc_RG_IE]'#13#10'      ,[per_pis]'#13#10' ' +
      '     ,[per_cofins]'#13#10'      ,[per_ret_csll]'#13#10'      ,[per_ret_ir]'#13#10 +
      '      ,[reter_pis_cof_cs_ir_produto]'#13#10'      ,[Obs_para_Nota_Fisc' +
      'al]'#13#10'      ,[data_base_1]'#13#10'      ,[data_base_2]'#13#10'      ,[indice_' +
      'data_base_1]'#13#10'      ,[indice_data_base_2]'#13#10'  FROM [FOX_00001].[d' +
      'bo].[Empresas]'#13#10#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase_EBS.Conexao_MSSQL
    Left = 624
    Top = 72
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
  end
  object dspEmpresa: TDataSetProvider
    DataSet = sdsEmpresa
    Left = 672
    Top = 72
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa'
    Left = 728
    Top = 72
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
  end
  object sdsEmpresa_Endereco: TSQLDataSet
    NoMetadata = True
    GetMetadata = False
    CommandText = 
      'SELECT [Apel]'#13#10'      ,[C'#243'digo]'#13#10'      ,[Tipo]'#13#10'      ,[Endere'#231'o]' +
      #13#10'      ,[Bairro]'#13#10'      ,[CEP]'#13#10'      ,[Cidade]'#13#10'      ,[Estado' +
      ']'#13#10'      ,[Pessoa]'#13#10'      ,[CNPJ/CPF]'#13#10'      ,[IEst/RG]'#13#10'      ,' +
      '[Fone]'#13#10'      ,[Ramal]'#13#10'      ,[cd_pais]'#13#10'      ,[cd_municipio_i' +
      'bge]'#13#10'  FROM [FOX_00001].[dbo].[Empresas Endere'#231'os]'#13#10#13#10#13#10#13#10
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dmDatabase_EBS.Conexao_MSSQL
    Left = 624
    Top = 136
    object sdsEmpresa_EnderecoApel: TStringField
      FieldName = 'Apel'
      Required = True
      FixedChar = True
      Size = 15
    end
    object sdsEmpresa_EnderecoCdigo: TSmallintField
      FieldName = 'C'#243'digo'
      Required = True
    end
    object sdsEmpresa_EnderecoTipo: TStringField
      FieldName = 'Tipo'
      Required = True
      FixedChar = True
      Size = 13
    end
    object sdsEmpresa_EnderecoEndereo: TStringField
      FieldName = 'Endere'#231'o'
      FixedChar = True
      Size = 70
    end
    object sdsEmpresa_EnderecoBairro: TStringField
      FieldName = 'Bairro'
      FixedChar = True
    end
    object sdsEmpresa_EnderecoCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 9
    end
    object sdsEmpresa_EnderecoCidade: TStringField
      FieldName = 'Cidade'
      FixedChar = True
      Size = 30
    end
    object sdsEmpresa_EnderecoEstado: TStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 2
    end
    object sdsEmpresa_EnderecoPessoa: TStringField
      FieldName = 'Pessoa'
      Required = True
      FixedChar = True
      Size = 8
    end
    object sdsEmpresa_EnderecoCNPJCPF: TStringField
      FieldName = 'CNPJ/CPF'
      FixedChar = True
      Size = 18
    end
    object sdsEmpresa_EnderecoIEstRG: TStringField
      FieldName = 'IEst/RG'
      FixedChar = True
      Size = 18
    end
    object sdsEmpresa_EnderecoFone: TStringField
      FieldName = 'Fone'
      FixedChar = True
      Size = 15
    end
    object sdsEmpresa_EnderecoRamal: TStringField
      FieldName = 'Ramal'
      FixedChar = True
      Size = 10
    end
    object sdsEmpresa_Enderecocd_pais: TStringField
      FieldName = 'cd_pais'
      FixedChar = True
      Size = 3
    end
    object sdsEmpresa_Enderecocd_municipio_ibge: TIntegerField
      FieldName = 'cd_municipio_ibge'
    end
  end
  object dspEmpresa_Endereco: TDataSetProvider
    DataSet = sdsEmpresa_Endereco
    Left = 680
    Top = 136
  end
  object cdsEmpresa_Endereco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspEmpresa_Endereco'
    Left = 744
    Top = 136
    object cdsEmpresa_EnderecoApel: TStringField
      FieldName = 'Apel'
      Required = True
      FixedChar = True
      Size = 15
    end
    object cdsEmpresa_EnderecoCdigo: TSmallintField
      FieldName = 'C'#243'digo'
      Required = True
    end
    object cdsEmpresa_EnderecoTipo: TStringField
      FieldName = 'Tipo'
      Required = True
      FixedChar = True
      Size = 13
    end
    object cdsEmpresa_EnderecoEndereo: TStringField
      FieldName = 'Endere'#231'o'
      FixedChar = True
      Size = 70
    end
    object cdsEmpresa_EnderecoBairro: TStringField
      FieldName = 'Bairro'
      FixedChar = True
    end
    object cdsEmpresa_EnderecoCEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 9
    end
    object cdsEmpresa_EnderecoCidade: TStringField
      FieldName = 'Cidade'
      FixedChar = True
      Size = 30
    end
    object cdsEmpresa_EnderecoEstado: TStringField
      FieldName = 'Estado'
      FixedChar = True
      Size = 2
    end
    object cdsEmpresa_EnderecoPessoa: TStringField
      FieldName = 'Pessoa'
      Required = True
      FixedChar = True
      Size = 8
    end
    object cdsEmpresa_EnderecoCNPJCPF: TStringField
      FieldName = 'CNPJ/CPF'
      FixedChar = True
      Size = 18
    end
    object cdsEmpresa_EnderecoIEstRG: TStringField
      FieldName = 'IEst/RG'
      FixedChar = True
      Size = 18
    end
    object cdsEmpresa_EnderecoFone: TStringField
      FieldName = 'Fone'
      FixedChar = True
      Size = 15
    end
    object cdsEmpresa_EnderecoRamal: TStringField
      FieldName = 'Ramal'
      FixedChar = True
      Size = 10
    end
    object cdsEmpresa_Enderecocd_pais: TStringField
      FieldName = 'cd_pais'
      FixedChar = True
      Size = 3
    end
    object cdsEmpresa_Enderecocd_municipio_ibge: TIntegerField
      FieldName = 'cd_municipio_ibge'
    end
  end
end
