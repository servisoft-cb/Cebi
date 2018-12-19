unit DmdDatabase_Ant;

interface

uses
  SysUtils, Classes, DBXpress, DB, SqlExpr, Forms, IniFiles, IdCoder, IdCoder3to4, IdCoderMIME, FMTBcd, IdBaseComponent,
  DBClient, Provider;

type
  TdmDatabase_Ant = class(TDataModule)
    scoDados_Ant: TSQLConnection;
    Decoder64: TIdDecoderMIME;
    sdsExec: TSQLDataSet;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    function Fnc_ArquivoConfiguracao: string;

  public

  end;

var
  dmDatabase_Ant: TdmDatabase_Ant;

implementation

uses DmdDatabase;

{$R *.dfm}

const
  cArquivoConfiguracao = 'Config.ini';

function TdmDatabase_Ant.Fnc_ArquivoConfiguracao: string;
begin
  Result := ExtractFilePath(Application.ExeName) + cArquivoConfiguracao;
end;

procedure TdmDatabase_Ant.DataModuleCreate(Sender: TObject);
var
  Config: TIniFile;
begin
  {if not FileExists(Fnc_ArquivoConfiguracao) then
    Exit;
  Config := TIniFile.Create(Fnc_ArquivoConfiguracao);
  try
    try
      scoDados.Params.Values['DATABASE'] := Config.ReadString('CEBI', 'DATABASE', '');
      scoDados.Params.Values['USER_NAME'] := Config.ReadString('CEBI', 'USERNAME', '');
      scoDados.Params.Values['PASSWORD'] := Decoder64.DecodeString(Config.ReadString('CEBI', 'PASSWORD', ''));
      scoDados.Connected := True;
    except
      on E: exception do
      begin
        raise Exception.Create('Erro ao conectar ao banco de dados:' + #13 +
                               'Mensagem: ' + E.Message + #13 +
                               'Classe: ' + E.ClassName + #13 + #13 +
                               'Dados da Conexao ' + #13 +
                               'Banco de Dados: '  + scoDados.Params.Values['Database'] + #13 +
                               'Usuário: '         + scoDados.Params.Values['User_Name']);
      end;
    end;

  finally
    FreeAndNil(Config);
  end;}

end;

end.

