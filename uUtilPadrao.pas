unit uUtilPadrao;
                                                         
interface

uses
  Classes, SysUtils, DB, Dialogs, Variants, Forms, ShellApi, Windows, StrUtils, SqlExpr, DmdDatabase, DBClient,
  Controls;

  function Monta_Numero(Campo: String; Tamanho: Integer): String;
  function TirarAcento(texto: string): string;
  function Monta_Texto(Campo: String; Tamanho: Integer): String;
  procedure AbreArquivo(arquivo: string);
  function ValidaCNPJ(numCNPJ: string): Boolean;
  function ValidaCPF(numCPF: string): Boolean;
  function VerificaDuplicidade(vCnpj, vTipo: String): String;
  function fnc_Encerrar_Tela(Tabela : TClientDataSet): Boolean;
  function Replace(Str, Ant, Novo: string): string;

var
  vApel_Pos : String;
  vNomePes_Pos : String;

implementation

function Monta_Numero(Campo: String; Tamanho: Integer): String;
var
  texto2: String;
  i: Integer;
begin
  texto2 := '';
  for i := 1 to Length(Campo) do
    if Campo[i] in ['0','1','2','3','4','5','6','7','8','9'] then
      Texto2 := Texto2 + Copy(Campo,i,1);
  for i := 1 to Tamanho - Length(texto2) do
    texto2 := '0' + texto2;
  Result := texto2;
end;

function TirarAcento(Texto: string): string;
var
  i: Integer;
begin
  Texto := Trim(AnsiUpperCase(Texto));
  for i := 1 to Length(texto) do
  begin
    if Pos(Texto[i],' 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`~''"!@#$%^&*()_-+=|/\{}[]:;,.<>') = 0 then
    begin
      case Texto[i] of
        '�', '�', '�', '�', '�': Texto[i] := 'A';
        '�', '�', '�', '�': Texto[i] := 'E';
        '�', '�', '�', '�': Texto[i] := 'I';
        '�', '�', '�', '�', '�': Texto[i] := 'O';
        '�', '�', '�', '�': Texto[i] := 'U';
        '�': Texto[i] := 'C';
        '�': Texto[i] := 'N';
      else
        Texto[i] := ' ';
      end;
    end;
  end;
  Result := AnsiUpperCase(Texto);
end;

procedure AbreArquivo(arquivo: string);
begin
  if FileExists(arquivo) then
  begin
    arquivo := '"' + arquivo + '"';
      //fonte: http://www.mail-archive.com/delphi-br@yahoogrupos.com.br/msg58385.html
      //declar no uses ShellApi
    ShellExecute(Application.Handle, 'open', PChar(arquivo), nil, nil, SW_SHOWMAXIMIZED);
  end
  else
    ShowMessage('Arquivo n�o encontrado!');
end;

function Monta_Texto(Campo: String; Tamanho: Integer): String;
var
  texto2: String;
  i: Integer;
begin
  texto2 := '';
  for i := 1 to Length(Campo) do
    if Campo[i] in ['0','1','2','3','4','5','6','7','8','9'] then
      Texto2 := Texto2 + Copy(Campo,i,1);
  for i := 1 to Tamanho - Length(texto2) do
    texto2 := '0' + texto2;
  Result := texto2;
end;

function ValidaCNPJ(numCNPJ: string): Boolean;
var
  cnpj: string;
  dg1, dg2: integer;
  x, total: integer;
  ret: boolean;
begin
  ret  := False;
  cnpj := '';
//Analisa os formatos
  if Length(numCNPJ) = 18 then
    if (Copy(numCNPJ,3,1) + Copy(numCNPJ,7,1) + Copy(numCNPJ,11,1) + Copy(numCNPJ,16,1) = '../-') then
    begin
      cnpj := Copy(numCNPJ,1,2) + Copy(numCNPJ,4,3) + Copy(numCNPJ,8,3) + Copy(numCNPJ,12,4) + Copy(numCNPJ,17,2);
      ret  := True;
    end;
    if Length(numCNPJ) = 14 then
    begin
      cnpj := numCNPJ;
      ret  := True;
    end;
    //Verifica
    if ret then
    begin
      try
        //1� digito
        total := 0;
        for x := 1 to 12 do
        begin
          if x < 5 then
            Inc(total, StrToInt(Copy(cnpj, x, 1)) * (6 - x))
          else
             Inc(total, StrToInt(Copy(cnpj, x, 1)) * (14 - x));
        end;
        dg1 := 11 - (total mod 11);
        if dg1 > 9 then
          dg1 := 0;

        //2� digito
        total := 0;
        for x := 1 to 13 do
        begin
          if x < 6 then
            Inc(total, StrToInt(Copy(cnpj, x, 1)) * (7 - x))
          else
            Inc(total, StrToInt(Copy(cnpj, x, 1)) * (15 - x));
        end;

        dg2 := 11 - (total mod 11);
        if dg2 > 9 then
          dg2 := 0;
        //Valida��o final
        if (dg1 = StrToInt(Copy(cnpj, 13, 1))) and (dg2 = StrToInt(Copy(cnpj, 14, 1))) then
          ret := True
        else
          ret := False;
      except
        ret := False;
      end;
        //Inv�lidos
      case AnsiIndexStr(cnpj,['11111111111111','22222222222222','33333333333333','44444444444444',
                              '55555555555555','66666666666666','77777777777777','88888888888888','99999999999999']) of
        0..9: ret := False;
      end;
    end;
  ValidaCNPJ := ret;
end;

function ValidaCPF(numCPF: string): Boolean;
var
  cpf: string;
  x, total, dg1, dg2: Integer;
  ret: boolean;
begin
  ret := True;
  for x := 1 to Length(numCPF) do
    if not (numCPF[x] in ['0'..'9', '-', '.', ' ']) then
      ret := False;

  if ret then
  begin
    ret := True;
    cpf := '';
    for x:=1 to Length(numCPF) do
      if numCPF[x] in ['0'..'9'] then
        cpf := cpf + numCPF[x];
    if Length(cpf) <> 11 then
      ret := False;

    if ret then
    begin
      //1� d�gito
      total := 0;
      for x := 1 to 9 do
        total := total + (StrToInt(cpf[x]) * x);
      dg1 := total mod 11;
      if dg1 = 10 then
        dg1 := 0;

      //2� d�gito
      total := 0;
      for x := 1 to 8 do
        total := total + (StrToInt(cpf[x + 1]) * (x));
      total := total + (dg1 * 9);
      dg2 := total mod 11;
      if dg2 = 10 then
        dg2 := 0;

      //Valida��o final
      if dg1 = StrToInt(cpf[10]) then
        if dg2 = StrToInt(cpf[11]) then
          ret := True;
      //Inv�lidos
      case AnsiIndexStr(cpf,['11111111111','22222222222','33333333333','44444444444',
                             '55555555555','66666666666','77777777777','88888888888','99999999999']) of
        0..9: ret := False;
      end;
    end
    else
    begin
    //Se n�o informado deixa passar
      if cpf = '' then
        ret := True;
    end;
  end;
  ValidaCPF := ret;
end;

function VerificaDuplicidade(vCnpj, vTipo: String): String;
var
  sds: TSQLDataSet;
begin
  Result := '';
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase.scoDados;
    sds.NoMetadata    := True;
    sds.GetMetadata   := False;
    if vTipo = 'P' then
    begin
      sds.CommandText := 'SELECT NOME FROM PESSOA WHERE CNPJ_CPF = ' + QuotedStr(vCnpj);
      sds.Open;
      if not sds.FieldByName('NOME').IsNull then
        Result := sds.FieldByName('NOME').AsString;
    end
    else
    if vTipo = 'F' then
    begin
      sds.CommandText := 'SELECT NOME FROM FILIAL WHERE CNPJ_CPF = ' + QuotedStr(vCnpj);
      sds.Open;
      if not sds.FieldByName('NOME').IsNull then
        Result := sds.FieldByName('NOME').AsString;
    end;
  finally
    FreeAndNil(sds);
  end;
end;

function fnc_Encerrar_Tela(Tabela : TClientDataSet): Boolean;
begin
  Result := True;
  if Tabela.State in [dsEdit,dsInsert] then
  begin
    if MessageDlg('Fechar esta tela sem confirmar?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      Result := False
    else
      Result := True;
  end;
end;

function Replace(Str, Ant, Novo: string): string;
var
  iPos: Integer;
begin
  while Pos(Ant, Str) > 0 do
  begin
    iPos := Pos(Ant, Str);
    Str := copy(Str, 1, iPos - 1) + Novo + copy(Str, iPos + 1, Length(Str) - iPos);
  end;
  Result := Str;
end;

end.
