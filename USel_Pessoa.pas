unit USel_Pessoa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons, Grids,
  DBGrids, SMDBGrid, FMTBcd, DB, Provider, DBClient, SqlExpr, NxCollection;

type
  TfrmSel_Pessoa = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    SMDBGrid1: TSMDBGrid;
    sdsPessoa: TSQLDataSet;
    cdsPessoa: TClientDataSet;
    dspPessoa: TDataSetProvider;
    dsPessoa: TDataSource;
    StaticText1: TStaticText;
    btnConsultar: TNxButton;
    sdsPessoaApel: TStringField;
    sdsPessoaRazo: TStringField;
    sdsPessoaTipo: TStringField;
    sdsPessoaCadastro: TSQLTimeStampField;
    sdsPessoaPessoa: TStringField;
    sdsPessoaCNPJCPF: TStringField;
    sdsPessoaIEstRG: TStringField;
    sdsPessoaEndereo: TStringField;
    sdsPessoaBairro: TStringField;
    sdsPessoaCEP: TStringField;
    sdsPessoaCidade: TStringField;
    sdsPessoaEstado: TStringField;
    cdsPessoaApel: TStringField;
    cdsPessoaRazo: TStringField;
    cdsPessoaTipo: TStringField;
    cdsPessoaCadastro: TSQLTimeStampField;
    cdsPessoaPessoa: TStringField;
    cdsPessoaCNPJCPF: TStringField;
    cdsPessoaIEstRG: TStringField;
    cdsPessoaEndereo: TStringField;
    cdsPessoaBairro: TStringField;
    cdsPessoaCEP: TStringField;
    cdsPessoaCidade: TStringField;
    cdsPessoaEstado: TStringField;
    procedure SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure SMDBGrid1Enter(Sender: TObject);
    procedure Panel1Enter(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
  private
    { Private declarations }
    ctPessoaLocal : String;
    procedure prc_Consultar;

  public
    { Public declarations }
    vTipo_Pessoa : String;

  end;

var
  frmSel_Pessoa: TfrmSel_Pessoa;

implementation

uses DmdDatabase, uUtilPadrao, DmdDatabase_EBS;

{$R *.dfm}

procedure TfrmSel_Pessoa.prc_Consultar;
begin
  cdsPessoa.Close;
  sdsPessoa.CommandText := ctPessoaLocal;
  //if vTipo_Pessoa = 'C' then
  //  sdsPessoa.CommandText := sdsPessoa.CommandText + ' AND ((Tipo = ' + QuotedStr('Cliente') + ' OR (Tipo = ' + QuotedStr('Ambos') + '))'
  //else
  //if vTipo_Pessoa = 'F' then
  //  sdsPessoa.CommandText := sdsPessoa.CommandText + ' AND ((Tipo = ' + QuotedStr('Fornecedor') + ' OR (Tipo = ' + QuotedStr('Ambos') + '))';
  if trim(Edit1.Text) <> '' then
    sdsPessoa.CommandText := sdsPessoa.CommandText + ' AND [Razão] like ' + QuotedStr('%'+Edit1.Text+'%');
  cdsPessoa.Open;
end;

procedure TfrmSel_Pessoa.SMDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    vApel_Pos    := cdsPessoaApel.AsString;
    vNomePes_Pos := cdsPessoaRazo.AsString;
    Close;
  end
  else
  if Key = 27 then
    Edit1.SetFocus;
end;

procedure TfrmSel_Pessoa.SMDBGrid1DblClick(Sender: TObject);
begin
  vApel_Pos    := cdsPessoaApel.AsString;
  vNomePes_Pos := cdsPessoaRazo.AsString;
  Close;
end;

procedure TfrmSel_Pessoa.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
  begin
    btnConsultarClick(Sender);
    if not cdsPessoa.IsEmpty then
      SMDBGrid1.SetFocus;
  end
  else
  if Key = 27 then
    Close;
end;

procedure TfrmSel_Pessoa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmSel_Pessoa.FormShow(Sender: TObject);
var
  i : Integer;
begin
  if vTipo_Pessoa = 'C' then
    Label1.Caption := 'Nome Cliente:'
  else
  if vTipo_Pessoa = 'F' then
    Label1.Caption := 'Nome Fornecedor:'
  else
  if vTipo_Pessoa = 'T' then
    Label1.Caption := 'Nome Transportadora:'
  else
  if vTipo_Pessoa = 'V' then
    Label1.Caption := 'Nome Vendedor:';
  ctPessoaLocal := sdsPessoa.CommandText;
  if trim(vNomePes_Pos) <> '' then
  begin
    Edit1.Text := vNomePes_Pos;
    btnConsultarClick(Sender);
    if not cdsPessoa.IsEmpty then
      SMDBGrid1.SetFocus;
  end;
end;

procedure TfrmSel_Pessoa.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
  ColunaOrdenada : String;
begin
  ColunaOrdenada := Column.FieldName;
  cdsPessoa.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmSel_Pessoa.SMDBGrid1Enter(Sender: TObject);
begin
  StaticText1.Caption := 'Duplo Clique  ou   Enter para selecionar a pessoa       ESC= Volta para o campo Nome Pessoa';
end;

procedure TfrmSel_Pessoa.Panel1Enter(Sender: TObject);
begin
  StaticText1.Caption := 'Duplo Clique  ou   Enter para selecionar a pessoa       ESC= Fechar tela';
end;

procedure TfrmSel_Pessoa.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
  cdsPessoa.RecordCount;
end;

end.
