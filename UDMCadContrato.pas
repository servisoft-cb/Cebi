unit UDMCadContrato;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr, dbXPress, Dialogs;

type
  TDMCadContrato = class(TDataModule)
    sdsContrato: TSQLDataSet;
    dspContrato: TDataSetProvider;
    cdsContrato: TClientDataSet;
    dsContrato: TDataSource;
    sdsContratoID_CLIENTE: TIntegerField;
    sdsContratoID_ASSINATURA: TIntegerField;
    sdsContratoDTCONTRATO: TDateField;
    sdsContratoDTCOBRANCA: TDateField;
    sdsContratoQTD: TFloatField;
    sdsContratoPERIODO: TStringField;
    sdsContratoDTENCERRAMENTO: TDateField;
    cdsContratoID_CLIENTE: TIntegerField;
    cdsContratoID_ASSINATURA: TIntegerField;
    cdsContratoDTCONTRATO: TDateField;
    cdsContratoDTCOBRANCA: TDateField;
    cdsContratoQTD: TFloatField;
    cdsContratoPERIODO: TStringField;
    cdsContratoDTENCERRAMENTO: TDateField;
    sdsAssinatura: TSQLDataSet;
    dspAssinatura: TDataSetProvider;
    cdsAssinatura: TClientDataSet;
    dsAssinatura: TDataSource;
    sdsAssinaturaID: TIntegerField;
    sdsAssinaturaNOME: TStringField;
    sdsAssinaturaOBS: TMemoField;
    sdsAssinaturaVALOR: TFloatField;
    sdsAssinaturaDTATUALIZACAO_VLR: TDateField;
    cdsAssinaturaID: TIntegerField;
    cdsAssinaturaNOME: TStringField;
    cdsAssinaturaOBS: TMemoField;
    cdsAssinaturaVALOR: TFloatField;
    cdsAssinaturaDTATUALIZACAO_VLR: TDateField;
    sdsContrato_Consulta: TSQLDataSet;
    dspContrato_Consulta: TDataSetProvider;
    cdsContrato_Consulta: TClientDataSet;
    dsContrato_Consulta: TDataSource;
    sdsContrato_ConsultaID_CLIENTE: TIntegerField;
    sdsContrato_ConsultaID_ASSINATURA: TIntegerField;
    sdsContrato_ConsultaDTCONTRATO: TDateField;
    sdsContrato_ConsultaDTCOBRANCA: TDateField;
    sdsContrato_ConsultaQTD: TFloatField;
    sdsContrato_ConsultaPERIODO: TStringField;
    sdsContrato_ConsultaDTENCERRAMENTO: TDateField;
    sdsContrato_ConsultaNOMECLIENTE: TStringField;
    sdsContrato_ConsultaNOMEASSINATURA: TStringField;
    cdsContrato_ConsultaID_CLIENTE: TIntegerField;
    cdsContrato_ConsultaID_ASSINATURA: TIntegerField;
    cdsContrato_ConsultaDTCONTRATO: TDateField;
    cdsContrato_ConsultaDTCOBRANCA: TDateField;
    cdsContrato_ConsultaQTD: TFloatField;
    cdsContrato_ConsultaPERIODO: TStringField;
    cdsContrato_ConsultaDTENCERRAMENTO: TDateField;
    cdsContrato_ConsultaNOMEASSINATURA: TStringField;
    sdsPessoa: TSQLDataSet;
    dspPessoa: TDataSetProvider;
    cdsPessoa: TClientDataSet;
    dsPessoa: TDataSource;
    sdsPessoaCODIGO: TIntegerField;
    sdsPessoaNOME: TStringField;
    sdsPessoaFANTASIA: TStringField;
    sdsPessoaENDERECO: TStringField;
    sdsPessoaCOMPLEMENTO_END: TStringField;
    sdsPessoaNUM_END: TStringField;
    sdsPessoaBAIRRO: TStringField;
    sdsPessoaID_CIDADE: TIntegerField;
    sdsPessoaCIDADE: TStringField;
    sdsPessoaUF: TStringField;
    sdsPessoaCEP: TStringField;
    sdsPessoaDDDFONE1: TIntegerField;
    sdsPessoaTELEFONE1: TStringField;
    sdsPessoaDDDFONE2: TIntegerField;
    sdsPessoaTELEFONE2: TStringField;
    sdsPessoaDDDFAX: TIntegerField;
    sdsPessoaFAX: TStringField;
    sdsPessoaPESSOA: TStringField;
    sdsPessoaCNPJ_CPF: TStringField;
    sdsPessoaINSCR_EST: TStringField;
    sdsPessoaENDERECO_ENT: TStringField;
    sdsPessoaCOMPLEMENTO_END_ENT: TStringField;
    sdsPessoaNUM_END_ENT: TStringField;
    sdsPessoaBAIRRO_ENT: TStringField;
    sdsPessoaID_CIDADE_ENT: TIntegerField;
    sdsPessoaCIDADE_ENT: TStringField;
    sdsPessoaCEP_ENT: TStringField;
    sdsPessoaUF_ENT: TStringField;
    sdsPessoaPESSOA_ENT: TStringField;
    sdsPessoaCNPJ_CPF_ENT: TStringField;
    sdsPessoaINSC_EST_ENT: TStringField;
    sdsPessoaENDERECO_PGTO: TStringField;
    sdsPessoaCOMPLEMENTO_END_PGTO: TStringField;
    sdsPessoaNUM_END_PGTO: TStringField;
    sdsPessoaBAIRRO_PGTO: TStringField;
    sdsPessoaID_CIDADE_PGTO: TIntegerField;
    sdsPessoaCIDADE_PGTO: TStringField;
    sdsPessoaCEP_PGTO: TStringField;
    sdsPessoaUF_PGTO: TStringField;
    sdsPessoaUSUARIO: TStringField;
    sdsPessoaDTCADASTRO: TDateField;
    sdsPessoaHRCADASTRO: TTimeField;
    sdsPessoaOBS: TMemoField;
    sdsPessoaCAIXAPOSTAL: TStringField;
    sdsPessoaRG: TStringField;
    sdsPessoaID_PAIS: TIntegerField;
    sdsPessoaDDD_ENT: TIntegerField;
    sdsPessoaFONE_ENT: TStringField;
    sdsPessoaDDD_PGTO: TIntegerField;
    sdsPessoaFONE_PGTO: TStringField;
    sdsPessoaINATIVO: TStringField;
    sdsPessoaNOME_ENTREGA: TStringField;
    sdsPessoaPESSOA_PGTO: TStringField;
    sdsPessoaCNPJ_CPG_PGTO: TStringField;
    sdsPessoaINSC_EST_PGTO: TStringField;
    sdsPessoaTP_CLIENTE: TStringField;
    sdsPessoaTP_FORNECEDOR: TStringField;
    sdsPessoaTP_TRANSPORTADORA: TStringField;
    sdsPessoaTP_VENDEDOR: TStringField;
    sdsPessoaAPEL_EBS: TStringField;
    sdsPessoaEMAIL_NFE: TStringField;
    cdsPessoaCODIGO: TIntegerField;
    cdsPessoaNOME: TStringField;
    cdsPessoaFANTASIA: TStringField;
    cdsPessoaENDERECO: TStringField;
    cdsPessoaCOMPLEMENTO_END: TStringField;
    cdsPessoaNUM_END: TStringField;
    cdsPessoaBAIRRO: TStringField;
    cdsPessoaID_CIDADE: TIntegerField;
    cdsPessoaCIDADE: TStringField;
    cdsPessoaUF: TStringField;
    cdsPessoaCEP: TStringField;
    cdsPessoaDDDFONE1: TIntegerField;
    cdsPessoaTELEFONE1: TStringField;
    cdsPessoaDDDFONE2: TIntegerField;
    cdsPessoaTELEFONE2: TStringField;
    cdsPessoaDDDFAX: TIntegerField;
    cdsPessoaFAX: TStringField;
    cdsPessoaPESSOA: TStringField;
    cdsPessoaCNPJ_CPF: TStringField;
    cdsPessoaINSCR_EST: TStringField;
    cdsPessoaENDERECO_ENT: TStringField;
    cdsPessoaCOMPLEMENTO_END_ENT: TStringField;
    cdsPessoaNUM_END_ENT: TStringField;
    cdsPessoaBAIRRO_ENT: TStringField;
    cdsPessoaID_CIDADE_ENT: TIntegerField;
    cdsPessoaCIDADE_ENT: TStringField;
    cdsPessoaCEP_ENT: TStringField;
    cdsPessoaUF_ENT: TStringField;
    cdsPessoaPESSOA_ENT: TStringField;
    cdsPessoaCNPJ_CPF_ENT: TStringField;
    cdsPessoaINSC_EST_ENT: TStringField;
    cdsPessoaENDERECO_PGTO: TStringField;
    cdsPessoaCOMPLEMENTO_END_PGTO: TStringField;
    cdsPessoaNUM_END_PGTO: TStringField;
    cdsPessoaBAIRRO_PGTO: TStringField;
    cdsPessoaID_CIDADE_PGTO: TIntegerField;
    cdsPessoaCIDADE_PGTO: TStringField;
    cdsPessoaCEP_PGTO: TStringField;
    cdsPessoaUF_PGTO: TStringField;
    cdsPessoaUSUARIO: TStringField;
    cdsPessoaDTCADASTRO: TDateField;
    cdsPessoaHRCADASTRO: TTimeField;
    cdsPessoaOBS: TMemoField;
    cdsPessoaCAIXAPOSTAL: TStringField;
    cdsPessoaRG: TStringField;
    cdsPessoaID_PAIS: TIntegerField;
    cdsPessoaDDD_ENT: TIntegerField;
    cdsPessoaFONE_ENT: TStringField;
    cdsPessoaDDD_PGTO: TIntegerField;
    cdsPessoaFONE_PGTO: TStringField;
    cdsPessoaINATIVO: TStringField;
    cdsPessoaNOME_ENTREGA: TStringField;
    cdsPessoaPESSOA_PGTO: TStringField;
    cdsPessoaCNPJ_CPG_PGTO: TStringField;
    cdsPessoaINSC_EST_PGTO: TStringField;
    cdsPessoaTP_CLIENTE: TStringField;
    cdsPessoaTP_FORNECEDOR: TStringField;
    cdsPessoaTP_TRANSPORTADORA: TStringField;
    cdsPessoaTP_VENDEDOR: TStringField;
    cdsPessoaAPEL_EBS: TStringField;
    cdsPessoaEMAIL_NFE: TStringField;
    sdsContrato_ConsultaAPEL_EBS: TStringField;
    cdsContrato_ConsultaAPEL_EBS: TStringField;
    sdsPeriodo: TSQLDataSet;
    dspPeriodo: TDataSetProvider;
    cdsPeriodo: TClientDataSet;
    dsPeriodo: TDataSource;
    sdsPeriodoID: TIntegerField;
    sdsPeriodoNOME: TStringField;
    sdsPeriodoQTD_MES: TIntegerField;
    cdsPeriodoID: TIntegerField;
    cdsPeriodoNOME: TStringField;
    cdsPeriodoQTD_MES: TIntegerField;
    sdsContratoID_PERIODO: TIntegerField;
    cdsContratoID_PERIODO: TIntegerField;
    sdsContrato_ConsultaID_PERIODO: TIntegerField;
    cdsContrato_ConsultaID_PERIODO: TIntegerField;
    sdsContrato_ConsultaNOMEPERIODO: TStringField;
    sdsContrato_ConsultaQTD_MES: TIntegerField;
    cdsContrato_ConsultaNOMEPERIODO: TStringField;
    cdsContrato_ConsultaQTD_MES: TIntegerField;
    sdsContratoAPEL_EBS: TStringField;
    cdsContratoAPEL_EBS: TStringField;
    sdsContratoVLR_UNITARIO: TFloatField;
    sdsContratoVLR_TOTAL: TFloatField;
    cdsContratoVLR_UNITARIO: TFloatField;
    cdsContratoVLR_TOTAL: TFloatField;
    sdsContratoGEROU_DUPLICATA: TStringField;
    cdsContratoGEROU_DUPLICATA: TStringField;
    sdsContratoANO_CONTRATO: TIntegerField;
    cdsContratoANO_CONTRATO: TIntegerField;
    qProximoContrato: TSQLQuery;
    qProximoContratoNUM_CONTRATO: TIntegerField;
    sdsContrato_ConsultaVLR_UNITARIO: TFloatField;
    sdsContrato_ConsultaVLR_TOTAL: TFloatField;
    sdsContrato_ConsultaGEROU_DUPLICATA: TStringField;
    sdsContrato_ConsultaANO_CONTRATO: TIntegerField;
    cdsContrato_ConsultaVLR_UNITARIO: TFloatField;
    cdsContrato_ConsultaVLR_TOTAL: TFloatField;
    cdsContrato_ConsultaGEROU_DUPLICATA: TStringField;
    cdsContrato_ConsultaANO_CONTRATO: TIntegerField;
    sdsAssinaturaID_PERIODO: TIntegerField;
    cdsAssinaturaID_PERIODO: TIntegerField;
    sdsContratoID: TFMTBCDField;
    cdsContratoID: TFMTBCDField;
    sdsContratoNUM_CONTRATO: TStringField;
    sdsContratoNUM_CONTRATO_INT: TIntegerField;
    cdsContratoNUM_CONTRATO: TStringField;
    cdsContratoNUM_CONTRATO_INT: TIntegerField;
    sdsContrato_ConsultaID: TFMTBCDField;
    sdsContrato_ConsultaNUM_CONTRATO: TStringField;
    sdsContrato_ConsultaNUM_CONTRATO_INT: TIntegerField;
    cdsContrato_ConsultaID: TFMTBCDField;
    cdsContrato_ConsultaNUM_CONTRATO: TStringField;
    cdsContrato_ConsultaNUM_CONTRATO_INT: TIntegerField;
    sdsContratoPRE_CONTRATO: TStringField;
    cdsContratoPRE_CONTRATO: TStringField;
    sdsContratoENCERRADO: TStringField;
    cdsContratoENCERRADO: TStringField;
    sdsContrato_ConsultaPRE_CONTRATO: TStringField;
    sdsContrato_ConsultaENCERRADO: TStringField;
    sdsContrato_ConsultaANO_CONTRATO_ANT: TIntegerField;
    sdsContrato_ConsultaNUM_CONTRATO_INT_ANT: TIntegerField;
    cdsContrato_ConsultaPRE_CONTRATO: TStringField;
    cdsContrato_ConsultaENCERRADO: TStringField;
    cdsContrato_ConsultaANO_CONTRATO_ANT: TIntegerField;
    cdsContrato_ConsultaNUM_CONTRATO_INT_ANT: TIntegerField;
    sdsContratoANO_CONTRATO_ANT: TIntegerField;
    sdsContratoNUM_CONTRATO_INT_ANT: TIntegerField;
    cdsContratoANO_CONTRATO_ANT: TIntegerField;
    cdsContratoNUM_CONTRATO_INT_ANT: TIntegerField;
    sdsContratoNUM_CONTRATO_ANT: TStringField;
    sdsContratoID_ANT: TIntegerField;
    cdsContratoNUM_CONTRATO_ANT: TStringField;
    cdsContratoID_ANT: TIntegerField;
    sdsContratoGEROU_PRE_CONTRATO: TStringField;
    sdsContratoOBS: TMemoField;
    sdsContratoNUM_PEDIDO: TIntegerField;
    cdsContratoGEROU_PRE_CONTRATO: TStringField;
    cdsContratoOBS: TMemoField;
    cdsContratoNUM_PEDIDO: TIntegerField;
    sdsContrato_ConsultaNUM_PEDIDO: TIntegerField;
    cdsContrato_ConsultaNUM_PEDIDO: TIntegerField;
    sdsContrato_ConsultaNUM_CONTRATO_ANT: TStringField;
    cdsContrato_ConsultaNUM_CONTRATO_ANT: TStringField;
    sdsContrato_ConsultaGEROU_PRE_CONTRATO: TStringField;
    cdsContrato_ConsultaGEROU_PRE_CONTRATO: TStringField;
    qContrato_Ant: TSQLQuery;
    qContrato_AntNUM_CONTRATO: TStringField;
    qContrato_AntNUM_CONTRATO_ANT: TStringField;
    sdsContratoDTBAIXA: TDateField;
    cdsContratoDTBAIXA: TDateField;
    mConsulta: TClientDataSet;
    mConsultaNumContrato: TStringField;
    mConsultaID_Cliente: TIntegerField;
    mConsultaNomeCliente: TStringField;
    mConsultaApel_EBS: TStringField;
    mConsultaDtContrato: TDateField;
    dsmConsulta: TDataSource;
    mConsultaStatus: TStringField;
    mConsultaNomeAssinatura: TStringField;
    mConsultaExisteApel: TBooleanField;
    mConsultaExisteEnd: TBooleanField;
    sdsContratoDTEMISSAO: TDateField;
    cdsContratoDTEMISSAO: TDateField;
    dsProdutos: TDataSource;
    sdsProdutos: TSQLDataSet;
    sdsProdutosCodigo: TStringField;
    sdsProdutosNomeProduto: TStringField;
    sdsProdutosTipo: TStringField;
    sdsProdutosLinha01: TStringField;
    sdsProdutosLinha02: TStringField;
    sdsProdutosLinha03: TStringField;
    sdsProdutosMarca: TStringField;
    sdsProdutosUnidade: TStringField;
    sdsProdutosUnidadeEntrada: TStringField;
    sdsProdutosUnidadeAuxiliar: TStringField;
    sdsProdutosUnidadeAuxiliar1: TStringField;
    sdsProdutosUnidadedeCompra: TStringField;
    sdsProdutosAtacadosomentesemaiorque: TIntegerField;
    sdsProdutosPesoLquido: TFloatField;
    sdsProdutosLocalizaodoProduto: TStringField;
    sdsProdutosDiasparaReposio: TSmallintField;
    sdsProdutosMesesdegarantia: TSmallintField;
    sdsProdutosGrupo: TIntegerField;
    sdsProdutosSubgrupo: TIntegerField;
    sdsProdutosSituaodoProduto: TStringField;
    sdsProdutosSituaoTributria: TStringField;
    sdsProdutosCdigodoNCM: TStringField;
    sdsProdutosLetradoNCM: TStringField;
    sdsProdutosReal: TFloatField;
    sdsProdutosVirtual: TFloatField;
    sdsProdutosMnimo: TFloatField;
    sdsProdutosMximo: TFloatField;
    sdsProdutosMdiadeVendas: TFloatField;
    sdsProdutosMdiadeFabricao: TFloatField;
    sdsProdutosLoteMnimodeCompras: TFloatField;
    sdsProdutosLoteMnimodeVendas: TFloatField;
    sdsProdutosLoteMnimodeFabricao: TFloatField;
    sdsProdutosValordeCompra: TFloatField;
    sdsProdutosValordeVenda: TFloatField;
    sdsProdutosMargemdeVenda: TFloatField;
    sdsProdutosVendaAtacado: TFloatField;
    sdsProdutosVendaVarejo: TFloatField;
    sdsProdutosMargemAtacado: TFloatField;
    sdsProdutosMargemVarejo: TFloatField;
    sdsProdutosValordeTransferncia: TFloatField;
    sdsProdutosValorPromoo: TFloatField;
    sdsProdutosValidadedaPromoo: TSQLTimeStampField;
    sdsProdutosValorPromooAtacado: TFloatField;
    sdsProdutosValidadedaPromooAtacado: TSQLTimeStampField;
    sdsProdutosValorPromooVarejo: TFloatField;
    sdsProdutosValidadedaPromooVarejo: TSQLTimeStampField;
    sdsProdutosltimaAtualizaodoProduto: TSQLTimeStampField;
    sdsProdutosltimaAtualizaodeVenda: TSQLTimeStampField;
    sdsProdutosQuantidadeporVolume: TFloatField;
    sdsProdutosNmerodoDesenho: TStringField;
    sdsProdutosEspecificaesTcnicas: TMemoField;
    sdsProdutosCdigodeBarras: TStringField;
    sdsProdutosListadePreos: TBooleanField;
    sdsProdutosComisso: TFloatField;
    sdsProdutosMoedaVenda: TStringField;
    sdsProdutosCondiodePagamento: TSmallintField;
    sdsProdutosMargemdeVendaSubstituioTr: TFloatField;
    sdsProdutosValordosMateriais: TFloatField;
    sdsProdutosValordaModeObra: TFloatField;
    sdsProdutosCentro: TIntegerField;
    sdsProdutosOutrasInformaes01: TStringField;
    sdsProdutosOutrasInformaes02: TStringField;
    sdsProdutosOutrasInformaes03: TStringField;
    sdsProdutosOutrasInformaes04: TStringField;
    sdsProdutosOutrasInformaes05: TStringField;
    sdsProdutosOutrasInformaes06: TStringField;
    sdsProdutosOutrasInformaes07: TStringField;
    sdsProdutosOutrasInformaes08: TStringField;
    sdsProdutosOutrasInformaes09: TStringField;
    sdsProdutosOutrasInformaes10: TStringField;
    sdsProdutosArquivocomEspecificaoTcni: TStringField;
    sdsProdutosFatordeConversodeUnidadep: TFloatField;
    sdsProdutosObrigatrioLicena: TBooleanField;
    sdsProdutosFoto: TBlobField;
    sdsProdutosDatadoInventrio: TSQLTimeStampField;
    sdsProdutosVendedor01: TSmallintField;
    sdsProdutosValordeCompraOriginal: TFloatField;
    sdsProdutosValordeDescontonaCompra: TFloatField;
    sdsProdutosUnidadeVlrVenda: TStringField;
    sdsProdutosArea: TFloatField;
    sdsProdutosCODIPI: TIntegerField;
    sdsProdutosLOCPAD: TStringField;
    sdsProdutosCUSPRO: TFloatField;
    sdsProdutosPerDmx: TFloatField;
    sdsProdutosICMVEN: TFloatField;
    sdsProdutosICMCOM: TFloatField;
    sdsProdutosUMEPRO: TStringField;
    sdsProdutoscd_conta_contabil: TIntegerField;
    sdsProdutoscd_formacalculo_icmsst: TIntegerField;
    sdsProdutospr_aliquota_int_icmsst: TFMTBCDField;
    sdsProdutosultimo_lote: TStringField;
    sdsProdutosultima_serie: TStringField;
    sdsProdutospeso_embalagem: TFMTBCDField;
    sdsProdutossit_trib_ipi: TStringField;
    sdsProdutossit_trib_pis: TStringField;
    sdsProdutossit_trib_cofins: TStringField;
    sdsProdutosproduto_configuravel: TBooleanField;
    sdsProdutosprodpeso: TStringField;
    sdsProdutosdata_integracao: TSQLTimeStampField;
    sdsProdutosaliquota_diferenciada: TFloatField;
    sdsProdutosconteudo_importacao: TFloatField;
    sdsProdutosproduto_importacao: TBooleanField;
    sdsProdutosgera_fci: TBooleanField;
    sdsProdutosnr_controle_fci: TStringField;
    dspProdutos: TDataSetProvider;
    cdsProdutos: TClientDataSet;
    cdsProdutosCodigo: TStringField;
    cdsProdutosNomeProduto: TStringField;
    cdsProdutosTipo: TStringField;
    cdsProdutosLinha01: TStringField;
    cdsProdutosLinha02: TStringField;
    cdsProdutosLinha03: TStringField;
    cdsProdutosMarca: TStringField;
    cdsProdutosUnidade: TStringField;
    cdsProdutosUnidadeEntrada: TStringField;
    cdsProdutosUnidadeAuxiliar: TStringField;
    cdsProdutosUnidadeAuxiliar1: TStringField;
    cdsProdutosUnidadedeCompra: TStringField;
    cdsProdutosAtacadosomentesemaiorque: TIntegerField;
    cdsProdutosPesoLquido: TFloatField;
    cdsProdutosLocalizaodoProduto: TStringField;
    cdsProdutosDiasparaReposio: TSmallintField;
    cdsProdutosMesesdegarantia: TSmallintField;
    cdsProdutosGrupo: TIntegerField;
    cdsProdutosSubgrupo: TIntegerField;
    cdsProdutosSituaodoProduto: TStringField;
    cdsProdutosSituaoTributria: TStringField;
    cdsProdutosCdigodoNCM: TStringField;
    cdsProdutosLetradoNCM: TStringField;
    cdsProdutosReal: TFloatField;
    cdsProdutosVirtual: TFloatField;
    cdsProdutosMnimo: TFloatField;
    cdsProdutosMximo: TFloatField;
    cdsProdutosMdiadeVendas: TFloatField;
    cdsProdutosMdiadeFabricao: TFloatField;
    cdsProdutosLoteMnimodeCompras: TFloatField;
    cdsProdutosLoteMnimodeVendas: TFloatField;
    cdsProdutosLoteMnimodeFabricao: TFloatField;
    cdsProdutosValordeCompra: TFloatField;
    cdsProdutosValordeVenda: TFloatField;
    cdsProdutosMargemdeVenda: TFloatField;
    cdsProdutosVendaAtacado: TFloatField;
    cdsProdutosVendaVarejo: TFloatField;
    cdsProdutosMargemAtacado: TFloatField;
    cdsProdutosMargemVarejo: TFloatField;
    cdsProdutosValordeTransferncia: TFloatField;
    cdsProdutosValorPromoo: TFloatField;
    cdsProdutosValidadedaPromoo: TSQLTimeStampField;
    cdsProdutosValorPromooAtacado: TFloatField;
    cdsProdutosValidadedaPromooAtacado: TSQLTimeStampField;
    cdsProdutosValorPromooVarejo: TFloatField;
    cdsProdutosValidadedaPromooVarejo: TSQLTimeStampField;
    cdsProdutosltimaAtualizaodoProduto: TSQLTimeStampField;
    cdsProdutosltimaAtualizaodeVenda: TSQLTimeStampField;
    cdsProdutosQuantidadeporVolume: TFloatField;
    cdsProdutosNmerodoDesenho: TStringField;
    cdsProdutosEspecificaesTcnicas: TMemoField;
    cdsProdutosCdigodeBarras: TStringField;
    cdsProdutosListadePreos: TBooleanField;
    cdsProdutosComisso: TFloatField;
    cdsProdutosMoedaVenda: TStringField;
    cdsProdutosCondiodePagamento: TSmallintField;
    cdsProdutosMargemdeVendaSubstituioTr: TFloatField;
    cdsProdutosValordosMateriais: TFloatField;
    cdsProdutosValordaModeObra: TFloatField;
    cdsProdutosCentro: TIntegerField;
    cdsProdutosOutrasInformaes01: TStringField;
    cdsProdutosOutrasInformaes02: TStringField;
    cdsProdutosOutrasInformaes03: TStringField;
    cdsProdutosOutrasInformaes04: TStringField;
    cdsProdutosOutrasInformaes05: TStringField;
    cdsProdutosOutrasInformaes06: TStringField;
    cdsProdutosOutrasInformaes07: TStringField;
    cdsProdutosOutrasInformaes08: TStringField;
    cdsProdutosOutrasInformaes09: TStringField;
    cdsProdutosOutrasInformaes10: TStringField;
    cdsProdutosArquivocomEspecificaoTcni: TStringField;
    cdsProdutosFatordeConversodeUnidadep: TFloatField;
    cdsProdutosObrigatrioLicena: TBooleanField;
    cdsProdutosFoto: TBlobField;
    cdsProdutosDatadoInventrio: TSQLTimeStampField;
    cdsProdutosVendedor01: TSmallintField;
    cdsProdutosValordeCompraOriginal: TFloatField;
    cdsProdutosValordeDescontonaCompra: TFloatField;
    cdsProdutosUnidadeVlrVenda: TStringField;
    cdsProdutosArea: TFloatField;
    cdsProdutosCODIPI: TIntegerField;
    cdsProdutosLOCPAD: TStringField;
    cdsProdutosCUSPRO: TFloatField;
    cdsProdutosPerDmx: TFloatField;
    cdsProdutosICMVEN: TFloatField;
    cdsProdutosICMCOM: TFloatField;
    cdsProdutosUMEPRO: TStringField;
    cdsProdutoscd_conta_contabil: TIntegerField;
    cdsProdutoscd_formacalculo_icmsst: TIntegerField;
    cdsProdutospr_aliquota_int_icmsst: TFMTBCDField;
    cdsProdutosultimo_lote: TStringField;
    cdsProdutosultima_serie: TStringField;
    cdsProdutospeso_embalagem: TFMTBCDField;
    cdsProdutossit_trib_ipi: TStringField;
    cdsProdutossit_trib_pis: TStringField;
    cdsProdutossit_trib_cofins: TStringField;
    cdsProdutosproduto_configuravel: TBooleanField;
    cdsProdutosprodpeso: TStringField;
    cdsProdutosdata_integracao: TSQLTimeStampField;
    cdsProdutosaliquota_diferenciada: TFloatField;
    cdsProdutosconteudo_importacao: TFloatField;
    cdsProdutosproduto_importacao: TBooleanField;
    cdsProdutosgera_fci: TBooleanField;
    cdsProdutosnr_controle_fci: TStringField;
    dsEmpresa: TDataSource;
    sdsEmpresa: TSQLDataSet;
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
    sdsEmpresaApel: TStringField;
    sdsEmpresaRazo: TStringField;
    sdsEmpresaTipo: TStringField;
    sdsEmpresaCadastro: TSQLTimeStampField;
    sdsEmpresaPessoa: TStringField;
    sdsEmpresaCNPJCPF: TStringField;
    sdsEmpresaIEstRG: TStringField;
    sdsEmpresaCCM: TStringField;
    sdsEmpresaRamo: TIntegerField;
    sdsEmpresaEndereo: TStringField;
    sdsEmpresaBairro: TStringField;
    sdsEmpresaCEP: TStringField;
    sdsEmpresaCidade: TStringField;
    sdsEmpresaEstado: TStringField;
    sdsEmpresaSuframa: TStringField;
    sdsEmpresaRegio: TStringField;
    sdsEmpresaPas: TStringField;
    sdsEmpresaFone1: TStringField;
    sdsEmpresaRamal1: TStringField;
    sdsEmpresaFone2: TStringField;
    sdsEmpresaRamal2: TStringField;
    sdsEmpresaFax: TStringField;
    sdsEmpresaContato: TStringField;
    sdsEmpresaDpto: TStringField;
    sdsEmpresaVendedor: TIntegerField;
    sdsEmpresaCondPag: TSmallintField;
    sdsEmpresaCrdito: TFMTBCDField;
    sdsEmpresaTransp: TIntegerField;
    sdsEmpresaemail: TStringField;
    sdsEmpresaSite: TStringField;
    sdsEmpresaBloqueado: TStringField;
    sdsEmpresaObsFinanceira: TMemoField;
    sdsEmpresaObsGerais: TMemoField;
    sdsEmpresaObservaesGlobais: TMemoField;
    sdsEmpresaHora: TStringField;
    sdsEmpresaHora2: TStringField;
    sdsEmpresaTabeladePreos: TIntegerField;
    sdsEmpresaVendedor2: TIntegerField;
    sdsEmpresaVendedor3: TIntegerField;
    sdsEmpresaltimaAtualizao: TSQLTimeStampField;
    sdsEmpresaltimaAtualizaoHora: TSQLTimeStampField;
    sdsEmpresaProcedncia: TSmallintField;
    sdsEmpresaClienteBloqueado: TBooleanField;
    sdsEmpresaTipodeCompra: TStringField;
    sdsEmpresaConta: TIntegerField;
    sdsEmpresaBanco: TIntegerField;
    sdsEmpresaContaContbilCliente: TIntegerField;
    sdsEmpresaContaContbilFornecedor: TIntegerField;
    sdsEmpresaAgncia: TStringField;
    sdsEmpresaDgitodaAgncia: TStringField;
    sdsEmpresaContaCorrente: TStringField;
    sdsEmpresaDgitodaContaCorrente: TStringField;
    sdsEmpresaDescontoporPontualidade: TFloatField;
    sdsEmpresaDescPorCliente: TFloatField;
    sdsEmpresaFixVar: TStringField;
    sdsEmpresaAbrEmp: TStringField;
    sdsEmpresaPercFrete: TFloatField;
    sdsEmpresaPercEmbalagem: TFloatField;
    sdsEmpresaBCOPGT: TStringField;
    sdsEmpresaCONMRE: TStringField;
    sdsEmpresaVariasTabelas: TBooleanField;
    sdsEmpresaClienteIntFiscal: TIntegerField;
    sdsEmpresaFornecedorIntFiscal: TIntegerField;
    sdsEmpresaCodFoxDados: TIntegerField;
    sdsEmpresacalcula_pis: TBooleanField;
    sdsEmpresacalcula_cofins: TBooleanField;
    sdsEmpresacontribuinte_icms: TBooleanField;
    sdsEmpresachk_simples_nacional: TBooleanField;
    sdsEmpresacd_municipio_ibge: TIntegerField;
    sdsEmpresacd_cnae_fiscal: TIntegerField;
    sdsEmpresacod_exportador: TStringField;
    sdsEmpresacodigo_formapagamento: TIntegerField;
    sdsEmpresaper_credito_icms: TFloatField;
    sdsEmpresaemail_nfe: TStringField;
    sdsEmpresadescontarbaseST_SUFRAMA: TBooleanField;
    sdsEmpresaprorural: TIntegerField;
    sdsEmpresatplograd: TStringField;
    sdsEmpresacomplem: TStringField;
    sdsEmpresaddd_cel: TStringField;
    sdsEmpresacelular: TStringField;
    sdsEmpresadata_integracao: TSQLTimeStampField;
    sdsEmpresaprod_rural: TBooleanField;
    sdsEmpresatp_doc_RG_IE: TStringField;
    sdsEmpresaper_pis: TFloatField;
    sdsEmpresaper_cofins: TFloatField;
    sdsEmpresaper_ret_csll: TFloatField;
    sdsEmpresaper_ret_ir: TFloatField;
    sdsEmpresareter_pis_cof_cs_ir_produto: TBooleanField;
    sdsEmpresaObs_para_Nota_Fiscal: TMemoField;
    sdsEmpresadata_base_1: TSQLTimeStampField;
    sdsEmpresadata_base_2: TSQLTimeStampField;
    sdsEmpresaindice_data_base_1: TStringField;
    sdsEmpresaindice_data_base_2: TStringField;
    cdsEmpresaApel: TStringField;
    cdsEmpresaRazo: TStringField;
    cdsEmpresaTipo: TStringField;
    cdsEmpresaCadastro: TSQLTimeStampField;
    cdsEmpresaPessoa: TStringField;
    cdsEmpresaCNPJCPF: TStringField;
    cdsEmpresaIEstRG: TStringField;
    cdsEmpresaCCM: TStringField;
    cdsEmpresaRamo: TIntegerField;
    cdsEmpresaEndereo: TStringField;
    cdsEmpresaBairro: TStringField;
    cdsEmpresaCEP: TStringField;
    cdsEmpresaCidade: TStringField;
    cdsEmpresaEstado: TStringField;
    cdsEmpresaSuframa: TStringField;
    cdsEmpresaRegio: TStringField;
    cdsEmpresaPas: TStringField;
    cdsEmpresaFone1: TStringField;
    cdsEmpresaRamal1: TStringField;
    cdsEmpresaFone2: TStringField;
    cdsEmpresaRamal2: TStringField;
    cdsEmpresaFax: TStringField;
    cdsEmpresaContato: TStringField;
    cdsEmpresaDpto: TStringField;
    cdsEmpresaVendedor: TIntegerField;
    cdsEmpresaCondPag: TSmallintField;
    cdsEmpresaCrdito: TFMTBCDField;
    cdsEmpresaTransp: TIntegerField;
    cdsEmpresaemail: TStringField;
    cdsEmpresaSite: TStringField;
    cdsEmpresaBloqueado: TStringField;
    cdsEmpresaObsFinanceira: TMemoField;
    cdsEmpresaObsGerais: TMemoField;
    cdsEmpresaObservaesGlobais: TMemoField;
    cdsEmpresaHora: TStringField;
    cdsEmpresaHora2: TStringField;
    cdsEmpresaTabeladePreos: TIntegerField;
    cdsEmpresaVendedor2: TIntegerField;
    cdsEmpresaVendedor3: TIntegerField;
    cdsEmpresaltimaAtualizao: TSQLTimeStampField;
    cdsEmpresaltimaAtualizaoHora: TSQLTimeStampField;
    cdsEmpresaProcedncia: TSmallintField;
    cdsEmpresaClienteBloqueado: TBooleanField;
    cdsEmpresaTipodeCompra: TStringField;
    cdsEmpresaConta: TIntegerField;
    cdsEmpresaBanco: TIntegerField;
    cdsEmpresaContaContbilCliente: TIntegerField;
    cdsEmpresaContaContbilFornecedor: TIntegerField;
    cdsEmpresaAgncia: TStringField;
    cdsEmpresaDgitodaAgncia: TStringField;
    cdsEmpresaContaCorrente: TStringField;
    cdsEmpresaDgitodaContaCorrente: TStringField;
    cdsEmpresaDescontoporPontualidade: TFloatField;
    cdsEmpresaDescPorCliente: TFloatField;
    cdsEmpresaFixVar: TStringField;
    cdsEmpresaAbrEmp: TStringField;
    cdsEmpresaPercFrete: TFloatField;
    cdsEmpresaPercEmbalagem: TFloatField;
    cdsEmpresaBCOPGT: TStringField;
    cdsEmpresaCONMRE: TStringField;
    cdsEmpresaVariasTabelas: TBooleanField;
    cdsEmpresaClienteIntFiscal: TIntegerField;
    cdsEmpresaFornecedorIntFiscal: TIntegerField;
    cdsEmpresaCodFoxDados: TIntegerField;
    cdsEmpresacalcula_pis: TBooleanField;
    cdsEmpresacalcula_cofins: TBooleanField;
    cdsEmpresacontribuinte_icms: TBooleanField;
    cdsEmpresachk_simples_nacional: TBooleanField;
    cdsEmpresacd_municipio_ibge: TIntegerField;
    cdsEmpresacd_cnae_fiscal: TIntegerField;
    cdsEmpresacod_exportador: TStringField;
    cdsEmpresacodigo_formapagamento: TIntegerField;
    cdsEmpresaper_credito_icms: TFloatField;
    cdsEmpresaemail_nfe: TStringField;
    cdsEmpresadescontarbaseST_SUFRAMA: TBooleanField;
    cdsEmpresaprorural: TIntegerField;
    cdsEmpresatplograd: TStringField;
    cdsEmpresacomplem: TStringField;
    cdsEmpresaddd_cel: TStringField;
    cdsEmpresacelular: TStringField;
    cdsEmpresadata_integracao: TSQLTimeStampField;
    cdsEmpresaprod_rural: TBooleanField;
    cdsEmpresatp_doc_RG_IE: TStringField;
    cdsEmpresaper_pis: TFloatField;
    cdsEmpresaper_cofins: TFloatField;
    cdsEmpresaper_ret_csll: TFloatField;
    cdsEmpresaper_ret_ir: TFloatField;
    cdsEmpresareter_pis_cof_cs_ir_produto: TBooleanField;
    cdsEmpresaObs_para_Nota_Fiscal: TMemoField;
    cdsEmpresadata_base_1: TSQLTimeStampField;
    cdsEmpresadata_base_2: TSQLTimeStampField;
    cdsEmpresaindice_data_base_1: TStringField;
    cdsEmpresaindice_data_base_2: TStringField;
    sdsDuplicatas: TSQLDataSet;
    dspDuplicatas: TDataSetProvider;
    cdsDuplicatas: TClientDataSet;
    dsDuplicatas: TDataSource;
    sdsContrato_ConsultaEMAIL_NFE_FB: TStringField;
    sdsContrato_ConsultaUF_FB: TStringField;
    sdsContrato_ConsultaDDDFONE1_FB: TIntegerField;
    sdsContrato_ConsultaTELEFONE1_FB: TStringField;
    cdsContrato_ConsultaEMAIL_NFE_FB: TStringField;
    cdsContrato_ConsultaUF_FB: TStringField;
    cdsContrato_ConsultaDDDFONE1_FB: TIntegerField;
    cdsContrato_ConsultaTELEFONE1_FB: TStringField;
    cdsContrato_ConsultaUF: TStringField;
    cdsContrato_ConsultaNOMECLIENTE: TStringField;
    sdsEmpresanro_endereco: TStringField;
    cdsEmpresanro_endereco: TStringField;
    mConsultaEmailNFe: TStringField;
    mConsultaEmailNFe_EBS: TStringField;
    mConsultaFone: TStringField;
    mConsultaFone_EBS: TStringField;
    sdsUF: TSQLDataSet;
    dspUF: TDataSetProvider;
    cdsUF: TClientDataSet;
    dsUF: TDataSource;
    cdsUFUF: TStringField;
    cdsUFPERC_ICMS: TFloatField;
    cdsUFIDPAIS: TIntegerField;
    cdsUFCODUF: TStringField;
    cdsUFPERC_ICMS_INTERNO: TFloatField;
    sdsDuplicatasPagRec: TStringField;
    sdsDuplicatasNota: TFloatField;
    sdsDuplicatasEmpresa: TStringField;
    sdsDuplicatasTipo: TStringField;
    sdsDuplicatasParcela: TSmallintField;
    sdsDuplicatasDescrio: TStringField;
    sdsDuplicatasEmisso: TSQLTimeStampField;
    sdsDuplicatasVencimento: TSQLTimeStampField;
    sdsDuplicatasPagamento: TSQLTimeStampField;
    sdsDuplicatasLiberao: TSQLTimeStampField;
    sdsDuplicatasValorOriginal: TFMTBCDField;
    sdsDuplicatasAcrscimo: TFMTBCDField;
    sdsDuplicatasAbatimento: TFMTBCDField;
    sdsDuplicatasBanco: TIntegerField;
    sdsDuplicatasConta: TIntegerField;
    sdsDuplicatasCentro: TIntegerField;
    sdsDuplicatasCheque: TIntegerField;
    sdsDuplicatasMoeda: TStringField;
    sdsDuplicatasValordaMoeda: TFMTBCDField;
    sdsDuplicatasControle: TStringField;
    sdsDuplicatasSituao: TStringField;
    sdsDuplicatasEnviada: TStringField;
    sdsDuplicatasMarcao: TBooleanField;
    sdsDuplicatasBorder: TIntegerField;
    sdsDuplicatasComisso: TFloatField;
    sdsDuplicatasObs: TMemoField;
    sdsDuplicatasDataIntegraoFatoGerador: TSQLTimeStampField;
    sdsDuplicatasDataIntegraoFatoPagamento: TSQLTimeStampField;
    sdsDuplicatasLINDIG: TStringField;
    sdsDuplicatasUsurio: TStringField;
    sdsDuplicatasAlterao: TSQLTimeStampField;
    sdsDuplicatasConciliado: TBooleanField;
    sdsDuplicatasCarteira: TStringField;
    sdsDuplicatasVlrMrD: TFMTBCDField;
    sdsDuplicatasPerMrD: TFMTBCDField;
    sdsDuplicatasSeqNossoNumero: TStringField;
    sdsDuplicatasVlrDsP: TFMTBCDField;
    sdsDuplicatasPerJur: TFMTBCDField;
    sdsDuplicatasVlrJur: TFMTBCDField;
    sdsDuplicatasCODPRJ: TIntegerField;
    sdsDuplicatasCODFPG: TIntegerField;
    sdsDuplicatasCheBan: TIntegerField;
    sdsDuplicatasCheAge: TStringField;
    sdsDuplicatasCheEmi: TStringField;
    sdsDuplicatasCheCco: TStringField;
    sdsDuplicatasPerMul: TFMTBCDField;
    sdsDuplicatasVlrMul: TFMTBCDField;
    sdsDuplicatasNOSNUM: TStringField;
    sdsDuplicatasAGECCE: TStringField;
    sdsDuplicatasCODBAR: TStringField;
    sdsDuplicatasLOCPAG: TStringField;
    sdsDuplicatasINSTRU: TStringField;
    sdsDuplicatascd_operacao_contabil: TIntegerField;
    sdsDuplicatasregistro_integrado: TBooleanField;
    sdsDuplicatascd_operacao_baixa: TIntegerField;
    sdsDuplicatasbaixa_integrado: TBooleanField;
    sdsDuplicatasproveniente_rateio: TBooleanField;
    sdsDuplicatasvl_ipi_parcela: TFMTBCDField;
    sdsDuplicatasvl_icms_substituicao_parcela: TFMTBCDField;
    sdsDuplicatasvl_despesas_financeiras_parcela: TFMTBCDField;
    sdsDuplicatasparc_origem_baixa: TIntegerField;
    sdsDuplicatasid_carteira: TIntegerField;
    sdsDuplicatascod_motivo: TStringField;
    sdsDuplicatasdesc_motivo: TStringField;
    sdsDuplicatasultima_mov_cnab: TIntegerField;
    sdsDuplicatasultima_data_cnab: TSQLTimeStampField;
    sdsDuplicatascd_cobranca: TIntegerField;
    sdsDuplicatasseq_remessa: TIntegerField;
    sdsDuplicatasemailboleto_enviado: TBooleanField;
    cdsDuplicatasPagRec: TStringField;
    cdsDuplicatasNota: TFloatField;
    cdsDuplicatasEmpresa: TStringField;
    cdsDuplicatasTipo: TStringField;
    cdsDuplicatasParcela: TSmallintField;
    cdsDuplicatasDescrio: TStringField;
    cdsDuplicatasEmisso: TSQLTimeStampField;
    cdsDuplicatasVencimento: TSQLTimeStampField;
    cdsDuplicatasPagamento: TSQLTimeStampField;
    cdsDuplicatasLiberao: TSQLTimeStampField;
    cdsDuplicatasValorOriginal: TFMTBCDField;
    cdsDuplicatasAcrscimo: TFMTBCDField;
    cdsDuplicatasAbatimento: TFMTBCDField;
    cdsDuplicatasBanco: TIntegerField;
    cdsDuplicatasConta: TIntegerField;
    cdsDuplicatasCentro: TIntegerField;
    cdsDuplicatasCheque: TIntegerField;
    cdsDuplicatasMoeda: TStringField;
    cdsDuplicatasValordaMoeda: TFMTBCDField;
    cdsDuplicatasControle: TStringField;
    cdsDuplicatasSituao: TStringField;
    cdsDuplicatasEnviada: TStringField;
    cdsDuplicatasMarcao: TBooleanField;
    cdsDuplicatasBorder: TIntegerField;
    cdsDuplicatasComisso: TFloatField;
    cdsDuplicatasObs: TMemoField;
    cdsDuplicatasDataIntegraoFatoGerador: TSQLTimeStampField;
    cdsDuplicatasDataIntegraoFatoPagamento: TSQLTimeStampField;
    cdsDuplicatasLINDIG: TStringField;
    cdsDuplicatasUsurio: TStringField;
    cdsDuplicatasAlterao: TSQLTimeStampField;
    cdsDuplicatasConciliado: TBooleanField;
    cdsDuplicatasCarteira: TStringField;
    cdsDuplicatasVlrMrD: TFMTBCDField;
    cdsDuplicatasPerMrD: TFMTBCDField;
    cdsDuplicatasSeqNossoNumero: TStringField;
    cdsDuplicatasVlrDsP: TFMTBCDField;
    cdsDuplicatasPerJur: TFMTBCDField;
    cdsDuplicatasVlrJur: TFMTBCDField;
    cdsDuplicatasCODPRJ: TIntegerField;
    cdsDuplicatasCODFPG: TIntegerField;
    cdsDuplicatasCheBan: TIntegerField;
    cdsDuplicatasCheAge: TStringField;
    cdsDuplicatasCheEmi: TStringField;
    cdsDuplicatasCheCco: TStringField;
    cdsDuplicatasPerMul: TFMTBCDField;
    cdsDuplicatasVlrMul: TFMTBCDField;
    cdsDuplicatasNOSNUM: TStringField;
    cdsDuplicatasAGECCE: TStringField;
    cdsDuplicatasCODBAR: TStringField;
    cdsDuplicatasLOCPAG: TStringField;
    cdsDuplicatasINSTRU: TStringField;
    cdsDuplicatascd_operacao_contabil: TIntegerField;
    cdsDuplicatasregistro_integrado: TBooleanField;
    cdsDuplicatascd_operacao_baixa: TIntegerField;
    cdsDuplicatasbaixa_integrado: TBooleanField;
    cdsDuplicatasproveniente_rateio: TBooleanField;
    cdsDuplicatasvl_ipi_parcela: TFMTBCDField;
    cdsDuplicatasvl_icms_substituicao_parcela: TFMTBCDField;
    cdsDuplicatasvl_despesas_financeiras_parcela: TFMTBCDField;
    cdsDuplicatasparc_origem_baixa: TIntegerField;
    cdsDuplicatasid_carteira: TIntegerField;
    cdsDuplicatascod_motivo: TStringField;
    cdsDuplicatasdesc_motivo: TStringField;
    cdsDuplicatasultima_mov_cnab: TIntegerField;
    cdsDuplicatasultima_data_cnab: TSQLTimeStampField;
    cdsDuplicatascd_cobranca: TIntegerField;
    cdsDuplicatasseq_remessa: TIntegerField;
    cdsDuplicatasemailboleto_enviado: TBooleanField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsContratoNewRecord(DataSet: TDataSet);
    procedure dspDuplicatasGetTableName(Sender: TObject; DataSet: TDataSet;
      var TableName: String);
    procedure cdsDuplicatasBeforePost(DataSet: TDataSet);
  private
    { Private declarations }

    procedure prc_Excluir_Duplicatas;

  public
    { Public declarations }
    vMsgErro : String;
    ctCommand : String;
    ctContrato_Consulta : String;
    ctDuplicatas : String;
    ctEmpresa : String;
    vItemAssinatura : Integer;
    vPre_Contrato : Boolean;

    procedure prc_Localizar(ID : Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

    procedure prc_Ativar_Pre;

    procedure prc_Gravar_Pessoa;
    function fnc_Gravar_Pessoa(Apel_EBS : String) : Integer;
    function fnc_Gravar_Duplicata : String;
    function fnc_Gravar_Duplicata_SQL : String;
    function fnc_Gravar_Duplicata_SQL2 : String;

    procedure prc_Encerrar_Contrato(Num_Contrato : String);

    procedure prc_Abrir_adsDuplicatas;

    procedure prc_Abrir_cdsEmpresa(Apel : String);

  end;

var
  DMCadContrato: TDMCadContrato;

implementation

uses DmdDatabase, DmdDatabase_EBS, DateUtils, uUtilPadrao, StrUtils;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadContrato.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsContrato.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('CONTRATO',0);
                                               
  cdsContrato.Insert;
  cdsContratoID.AsInteger := vAux + 1;
end;

procedure TDMCadContrato.prc_Excluir;
var
  sds: TSQLDataSet;
  ID: TTransactionDesc;
begin
  if not(cdsContrato.Active) or (cdsContrato.IsEmpty) then
    exit;
  try
    prc_Excluir_Duplicatas;

    sds := TSQLDataSet.Create(nil);
    sds.SQLConnection := dmDatabase.scoDados;
    ID.TransactionID  := 3;
    ID.IsolationLevel := xilREADCOMMITTED;
    dmDatabase.scoDados.StartTransaction(ID);
    try

      if (vPre_Contrato) and (cdsContratoPRE_CONTRATO.AsString = 'S') then
      begin
        sds.CommandText := ' UPDATE CONTRATO SET GEROU_PRE_CONTRATO = ' + QuotedStr('N')
                           + ' WHERE ID = ' + IntToStr(cdsContratoID_ANT.AsInteger);
        sds.ExecSQL();
      end;

      cdsContrato.Delete;
      cdsContrato.ApplyUpdates(0);

      dmDatabase.scoDados.Commit(ID);

    except
      on e: Exception do
      begin
        dmDatabase.scoDados.Rollback(ID);
        Raise;
      end
    end;

  except
    on e: Exception do
    begin
      Raise Exception.Create('Ocorreu o seguinte erro ao excluir: ' + #13 + e.Message);
    end
  end;

  vPre_Contrato := False;
  FreeAndNil(sds);
end;

procedure TDMCadContrato.prc_Gravar;
var
  sds: TSQLDataSet;
  ID: TTransactionDesc;
  vNumContrato : Integer;
  vTexto : String;
begin
  vMsgErro := '';
  if cdsContratoID_ASSINATURA.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Assinatura não informada!';
  if cdsContratoAPEL_EBS.AsString = '' then
    vMsgErro := vMsgErro + #13 + '*** Cliente não informado!';
  if cdsContratoID_PERIODO.AsInteger <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Período não informado!';
  if cdsContratoDTCONTRATO.AsDateTime < 10 then
    vMsgErro := vMsgErro + #13 + '*** Data do contrato não informada!';
  if cdsContratoDTCOBRANCA.AsDateTime < cdsContratoDTEMISSAO.AsDateTime then
    vMsgErro := vMsgErro + #13 + '*** Data de cobrança não pode ser menor que a data de emissão!';
  if vMsgErro <> '' then
    exit;

  sds := TSQLDataSet.Create(nil);
  ID.TransactionID  := 1;
  ID.IsolationLevel := xilREADCOMMITTED;
  dmDatabase.scoDados.StartTransaction(ID);

  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    sds.CommandText := ' UPDATE TABELALOC SET FLAG = 1 '
                       + ' WHERE TABELA = ' + QuotedStr('CONTRATO');
    sds.ExecSQL();

    if cdsContratoNUM_CONTRATO_INT.AsInteger <= 0 then
    begin
      qProximoContrato.Close;
      qProximoContrato.ParamByName('ANO_CONTRATO').AsInteger := cdsContratoANO_CONTRATO.AsInteger;
      qProximoContrato.Open;
      vNumContrato := qProximoContratoNUM_CONTRATO.AsInteger + 1;
      vTexto := Copy(FormatFloat('0000',cdsContratoANO_CONTRATO.AsInteger),3,2) + FormatFloat('00000',vNumContrato);
      cdsContratoNUM_CONTRATO.AsString      := vTexto;
      cdsContratoNUM_CONTRATO_INT.AsInteger := vNumContrato;
    end;

    cdsContratoID_CLIENTE.AsInteger     := fnc_Gravar_Pessoa(cdsContratoAPEL_EBS.AsString);
    //if cdsContratoGEROU_DUPLICATA.AsString <> 'S' then
      //Foi alterado no dia 13/11/2014
      //cdsContratoGEROU_DUPLICATA.AsString := fnc_Gravar_Duplicata;

      //17/11/2016 alteração para a gravação no SQL2
      //cdsContratoGEROU_DUPLICATA.AsString := fnc_Gravar_Duplicata_SQL;

      cdsContratoGEROU_DUPLICATA.AsString := fnc_Gravar_Duplicata_SQL2;

    cdsContrato.Post;

    if (vPre_Contrato) and (cdsContratoID_ANT.AsInteger > 0) then
    begin
      sds.CommandText := ' UPDATE CONTRATO SET GEROU_PRE_CONTRATO = ' + QuotedStr('S')
                         + ' WHERE ID = ' + IntToStr(cdsContratoID_ANT.AsInteger);
      sds.ExecSQL();
    end;

    cdsContrato.ApplyUpdates(0);

    dmDatabase.scoDados.Commit(ID);

  except
    on e: Exception do
    begin
      dmDatabase.scoDados.Rollback(ID);
      Raise Exception.Create('Ocorreu o seguinte erro ao gravar: ' + #13 + e.Message);
    end
  end;

  vPre_Contrato := False;
  FreeAndNil(sds);
end;

procedure TDMCadContrato.prc_Localizar(ID : Integer);
begin
  cdsContrato.Close;
  sdsContrato.CommandText := ctCommand;
  if ID <> 0 then
    sdsContrato.CommandText := sdsContrato.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsContrato.Open;
end;

procedure TDMCadContrato.DataModuleCreate(Sender: TObject);
begin
  ctCommand           := sdsContrato.CommandText;
  ctContrato_Consulta := sdsContrato_Consulta.CommandText;
  ctDuplicatas        := sdsDuplicatas.CommandText;
  ctEmpresa           := sdsEmpresa.CommandText;

  //cdsProdutos.Open;
  //cdsEmpresa.Open;
  cdsAssinatura.Open;
  cdsPeriodo.Open;
  cdsUF.Open;
end;

procedure TDMCadContrato.prc_Gravar_Pessoa;
begin

end;

function TDMCadContrato.fnc_Gravar_Pessoa(Apel_EBS: String): Integer;
var
  vAux : Integer;
begin
  cdsPessoa.Close;
  sdsPessoa.CommandText := 'SELECT * FROM PESSOA WHERE APEL_EBS = ' + QuotedStr(Apel_EBS);
  cdsPessoa.Open;
  Result := 0;
  if cdsPessoaCODIGO.AsInteger > 0 then
  begin
    Result := cdsPessoaCODIGO.AsInteger;
    exit;
  end;

  vAux := dmDatabase.ProximaSequencia('PESSOA',0);

  try
    cdsPessoa.Insert;
    cdsPessoaCODIGO.AsInteger         := vAux;
    cdsPessoaNOME.AsString            := cdsEmpresaRazo.AsString;
    cdsPessoaFANTASIA.AsString        := '';
    cdsPessoaENDERECO.AsString        := cdsEmpresaEndereo.AsString;
    cdsPessoaNUM_END.AsString         := cdsEmpresanro_endereco.AsString;
    cdsPessoaCOMPLEMENTO_END.AsString := cdsEmpresacomplem.AsString;
    cdsPessoaNUM_END.AsString         := '';
    cdsPessoaBAIRRO.AsString          := cdsEmpresaBairro.AsString;
    cdsPessoaID_CIDADE.AsInteger      := 0;
    cdsPessoaCIDADE.AsString          := cdsEmpresaCidade.AsString;
    cdsPessoaUF.AsString              := cdsEmpresaEstado.AsString;
    cdsPessoaCEP.AsString             := cdsEmpresaCEP.AsString;
    cdsPessoaTELEFONE1.AsString       := cdsEmpresaFone1.AsString;
    cdsPessoaTELEFONE2.AsString       := cdsEmpresaFone2.AsString;
    cdsPessoaFAX.AsString             := cdsEmpresaFax.AsString;
    cdsPessoaPESSOA.AsString          := copy(cdsEmpresaPessoa.AsString,1,1);
    cdsPessoaCNPJ_CPF.AsString        := cdsEmpresaCNPJCPF.AsString;
    cdsPessoaEMAIL_NFE.AsString       := cdsEmpresaemail_nfe.AsString;
    if cdsPessoaPESSOA.AsString = 'J' then
      cdsPessoaINSCR_EST.AsString := cdsEmpresaIEstRG.AsString
    else
      cdsPessoaRG.AsString        := cdsEmpresaIEstRG.AsString;
    
    {cdsPessoaENDERECO_ENT.AsString
    cdsPessoaCOMPLEMENTO_END_ENT.AsString
    cdsPessoaNUM_END_ENT.AsString
    cdsPessoaBAIRRO_ENT.AsString
    cdsPessoaID_CIDADE_ENT.AsInteger
    cdsPessoaCIDADE_ENT.AsString
    cdsPessoaCEP_ENT.AsString
    cdsPessoaUF_ENT.AsString
    cdsPessoaPESSOA_ENT.AsString
    cdsPessoaCNPJ_CPF_ENT.AsString
    cdsPessoaINSC_EST_ENT.AsString
    cdsPessoaDDD_ENT.AsInteger
    cdsPessoaNOME_ENTREGA.AsString
    cdsPessoaFONE_ENT.AsString}
    {cdsPessoaENDERECO_PGTO.AsString
    cdsPessoaCOMPLEMENTO_END_PGTO.AsString
    cdsPessoaNUM_END_PGTO.AsString
    cdsPessoaBAIRRO_PGTO.AsString
    cdsPessoaID_CIDADE_PGTO.AsInteger
    cdsPessoaCIDADE_PGTO.AsString
    cdsPessoaCEP_PGTO.AsString
    cdsPessoaUF_PGTO.AsString
    cdsPessoaDDD_PGTO.AsInteger
    cdsPessoaCNPJ_CPG_PGTO.AsString
    cdsPessoaINSC_EST_PGTO.AsString
    cdsPessoaPESSOA_PGTO.AsString
    cdsPessoaFONE_PGTO.AsString}

    cdsPessoaUSUARIO.AsString           := 'EBS';
    cdsPessoaDTCADASTRO.AsDateTime      := Date;
    cdsPessoaHRCADASTRO.AsDateTime      := Now;
    cdsPessoaID_PAIS.AsInteger          := 1;
    cdsPessoaINATIVO.AsString           := 'N';
    cdsPessoaTP_CLIENTE.AsString        := 'S';
    cdsPessoaTP_FORNECEDOR.AsString     := 'N';
    cdsPessoaTP_TRANSPORTADORA.AsString := 'N';
    cdsPessoaTP_VENDEDOR.AsString       := 'N';
    cdsPessoaAPEL_EBS.AsString          := Apel_EBS;
    cdsPessoaEMAIL_NFE.AsString         := cdsEmpresaemail_nfe.AsString;
    cdsPessoa.Post;
    cdsPessoa.ApplyUpdates(0);

    Result := cdsPessoaCODIGO.AsInteger;
  except
    on e: Exception do
    begin
      Raise Exception.Create('Ocorreu o seguinte erro ao gravar Cliente: ' + #13 + e.Message);
    end
  end;
end;

function TDMCadContrato.fnc_Gravar_Duplicata: String;
var
  vAux : String;
  vTexto : String;
  i : Integer;
begin
  Result := 'N';

  if cdsContratoDTCOBRANCA.AsDateTime < 10 then
    exit;

  prc_Abrir_adsDuplicatas;

  try
    if not(cdsDuplicatas.IsEmpty) and (cdsDuplicatasNota.AsInteger > 0) then
      cdsDuplicatas.Edit
    else
    begin
      cdsDuplicatas.Insert;
      cdsDuplicatasPagRec.AsString       := 'R';
      cdsDuplicatasNota.AsString         := cdsContratoNUM_CONTRATO.AsString;
      cdsDuplicatasEmpresa.AsString      := trim(AnsiReplaceText(cdsContratoAPEL_EBS.AsString,chr(13),''));
      cdsDuplicatasEmpresa.AsString      := trim(AnsiReplaceText(cdsDuplicatasEmpresa.AsString,chr(10),''));

      //cdsDuplicatasTipo.AsString         := 'CONTRATO';
      vAux   := trim(AnsiReplaceText('CONTRATO',chr(13),''));
      vAux   := trim(AnsiReplaceText(vAux,chr(10),''));
      vTexto := '';
      ShowMessage(IntToStr(Length(vAux)));
      for i := 1 to Length(vAux) do
      begin
        if i <= 8 then
          vTexto := vTexto + copy(vAux,i,1);
      end;
      cdsDuplicatasTipo.AsString         := vTexto;
      cdsDuplicatasParcela.AsInteger     := 1;
    end;
    cdsDuplicatasDescrio.AsString      := trim(Replace('Contrato Nº ' + cdsContratoNUM_CONTRATO.AsString,chr(13),''));
    //adsDuplicatasEmisso.AsDateTime     := cdsContratoDTCONTRATO.AsDateTime;
    if cdsContratoDTEMISSAO.AsDateTime > 10 then
      cdsDuplicatasEmisso.AsDateTime     := cdsContratoDTEMISSAO.AsDateTime
    else
      cdsDuplicatasEmisso.AsDateTime     := cdsContratoDTCONTRATO.AsDateTime;
    cdsDuplicatasVencimento.AsDateTime := cdsContratoDTCOBRANCA.AsDateTime;
    cdsDuplicatasLiberao.AsDateTime    := cdsDuplicatasVencimento.AsDateTime;
    cdsDuplicatasValorOriginal.AsFloat := cdsContratoVLR_TOTAL.AsFloat;
    cdsDuplicatasBanco.AsInteger       := 4;
    cdsDuplicatasConta.AsInteger       := 3301;
    cdsDuplicatasCentro.AsInteger      := 2;
    cdsDuplicatasCheque.AsInteger      := 0;
    cdsDuplicatasMoeda.AsString        := trim(Replace('REAL',chr(13),''));
    cdsDuplicatasValordaMoeda.AsFloat  := 0;
    cdsDuplicatasControle.Clear;

    //*** 17/11/2016
    //cdsDuplicatasSituao.AsString       := trim(Replace('Normal',chr(13),''));
    vAux   := trim(AnsiReplaceText('Normal',chr(13),''));
    vAux   := trim(AnsiReplaceText(vAux,chr(10),''));
    vTexto := '';
    for i := 1 to Length(vAux) do
    begin
      if i <= 6 then
        vTexto := vTexto + copy(vAux,i,1);
    end;
    cdsDuplicatasSituao.AsString  := Trim(vTexto);
    //************
    
    cdsDuplicatasMarcao.AsBoolean      := False;
    cdsDuplicatasBorder.AsInteger      := 0;
    cdsDuplicatasComisso.AsFloat       := 0;
    cdsDuplicatasUsurio.AsString       := trim(Replace('CEBI-SS',chr(13),''));
    cdsDuplicatasAlterao.AsDateTime    := cdsContratoDTCONTRATO.AsDateTime;
    cdsDuplicatasConciliado.AsBoolean  := False;
    cdsDuplicatasVlrMrD.AsFloat        := 0;
    cdsDuplicatasPerMrD.AsFloat        := 0;
    cdsDuplicatasSeqNossoNumero.AsInteger := 0;
    cdsDuplicatasVlrDsP.AsFloat           := 0;
    cdsDuplicatasPerJur.AsFloat           := 0;
    cdsDuplicatasVlrJur.AsFloat           := 0;
    cdsDuplicatasCODPRJ.AsInteger         := 0;
    cdsDuplicatasCODFPG.AsInteger         := 0;
    cdsDuplicatasCheBan.AsInteger         := 0;
    cdsDuplicatasPerMul.AsFloat           := 0;
    cdsDuplicatasVlrMul.AsFloat           := 0;
    cdsDuplicatascd_operacao_contabil.AsInteger := 5;
    cdsDuplicatasregistro_integrado.AsBoolean   := False;
    cdsDuplicatascd_operacao_baixa.AsInteger    := 0;
    cdsDuplicatasbaixa_integrado.AsBoolean      := False;
    cdsDuplicatasproveniente_rateio.AsBoolean   := False;
    cdsDuplicatasvl_ipi_parcela.AsFloat         := 0;
    cdsDuplicatasparc_origem_baixa.AsInteger    := 0;
    cdsDuplicatasid_carteira.AsInteger          := 0;
    cdsDuplicatas.Post;
    cdsDuplicatas.ApplyUpdates(0);

    Result := 'S';

  except
    on e: Exception do
    begin
      Raise Exception.Create('Ocorreu o seguinte erro ao gravar Duplicatas: ' + #13 + e.Message);
    end
  end;
end;

procedure TDMCadContrato.prc_Excluir_Duplicatas;
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase_EBS.Conexao_MSSQL; //--
    sds.CommandText   := 'DELETE FROM Duplicatas '
                       + ' WHERE PagRec = ' + QuotedStr('R')
                       + '   AND Nota = ' + cdsContratoNUM_CONTRATO.AsString
                       + '   AND Empresa = ' + QuotedStr(cdsContratoAPEL_EBS.AsString)
                       + '   AND Tipo = ' + QuotedStr('CONTRATO')
                       + '   AND Parcela = 1';
    sds.ExecSQL;
  except
  end;
  FreeAndNil(sds);
end;

procedure TDMCadContrato.prc_Abrir_adsDuplicatas;
begin
  cdsDuplicatas.Close;
  sdsDuplicatas.CommandText := ctDuplicatas
                             + ' WHERE PagRec = ' + QuotedStr('R')
                             + '   AND Nota = ' + cdsContratoNUM_CONTRATO.AsString
                             + '   AND Empresa = ' + QuotedStr(cdsContratoAPEL_EBS.AsString)
                             + '   AND Tipo = ' + QuotedStr('CONTRATO')
                             + '   AND Parcela = 1';
  cdsDuplicatas.Open;
end;

procedure TDMCadContrato.cdsContratoNewRecord(DataSet: TDataSet);
begin
  cdsContratoANO_CONTRATO.AsInteger         := YearOf(Date);
  cdsContratoPRE_CONTRATO.AsString          := 'N';
  cdsContratoENCERRADO.AsString             := 'N';
  cdsContratoANO_CONTRATO_ANT.AsInteger     := 0;
  cdsContratoNUM_CONTRATO_INT_ANT.AsInteger := 0;
  cdsContratoNUM_CONTRATO_ANT.AsString      := '';
  cdsContratoID_ANT.AsInteger               := 0;
  cdsContratoNUM_PEDIDO.AsInteger           := 0;
end;

procedure TDMCadContrato.prc_Encerrar_Contrato(Num_Contrato: String);
begin

end;

procedure TDMCadContrato.prc_Ativar_Pre;
var
  sds: TSQLDataSet;
  ID: TTransactionDesc;
begin
  if not(cdsContrato.Active) or (cdsContrato.IsEmpty) then
    exit;
  try
    sds := TSQLDataSet.Create(nil);
    sds.SQLConnection := dmDatabase.scoDados;
    ID.TransactionID  := 3;
    ID.IsolationLevel := xilREADCOMMITTED;
    dmDatabase.scoDados.StartTransaction(ID);
    try

      cdsContrato.Edit;
      cdsContratoPRE_CONTRATO.AsString := 'N';
      cdsContrato.Post;

      sds.CommandText := ' UPDATE CONTRATO SET GEROU_PRE_CONTRATO = ' + QuotedStr('A')            
                         + ' WHERE ID = ' + IntToStr(cdsContratoID_ANT.AsInteger);
      sds.ExecSQL();

      cdsContrato.ApplyUpdates(0);

      dmDatabase.scoDados.Commit(ID);

    except
      on e: Exception do
      begin
        dmDatabase.scoDados.Rollback(ID);
        Raise;
      end
    end;

  except
    on e: Exception do
    begin
      Raise Exception.Create('Ocorreu o seguinte erro ao ativar o pré contrato: ' + #13 + e.Message);
    end
  end;
  FreeAndNil(sds);
end;

procedure TDMCadContrato.dspDuplicatasGetTableName(Sender: TObject;
  DataSet: TDataSet; var TableName: String);
begin
  TableName := 'Duplicatas';
end;

procedure TDMCadContrato.cdsDuplicatasBeforePost(DataSet: TDataSet);
begin
  cdsDuplicatasTipo.AsString    := trim(AnsiReplaceText(cdsDuplicatasTipo.AsString,chr(13),''));
  cdsDuplicatasEmpresa.AsString := trim(AnsiReplaceText(cdsDuplicatasEmpresa.AsString,chr(13),''));
  cdsDuplicatasMoeda.AsString   := trim(AnsiReplaceText(cdsDuplicatasMoeda.AsString,chr(13),''));
  //cdsDuplicatasSituao.AsString  := trim(AnsiReplaceText(cdsDuplicatasSituao.AsString,chr(13),''));
  cdsDuplicatasUsurio.AsString  := trim(AnsiReplaceText(cdsDuplicatasUsurio.AsString,chr(13),''));
end;

function TDMCadContrato.fnc_Gravar_Duplicata_SQL: String;
var
  vDoc : String;
  sds: TSQLDataSet;
begin
  Result := 'N';

  if cdsContratoDTCOBRANCA.AsDateTime < 10 then
    exit;

  prc_Abrir_adsDuplicatas;

  {if not fDMImportar.cdsDuplicata.IsEmpty then
  begin
    MessageDlg('*** Duplicata já existe na base de dados, não será gravada!', mtInformation, [mbOk], 0);
    exit;
  end;}

  if not(cdsDuplicatas.IsEmpty) and (cdsDuplicatasNota.AsInteger > 0) and (cdsDuplicatasPagamento.IsNull) then
  begin
    cdsDuplicatas.Delete;
    cdsDuplicatas.ApplyUpdates(0);
  end;

  sds := TSQLDataSet.Create(nil);
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.SQLConnection := dmDatabase_EBS.Conexao_MSSQL;

  try
    sds.CommandText := 'INSERT INTO [FOX_00001].[dbo].[Duplicatas] '+
      '([PagRec],[Nota],[Empresa],[Tipo],[Parcela],[Emissão],'+
      '[Vencimento],[Descrição],[Liberação],'+
      '[Valor Original],[Acréscimo],[Abatimento],[Banco],[Conta],[Centro],'+
      '[Cheque],[Moeda],[Valor da Moeda],'+
      '[Situação],[Marcação],[Borderô],[Comissão],'+
      '[Usuário],[Alteração],[Conciliado],[VlrMrD],[PerMrD],'+
      '[VlrDsP],[PerJur],[VlrJur],[CODPRJ],[CODFPG],[CheBan],'+
      '[PerMul],[VlrMul],[vl_despesas_financeiras_parcela],[SeqNossoNumero],[cd_operacao_contabil],'+
      '[registro_integrado],[cd_operacao_baixa],[baixa_integrado],[proveniente_rateio],[vl_ipi_parcela],'+
      '[parc_origem_baixa],[id_carteira])'+

      'values('+':PagRec'+','+':Nota'+','+':Empresa'+','+':Tipo'+','+':Parcela'+','+':Emissao'+','+':Vencimento'
               +','+':Descricao'+','+':Liberacao'+','+':Valor_Original'+','+':Acrescimo'+','+':Abatimento'+','+':Banco'
               +','+':Conta'+','+':Centro'+','+':Cheque'+','+':Moeda'+','+':Valor_da_Moeda'
               +','+':Situacao'+','+':Marcacao'+','+':Bordero'+','+':Comissao'
               +','+':Usuario'+','+':Alteracao'+','+':Conciliado'+','+':VlrMrD'+','+':PerMrD'
               +','+':VlrDsP'+','+':PerJur'+','+':VlrJur'+','+':CODPRJ'+','+':CODFPG'+','+':CheBan'
               +','+':PerMul'+','+':VlrMul'+','+':vl_desp_fin_parcela'+','+':SeqNossoNumero'+','+':cd_operacao_contabil'
               +','+':registro_integrado'+','+':cd_operacao_baixa'+','+':baixa_integrado'+','+':proveniente_rateio'
               +','+':vl_ipi_parcela'+','+':parc_origem_baixa'+','+':id_carteira'+')';

    sds.ParamByName('PagRec').AsString           := trim(AnsiReplaceText('R',chr(13),''));
    sds.ParamByName('PagRec').AsString           := trim(AnsiReplaceText(sds.ParamByName('PagRec').AsString,chr(10),''));
    sds.ParamByName('Nota').AsFloat              := cdsContratoNUM_CONTRATO.AsFloat;
    sds.ParamByName('Empresa').AsString          := trim(AnsiReplaceText(cdsContratoAPEL_EBS.AsString,chr(13),''));
    sds.ParamByName('Empresa').AsString          := trim(AnsiReplaceText(sds.ParamByName('Empresa').AsString,chr(10),''));
    sds.ParamByName('Tipo').AsString             := trim(AnsiReplaceText('CONTRATO',chr(13),''));
    sds.ParamByName('Tipo').AsString             := trim(AnsiReplaceText(sds.ParamByName('Tipo').AsString,chr(10),''));
    sds.ParamByName('Parcela').AsInteger         := 1;
    if cdsContratoDTEMISSAO.AsDateTime > 10 then
      sds.ParamByName('Emissao').AsString     := cdsContratoDTEMISSAO.AsString
    else
      sds.ParamByName('Emissao').AsString     := cdsContratoDTCONTRATO.AsString;
    sds.ParamByName('Vencimento').AsString    := cdsContratoDTCOBRANCA.AsString;
    sds.ParamByName('Descricao').AsString     := trim(AnsiReplaceText('Contrato Num. ' + cdsContratoNUM_CONTRATO.AsString,chr(13),''));
    sds.ParamByName('Descricao').AsString     := trim(AnsiReplaceText(sds.ParamByName('Descricao').AsString,chr(10),''));
    sds.ParamByName('Liberacao').AsString     := cdsContratoDTCOBRANCA.AsString;
    sds.ParamByName('Valor_Original').AsFloat := StrToFloat(FormatFloat('0.00',cdsContratoVLR_TOTAL.AsFloat));
    sds.ParamByName('Acrescimo').AsFloat           := StrToFloat(FormatFloat('0.00',0));
    sds.ParamByName('Abatimento').AsFloat          := StrToFloat(FormatFloat('0.00',0));
    sds.ParamByName('Banco').AsInteger           := 4;
    sds.ParamByName('Conta').AsInteger           := 3301;
    sds.ParamByName('Centro').AsInteger          := 2;
    sds.ParamByName('Cheque').AsInteger          := 0;
    sds.ParamByName('Moeda').AsString            := trim(AnsiReplaceText('REAL',chr(13),''));
    sds.ParamByName('Moeda').AsString            := trim(AnsiReplaceText(sds.ParamByName('Moeda').AsString,chr(10),''));
    sds.ParamByName('Valor_da_Moeda').AsFloat    := StrToFloat(FormatFloat('0.00',0));
    sds.ParamByName('Situacao').AsString         := trim(AnsiReplaceText('Normal',chr(13),''));
    sds.ParamByName('Situacao').AsString         := trim(AnsiReplaceText(sds.ParamByName('Situacao').AsString,chr(10),''));
    sds.ParamByName('Marcacao').AsInteger        := 0;
    sds.ParamByName('Bordero').AsInteger         := 0;
    sds.ParamByName('Comissao').AsInteger        := 0;
    sds.ParamByName('Usuario').AsString          := trim(AnsiReplaceText('CEBI-SS',chr(13),''));
    sds.ParamByName('Usuario').AsString          := trim(AnsiReplaceText(sds.ParamByName('Usuario').AsString,chr(13),''));
    if cdsContratoDTEMISSAO.AsDateTime > 10 then
      sds.ParamByName('Alteracao').AsString     := cdsContratoDTEMISSAO.AsString
    else
      sds.ParamByName('Alteracao').AsString     := cdsContratoDTCONTRATO.AsString;
    sds.ParamByName('Conciliado').AsInteger     := 0;
    sds.ParamByName('VlrMrD').AsFloat                 := StrToFloat(FormatFloat('0.00',0));
    sds.ParamByName('PerMrD').AsFloat                 := StrToFloat(FormatFloat('0.00',0));
    sds.ParamByName('VlrDsP').AsFloat                 := StrToFloat(FormatFloat('0.00',0));
    sds.ParamByName('PerJur').AsFloat                 := StrToFloat(FormatFloat('0.00',0));
    sds.ParamByName('VlrJur').AsFloat                 := StrToFloat(FormatFloat('0.00',0));
    sds.ParamByName('CODPRJ').AsInteger               := 0;
    sds.ParamByName('CODFPG').AsInteger               := 0;
    sds.ParamByName('CheBan').AsInteger               := 0;
    sds.ParamByName('PerMul').AsFloat                 := StrToFloat(FormatFloat('0.00',0));
    sds.ParamByName('VlrMul').AsFloat                 := StrToFloat(FormatFloat('0.00',0));
    sds.ParamByName('vl_desp_fin_parcela').AsFloat    := StrToFloat(FormatFloat('0.00',0));
    sds.ParamByName('SeqNossoNumero').AsInteger       := 0;
    sds.ParamByName('cd_operacao_contabil').AsInteger := 5;
    sds.ParamByName('registro_integrado').AsInteger   := 0;
    sds.ParamByName('cd_operacao_baixa').AsInteger    := 0;
    sds.ParamByName('baixa_integrado').AsInteger      := 0;
    sds.ParamByName('proveniente_rateio').AsInteger   := 0;
    sds.ParamByName('vl_ipi_parcela').AsInteger       := 0;
    sds.ParamByName('parc_origem_baixa').AsInteger    := 0;
    sds.ParamByName('id_carteira').AsInteger          := 0;
    sds.ExecSQL();

    Result := 'S';

    sds.Close;
    sds.CommandText := ' UPDATE [FOX_00001].[dbo].[Duplicatas] '
                     + ' SET Empresa = ' + QuotedStr(cdsContratoAPEL_EBS.AsString) + ', tipo = ' + QuotedStr('CONTRATO') + ', DESCRIçÃo = ' + QuotedStr('Contrato N ' + cdsContratoNUM_CONTRATO.AsString)
                     + ', MOEDA = ' + QuotedStr('REAL')
                     + ' WHERE Nota = ' + cdsContratoNUM_CONTRATO.AsString
                     + '   AND tipo = ' + QuotedStr('CONTRATO');
    sds.ExecSQL;

  except
    ShowMessage('Erro ao gravar a duplicata com o nº do contrato ' + cdsContratoNUM_CONTRATO.AsString + '!');
  end;
  FreeAndNil(sds);
end;

function TDMCadContrato.fnc_Gravar_Duplicata_SQL2: String;
var
  vDoc : String;
  sds: TSQLDataSet;
  vDtEmissao : String;
begin
  Result := 'N';

  if cdsContratoDTCOBRANCA.AsDateTime < 10 then
    exit;

  prc_Abrir_adsDuplicatas;

  {if not fDMImportar.cdsDuplicata.IsEmpty then
  begin
    MessageDlg('*** Duplicata já existe na base de dados, não será gravada!', mtInformation, [mbOk], 0);
    exit;
  end;}

  if not(cdsDuplicatas.IsEmpty) and (cdsDuplicatasNota.AsInteger > 0) and (cdsDuplicatasPagamento.IsNull) then
  begin
    cdsDuplicatas.Delete;
    cdsDuplicatas.ApplyUpdates(0);
  end;

  sds := TSQLDataSet.Create(nil);
  sds.NoMetadata    := True;
  sds.GetMetadata   := False;
  sds.SQLConnection := dmDatabase_EBS.Conexao_MSSQL;

  if cdsContratoDTEMISSAO.AsDateTime > 10 then
    vDtEmissao := cdsContratoDTEMISSAO.AsString
  else
    vDtEmissao := cdsContratoDTCONTRATO.AsString;

  try
    sds.CommandText := 'INSERT INTO [FOX_00001].[dbo].[Duplicatas] '+
      '([PagRec],[Nota],[Empresa],[Tipo],[Parcela],[Emissão],'+
      '[Vencimento],[Descrição],[Liberação],'+
      '[Valor Original],[Acréscimo],[Abatimento],[Banco],[Conta],[Centro],'+
      '[Cheque],[Moeda],[Valor da Moeda],'+
      '[Situação],[Marcação],[Borderô],[Comissão],'+
      '[Usuário],[Alteração],[Conciliado],[VlrMrD],[PerMrD],'+
      '[VlrDsP],[PerJur],[VlrJur],[CODPRJ],[CODFPG],[CheBan],'+
      '[PerMul],[VlrMul],[vl_despesas_financeiras_parcela],[SeqNossoNumero],[cd_operacao_contabil],'+
      '[registro_integrado],[cd_operacao_baixa],[baixa_integrado],[proveniente_rateio],[vl_ipi_parcela],'+
      '[parc_origem_baixa],[id_carteira])'+

      'values('+QuotedStr('R')+','+QuotedStr(cdsContratoNUM_CONTRATO.AsString)+','+ QuotedStr(cdsContratoAPEL_EBS.AsString)+','
               +QuotedStr('CONTRATO')+','+'1'+','+':Emissao'+','+':Vencimento'
               +','+QuotedStr('Contrato N. ' + cdsContratoNUM_CONTRATO.AsString)+','+':Liberacao'+','
               +cdsContratoVLR_TOTAL.AsString+','+'0'+','+'0'+','+'4'
               +','+'3301'+','+'2'+','+'0'+','+QuotedStr('REAL')+','+'0'+','+QuotedStr('Normal')+','+'0'+','+'0'+','+'0'
               +','+QuotedStr('CEBI-SS')+','+':Alteracao'+','+'0'+','+'0'+','+'0'
               +','+'0'+','+'0'+','+'0'+','+'0'+','+'0'+','+'0'
               +','+'0'+','+'0'+','+'0'+','+'0'+','+'5'
               +','+'0'+','+'0'+','+'0'+','+'0'
               +','+'0'+','+'0'+','+'0'+')';
      sds.ParamByName('Emissao').AsString    := vDtEmissao;
      sds.ParamByName('Vencimento').AsString := cdsContratoDTCOBRANCA.AsString;
      sds.ParamByName('Liberacao').AsString  := cdsContratoDTCOBRANCA.AsString;
      sds.ParamByName('Alteracao').AsString  := vDtEmissao;

      {'values('+QuotedStr('R')+','+QuotedStr(cdsContratoNUM_CONTRATO.AsString)+','+ QuotedStr(cdsContratoAPEL_EBS.AsString)+','
               +QuotedStr('CONTRATO')+','+'1'+','+vDtEmissao+','+cdsContratoDTCOBRANCA.AsString
               +','+QuotedStr('Contrato N. ' + cdsContratoNUM_CONTRATO.AsString)+','+cdsContratoDTCOBRANCA.AsString+','
               +cdsContratoVLR_TOTAL.AsString+','+'0'+','+'0'+','+'4'
               +','+'3301'+','+'2'+','+'0'+','+QuotedStr('REAL')+','+'0'+','+QuotedStr('Normal')+','+'0'+','+'0'+','+'0'
               +','+QuotedStr('CEBI-SS')+','+vDtEmissao+','+'0'+','+'0'+','+'0'
               +','+'0'+','+'0'+','+'0'+','+'0'+','+'0'+','+'0'
               +','+'0'+','+'0'+','+'0'+','+'0'+','+'3'
               +','+'0'+','+'0'+','+'0'+','+'0'
               +','+'0'+','+'0'+','+'0'+')';}


    sds.ExecSQL();

    Result := 'S';
  except
    ShowMessage('Erro ao gravar a duplicata com o nº do contrato ' + cdsContratoNUM_CONTRATO.AsString + '!');
  end;
  FreeAndNil(sds);
end;

procedure TDMCadContrato.prc_Abrir_cdsEmpresa(Apel: String);
begin
  cdsEmpresa.Close;
  sdsEmpresa.CommandText := ctEmpresa;
  if Apel <> '' then
    sdsEmpresa.CommandText := sdsEmpresa.CommandText + ' AND Apel = ' + QuotedStr(Apel);
  cdsEmpresa.Open;
end;

end.
