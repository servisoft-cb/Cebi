unit uFrmSobre;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, jpeg, ExtCtrls, IniFiles;

type
  TfrmSobre = class(TForm)
    Memo1: TMemo;
    Image1: TImage;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    function GetBuildInfo(prog: String): String;
    function DSiFileSize(const fileName: string): int64;
  public
    { Public declarations }
  end;

var
  frmSobre: TfrmSobre;

implementation

{$R *.dfm}

procedure TfrmSobre.FormCreate(Sender: TObject);
begin
  Memo1.Lines.Add('ServiSoft Informática Ltda.');
  Memo1.Lines.Add('Fone: (51) 3598-6584');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Suporte:');
  Memo1.Lines.Add(' Cleomar - Cel.: (51) 3598-6584 / 9942-0952');
  Memo1.Lines.Add('Skype: cleomar_pacheco@hotmail.com');
  Memo1.Lines.Add('Email: cleomar@servisoft.com.br');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Versão para SQL Server');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('');
  Memo1.Lines.Add('Versão: ' + GetBuildInfo(GetCurrentDir + '\CEBI.EXE'));
end;

function TfrmSobre.DSiFileSize(const fileName: string): int64;
var
  fHandle: DWORD;
begin
  fHandle := CreateFile(PChar(fileName), 0, 0, nil, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, 0);
  if fHandle = INVALID_HANDLE_VALUE then
    Result := -1
  else try
    Int64Rec(Result).Lo := GetFileSize(fHandle, @Int64Rec(Result).Hi);

  finally CloseHandle(fHandle);
  end;
end;

function TfrmSobre.GetBuildInfo(prog: String): String;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
  V1, V2, V3, V4: Word;
begin
  VerInfoSize := GetFileVersionInfoSize(PChar(prog),Dummy);
  GetMem(VerInfo,VerInfoSize);
  GetFileVersionInfo(PChar(prog),0,VerInfoSize,VerInfo);
  VerQueryValue(VerInfo,'',Pointer(VerValue),VerValueSize);

  with VerValue^ do
  begin
    V1 := dwFileVersionMS shr 16;
    V2 := dwFileVersionMS and $FFFF;
    V3 := dwFileVersionLS shr 16;
    V4 := dwFileVersionLS and $FFFF;
  end;

  FreeMem(VerInfo,VerInfoSize);
  result := Copy(IntToStr(100 + v1),3,2) + '.' + Copy(IntToStr(100 + V2),2,2) + '.' + Copy(IntToStr(100 + V3),2,2) + '.' + Copy(IntToStr(100 + V4),2,2);
end;

end.
