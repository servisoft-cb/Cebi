unit UConvCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, FMTBcd, DB,
  DBClient, Provider, SqlExpr, Grids, DBGrids, SMDBGrid, RzTabs;

type
  TfConvCliente = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DateEdit1: TDateEdit;
    BitBtn1: TBitBtn;
    sdsContrato: TSQLDataSet;
    dspContrato: TDataSetProvider;
    cdsContrato: TClientDataSet;
    dsContrato: TDataSource;
    sdsContratoCONTA13ID: TStringField;
    sdsContratoEMPRICOD: TIntegerField;
    sdsContratoTERMICOD: TIntegerField;
    sdsContratoCONTICOD: TIntegerField;
    sdsContratoVENDICOD: TIntegerField;
    sdsContratoCNTRA60COD: TStringField;
    sdsContratoCNTRCSTATUS: TStringField;
    sdsContratoTPCTICOD: TIntegerField;
    sdsContratoSCONICOD: TIntegerField;
    sdsContratoCONTDATIVACAO: TSQLTimeStampField;
    sdsContratoCLIEA13ID: TStringField;
    sdsContratoCONTIDIAVENCTO: TIntegerField;
    sdsContratoCONTCREAJUSTE: TStringField;
    sdsContratoCONTCTIPOVENCTO: TStringField;
    sdsContratoCONTA60DESCR: TStringField;
    sdsContratoCONTA13IDCONTRATANTE: TStringField;
    sdsContratoCONTA60CONTATO: TStringField;
    sdsContratoCONTA13IDEMPCONBRANCA: TStringField;
    sdsContratoCONTA60RESPONSAVEL: TStringField;
    sdsContratoCONTIPERIODO: TIntegerField;
    sdsContratoCONTDINICIO: TSQLTimeStampField;
    sdsContratoCONTDTERMINO: TSQLTimeStampField;
    sdsContratoCONTCRENOVACAOAUTO: TStringField;
    sdsContratoCONTDLIMITERENOVAUTO: TSQLTimeStampField;
    sdsContratoCONTDULTRENOV: TSQLTimeStampField;
    sdsContratoCONTDDATABASE: TSQLTimeStampField;
    sdsContratoCONTN3VLRPARCELA: TFMTBCDField;
    sdsContratoCONTCSITUACAO: TStringField;
    sdsContratoCONTDDATASITUACAO: TSQLTimeStampField;
    sdsContratoCONTA254OBS: TStringField;
    sdsContratoPLCTA15COD: TStringField;
    sdsContratoTPDCICOD: TIntegerField;
    sdsContratoCONTA5SERIENF: TStringField;
    sdsContratoAVALA13ID: TStringField;
    sdsContratoPORTICOD: TIntegerField;
    sdsContratoHTPDICOD: TIntegerField;
    sdsContratoCONTN3PERCJUROSMES: TFMTBCDField;
    sdsContratoCONTCMODALIDADE: TStringField;
    sdsContratoCONTDEMISSAO: TSQLTimeStampField;
    sdsContratoCONTCEXEBIRDADOEMP: TStringField;
    sdsContratoCONTCEXEBIRRODAP: TStringField;
    sdsContratoCONTN2VLRTOTAL: TFMTBCDField;
    sdsContratoNUMEICOD: TIntegerField;
    sdsContratoREGISTRO: TSQLTimeStampField;
    sdsContratoPENDENDE: TStringField;
    sdsContratoCNTRCGERANF: TStringField;
    sdsContratoCNTRDCANC: TSQLTimeStampField;
    sdsContratoFORNICOD: TIntegerField;
    sdsContratoCNTRCFATESPECIFICO: TStringField;
    sdsContratoCNTRDATIVACAO: TSQLTimeStampField;
    sdsContratoCONTDULTREAJUSTE: TSQLTimeStampField;
    sdsContratoOPESICOD: TIntegerField;
    sdsContratoINDIICOD: TIntegerField;
    sdsContratoCECUA15COD: TStringField;
    sdsContratoCONTN2VLRTETO: TFMTBCDField;
    sdsContratoCONTCMENSALISTA: TStringField;
    sdsContratoCONTA60REFCOMERCIAL: TStringField;
    sdsContratoCONTN3VLRANTESREAJ: TFMTBCDField;
    sdsContratoPLRCICOD: TIntegerField;
    sdsContratoCONTIVENCTONFEMIS: TIntegerField;
    sdsContratoCNTRA13ID: TStringField;
    sdsContratoCNTRDEMIS: TSQLTimeStampField;
    sdsContratoCNTRCREAJUSTE: TStringField;
    sdsContratoCONTCCONFVALOR: TStringField;
    sdsContratoCONTCFATURPARC: TStringField;
    sdsContratoCONTCCLASSIFIC: TStringField;
    sdsContratoCONTINROPARCELAS: TIntegerField;
    sdsContratoCONTIEMIPARCELA: TIntegerField;
    sdsContratoCNTRTIPO: TStringField;
    sdsContratoUSUAICOD: TIntegerField;
    sdsContratoCONTCGERAFATDATACONT: TStringField;
    sdsContratoPDVDA13ID: TStringField;
    sdsContratoCONTCDIVIDETOTAL: TStringField;
    sdsContratoCNTRCFORCAFATPER: TStringField;
    sdsContratoCONTIDIAFATURAMENTO: TIntegerField;
    sdsContratoCONTA13IDVINCULOADENDO: TStringField;
    sdsContratoCONTN2VLRADENDO: TFMTBCDField;
    sdsContratoVENDICOD1: TIntegerField;
    sdsContratoCONTCPERIODICIDADETIPO: TStringField;
    sdsContratoCONTCTIPOADENDO: TStringField;
    sdsContratoCONTIPERIODICIDADEQTDE: TIntegerField;
    sdsContratoPLCTA15COD_BKP: TStringField;
    sdsContratoCONTBCABCONTRATO: TMemoField;
    sdsContratoCONTBCORPOCONTRATO: TMemoField;
    sdsContratoCONTBRODCONTRATO: TMemoField;
    sdsContratoCONTTADENDO: TMemoField;
    sdsContratoCONTBOBSADENDO: TMemoField;
    sdsContratoTIPOCONTRATO: TStringField;
    sdsContratoCIDADEEMPCOBRANCA: TStringField;
    sdsContratoCIDADECONTRATANTE: TStringField;
    cdsContratoCONTA13ID: TStringField;
    cdsContratoEMPRICOD: TIntegerField;
    cdsContratoTERMICOD: TIntegerField;
    cdsContratoCONTICOD: TIntegerField;
    cdsContratoVENDICOD: TIntegerField;
    cdsContratoCNTRA60COD: TStringField;
    cdsContratoCNTRCSTATUS: TStringField;
    cdsContratoTPCTICOD: TIntegerField;
    cdsContratoSCONICOD: TIntegerField;
    cdsContratoCONTDATIVACAO: TSQLTimeStampField;
    cdsContratoCLIEA13ID: TStringField;
    cdsContratoCONTIDIAVENCTO: TIntegerField;
    cdsContratoCONTCREAJUSTE: TStringField;
    cdsContratoCONTCTIPOVENCTO: TStringField;
    cdsContratoCONTA60DESCR: TStringField;
    cdsContratoCONTA13IDCONTRATANTE: TStringField;
    cdsContratoCONTA60CONTATO: TStringField;
    cdsContratoCONTA13IDEMPCONBRANCA: TStringField;
    cdsContratoCONTA60RESPONSAVEL: TStringField;
    cdsContratoCONTIPERIODO: TIntegerField;
    cdsContratoCONTDINICIO: TSQLTimeStampField;
    cdsContratoCONTDTERMINO: TSQLTimeStampField;
    cdsContratoCONTCRENOVACAOAUTO: TStringField;
    cdsContratoCONTDLIMITERENOVAUTO: TSQLTimeStampField;
    cdsContratoCONTDULTRENOV: TSQLTimeStampField;
    cdsContratoCONTDDATABASE: TSQLTimeStampField;
    cdsContratoCONTN3VLRPARCELA: TFMTBCDField;
    cdsContratoCONTCSITUACAO: TStringField;
    cdsContratoCONTDDATASITUACAO: TSQLTimeStampField;
    cdsContratoCONTA254OBS: TStringField;
    cdsContratoPLCTA15COD: TStringField;
    cdsContratoTPDCICOD: TIntegerField;
    cdsContratoCONTA5SERIENF: TStringField;
    cdsContratoAVALA13ID: TStringField;
    cdsContratoPORTICOD: TIntegerField;
    cdsContratoHTPDICOD: TIntegerField;
    cdsContratoCONTN3PERCJUROSMES: TFMTBCDField;
    cdsContratoCONTCMODALIDADE: TStringField;
    cdsContratoCONTDEMISSAO: TSQLTimeStampField;
    cdsContratoCONTCEXEBIRDADOEMP: TStringField;
    cdsContratoCONTCEXEBIRRODAP: TStringField;
    cdsContratoCONTN2VLRTOTAL: TFMTBCDField;
    cdsContratoNUMEICOD: TIntegerField;
    cdsContratoREGISTRO: TSQLTimeStampField;
    cdsContratoPENDENDE: TStringField;
    cdsContratoCNTRCGERANF: TStringField;
    cdsContratoCNTRDCANC: TSQLTimeStampField;
    cdsContratoFORNICOD: TIntegerField;
    cdsContratoCNTRCFATESPECIFICO: TStringField;
    cdsContratoCNTRDATIVACAO: TSQLTimeStampField;
    cdsContratoCONTDULTREAJUSTE: TSQLTimeStampField;
    cdsContratoOPESICOD: TIntegerField;
    cdsContratoINDIICOD: TIntegerField;
    cdsContratoCECUA15COD: TStringField;
    cdsContratoCONTN2VLRTETO: TFMTBCDField;
    cdsContratoCONTCMENSALISTA: TStringField;
    cdsContratoCONTA60REFCOMERCIAL: TStringField;
    cdsContratoCONTN3VLRANTESREAJ: TFMTBCDField;
    cdsContratoPLRCICOD: TIntegerField;
    cdsContratoCONTIVENCTONFEMIS: TIntegerField;
    cdsContratoCNTRA13ID: TStringField;
    cdsContratoCNTRDEMIS: TSQLTimeStampField;
    cdsContratoCNTRCREAJUSTE: TStringField;
    cdsContratoCONTCCONFVALOR: TStringField;
    cdsContratoCONTCFATURPARC: TStringField;
    cdsContratoCONTCCLASSIFIC: TStringField;
    cdsContratoCONTINROPARCELAS: TIntegerField;
    cdsContratoCONTIEMIPARCELA: TIntegerField;
    cdsContratoCNTRTIPO: TStringField;
    cdsContratoUSUAICOD: TIntegerField;
    cdsContratoCONTCGERAFATDATACONT: TStringField;
    cdsContratoPDVDA13ID: TStringField;
    cdsContratoCONTCDIVIDETOTAL: TStringField;
    cdsContratoCNTRCFORCAFATPER: TStringField;
    cdsContratoCONTIDIAFATURAMENTO: TIntegerField;
    cdsContratoCONTA13IDVINCULOADENDO: TStringField;
    cdsContratoCONTN2VLRADENDO: TFMTBCDField;
    cdsContratoVENDICOD1: TIntegerField;
    cdsContratoCONTCPERIODICIDADETIPO: TStringField;
    cdsContratoCONTCTIPOADENDO: TStringField;
    cdsContratoCONTIPERIODICIDADEQTDE: TIntegerField;
    cdsContratoPLCTA15COD_BKP: TStringField;
    cdsContratoCONTBCABCONTRATO: TMemoField;
    cdsContratoCONTBCORPOCONTRATO: TMemoField;
    cdsContratoCONTBRODCONTRATO: TMemoField;
    cdsContratoCONTTADENDO: TMemoField;
    cdsContratoCONTBOBSADENDO: TMemoField;
    cdsContratoTIPOCONTRATO: TStringField;
    cdsContratoCIDADEEMPCOBRANCA: TStringField;
    cdsContratoCIDADECONTRATANTE: TStringField;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    SMDBGrid2: TSMDBGrid;
    BitBtn2: TBitBtn;
    mCliente: TClientDataSet;
    mClienteApel: TStringField;
    mClienteNome: TStringField;
    mClienteEndereco: TStringField;
    mClienteEndereco_Num: TStringField;
    mClienteBairro: TStringField;
    mClienteCidade: TStringField;
    mClienteUF: TStringField;
    mClienteCNPJCPF: TStringField;
    mClientePessoa: TStringField;
    dsmCliente: TDataSource;
    sdsCliente: TSQLDataSet;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    dsCliente: TDataSource;
    sdsClienteCLIEA13ID: TStringField;
    sdsClienteEMPRICOD: TIntegerField;
    sdsClienteCLIEICOD: TIntegerField;
    sdsClienteCLIEA5FISJURID: TStringField;
    sdsClienteCLIEA14CGC: TStringField;
    sdsClienteCLIEA20IE: TStringField;
    sdsClienteCLIEA11CPF: TStringField;
    sdsClienteCLIEA10RG: TStringField;
    sdsClienteCLIEA60RAZAOSOC: TStringField;
    sdsClienteCLIEA60NOMEFANT: TStringField;
    sdsClienteCLIEA60CONTATO: TStringField;
    sdsClienteCLIEA15FONE1: TStringField;
    sdsClienteCLIEA15FONE2: TStringField;
    sdsClienteCLIEA15FAX: TStringField;
    sdsClienteCLIEA30OUTROSDOC: TStringField;
    sdsClienteCLIECSEXO: TStringField;
    sdsClienteCLIEA60PROFISSAO: TStringField;
    sdsClienteCLIEA60ENDRES: TStringField;
    sdsClienteCLIEA60BAIRES: TStringField;
    sdsClienteCLIEA60CIDRES: TStringField;
    sdsClienteCLIEA2UFRES: TStringField;
    sdsClienteCLIEA8CEPRES: TStringField;
    sdsClienteCLIEA60EMAIL: TStringField;
    sdsClienteCLIEA60URL: TStringField;
    sdsClienteCLIEN2RENDA: TFMTBCDField;
    sdsClienteCLIEN2LIMITECRED: TFMTBCDField;
    sdsClienteCLIEA60NOMEPAI: TStringField;
    sdsClienteCLIEA60NOMEMAE: TStringField;
    sdsClienteCLIEDNASC: TSQLTimeStampField;
    sdsClienteCLIECESTADOCIVIL: TStringField;
    sdsClienteCLIEA60CONJUGE: TStringField;
    sdsClienteCLIEA60CONJUGEMAE: TStringField;
    sdsClienteCLIEN2CONJUGERENDA: TFMTBCDField;
    sdsClienteCLIEDNASCCONJUGE: TSQLTimeStampField;
    sdsClienteCLIEA60CONJUGEEMPR: TStringField;
    sdsClienteCLIEA15CONJFONEMPR: TStringField;
    sdsClienteCLIEA60EMPRESA: TStringField;
    sdsClienteCLIEA60ENDEMPRESA: TStringField;
    sdsClienteCLIEA60BAIEMPRESA: TStringField;
    sdsClienteCLIEA60CIDEMPRESA: TStringField;
    sdsClienteCLIEA2UFEMPRESA: TStringField;
    sdsClienteCLIEA8CEPEMPRESA: TStringField;
    sdsClienteCLIEDAMISEMPRESA: TSQLTimeStampField;
    sdsClienteCLIEA15FONEEMPRESA: TStringField;
    sdsClienteBANCA5COD: TStringField;
    sdsClienteCLIEA5AGENCIA: TStringField;
    sdsClienteCLIEA10CONTA: TStringField;
    sdsClienteCLIEA60TITULAR: TStringField;
    sdsClienteCLIEDABERTCONTA: TSQLTimeStampField;
    sdsClienteCLIETOBS: TStringField;
    sdsClienteTPCLICOD: TIntegerField;
    sdsClienteMTBLICOD: TIntegerField;
    sdsClientePROFICOD: TIntegerField;
    sdsClienteVENDICOD: TIntegerField;
    sdsClienteCLIEDCAD: TSQLTimeStampField;
    sdsClienteCLIEDPRICOMPRA: TSQLTimeStampField;
    sdsClienteCLIEDULTCOMPRA: TSQLTimeStampField;
    sdsClienteCLIEA254PATHFOTO: TStringField;
    sdsClienteCLIECRECAVISATRASO: TStringField;
    sdsClienteCLIEA30NATURALIDADE: TStringField;
    sdsClienteCLIECRECEBECARTAO: TStringField;
    sdsClienteCLIEDENVCARTIMP: TSQLTimeStampField;
    sdsClienteCLIEDRETCARTIMP: TSQLTimeStampField;
    sdsClienteCLIEDENVCARTCLI: TSQLTimeStampField;
    sdsClienteCLIEA10CODCONV: TStringField;
    sdsClienteCLIEA10CODANT: TStringField;
    sdsClienteCLIEA20NROCARTCRED: TStringField;
    sdsClientePENDENTE: TStringField;
    sdsClienteREGISTRO: TSQLTimeStampField;
    sdsClienteCLIEA35NROCARTCRED: TStringField;
    sdsClienteCLIEA60EMAILCONJUG: TStringField;
    sdsClienteCLIEDCASAMENTO: TSQLTimeStampField;
    sdsClienteTPRCICOD: TIntegerField;
    sdsClienteCLIEA60ENDCOB: TStringField;
    sdsClienteCLIEA60BAICOB: TStringField;
    sdsClienteCLIEA60CIDCOB: TStringField;
    sdsClienteCLIEA2UFCOB: TStringField;
    sdsClienteCLIEA8CEPCOB: TStringField;
    sdsClientePLRCICOD: TIntegerField;
    sdsClienteCLIEA30TEMPOMORADIA: TStringField;
    sdsClienteCLIECCASAPROPRIA: TStringField;
    sdsClienteCLIEA30LOCALIMOV1: TStringField;
    sdsClienteCLIEA30LOCALIMOV2: TStringField;
    sdsClienteCLIEA30MODVEICULO: TStringField;
    sdsClienteCLIEA30TIPOIMOV1: TStringField;
    sdsClienteCLIEA30TIPOIMOV2: TStringField;
    sdsClienteCLIEA4ANOVEICULO: TStringField;
    sdsClienteCLIEA60IMOB: TStringField;
    sdsClienteCLIEA8PLACAVEICULO: TStringField;
    sdsClienteCLIECSTATUSIMOV1: TStringField;
    sdsClienteCLIECSTATUSIMOV2: TStringField;
    sdsClienteCLIEN2VLRALUGUEL: TFMTBCDField;
    sdsClienteCLIEIDIAVCTOCARTAO: TIntegerField;
    sdsClienteCLIEA30CODCONTABIL: TStringField;
    sdsClienteCLIEBIMAGEM: TBlobField;
    sdsClienteGRPCA13ID: TStringField;
    sdsClienteOPESICOD: TIntegerField;
    sdsClientePORTICOD: TIntegerField;
    sdsClienteCLIECTARIFABANCO: TStringField;
    sdsClienteTRANICOD: TIntegerField;
    sdsClienteCLIECGERANF: TStringField;
    sdsClienteCLIEN2PERCDESCDUPL: TFMTBCDField;
    sdsClienteCLIEA60ENDENT: TStringField;
    sdsClienteCLIEA60BAIENT: TStringField;
    sdsClienteCLIEA60CIDENT: TStringField;
    sdsClienteCLIEA2UFENT: TStringField;
    sdsClienteCLIEA8CEPENT: TStringField;
    sdsClienteVENDICODEXT: TIntegerField;
    sdsClienteCLIECDIASEMAGRUPDUPL: TStringField;
    sdsClienteCLIEN2PERCCOMISS: TFMTBCDField;
    sdsClienteCOBRA13ID: TStringField;
    sdsClienteCLIEDDTVENDPREF: TSQLTimeStampField;
    sdsClienteHORAICOD: TIntegerField;
    sdsClienteCLIA60VERSAO: TStringField;
    sdsClienteCLIETDADOSCONV: TMemoField;
    sdsClienteCLIETOBS1: TMemoField;
    sdsClienteCLIECTIPOENDRES: TStringField;
    sdsClienteCLIECTIPOENDCOB: TStringField;
    sdsClienteCLIECTIPOENDENT: TStringField;
    sdsClienteCLIEDNAORECAVISO: TSQLTimeStampField;
    sdsClienteCLIECVISITATIPO: TStringField;
    sdsClienteCLIEA13VISITADIA: TStringField;
    sdsClienteCLIEA10CONTADV: TStringField;
    sdsClienteCLIEA60NACIONALIDADE: TStringField;
    sdsClienteATRMICOD: TIntegerField;
    sdsClienteCLIEA254OBSEMPRESA: TStringField;
    sdsClienteCLIEA5ANOMESANIVER: TStringField;
    sdsClienteCLIECGERABLOQUETO: TStringField;
    sdsClienteCLIECTAXABCO: TStringField;
    sdsClienteCLIEDCONJUGEADMIS: TSQLTimeStampField;
    sdsClienteCLIEICONTRQUIT: TIntegerField;
    sdsClienteCLIEN2DESCOESP: TFMTBCDField;
    sdsClienteCLIEN3PERCCOMISS: TFMTBCDField;
    sdsClientePLCTA15COD: TStringField;
    sdsClienteCIDAICOD: TIntegerField;
    sdsClienteBAIRICOD: TIntegerField;
    sdsClienteRUAICOD: TIntegerField;
    sdsClienteCLIEA15ENDRESTEMPMORA: TStringField;
    sdsClienteCLIEA15ENDCOBTEMPMORA: TStringField;
    sdsClienteCLIEA15ENDENTTEMPMORA: TStringField;
    sdsClienteCLIEA15ENDCODTEMPMORA: TStringField;
    sdsClienteCLIECATIVO: TStringField;
    sdsClienteCLIEA3200OBSFINAN: TStringField;
    sdsClienteCLIEA15FONECOB: TStringField;
    sdsClienteCLIEA13IDPAI: TStringField;
    sdsClienteCLIEA254LEMBRETE: TStringField;
    sdsClienteCLORICOD: TIntegerField;
    sdsClienteCLIEA60EMPRESAS: TStringField;
    sdsClientePAISICOD: TIntegerField;
    sdsClienteCLIEA10ENDCOBCOMP: TStringField;
    sdsClienteCLIEA10ENDENTCOMP: TStringField;
    sdsClienteCLIEA10ENDRESCOMP: TStringField;
    sdsClienteCLIEA60CONTATO2: TStringField;
    sdsClienteCLIEA8SENHAINTERNET: TStringField;
    sdsClienteCLIEAIENDRESNUM: TIntegerField;
    sdsClienteCLIEIENDCOBNUM: TIntegerField;
    sdsClienteCLIEIENDENTNUM: TIntegerField;
    sdsClienteCLIEIENDRESNUM: TIntegerField;
    sdsClienteCLIEA60IDSITE: TStringField;
    sdsClienteCLIECUSAREGRAFINANNF: TStringField;
    sdsClienteCLIEIMEDIAVENDAS: TIntegerField;
    sdsClienteCLIECNGERAPARCNF: TStringField;
    sdsClienteCLIEDULT_CONT_CALL: TSQLTimeStampField;
    sdsClienteCLIECNCONCDESCST: TStringField;
    sdsClienteCLIEC1UTILENDGRUPO: TStringField;
    sdsClienteCLIEC1AGRUPADUPLI: TStringField;
    sdsClienteCLIEA10CODANTIGO: TStringField;
    sdsClienteCLIEA20INSCSUFRAMA: TStringField;
    sdsClienteCLIEACOMUN: TStringField;
    sdsClienteCLIEAICODANT: TIntegerField;
    sdsClienteCLIECANEXOEMAILNFE: TStringField;
    sdsClienteCLIECCONTRIBUINTEICMS: TStringField;
    sdsClienteCLIEINATUREZAJURICIA: TIntegerField;
    sdsClienteCLIEN2ALIQUOTAICMS: TFMTBCDField;
    sdsClienteCLIECREGIMEAPURACAO: TStringField;
    sdsClienteCLIEAMODULOS: TStringField;
    sdsClienteCLIECTIPOFRETE: TStringField;
    sdsClienteCLIEICRT: TIntegerField;
    sdsClienteCLIEINROCOMPUTADOR: TIntegerField;
    sdsClienteCLIEA20IM: TStringField;
    sdsClienteCLIEITIPOLOGRADOURO: TIntegerField;
    sdsClienteCLIEITIPOLOGRADOUROCOB: TIntegerField;
    sdsClienteCLIEITIPOLOGRADOUROENT: TIntegerField;
    sdsClienteCLIEINUMATENDIMENTOMENSAL: TIntegerField;
    sdsClienteTIOSICOD: TIntegerField;
    sdsClientePRODICODIMPLANTACAO: TIntegerField;
    sdsClienteCLIEN2HORASIMPLANTACAO: TFMTBCDField;
    sdsClienteCLIECENVIABOLETONF: TStringField;
    cdsClienteCLIEA13ID: TStringField;
    cdsClienteEMPRICOD: TIntegerField;
    cdsClienteCLIEICOD: TIntegerField;
    cdsClienteCLIEA5FISJURID: TStringField;
    cdsClienteCLIEA14CGC: TStringField;
    cdsClienteCLIEA20IE: TStringField;
    cdsClienteCLIEA11CPF: TStringField;
    cdsClienteCLIEA10RG: TStringField;
    cdsClienteCLIEA60RAZAOSOC: TStringField;
    cdsClienteCLIEA60NOMEFANT: TStringField;
    cdsClienteCLIEA60CONTATO: TStringField;
    cdsClienteCLIEA15FONE1: TStringField;
    cdsClienteCLIEA15FONE2: TStringField;
    cdsClienteCLIEA15FAX: TStringField;
    cdsClienteCLIEA30OUTROSDOC: TStringField;
    cdsClienteCLIECSEXO: TStringField;
    cdsClienteCLIEA60PROFISSAO: TStringField;
    cdsClienteCLIEA60ENDRES: TStringField;
    cdsClienteCLIEA60BAIRES: TStringField;
    cdsClienteCLIEA60CIDRES: TStringField;
    cdsClienteCLIEA2UFRES: TStringField;
    cdsClienteCLIEA8CEPRES: TStringField;
    cdsClienteCLIEA60EMAIL: TStringField;
    cdsClienteCLIEA60URL: TStringField;
    cdsClienteCLIEN2RENDA: TFMTBCDField;
    cdsClienteCLIEN2LIMITECRED: TFMTBCDField;
    cdsClienteCLIEA60NOMEPAI: TStringField;
    cdsClienteCLIEA60NOMEMAE: TStringField;
    cdsClienteCLIEDNASC: TSQLTimeStampField;
    cdsClienteCLIECESTADOCIVIL: TStringField;
    cdsClienteCLIEA60CONJUGE: TStringField;
    cdsClienteCLIEA60CONJUGEMAE: TStringField;
    cdsClienteCLIEN2CONJUGERENDA: TFMTBCDField;
    cdsClienteCLIEDNASCCONJUGE: TSQLTimeStampField;
    cdsClienteCLIEA60CONJUGEEMPR: TStringField;
    cdsClienteCLIEA15CONJFONEMPR: TStringField;
    cdsClienteCLIEA60EMPRESA: TStringField;
    cdsClienteCLIEA60ENDEMPRESA: TStringField;
    cdsClienteCLIEA60BAIEMPRESA: TStringField;
    cdsClienteCLIEA60CIDEMPRESA: TStringField;
    cdsClienteCLIEA2UFEMPRESA: TStringField;
    cdsClienteCLIEA8CEPEMPRESA: TStringField;
    cdsClienteCLIEDAMISEMPRESA: TSQLTimeStampField;
    cdsClienteCLIEA15FONEEMPRESA: TStringField;
    cdsClienteBANCA5COD: TStringField;
    cdsClienteCLIEA5AGENCIA: TStringField;
    cdsClienteCLIEA10CONTA: TStringField;
    cdsClienteCLIEA60TITULAR: TStringField;
    cdsClienteCLIEDABERTCONTA: TSQLTimeStampField;
    cdsClienteCLIETOBS: TStringField;
    cdsClienteTPCLICOD: TIntegerField;
    cdsClienteMTBLICOD: TIntegerField;
    cdsClientePROFICOD: TIntegerField;
    cdsClienteVENDICOD: TIntegerField;
    cdsClienteCLIEDCAD: TSQLTimeStampField;
    cdsClienteCLIEDPRICOMPRA: TSQLTimeStampField;
    cdsClienteCLIEDULTCOMPRA: TSQLTimeStampField;
    cdsClienteCLIEA254PATHFOTO: TStringField;
    cdsClienteCLIECRECAVISATRASO: TStringField;
    cdsClienteCLIEA30NATURALIDADE: TStringField;
    cdsClienteCLIECRECEBECARTAO: TStringField;
    cdsClienteCLIEDENVCARTIMP: TSQLTimeStampField;
    cdsClienteCLIEDRETCARTIMP: TSQLTimeStampField;
    cdsClienteCLIEDENVCARTCLI: TSQLTimeStampField;
    cdsClienteCLIEA10CODCONV: TStringField;
    cdsClienteCLIEA10CODANT: TStringField;
    cdsClienteCLIEA20NROCARTCRED: TStringField;
    cdsClientePENDENTE: TStringField;
    cdsClienteREGISTRO: TSQLTimeStampField;
    cdsClienteCLIEA35NROCARTCRED: TStringField;
    cdsClienteCLIEA60EMAILCONJUG: TStringField;
    cdsClienteCLIEDCASAMENTO: TSQLTimeStampField;
    cdsClienteTPRCICOD: TIntegerField;
    cdsClienteCLIEA60ENDCOB: TStringField;
    cdsClienteCLIEA60BAICOB: TStringField;
    cdsClienteCLIEA60CIDCOB: TStringField;
    cdsClienteCLIEA2UFCOB: TStringField;
    cdsClienteCLIEA8CEPCOB: TStringField;
    cdsClientePLRCICOD: TIntegerField;
    cdsClienteCLIEA30TEMPOMORADIA: TStringField;
    cdsClienteCLIECCASAPROPRIA: TStringField;
    cdsClienteCLIEA30LOCALIMOV1: TStringField;
    cdsClienteCLIEA30LOCALIMOV2: TStringField;
    cdsClienteCLIEA30MODVEICULO: TStringField;
    cdsClienteCLIEA30TIPOIMOV1: TStringField;
    cdsClienteCLIEA30TIPOIMOV2: TStringField;
    cdsClienteCLIEA4ANOVEICULO: TStringField;
    cdsClienteCLIEA60IMOB: TStringField;
    cdsClienteCLIEA8PLACAVEICULO: TStringField;
    cdsClienteCLIECSTATUSIMOV1: TStringField;
    cdsClienteCLIECSTATUSIMOV2: TStringField;
    cdsClienteCLIEN2VLRALUGUEL: TFMTBCDField;
    cdsClienteCLIEIDIAVCTOCARTAO: TIntegerField;
    cdsClienteCLIEA30CODCONTABIL: TStringField;
    cdsClienteCLIEBIMAGEM: TBlobField;
    cdsClienteGRPCA13ID: TStringField;
    cdsClienteOPESICOD: TIntegerField;
    cdsClientePORTICOD: TIntegerField;
    cdsClienteCLIECTARIFABANCO: TStringField;
    cdsClienteTRANICOD: TIntegerField;
    cdsClienteCLIECGERANF: TStringField;
    cdsClienteCLIEN2PERCDESCDUPL: TFMTBCDField;
    cdsClienteCLIEA60ENDENT: TStringField;
    cdsClienteCLIEA60BAIENT: TStringField;
    cdsClienteCLIEA60CIDENT: TStringField;
    cdsClienteCLIEA2UFENT: TStringField;
    cdsClienteCLIEA8CEPENT: TStringField;
    cdsClienteVENDICODEXT: TIntegerField;
    cdsClienteCLIECDIASEMAGRUPDUPL: TStringField;
    cdsClienteCLIEN2PERCCOMISS: TFMTBCDField;
    cdsClienteCOBRA13ID: TStringField;
    cdsClienteCLIEDDTVENDPREF: TSQLTimeStampField;
    cdsClienteHORAICOD: TIntegerField;
    cdsClienteCLIA60VERSAO: TStringField;
    cdsClienteCLIETDADOSCONV: TMemoField;
    cdsClienteCLIETOBS1: TMemoField;
    cdsClienteCLIECTIPOENDRES: TStringField;
    cdsClienteCLIECTIPOENDCOB: TStringField;
    cdsClienteCLIECTIPOENDENT: TStringField;
    cdsClienteCLIEDNAORECAVISO: TSQLTimeStampField;
    cdsClienteCLIECVISITATIPO: TStringField;
    cdsClienteCLIEA13VISITADIA: TStringField;
    cdsClienteCLIEA10CONTADV: TStringField;
    cdsClienteCLIEA60NACIONALIDADE: TStringField;
    cdsClienteATRMICOD: TIntegerField;
    cdsClienteCLIEA254OBSEMPRESA: TStringField;
    cdsClienteCLIEA5ANOMESANIVER: TStringField;
    cdsClienteCLIECGERABLOQUETO: TStringField;
    cdsClienteCLIECTAXABCO: TStringField;
    cdsClienteCLIEDCONJUGEADMIS: TSQLTimeStampField;
    cdsClienteCLIEICONTRQUIT: TIntegerField;
    cdsClienteCLIEN2DESCOESP: TFMTBCDField;
    cdsClienteCLIEN3PERCCOMISS: TFMTBCDField;
    cdsClientePLCTA15COD: TStringField;
    cdsClienteCIDAICOD: TIntegerField;
    cdsClienteBAIRICOD: TIntegerField;
    cdsClienteRUAICOD: TIntegerField;
    cdsClienteCLIEA15ENDRESTEMPMORA: TStringField;
    cdsClienteCLIEA15ENDCOBTEMPMORA: TStringField;
    cdsClienteCLIEA15ENDENTTEMPMORA: TStringField;
    cdsClienteCLIEA15ENDCODTEMPMORA: TStringField;
    cdsClienteCLIECATIVO: TStringField;
    cdsClienteCLIEA3200OBSFINAN: TStringField;
    cdsClienteCLIEA15FONECOB: TStringField;
    cdsClienteCLIEA13IDPAI: TStringField;
    cdsClienteCLIEA254LEMBRETE: TStringField;
    cdsClienteCLORICOD: TIntegerField;
    cdsClienteCLIEA60EMPRESAS: TStringField;
    cdsClientePAISICOD: TIntegerField;
    cdsClienteCLIEA10ENDCOBCOMP: TStringField;
    cdsClienteCLIEA10ENDENTCOMP: TStringField;
    cdsClienteCLIEA10ENDRESCOMP: TStringField;
    cdsClienteCLIEA60CONTATO2: TStringField;
    cdsClienteCLIEA8SENHAINTERNET: TStringField;
    cdsClienteCLIEAIENDRESNUM: TIntegerField;
    cdsClienteCLIEIENDCOBNUM: TIntegerField;
    cdsClienteCLIEIENDENTNUM: TIntegerField;
    cdsClienteCLIEIENDRESNUM: TIntegerField;
    cdsClienteCLIEA60IDSITE: TStringField;
    cdsClienteCLIECUSAREGRAFINANNF: TStringField;
    cdsClienteCLIEIMEDIAVENDAS: TIntegerField;
    cdsClienteCLIECNGERAPARCNF: TStringField;
    cdsClienteCLIEDULT_CONT_CALL: TSQLTimeStampField;
    cdsClienteCLIECNCONCDESCST: TStringField;
    cdsClienteCLIEC1UTILENDGRUPO: TStringField;
    cdsClienteCLIEC1AGRUPADUPLI: TStringField;
    cdsClienteCLIEA10CODANTIGO: TStringField;
    cdsClienteCLIEA20INSCSUFRAMA: TStringField;
    cdsClienteCLIEACOMUN: TStringField;
    cdsClienteCLIEAICODANT: TIntegerField;
    cdsClienteCLIECANEXOEMAILNFE: TStringField;
    cdsClienteCLIECCONTRIBUINTEICMS: TStringField;
    cdsClienteCLIEINATUREZAJURICIA: TIntegerField;
    cdsClienteCLIEN2ALIQUOTAICMS: TFMTBCDField;
    cdsClienteCLIECREGIMEAPURACAO: TStringField;
    cdsClienteCLIEAMODULOS: TStringField;
    cdsClienteCLIECTIPOFRETE: TStringField;
    cdsClienteCLIEICRT: TIntegerField;
    cdsClienteCLIEINROCOMPUTADOR: TIntegerField;
    cdsClienteCLIEA20IM: TStringField;
    cdsClienteCLIEITIPOLOGRADOURO: TIntegerField;
    cdsClienteCLIEITIPOLOGRADOUROCOB: TIntegerField;
    cdsClienteCLIEITIPOLOGRADOUROENT: TIntegerField;
    cdsClienteCLIEINUMATENDIMENTOMENSAL: TIntegerField;
    cdsClienteTIOSICOD: TIntegerField;
    cdsClientePRODICODIMPLANTACAO: TIntegerField;
    cdsClienteCLIEN2HORASIMPLANTACAO: TFMTBCDField;
    cdsClienteCLIECENVIABOLETONF: TStringField;
    Label2: TLabel;
    Label3: TLabel;
    lblGravado: TLabel;
    lblLido: TLabel;
    mClienteCodAnt: TStringField;
    mClienteFone1: TStringField;
    mClienteFone2: TStringField;
    mClienteFax: TStringField;
    mClienteCep: TStringField;
    mClienteInscEstadual: TStringField;
    mClienteRG: TStringField;
    mClientePais: TStringField;
    mClienteCodCidade: TLargeintField;
    TabSheet3: TRzTabSheet;
    Memo1: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    ctContrato : String;
    vRegLidos, vRegGravados : Integer;
    vExiste_Emp : Boolean;
    vApel : Integer;

    procedure prc_Consultar;
    procedure prc_Le_cdsContrato;
    procedure prc_Gravar_mCliente;
    procedure prc_Gravar_Empresa_EBS;
    procedure prc_Gravar_Empresa_Endereco_EBS;
    procedure Abrir_EmpresasEndereco(Codigo: Integer);

  public
    { Public declarations }
  end;

var
  fConvCliente: TfConvCliente;

implementation

uses DmdDatabase_Ant, UDMEBS;

{$R *.dfm}

procedure TfConvCliente.BitBtn1Click(Sender: TObject);
begin
  if DateEdit1.Date < 10 then
  begin
    ShowMessage('Data não foi informada!');
    exit;
  end;

  vApel := 0;
  
  prc_Consultar;
  prc_Le_cdsContrato;
end;

procedure TfConvCliente.prc_Consultar;
begin
  cdsContrato.Close;
  sdsContrato.CommandText := ctContrato;
  sdsContrato.CommandText := sdsContrato.CommandText + ' WHERE CONTDTERMINO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  cdsContrato.Open;
end;

procedure TfConvCliente.FormShow(Sender: TObject);
begin
  ctContrato := sdsContrato.CommandText;
end;

procedure TfConvCliente.prc_Le_cdsContrato;
begin
  cdsCliente.Close;
  cdsCliente.Open;
  mCliente.EmptyDataSet;
  vRegLidos    := 0;
  vRegGravados := 0;
  lblLido.Caption    := '0';
  lblGravado.Caption := '0';
  cdsContrato.First;
  while not cdsContrato.Eof do
  begin
    vRegLidos       := vRegLidos + 1;
    lblLido.Caption := IntToStr(vRegLidos);
    lblLido.Refresh;
    if cdsCliente.Locate('CLIEA13ID',cdsContratoCLIEA13ID.AsString,([Locaseinsensitive])) then
      prc_Gravar_mCliente;
    cdsContrato.Next;
  end;
end;

procedure TfConvCliente.prc_Gravar_mCliente;
var
  vCidade :  String;
  vTexto : String;
  i : Integer;
begin
  if mCliente.Locate('CodAnt',cdsClienteCLIEA13ID.AsString,([Locaseinsensitive])) then
    exit;

  vApel := vApel + 1;

  mCliente.Insert;
  mClienteCodAnt.AsString       := cdsClienteCLIEA13ID.AsString;
  mClienteApel.AsString         := FormatFloat('000000',vApel);
  mClienteNome.AsString         := cdsClienteCLIEA60RAZAOSOC.AsString;
  mClienteEndereco.AsString     := cdsClienteCLIEA60ENDRES.AsString;
  mClienteEndereco_Num.AsString := cdsClienteCLIEIENDRESNUM.AsString;
  mClienteBairro.AsString       := cdsClienteCLIEA60BAIRES.AsString;
  if cdsClienteCLIEIENDRESNUM.AsInteger > 0 then
    mClienteEndereco.AsString := mClienteEndereco.AsString + ', ' + cdsClienteCLIEIENDRESNUM.AsString;
  mClienteCidade.AsString       := LowerCase(cdsClienteCLIEA60CIDRES.AsString);
  vTexto := UpperCase(copy(mClienteCidade.AsString,1,1)) + copy(mClienteCidade.AsString,2,Length(mClienteCidade.AsString) - 1);
  mClienteCidade.AsString := vTexto;
  i := pos(' ',mClienteCidade.AsString);
  if (i > 0) and (i < Length(mClienteCidade.AsString)) then
  begin
    i := i + 1;
    vTexto := UpperCase(copy(mClienteCidade.AsString,i,1));
    vTexto := UpperCase(copy(mClienteCidade.AsString,i,1)) + copy(mClienteCidade.AsString,i+1,Length(mClienteCidade.AsString) - i);
    mClienteCidade.AsString := copy(mClienteCidade.AsString,1,i-1) + vTexto;
  end;
  if trim(cdsClienteCLIEA11CPF.AsString) <> '' then
  begin
    mClientePessoa.AsString  := 'F';
    vTexto := cdsClienteCLIEA11CPF.AsString;
    for i := 1 to 11 - Length(vTexto) do
      vTexto := '0' + vTexto;
    vTexto := copy(vTexto,1,3) + '.' + copy(vTexto,4,3) + '.' + copy(vTexto,7,3) + '-' + copy(vTexto,10,2);
    mClienteCNPJCPF.AsString := vTexto;
  end
  else
  begin
    mClientePessoa.AsString  := 'J';
    vTexto := cdsClienteCLIEA11CPF.AsString;
    for i := 1 to 14 - Length(vTexto) do
      vTexto := '0' + vTexto;
    vTexto := copy(vTexto,1,2) + '.' + copy(vTexto,3,3) + '.' + copy(vTexto,6,3) + '/' + copy(vTexto,9,4) + '-' + copy(vTexto,13,2);
    mClienteCNPJCPF.AsString := vTexto;
  end;
  mClienteUF.AsString := cdsClienteCLIEA2UFRES.AsString;

  vTexto := cdsClienteCLIEA8CEPRES.AsString;
  for i := 1 to 8 - Length(vTexto) do
    vTexto := '0' + vTexto;
  mClienteCep.AsString := Copy(vTexto,1,5) + '-' + Copy(vTexto,6,3);
  mClienteRG.AsString  := cdsClienteCLIEA10RG.AsString;
  mClienteInscEstadual.AsString := cdsClienteCLIEA20IE.AsString;
  mClienteFone1.AsString        := cdsClienteCLIEA15FONE1.AsString;
  mClienteFone2.AsString        := cdsClienteCLIEA15FONE2.AsString;
  mClienteFax.AsString          := cdsClienteCLIEA15FAX.AsString;
  mClientePais.AsString         := 'BR';
  if DMEBS.cdsFGEMunicipio.Locate('desc_municipio',mClienteCidade.AsString,([Locaseinsensitive])) then
    mClienteCodCidade.AsInteger := DMEBS.cdsFGEMunicipiocd_ibge.AsInteger;
  mCliente.Post;

  vRegGravados := vRegGravados + 1;
  lblGravado.Caption := IntToStr(vRegGravados);
  lblGravado.Refresh;
end;

procedure TfConvCliente.FormCreate(Sender: TObject);
begin
  dmDatabase_Ant := TdmDatabase_Ant.Create(Self);
  DMEBS := TDMEBS.Create(Self);
  DMEBS.cdsFGEMunicipio.Open;
end;

procedure TfConvCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfConvCliente.BitBtn2Click(Sender: TObject);
begin
  mCliente.First;
  while not mCliente.Eof do
  begin
    prc_Gravar_Empresa_EBS;
    if not vExiste_Emp then
      prc_Gravar_Empresa_Endereco_EBS;
    mCliente.Next;
  end;
  ShowMessage('Gravação concluída!');
end;

procedure TfConvCliente.prc_Gravar_Empresa_EBS;
var
  vFlag : Boolean;
begin
  vExiste_Emp := False;
  try
    DMEBS.cdsEmpresa.Close;
    DMEBS.sdsEmpresa.CommandText := ctEmpresa
                                  + ' WHERE ([CNPJ/CPF]) = ' + QuotedStr(mClienteCNPJCPF.AsString);
    DMEBS.cdsEmpresa.Open;                                               
    if not DMEBS.cdsEmpresa.IsEmpty then
      vExiste_Emp := True;
  except
    on e: Exception do
      begin
        Raise;
      end
  end;
  if vExiste_Emp then
    exit;

  try
    vFlag := False;
    if not DMEBS.cdsEmpresa.IsEmpty then
    else
    begin
      vFlag := True;
      DMEBS.cdsEmpresa.Insert;
      DMEBS.cdsEmpresaApel.AsString       := mClienteApel.AsString;
      DMEBS.cdsEmpresaRazo.AsString       := mClienteNome.AsString;
      DMEBS.cdsEmpresaCadastro.AsDateTime := Date;
      DMEBS.cdsEmpresaTipo.AsString       := 'Cliente';
      if mClientePessoa.AsString = 'F' then
        DMEBS.cdsEmpresaPessoa.AsString   := 'Física'
      else
        DMEBS.cdsEmpresaPessoa.AsString   := 'Jurídica';
      DMEBS.cdsEmpresaEndereo.AsString    := mClienteEndereco.AsString;
      DMEBS.cdsEmpresaBairro.AsString     := mClienteBairro.AsString;
      DMEBS.cdsEmpresaCEP.AsString        := mClienteCep.AsString;
      DMEBS.cdsEmpresaCidade.AsString     := mClienteCidade.AsString;
      DMEBS.cdsEmpresaEstado.AsString     := mClienteUF.AsString;
      DMEBS.cdsEmpresaPas.AsString        := 'BR';
      DMEBS.cdsEmpresaFone1.AsString      := mClienteFone1.AsString;
      DMEBS.cdsEmpresaFone2.AsString      := mClienteFone2.AsString;
      DMEBS.cdsEmpresaRamal1.AsString     := '';
      DMEBS.cdsEmpresaRamo.AsString       := '1';
      DMEBS.cdsEmpresaCrdito.AsString     := '0';
      DMEBS.cdsEmpresaCNPJCPF.AsString    := mClienteCNPJCPF.AsString;
      DMEBS.cdsEmpresaIEstRG.AsString     := mClienteInscEstadual.AsString;
      DMEBS.cdsEmpresacd_municipio_ibge.AsInteger := mClienteCodCidade.AsInteger;
      DMEBS.cdsEmpresa.Post;
      DMEBS.cdsEmpresa.ApplyUpdates(0);
    end;
  except
    on e: Exception do
      begin
        Raise;
      end
  end;
end;

procedure TfConvCliente.prc_Gravar_Empresa_Endereco_EBS;
var
  vCnpj : String;
  vItem : Integer;
  vFlag : Boolean;
begin
  //Endereço de Cobrança
  if Trim(mClienteCNPJCPF.AsString) <> '' then
  begin
    try
      Abrir_EmpresasEndereco(1);
    except
      on e: Exception do
        begin
          raise;
        end
    end;

    try
      if not DMEBS.cdsEmpresa_Endereco.IsEmpty then
        //DMEBS.adsEmpresa_Endereco.Edit
      else
      begin
        DMEBS.cdsEmpresa_Endereco.Insert;
        DMEBS.cdsEmpresa_EnderecoApel.AsString   := mClienteApel.AsString;
        DMEBS.cdsEmpresa_EnderecoCdigo.AsInteger := 1;
        DMEBS.cdsEmpresa_EnderecoTipo.AsString := 'Cobrança';
        DMEBS.cdsEmpresa_EnderecoEndereo.AsString := mClienteEndereco.AsString;
        DMEBS.cdsEmpresa_EnderecoBairro.AsString  := mClienteBairro.AsString;
        DMEBS.cdsEmpresa_EnderecoCEP.AsString     := mClienteCep.AsString;
        DMEBS.cdsEmpresa_EnderecoCidade.AsString  := mClienteCidade.AsString;
        DMEBS.cdsEmpresa_EnderecoEstado.AsString  := mClienteUF.AsString;
        if mClientePessoa.AsString = 'J' then
          DMEBS.cdsEmpresa_EnderecoPessoa.AsString  := 'Jurídica'
        else
          DMEBS.cdsEmpresa_EnderecoPessoa.AsString  := 'Física';
        DMEBS.cdsEmpresa_EnderecoCNPJCPF.AsString := mClienteCNPJCPF.AsString;
        DMEBS.cdsEmpresa_EnderecoIEstRG.AsString   := mClienteInscEstadual.AsString;
        DMEBS.cdsEmpresa_Enderecocd_pais.AsString  := 'BR';
        DMEBS.cdsEmpresa_Enderecocd_municipio_ibge.AsString := mClienteCodCidade.AsString;
        DMEBS.cdsEmpresa_Endereco.Post;
        DMEBS.cdsEmpresa_Endereco.ApplyUpdates(0);
      end;
    except
      on e: Exception do
        begin
          Raise;
        end
    end;
  end;

  //Endereço de Entrega
  if Trim(mClienteCNPJCPF.AsString) <> '' then
  begin
    try
      Abrir_EmpresasEndereco(2);
    except
      on e: Exception do
        begin
          Raise;
        end
    end;

    try
      if not DMEBS.cdsEmpresa_Endereco.IsEmpty then
        DMEBS.cdsEmpresa_Endereco.Edit
      else
      begin
        DMEBS.cdsEmpresa_Endereco.Insert;
        DMEBS.cdsEmpresa_EnderecoApel.AsString    := mClienteApel.AsString;
        DMEBS.cdsEmpresa_EnderecoCdigo.AsInteger := 2;
      end;
      DMEBS.cdsEmpresa_EnderecoTipo.AsString    := 'Entrega';
      DMEBS.cdsEmpresa_EnderecoEndereo.AsString := mClienteEndereco.AsString;
      DMEBS.cdsEmpresa_EnderecoBairro.AsString  := mClienteBairro.AsString;
      DMEBS.cdsEmpresa_EnderecoCEP.AsString     := mClienteCep.AsString;
      DMEBS.cdsEmpresa_EnderecoCidade.AsString  := mClienteCidade.AsString;
      DMEBS.cdsEmpresa_EnderecoEstado.AsString  := mClienteUF.AsString;
      if mClientePessoa.AsString = 'J' then
        DMEBS.cdsEmpresa_EnderecoPessoa.AsString := 'Jurídica'
      else
        DMEBS.cdsEmpresa_EnderecoPessoa.AsString := 'Física';
      DMEBS.cdsEmpresa_EnderecoCNPJCPF.AsString  := mClienteCNPJCPF.AsString;
      DMEBS.cdsEmpresa_EnderecoIEstRG.AsString   := mClienteInscEstadual.AsString;
      DMEBS.cdsEmpresa_Enderecocd_pais.AsString  := 'BR';
      DMEBS.cdsEmpresa_Enderecocd_municipio_ibge.AsString := mClienteCodCidade.AsString;
      DMEBS.cdsEmpresa_Endereco.Post;
      DMEBS.cdsEmpresa_Endereco.ApplyUpdates(0);
    except
      on e: Exception do
        begin
          Raise;
        end
    end;
  end;
end;

procedure TfConvCliente.Abrir_EmpresasEndereco(Codigo: Integer);
begin
  DMEBS.cdsEmpresa_Endereco.Close;
  DMEBS.sdsEmpresa_Endereco.CommandText := ctEmpresaEndereco
                               + ' WHERE Apel = ' + QuotedStr(mClienteApel.AsString)
                               + '   AND ([Código]) = ' + IntToStr(Codigo);
  DMEBS.cdsEmpresa_Endereco.Open;
end;


end.
