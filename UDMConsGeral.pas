unit UDMConsGeral;

interface

uses
  SysUtils, Classes, FMTBcd, DB, SqlExpr, Provider, DBClient, frxClass,
  frxDBSet, frxRich, frxExportMail, frxExportPDF;

type
  TDMConsGeral = class(TDataModule)
    sdsContrato_Cli: TSQLDataSet;
    dspContrato_Cli: TDataSetProvider;
    cdsContrato_Cli: TClientDataSet;
    dsContrato_Cli: TDataSource;
    cdsContrato_CliID: TFMTBCDField;
    cdsContrato_CliID_CLIENTE: TIntegerField;
    cdsContrato_CliID_ASSINATURA: TIntegerField;
    cdsContrato_CliDTCONTRATO: TDateField;
    cdsContrato_CliDTCOBRANCA: TDateField;
    cdsContrato_CliVLR_UNITARIO: TFloatField;
    cdsContrato_CliQTD: TFloatField;
    cdsContrato_CliPERIODO: TStringField;
    cdsContrato_CliDTENCERRAMENTO: TDateField;
    cdsContrato_CliID_PERIODO: TIntegerField;
    cdsContrato_CliAPEL_EBS: TStringField;
    cdsContrato_CliVLR_TOTAL: TFloatField;
    cdsContrato_CliGEROU_DUPLICATA: TStringField;
    cdsContrato_CliNUM_CONTRATO: TStringField;
    cdsContrato_CliANO_CONTRATO: TIntegerField;
    cdsContrato_CliNUM_CONTRATO_INT: TIntegerField;
    cdsContrato_CliPRE_CONTRATO: TStringField;
    cdsContrato_CliENCERRADO: TStringField;
    cdsContrato_CliANO_CONTRATO_ANT: TIntegerField;
    cdsContrato_CliNUM_CONTRATO_INT_ANT: TIntegerField;
    cdsContrato_CliNUM_CONTRATO_ANT: TStringField;
    cdsContrato_CliID_ANT: TIntegerField;
    cdsContrato_CliGEROU_PRE_CONTRATO: TStringField;
    cdsContrato_CliNUM_PEDIDO: TIntegerField;
    cdsContrato_CliDTBAIXA: TDateField;
    cdsContrato_CliDTEMISSAO: TDateField;
    cdsContrato_CliNOMECLIENTE: TStringField;
    cdsContrato_CliNOMEASSINATURA: TStringField;
    cdsContrato_CliNOMEPERIODO: TStringField;
    cdsContrato_CliQTD_MES: TIntegerField;
    cdsContrato_CliEMAIL_NFE_FB: TStringField;
    cdsContrato_CliUF_FB: TStringField;
    cdsContrato_CliDDDFONE1_FB: TIntegerField;
    cdsContrato_CliTELEFONE1_FB: TStringField;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    frxMailExport1: TfrxMailExport;
    frxRichObject1: TfrxRichObject;
    frxdbContrato_Cli: TfrxDBDataset;
    cdsContrato_CliSITUACAO_CONTRATO: TStringField;
    cdsContrato_CliTIPO_PC: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ctContrato_Cli : WideString;
  end;

var
  DMConsGeral: TDMConsGeral;

implementation

uses DmdDatabase;

{$R *.dfm}

procedure TDMConsGeral.DataModuleCreate(Sender: TObject);
begin
  ctContrato_Cli := sdsContrato_Cli.CommandText;
end;

end.
