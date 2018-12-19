unit uEtiqBlocagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, Mask, ToolEdit,
  ExtCtrls, Grids, DBGrids, SMDBGrid, DB, DBClient;

type
  TfrmEtiqBlocagem = class(TForm)
    Panel1: TPanel;
    Label3: TLabel;
    BitBtn2: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    BitBtn1: TBitBtn;
    FilenameEdit1: TFilenameEdit;
    cdsEtiquetas: TClientDataSet;
    dsEtiquetas: TDataSource;
    cdsEtiquetasNome: TStringField;
    cdsEtiquetasEndereco: TStringField;
    cdsEtiquetasBairro: TStringField;
    cdsEtiquetasCep: TStringField;
    cdsEtiquetasUf: TStringField;
    cdsEtiquetasCidade: TStringField;
    cdsEtiquetasId: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEtiqBlocagem: TfrmEtiqBlocagem;

implementation

uses uRelEtiqBlocagem;

{$R *.dfm}

procedure TfrmEtiqBlocagem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmEtiqBlocagem.BitBtn1Click(Sender: TObject);
begin
  cdsEtiquetas.First;
  frmRelEtiqBlocagem := TfrmRelEtiqBlocagem.Create(Self);
  frmRelEtiqBlocagem.RlReport1.Preview;
end;

procedure TfrmEtiqBlocagem.BitBtn2Click(Sender: TObject);
var
  F: TextFile;
  Texto : string;
begin
  cdsEtiquetas.EmptyDataSet;
  Texto := FilenameEdit1.Text;
  if trim(texto) <> '' then
  begin
    if copy(Texto,1,1) = '"' then
      delete(Texto,1,1);
    if copy(Texto,Length(Texto),1) = '"' then
      delete(Texto,Length(Texto),1);
    FilenameEdit1.Text := Texto;
  end;
  if FileExists(FilenameEdit1.Text) then
  begin
    AssignFile(F,FilenameEdit1.Text);
    Reset(F);
    while not EOF(F) do
    begin
      Readln(F,Texto);
      cdsEtiquetas.Insert;
      cdsEtiquetasNome.AsString     := copy(Texto,1,70);
      cdsEtiquetasEndereco.AsString := copy(Texto,71,70);
      cdsEtiquetasBairro.AsString   := copy(Texto,141,40);
      cdsEtiquetasCidade.AsString   := copy(Texto,181,50);
      cdsEtiquetasUf.AsString       := copy(Texto,231,2);
      cdsEtiquetasCep.AsString      := copy(Texto,233,5) + '-' + copy(Texto,238,3);
      cdsEtiquetas.Post;
    end;
    CloseFile(F);
  end;
end;

end.
