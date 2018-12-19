unit UDMConsEstoque;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMConsEstoque = class(TDataModule)
    sdsControle_Estoque: TSQLDataSet;
    dspControle_Estoque: TDataSetProvider;
    cdsControle_Estoque: TClientDataSet;
    dsControle_Estoque: TDataSource;
    sdsControle_EstoqueID: TIntegerField;
    sdsControle_EstoqueNUM_CONTRATO: TStringField;
    sdsControle_EstoqueDTREFERENCIA: TDateField;
    cdsControle_EstoqueID: TIntegerField;
    cdsControle_EstoqueNUM_CONTRATO: TStringField;
    cdsControle_EstoqueDTREFERENCIA: TDateField;
    sdsControle_EstoqueMES: TIntegerField;
    sdsControle_EstoqueANO: TIntegerField;
    cdsControle_EstoqueMES: TIntegerField;
    cdsControle_EstoqueANO: TIntegerField;
    mEstoque: TClientDataSet;
    dsmEstoque: TDataSource;
    mEstoqueNum_Contrato: TStringField;
    mEstoqueID: TIntegerField;
    mEstoqueDtReferencia: TDateField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }

  end;

var
  DMConsEstoque: TDMConsEstoque;
  ctEmpresasEBS : String;
  ctControle_Estoque : String;


implementation

uses DmdDatabase, DmdDatabase_EBS;

{$R *.dfm}

{ TDMCadPais }

procedure TDMConsEstoque.DataModuleCreate(Sender: TObject);
begin
  ctControle_Estoque := sdsControle_Estoque.CommandText;
end;

end.
