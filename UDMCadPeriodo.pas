unit UDMCadPeriodo;

interface

uses
  SysUtils, Classes, FMTBcd, DB, DBClient, Provider, SqlExpr;

type
  TDMCadPeriodo = class(TDataModule)
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
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    vMsgErro : String;
    ctCommand : String;
    vItemPeriodo : Integer;

    procedure prc_Localizar(ID : Integer); //-1 = Inclusão
    procedure prc_Inserir;
    procedure prc_Gravar;
    procedure prc_Excluir;

  end;

var
  DMCadPeriodo: TDMCadPeriodo;

implementation

uses DmdDatabase, DmdDatabase_EBS;

{$R *.dfm}

{ TDMCadPais }

procedure TDMCadPeriodo.prc_Inserir;
var
  vAux : Integer;
begin
  if not cdsPeriodo.Active then
    prc_Localizar(-1);
  vAux := dmDatabase.ProximaSequencia('PERIODO',0);

  cdsPeriodo.Insert;
  cdsPeriodoID.AsInteger := vAux + 1;
end;

procedure TDMCadPeriodo.prc_Excluir;
begin
  if not(cdsPeriodo.Active) or (cdsPeriodo.IsEmpty) then
    exit;
  cdsPeriodo.Delete;
  cdsPeriodo.ApplyUpdates(0);
end;

procedure TDMCadPeriodo.prc_Gravar;
begin
  vMsgErro := '';
  if trim(cdsPeriodoNOME.AsString) = '' then
    vMsgErro := vMsgErro + #13 + '*** Nome não informado!';
  if cdsPeriodoQTD_MES.AsInteger < 1 then
    vMsgErro := vMsgErro + #13 + '*** Quantidade de Mês não informada!';
  if vMsgErro <> '' then
    exit;
  cdsPeriodo.Post;
  cdsPeriodo.ApplyUpdates(0);
end;

procedure TDMCadPeriodo.prc_Localizar(ID : Integer);
begin
  cdsPeriodo.Close;
  sdsPeriodo.CommandText := ctCommand;
  if ID <> 0 then
    sdsPeriodo.CommandText := sdsPeriodo.CommandText
                         + ' WHERE ID = ' + IntToStr(ID);
  cdsPeriodo.Open;
end;

procedure TDMCadPeriodo.DataModuleCreate(Sender: TObject);
begin
  ctCommand := sdsPeriodo.CommandText;
end;

end.
