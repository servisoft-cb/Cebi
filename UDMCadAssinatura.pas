unit UDMCadAssinatura;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMCadAssinatura = class(TDataModule)
    sdsAssinatura: TSQLDataSet;
    dspAssinatura: TDataSetProvider;
    cdsAssinatura: TClientDataSet;
    dsAssinatura: TDataSource;
    cdsAssinaturaID: TIntegerField;
    cdsAssinaturaNOME: TStringField;
    cdsAssinaturaOBS: TMemoField;
    cdsAssinaturaVALOR: TFloatField;
    cdsAssinaturaDTATUALIZACAO_VLR: TDateField;
    sdsAssinaturaID: TIntegerField;
    sdsAssinaturaNOME: TStringField;
    sdsAssinaturaOBS: TMemoField;
    sdsAssinaturaVALOR: TFloatField;
    sdsAssinaturaDTATUALIZACAO_VLR: TDateField;
    dsAssinatura_Mestre: TDataSource;
    sdsAssinatura_Livro: TSQLDataSet;
    sdsAssinatura_LivroID: TIntegerField;
    sdsAssinatura_LivroITEM: TIntegerField;
    sdsAssinatura_LivroQTD: TIntegerField;
    cdsAssinatura_Livro: TClientDataSet;
    cdsAssinaturasdsAssinatura_Livro: TDataSetField;
    cdsAssinatura_LivroID: TIntegerField;
    cdsAssinatura_LivroITEM: TIntegerField;
    cdsAssinatura_LivroQTD: TIntegerField;
    dsAssinatura_Livro: TDataSource;
    sdsAssinatura_LivroNOME_PRODUTO_EBS: TStringField;
    cdsAssinatura_LivroNOME_PRODUTO_EBS: TStringField;
    cdsAssinatura_LivrolkNomeProduto: TStringField;
    sdsAssinatura_LivroCOD_PRODUTO_EBS: TStringField;
    cdsAssinatura_LivroCOD_PRODUTO_EBS: TStringField;
    sdsAssinaturaID_PERIODO: TIntegerField;
    cdsAssinaturaID_PERIODO: TIntegerField;
    sdsPeriodo: TSQLDataSet;
    sdsPeriodoID: TIntegerField;
    sdsPeriodoNOME: TStringField;
    sdsPeriodoQTD_MES: TIntegerField;
    dspPeriodo: TDataSetProvider;
    cdsPeriodo: TClientDataSet;
    cdsPeriodoID: TIntegerField;
    cdsPeriodoNOME: TStringField;
    cdsPeriodoQTD_MES: TIntegerField;
    dsPeriodo: TDataSource;
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
    procedure DataModuleCreate(Sender: TObject);
    procedure cdsAssinatura_LivroBeforeInsert(DataSet: TDataSet);
    procedure cdsAssinatura_LivroAfterInsert(DataSet: TDataSet);
    procedure cdsAssinatura_LivroBeforePost(DataSet: TDataSet);
  private
    { Private declarations }

  public
    { Public declarations }
    vMsgErro : String;
    ctCommand : String;
    vItemAssinatura : Integer;

    procedure prc_Localizar(ID : Integer); //-1 = Inclus�o
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

  end;

var
  DMCadAssinatura: TDMCadAssinatura;

implementation

uses DmdDatabase, DmdDatabase_EBS;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadAssinatura.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsAssinatura.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('ASSINATURA',0);

  cdsAssinatura.Insert;
  cdsAssinaturaID.AsInteger := vAux + 1;
end;

procedure TDMCadAssinatura.prc_Excluir;
begin
  if not(cdsAssinatura.Active) or (cdsAssinatura.IsEmpty) then
    exit;
  cdsAssinatura_Livro.First;
  while not cdsAssinatura_Livro.Eof do
    cdsAssinatura_Livro.Delete;
  cdsAssinatura.Delete;
  cdsAssinatura.ApplyUpdates(0);
end;

procedure TDMCadAssinatura.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsAssinaturaNOME.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Nome n�o informado!';
  if StrToFloat(FormatFloat('0.00',cdsAssinaturaVALOR.AsFloat)) <= 0 then
    vMsgErro := vMsgErro + #13 + '*** Valor n�o informado!';
  if vMsgErro <> '' then
    exit;
  cdsAssinatura.Post;
  cdsAssinatura.ApplyUpdates(0);
end;

procedure TDMCadAssinatura.prc_Localizar(ID : Integer);
begin
  cdsAssinatura.Close;
  sdsAssinatura.CommandText := ctCommand;
  if ID <> 0 then
    sdsAssinatura.CommandText := sdsAssinatura.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsAssinatura.Open;
end;

procedure TDMCadAssinatura.DataModuleCreate(Sender: TObject);
begin
  ctCommand := sdsAssinatura.CommandText;
  cdsProdutos.Open;
  cdsPeriodo.Open;
end;

procedure TDMCadAssinatura.cdsAssinatura_LivroBeforeInsert(
  DataSet: TDataSet);
begin
  cdsAssinatura_Livro.Last;
  vItemAssinatura := cdsAssinatura_LivroITEM.AsInteger;
end;

procedure TDMCadAssinatura.cdsAssinatura_LivroAfterInsert(
  DataSet: TDataSet);
begin
  vItemAssinatura := vItemAssinatura + 1;
  cdsAssinatura_LivroITEM.AsInteger := vItemAssinatura;
end;

procedure TDMCadAssinatura.cdsAssinatura_LivroBeforePost(
  DataSet: TDataSet);
begin
  if trim(cdsAssinatura_LivroCOD_PRODUTO_EBS.AsString) = '' then
    Abort;
end;

end.
