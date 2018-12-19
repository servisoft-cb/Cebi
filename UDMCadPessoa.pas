unit UDMCadPessoa;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMCadPessoa = class(TDataModule)
    sdsPessoa: TSQLDataSet;
    dspPessoa: TDataSetProvider;
    cdsPessoa: TClientDataSet;
    dsPessoa: TDataSource;
    sdsUF: TSQLDataSet;
    sdsUFUF: TStringField;
    sdsUFPERC_ICMS: TFloatField;
    sdsUFIDPAIS: TIntegerField;
    sdsUFCODUF: TStringField;
    sdsUFPERC_ICMS_INTERNO: TFloatField;
    dspUF: TDataSetProvider;
    cdsUF: TClientDataSet;
    cdsUFUF: TStringField;
    cdsUFPERC_ICMS: TFloatField;
    cdsUFIDPAIS: TIntegerField;
    cdsUFCODUF: TStringField;
    cdsUFPERC_ICMS_INTERNO: TFloatField;
    dsUF: TDataSource;
    sdsCidade: TSQLDataSet;
    dspCidade: TDataSetProvider;
    cdsCidade: TClientDataSet;
    dsCidade: TDataSource;
    sdsCidadeID: TIntegerField;
    sdsCidadeNOME: TStringField;
    sdsCidadeUF: TStringField;
    cdsCidadeID: TIntegerField;
    cdsCidadeNOME: TStringField;
    cdsCidadeUF: TStringField;
    sdsPais: TSQLDataSet;
    dspPais: TDataSetProvider;
    cdsPais: TClientDataSet;
    dsPais: TDataSource;
    sdsPaisID: TIntegerField;
    sdsPaisNOME: TStringField;
    sdsPaisCODPAIS: TStringField;
    cdsPaisID: TIntegerField;
    cdsPaisNOME: TStringField;
    cdsPaisCODPAIS: TStringField;
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
    sdsPessoaAPEL_EBS: TStringField;
    cdsPessoaAPEL_EBS: TStringField;
    sdsPessoaEMAIL_NFE: TStringField;
    cdsPessoaEMAIL_NFE: TStringField;
    sdsPessoa_Consulta: TSQLDataSet;
    dspPessoa_Consulta: TDataSetProvider;
    cdsPessoa_Consulta: TClientDataSet;
    dsPessoa_Consulta: TDataSource;
    dsEmpresa: TDataSource;
    sdsEmpresa: TSQLDataSet;
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
    dspEmpresa: TDataSetProvider;
    cdsEmpresa: TClientDataSet;
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
    cdsPessoa_ConsultaCODIGO: TIntegerField;
    cdsPessoa_ConsultaNOME: TStringField;
    cdsPessoa_ConsultaFANTASIA: TStringField;
    cdsPessoa_ConsultaENDERECO: TStringField;
    cdsPessoa_ConsultaCOMPLEMENTO_END: TStringField;
    cdsPessoa_ConsultaNUM_END: TStringField;
    cdsPessoa_ConsultaBAIRRO: TStringField;
    cdsPessoa_ConsultaID_CIDADE: TIntegerField;
    cdsPessoa_ConsultaCIDADE: TStringField;
    cdsPessoa_ConsultaUF: TStringField;
    cdsPessoa_ConsultaCEP: TStringField;
    cdsPessoa_ConsultaDDDFONE1: TIntegerField;
    cdsPessoa_ConsultaDDDFONE2: TIntegerField;
    cdsPessoa_ConsultaDDDFAX: TIntegerField;
    cdsPessoa_ConsultaDDD_ENT: TIntegerField;
    cdsPessoa_ConsultaDDD_PGTO: TIntegerField;
    cdsPessoa_ConsultaTELEFONE1: TStringField;
    cdsPessoa_ConsultaTELEFONE2: TStringField;
    cdsPessoa_ConsultaFAX: TStringField;
    cdsPessoa_ConsultaPESSOA: TStringField;
    cdsPessoa_ConsultaCNPJ_CPF: TStringField;
    cdsPessoa_ConsultaINSCR_EST: TStringField;
    cdsPessoa_ConsultaAPEL_EBS: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsPessoaNewRecord(DataSet: TDataSet);
    procedure dspPessoaUpdateError(Sender: TObject;
      DataSet: TCustomClientDataSet; E: EUpdateError;
      UpdateKind: TUpdateKind; var Response: TResolverResponse);
  private
    { Private declarations }

  public
    { Public declarations }
    vMsgPessoa : String;
    ctCommand : String;
    ctEmpresa : String;
    ctConsulta : String;

    procedure prc_Localizar(ID : Integer); //-1 = Inclus�o
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

  end;

var
  DMCadPessoa: TDMCadPessoa;

implementation

uses DmdDatabase, DmdDatabase_EBS;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadPessoa.prc_Inserir;
var
  vAux: Integer;
begin
  if not cdsPessoa.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('PESSOA',0);

  cdsPessoa.Insert;
  cdsPessoaCODIGO.AsInteger := vAux;
  cdsPessoaTP_CLIENTE.AsString        := 'S';
  cdsPessoaTP_FORNECEDOR.AsString     := 'N';
  cdsPessoaTP_VENDEDOR.AsString       := 'N';
  cdsPessoaTP_TRANSPORTADORA.AsString := 'N';
end;

procedure TDMCadPessoa.prc_Excluir;
begin
  if not(cdsPessoa.Active) or (cdsPessoa.IsEmpty) then
    exit;
  cdsPessoa.Delete;
  cdsPessoa.ApplyUpdates(0);
end;

procedure TDMCadPessoa.prc_Gravar;
begin
  vMsgPessoa := '';
  if trim(cdsPessoaNOME.AsString) = '' then
    vMsgPessoa := vMsgPessoa + #13 + '*** Nome n�o informado!';
  if (cdsPessoaTP_CLIENTE.AsString = 'N') and (cdsPessoaTP_FORNECEDOR.AsString = 'N') and
     (cdsPessoaTP_TRANSPORTADORA.AsString = 'N') and (cdsPessoaTP_VENDEDOR.AsString = 'N') then
    vMsgPessoa := vMsgPessoa + #13 + '*** N�o foi selecionado um Tipo de Pessoa!';
  if vMsgPessoa <> '' then
    exit;
  cdsPessoa.Post;
  cdsPessoa.ApplyUpdates(0);

end;

procedure TDMCadPessoa.prc_Localizar(ID : Integer);
begin
  cdsPessoa.Close;
  sdsPessoa.CommandText := ctCommand;
  if ID <> 0 then
    sdsPessoa.CommandText := sdsPessoa.CommandText
                         + ' WHERE CODIGO = ' + IntToStr(ID);
  cdsPessoa.Open;
end;

procedure TDMCadPessoa.DataModuleCreate(Sender: TObject);
begin
  ctCommand  := sdsPessoa.CommandText;
  ctConsulta := sdsPessoa_Consulta.CommandText;
  ctEmpresa  := sdsEmpresa.CommandText;
  cdsUF.Open;
  cdsCidade.Open;
end;

procedure TDMCadPessoa.cdsPessoaNewRecord(DataSet: TDataSet);
begin
  cdsPessoaINATIVO.AsString              := 'N';
  cdsPessoaTP_CLIENTE.AsString           := 'N';
  cdsPessoaTP_FORNECEDOR.AsString        := 'N';
  cdsPessoaTP_TRANSPORTADORA.AsString    := 'N';
  cdsPessoaTP_VENDEDOR.AsString          := 'N';
  cdsPessoaPESSOA.AsString               := 'J';
  cdsPessoaCOMPLEMENTO_END.AsString      := '';
  cdsPessoaCOMPLEMENTO_END_ENT.AsString  := '';
  cdsPessoaCOMPLEMENTO_END_PGTO.AsString := '';
  cdsPessoaENDERECO_ENT.AsString         := '';
  cdsPessoaENDERECO_PGTO.AsString        := '';
  cdsPessoaCEP.AsString                  := '';
  cdsPessoaCEP_ENT.AsString              := '';
  cdsPessoaCEP_PGTO.AsString             := '';
end;

procedure TDMCadPessoa.dspPessoaUpdateError(Sender: TObject;
  DataSet: TCustomClientDataSet; E: EUpdateError; UpdateKind: TUpdateKind;
  var Response: TResolverResponse);
begin
  dmDatabase.prc_UpdateError(DataSet.Name,UpdateKind,E);
end;

end.
