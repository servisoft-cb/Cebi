unit UGArqBlocagem;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls,
  UDMBlocagem, RxLookup, StdCtrls, Buttons, Grids, DBGrids, SMDBGrid, Mask, ToolEdit, Menus, UCBase,
  DB, SqlExpr, RzPanel, NxEdit, NxCollection, frxClass;

type
  TfrmGArqBlocagem = class(TForm)
    Panel1: TPanel;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    DirectoryEdit1: TDirectoryEdit;
    Edit1: TEdit;
    CheckBox1: TCheckBox;
    Label2: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label1: TLabel;
    ckEstoque: TCheckBox;
    UCControls1: TUCControls;
    Label9: TLabel;
    DateEdit1: TDateEdit;
    Label10: TLabel;
    DateEdit2: TDateEdit;
    dtEstoque: TDateEdit;
    Label11: TLabel;
    ComboBox1: TComboBox;
    Label5: TLabel;
    btnExcluir: TNxButton;
    btnConsultar: TNxButton;
    btnGerar: TNxButton;
    Shape1: TShape;
    Label6: TLabel;
    Shape2: TShape;
    Label17: TLabel;
    Shape3: TShape;
    Label7: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    RzGroupBox1: TRzGroupBox;
    Label16: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label32: TLabel;
    lblQtdPre: TLabel;
    lblQtdAtivo: TLabel;
    lblQtdEncerrado: TLabel;
    lblQtdTotal: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    lblNovo: TLabel;
    lblRenovacao: TLabel;
    btnCalcular: TNxButton;
    NxButton1: TNxButton;
    PopupMenu1: TPopupMenu;
    ArquivoCSV1: TMenuItem;
    Imprimir1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure RxDBLookupCombo1Enter(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnCalcularClick(Sender: TObject);
    procedure ArquivoCSV1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
  private
    { Private declarations }
    fDMBlocagem: TDMBlocagem;
    vArqTxt: TextFile;
    vRegistro: string;
    vQtdTotal, vQtdEncerrado, vQtdAtivo: Integer;
    vQtdPre: Integer;
    vQtdNovo, vQtdRenovacao: Integer;
    strLista: TStringList;
    strLinha: string;
    procedure prc_Consultar;
    procedure prc_Gerar_Arquivo;
    procedure prc_Le_cdsContrato;
    procedure prc_Gravar_mBlocagem;
    procedure prc_Gerar_Estoque;
    procedure prc_Somar;
    procedure prc_Abre_Pessoa(ID: Integer);
    procedure prc_Gera_CSV(Separador: Char);
    function fnc_existe_empresa: Boolean;
    function fnc_Estoque_Gerado: Boolean;
    function fnc_Sequencia_EstMov: Integer;
  public
    { Public declarations }
  end;

var
  frmGArqBlocagem: TfrmGArqBlocagem;

implementation

uses
  rsDBUtils, uUtilPadrao, Math, UMenu, DmdDatabase, DateUtils, DmdDatabase_EBS, StrUtils, uRelArqCSV;

{$R *.dfm}

procedure TfrmGArqBlocagem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmGArqBlocagem.FormCreate(Sender: TObject);
begin
  fDMBlocagem := TDMBlocagem.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMBlocagem);
end;

procedure TfrmGArqBlocagem.prc_Consultar;
var
  vComando: string;
  vSeparador: string;
  vContAux: Integer;
  vData: TDate;
begin
  fDMBlocagem.cdsContrato.Close;
  vData := Date;
  vComando := ctContrato;

  if ComboBox1.ItemIndex = 0 then
  begin
    vComando := vComando + ' WHERE DTENCERRAMENTO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY', vData));
    if DateEdit1.Date > 10 then
      vComando := vComando + ' AND DTCONTRATO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY', DateEdit1.date));
    if DateEdit2.Date > 10 then
      vComando := vComando + ' AND DTCONTRATO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY', DateEdit2.date));
    vComando := vComando + ' AND ENCERRADO = ' + QuotedStr('N') + ' AND PRE_CONTRATO = ' + QuotedStr('N');
  end
  else if (ComboBox1.ItemIndex = 1) or (ComboBox1.ItemIndex = 2) then
  begin
    vComando := vComando + ' WHERE 0 = 0 ';
    if (DateEdit1.Date <= 10) and (DateEdit2.Date <= 10) then
      vComando := vComando + ' AND ((DTENCERRAMENTO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY', vData)) + ')'
    else if (DateEdit1.Date > 10) and (DateEdit2.Date > 10) then
      vComando := vComando + ' AND ((DTENCERRAMENTO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',
        DateEdit1.date)) + ' AND DTENCERRAMENTO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY', DateEdit1.date)) + ') '
    else
    begin
      if DateEdit1.Date > 10 then
        vComando := vComando + ' AND ((DTENCERRAMENTO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY', DateEdit1.date)) + ')'
      else if DateEdit2.Date > 10 then
        vComando := vComando + ' AND ((DTENCERRAMENTO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY', DateEdit2.date)) + ')';
    end;
    vComando := vComando + ' OR (ENCERRADO = ' + QuotedStr('S') + '))';
    vComando := vComando + ' AND PRE_CONTRATO = ' + QuotedStr('N');
    if ComboBox1.ItemIndex = 2 then
      vComando := vComando + ' AND GEROU_PRE_CONTRATO = ' + QuotedStr('N');
  end
  else if (ComboBox1.ItemIndex = 3) then
  begin
    vComando := vComando + ' WHERE PRE_CONTRATO = ' + QuotedStr('S');
    if DateEdit1.Date > 10 then
      vComando := vComando + ' AND (DTCONTRATO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY', DateEdit1.date)) + ')';
    if DateEdit2.Date > 10 then
      vComando := vComando + ' AND (DTCONTRATO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY', DateEdit2.date)) + ')';
  end;
  if RxDBLookupCombo1.Text <> '' then
    vComando := vComando + ' AND ID_ASSINATURA = ' + IntToStr(RxDBLookupCombo1.KeyValue);
  if DateEdit3.Date > 10 then
    vComando := vComando + ' AND DTCOBRANCA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY', DateEdit3.date));
  if DateEdit4.Date > 10 then
    vComando := vComando + ' AND DTCOBRANCA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY', DateEdit4.date));
  fDMBlocagem.sdsContrato.CommandText := vComando;
  fDMBlocagem.cdsContrato.Open;
end;

procedure TfrmGArqBlocagem.prc_Gerar_Arquivo;
var
  Texto, Texto2: string;
  i: Integer;
begin
  //Tipo - 20 caracteres
  Texto := '';
  if CheckBox1.Checked then
  begin
    Texto2 := fDMBlocagem.mBlocagemTipo.AsString;
    for i := 1 to 20 - Length(Texto2) do
      Texto2 := Texto2 + ' ';
    Texto := Texto2;
  end;

  //Título - 70 digitos
  Texto2 := copy(fDMBlocagem.mBlocagemNome.AsString, 1, 70);
  for i := 1 to 70 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto := Texto + Texto2;

  //Logradouro - 70 digitos
  Texto2 := fDMBlocagem.mBlocagemEndereco.AsString;
  if trim(fDMBlocagem.mBlocagemNum_Endereco.AsString) <> '' then
    Texto2 := Texto2 + ',' + fDMBlocagem.mBlocagemNum_Endereco.AsString;
  //Texto2 := copy(fDMBlocagem.mBlocagemEndereco.AsString,1,70);
  Texto2 := copy(Texto2, 1, 70);
  for i := 1 to 70 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto := Texto + Texto2;

  //Bairro - 40 digitos
  Texto2 := copy(fDMBlocagem.mBlocagemBairro.AsString, 1, 40);
  for i := 1 to 40 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto := Texto + Texto2;

  //Cidade - 50 digitos
  Texto2 := copy(fDMBlocagem.mBlocagemCidade.AsString, 1, 50);
  for i := 1 to 50 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto := Texto + Texto2;

  //UF - 2 digitos
  Texto2 := copy(fDMBlocagem.mBlocagemUF.AsString, 1, 2);
  for i := 1 to 2 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto := Texto + Texto2;

  //Cep - 10 digitos
  Texto2 := copy(fDMBlocagem.mBlocagemCep.AsString, 1, 10);
  Texto2 := Trim(Texto2);
  Texto2 := Monta_Numero(Texto2, 0);
  for i := 1 to 10 - Length(Texto2) do
    Texto2 := Texto2 + ' ';
  Texto := Texto + Texto2;

  writeln(vArqTxt, Texto);
end;

procedure TfrmGArqBlocagem.prc_Le_cdsContrato;
begin
  //fDMBlocagem.mBlocagem.EmptyDataSet;
  lblQtdAtivo.Caption := '0';
  lblQtdEncerrado.Caption := '0';
  lblQtdTotal.Caption := '0';
  lblQtdPre.Caption := '0';
  lblNovo.Caption := '0';
  lblRenovacao.Caption := '0';

  vQtdTotal := 0;
  vQtdEncerrado := 0;
  vQtdAtivo := 0;
  vQtdPre := 0;
  vQtdNovo := 0;
  vQtdRenovacao := 0;

  fDMBlocagem.cdsContrato.First;
  while not fDMBlocagem.cdsContrato.Eof do
  begin
    if fnc_existe_empresa then
      prc_Gravar_mBlocagem;
    fDMBlocagem.cdsContrato.Next;
  end;
  lblQtdAtivo.Caption := FormatFloat('0', vQtdAtivo);
  lblQtdEncerrado.Caption := FormatFloat('0', vQtdEncerrado);
  lblQtdPre.Caption := FormatFloat('0', vQtdPre);
  lblNovo.Caption := FormatFloat('0', vQtdNovo);
  lblRenovacao.Caption := FormatFloat('0', vQtdRenovacao);
end;

function TfrmGArqBlocagem.fnc_existe_empresa: Boolean;
begin
  Result := False;
  fDMBlocagem.cdsEmpresa.Close;
  fDMBlocagem.sdsEmpresa.CommandText := ctEmpresasEBS;
  fDMBlocagem.sdsEmpresa.CommandText := fDMBlocagem.sdsEmpresa.CommandText + '  AND ((EMP.Apel = ' +
    QuotedStr(fDMBlocagem.cdsContratoAPEL_EBS.AsString) + ')' + '   OR (EMP.Apel = ' + QuotedStr(fDMBlocagem.cdsContratoAPEL_EBS.AsString + ' ') + '))';
  fDMBlocagem.cdsEmpresa.Open;
  if not (fDMBlocagem.cdsEmpresa.IsEmpty) then
    Result := True;
end;

procedure TfrmGArqBlocagem.prc_Gravar_mBlocagem;
begin
  if fDMBlocagem.mBlocagem.Locate('Apel_EBS', fDMBlocagem.cdsEmpresaApel.AsString, ([Locaseinsensitive])) then
    exit;
  fDMBlocagem.mBlocagem.Insert;
  prc_Abre_Pessoa(fDMBlocagem.cdsContratoID_CLIENTE.AsInteger);
  fDMBlocagem.mBlocagemEmail.AsString := LowerCase(fDMBlocagem.qPessoaEMAIL_NFE.AsString);
  fDMBlocagem.mBlocagemTipo.AsString := fDMBlocagem.cdsEmpresaApel.AsString;
  fDMBlocagem.mBlocagemNome.AsString := fDMBlocagem.cdsEmpresaNomeCliente.AsString;
  fDMBlocagem.mBlocagemEndereco.AsString := fDMBlocagem.cdsEmpresaEndereo.AsString;
  fDMBlocagem.mBlocagemBairro.AsString := fDMBlocagem.cdsEmpresaBairro.AsString;
  fDMBlocagem.mBlocagemCidade.AsString := fDMBlocagem.cdsEmpresaCidade.AsString;
  fDMBlocagem.mBlocagemUF.AsString := fDMBlocagem.cdsEmpresaEstado.AsString;
  fDMBlocagem.mBlocagemCep.AsString := fDMBlocagem.cdsEmpresaCEP.AsString;
  fDMBlocagem.mBlocagemDtEncerramento.AsDateTime := fDMBlocagem.cdsContratoDTENCERRAMENTO.AsDateTime;
  fDMBlocagem.mBlocagemDtInicio.AsDateTime := fDMBlocagem.cdsContratoDTCONTRATO.AsDateTime;
  fDMBlocagem.mBlocagemNumContrato.AsString := fDMBlocagem.cdsContratoNUM_CONTRATO.AsString;
  fDMBlocagem.mBlocagemNomeAssinatura.AsString := fDMBlocagem.cdsContratoNOMEASSINATURA.AsString;
  fDMBlocagem.mBlocagemID_Assinatura.AsInteger := fDMBlocagem.cdsContratoID_ASSINATURA.AsInteger;
  fDMBlocagem.mBlocagemApel_EBS.AsString := fDMBlocagem.cdsEmpresaApel.AsString;
  fDMBlocagem.mBlocagemNum_Endereco.AsString := fDMBlocagem.cdsEmpresanro_endereco.AsString;
  fDMBlocagem.mBlocagemGerou_Pre_Contrato.AsString := fDMBlocagem.cdsContratoGEROU_PRE_CONTRATO.AsString;
  fDMBlocagem.mBlocagemEncerrado.AsString := fDMBlocagem.cdsContratoENCERRADO.AsString;
  fDMBlocagem.mBlocagemPre_Contrato.AsString := fDMBlocagem.cdsContratoPRE_CONTRATO.AsString;
  fDMBlocagem.mBlocagemNum_Contrato_Ant.AsString := fDMBlocagem.cdsContratoNUM_CONTRATO_ANT.AsString;
  fDMBlocagem.mBlocagemID_Cliente.AsInteger := fDMBlocagem.cdsContratoID_CLIENTE.AsInteger;
  if fDMBlocagem.cdsContratoDTCOBRANCA.AsDateTime > 0 then
    fDMBlocagem.mBlocagemDTCobranca.AsDateTime := fDMBlocagem.cdsContratoDTCOBRANCA.AsDateTime;
  fDMBlocagem.mBlocagem.Post;
  prc_Somar;
end;

procedure TfrmGArqBlocagem.RxDBLookupCombo1Enter(Sender: TObject);
begin
  fDMBlocagem.cdsAssinatura.IndexFieldNames := 'NOME';
end;

procedure TfrmGArqBlocagem.prc_Gerar_Estoque;
var
  vGravar: Boolean;
  vAux: Integer;
  vItemAux: Integer;
begin
  if not fDMBlocagem.cdsAssinatura.Locate('ID', fDMBlocagem.mBlocagemID_Assinatura.AsInteger, ([Locaseinsensitive])) then
    exit;

  vGravar := True;
  try
    vAux := dmDatabase.ProximaSequencia('CONTROLE_ESTOQUE', 0);

    fDMBlocagem.cdsControle_Estoque.Insert;
    fDMBlocagem.cdsControle_EstoqueID.AsInteger := vAux;
    fDMBlocagem.cdsControle_EstoqueNUM_CONTRATO.AsString := fDMBlocagem.mBlocagemNumContrato.AsString;
    fDMBlocagem.cdsControle_EstoqueDTREFERENCIA.AsDateTime := dtEstoque.Date;
    fDMBlocagem.cdsControle_EstoqueANO.AsInteger := YearOf(dtEstoque.Date);
    fDMBlocagem.cdsControle_EstoqueMES.AsInteger := MonthOf(dtEstoque.Date);
    fDMBlocagem.cdsControle_Estoque.Post;
    fDMBlocagem.cdsControle_Estoque.ApplyUpdates(0);

  except
    on E: exception do
    begin
      vGravar := False;
      raise Exception.Create('Erro ao gravar o controle_estoque:' + #13 + E.Message);
    end;
  end;

  if not vGravar then
  begin
    if fDMBlocagem.cdsControle_Estoque.State in [dsEdit, dsInsert] then
      fDMBlocagem.cdsControle_Estoque.Cancel;
    exit;
  end;

  if not fDMBlocagem.cdsEstMovimento.Active then
    fDMBlocagem.prc_Abrir_EstMovimento;

  vItemAux := 0;
  fDMBlocagem.cdsAssinatura_Livro.First;
  while not fDMBlocagem.cdsAssinatura_Livro.Eof do
  begin
    vItemAux := vItemAux + 1;
    fDMBlocagem.cdsEstMovimento.Insert;
    fDMBlocagem.cdsEstMovimentoCODLOC.AsString := '1';
    fDMBlocagem.cdsEstMovimentoCODPRO.AsString := fDMBlocagem.cdsAssinatura_LivroCOD_PRODUTO_EBS.AsString;
    fDMBlocagem.cdsEstMovimentoDATMOV.AsDateTime := dtEstoque.Date;
    fDMBlocagem.cdsEstMovimentoSEQMOV.AsInteger := fnc_Sequencia_EstMov;
    fDMBlocagem.cdsEstMovimentoCODPRJ.AsInteger := 0;
    fDMBlocagem.cdsEstMovimentoNRODOC.AsInteger := fDMBlocagem.mBlocagemNumContrato.AsInteger;
    fDMBlocagem.cdsEstMovimentoTIPREG.AsString := 'CONTRATO';
    fDMBlocagem.cdsEstMovimentoCODFOR.AsString := fDMBlocagem.mBlocagemApel_EBS.AsString;
    fDMBlocagem.cdsEstMovimentoSEQITE.AsInteger := vItemAux;
    fDMBlocagem.cdsEstMovimentoENTSAI.AsString := 'S';
    fDMBlocagem.cdsEstMovimentoQTDMOV.AsFloat := fDMBlocagem.cdsAssinatura_LivroQTD.AsFloat;
    fDMBlocagem.cdsEstMovimentoORIMOV.AsString := 'NFS';
    fDMBlocagem.cdsEstMovimentoMIGMOV.AsBoolean := False;
    fDMBlocagem.cdsEstMovimentoregistro_integrado.AsBoolean := False;
    if fDMBlocagem.cdsProdutos.Locate('Codigo', fDMBlocagem.cdsAssinatura_LivroCOD_PRODUTO_EBS.AsString, ([Locaseinsensitive])) then
    begin
      fDMBlocagem.cdsEstMovimentoVLRMOV.AsFloat := fDMBlocagem.cdsProdutosVendaVarejo.AsFloat;
    end;
    fDMBlocagem.cdsEstMovimento.Post;
    fDMBlocagem.cdsEstMovimento.ApplyUpdates(0);

    fDMBlocagem.cdsAssinatura_Livro.Next;
  end;
end;

function TfrmGArqBlocagem.fnc_Estoque_Gerado: Boolean;
begin
  Result := False;
  fDMBlocagem.cdsControle_Estoque.Close;
  fDMBlocagem.sdsControle_Estoque.CommandText := 'SELECT * FROM CONTROLE_ESTOQUE ' +
    ' WHERE DTREFERENCIA = ' + QuotedStr(FormatDateTime('MM/DD/YYYY', dtEstoque.date)) + ' AND NUM_CONTRATO = ' + QuotedStr(fDMBlocagem.mBlocagemNumContrato.AsString);
  fDMBlocagem.cdsControle_Estoque.Open;
  if not (fDMBlocagem.cdsControle_Estoque.IsEmpty) and (fDMBlocagem.cdsControle_EstoqueID.AsInteger > 0) then
    Result := True;
end;

function TfrmGArqBlocagem.fnc_Sequencia_EstMov: Integer;
var
  sds: TSQLDataSet;
  vNumSeq: Integer;
begin
  Result := 0;
  //Buscar última sequencia na EBS
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase_EBS.Conexao_MSSQL; //--
    sds.CommandText := 'SELECT MAX(SEQMOV) AS SEQMOVIMENTO FROM ESTMOVIMENTO ' + 'WHERE CODLOC = ' + QuotedStr('1') + ' AND CODPRO = ' + QuotedStr(fDMBlocagem.cdsEstMovimentoCODPRO.AsString)
                   // + ' AND DATMOV = :DATMOV ';
    //sds.ParamByName('DATMOV').AsDateTime := dtEstoque.Date;
      + ' AND DATMOV = ' + QuotedStr(FormatDateTime('DD/MM/YYYY', dtEstoque.Date));
    //sds.ParamByName('DATMOV').AsDateTime := dtEstoque.Date;
    sds.Open;
    vNumSeq := sds.FieldByName('SEQMOVIMENTO').AsInteger;
    vNumSeq := vNumSeq + 1;
    Result := vNumSeq;
  finally
    FreeAndNil(sds);
  end;
  //*******************
end;

procedure TfrmGArqBlocagem.btnConsultarClick(Sender: TObject);
begin
  if (DateEdit1.Date < 10) and (DateEdit2.Date < 10) then
  begin
    MessageDlg('*** É obrigatório informar uma data!', mtError, [mbno], 0);
    exit;
  end;
  prc_Consultar;
  prc_Le_cdsContrato;
end;

procedure TfrmGArqBlocagem.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja limpar os registros da consulta da blocagem?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    exit;

  fDMBlocagem.mBlocagem.EmptyDataSet;
end;

procedure TfrmGArqBlocagem.btnGerarClick(Sender: TObject);
var
  vSeparador: string;
  vQtdRegistro: Integer;
begin
  if (ckEstoque.Checked) and (dtEstoque.Date < 10) then
  begin
    ShowMessage('*** Data do estoque não foi informada!');
    exit;
  end;
  if fDMBlocagem.mBlocagem.IsEmpty then
  begin
    ShowMessage('Consulta não foi gerada!');
    exit;
  end;

  try
    if Copy(DirectoryEdit1.Text, (Length(DirectoryEdit1.Text)), 1) = '\' then
      vSeparador := ''
    else
      vSeparador := '\';

    AssignFile(vArqTxt, DirectoryEdit1.Text + vSeparador + Edit1.Text);
    ReWrite(vArqTxt);

    vQtdRegistro := 0;
    fDMBlocagem.mBlocagem.First;
    while not fDMBlocagem.mBlocagem.Eof do
    begin
      if SMDBGrid1.SelectedRows.CurrentRowSelected then
      begin
        vQtdRegistro := vQtdRegistro + 1;
        prc_Gerar_Arquivo;
        if (ckEstoque.Checked) and not (fnc_Estoque_Gerado) then
          prc_Gerar_Estoque;
      end;
      fDMBlocagem.mBlocagem.Next;
    end;

    CloseFile(vArqTxt);

    Label1.Caption := 'Total de registros gerados: ' + IntToStr(vQtdRegistro);

    ShowMessage('Total de registros gerados: ' + IntToStr(vQtdRegistro));

  except
    on e: Exception do
    begin
      CloseFile(vArqTxt);
      raise Exception.Create('Erro ao gerar o arquivo: ' + #13 + E.Message)
    end;
  end;
end;

procedure TfrmGArqBlocagem.SMDBGrid1GetCellParams(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (fDMBlocagem.mBlocagemDtEncerramento.AsDateTime <= Date) or (fDMBlocagem.mBlocagemEncerrado.AsString = 'S') then
  begin
    if fDMBlocagem.mBlocagemGerou_Pre_Contrato.AsString = 'S' then
      Background := $00FFFF8A
    else
      Background := $0080FF80;
    AFont.Color := clWindowText;
  end
  else if fDMBlocagem.mBlocagemPre_Contrato.AsString = 'S' then
  begin
    Background := clYellow;
    AFont.Color := clWindowText;
  end;
end;

procedure TfrmGArqBlocagem.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: string;
begin
  ColunaOrdenada := Column.FieldName;
  fDMBlocagem.mBlocagem.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmGArqBlocagem.btnCalcularClick(Sender: TObject);
begin
  lblQtdAtivo.Caption := '0';
  lblQtdEncerrado.Caption := '0';
  lblQtdTotal.Caption := '0';
  lblQtdPre.Caption := '0';
  lblNovo.Caption := '0';
  lblRenovacao.Caption := '0';

  if fDMBlocagem.mBlocagem.IsEmpty then
    exit;

  SMDBGrid1.DisableScroll;
  vQtdTotal := 0;
  vQtdEncerrado := 0;
  vQtdAtivo := 0;
  vQtdPre := 0;
  vQtdNovo := 0;
  vQtdRenovacao := 0;
  fDMBlocagem.mBlocagem.First;
  while not fDMBlocagem.mBlocagem.Eof do
  begin
    prc_Somar;
    fDMBlocagem.mBlocagem.Next;
  end;

  lblQtdAtivo.Caption := FormatFloat('0', vQtdAtivo);
  lblQtdEncerrado.Caption := FormatFloat('0', vQtdEncerrado);
  lblQtdPre.Caption := FormatFloat('0', vQtdPre);
  lblNovo.Caption := FormatFloat('0', vQtdNovo);
  lblRenovacao.Caption := FormatFloat('0', vQtdRenovacao);
  SMDBGrid1.EnableScroll;
end;

procedure TfrmGArqBlocagem.prc_Somar;
begin
  vQtdTotal := vQtdTotal + 1;
  lblQtdTotal.Caption := FormatFloat('0', vQtdTotal);
  lblQtdTotal.Refresh;
  Refresh;
  if fDMBlocagem.mBlocagemPre_Contrato.AsString = 'S' then
    vQtdPre := vQtdPre + 1
  else if (fDMBlocagem.mBlocagemDtEncerramento.AsDateTime > 10) and (fDMBlocagem.mBlocagemDtEncerramento.AsDateTime < Date) then
    vQtdEncerrado := vQtdEncerrado + 1
  else
  begin
    vQtdAtivo := vQtdAtivo + 1;
    if trim(fDMBlocagem.mBlocagemNum_Contrato_Ant.AsString) <> '' then
      vQtdRenovacao := vQtdRenovacao + 1
    else
      vQtdNovo := vQtdNovo + 1;
  end;
end;

procedure TfrmGArqBlocagem.ArquivoCSV1Click(Sender: TObject);
var
  Arq: TextFile;
  i: Integer;
  s, vNomeArquivo: string;
  vData: TDate;
begin
  if fDMBlocagem.mBlocagem.IsEmpty then
  begin
    ShowMessage('Consulta não foi gerada!');
    exit;
  end;
  if DirectoryEdit1.Text = '' then
  begin
    ShowMessage('Informe o diretório de destino do arquivo!');
    DirectoryEdit1.SetFocus;
    Exit;
  end;
  vData := Date;
  fDMBlocagem.cdsContrato.First;
  vNomeArquivo := DirectoryEdit1.Text + '\' + FormatFloat('00', MonthOf(vData)) + FormatFloat('00', YearOf(vData)) + '.csv';
  AssignFile(Arq, vNomeArquivo);
  Rewrite(Arq);
  prc_Gera_CSV(';');
  CloseFile(Arq);
  strLista.SaveToFile(vNomeArquivo);
  strLista.Free;
  ShowMessage('Arquivo Gerado!');
end;

procedure TfrmGArqBlocagem.prc_Abre_Pessoa(ID: Integer);
begin
  fDMBlocagem.qPessoa.Close;
  fDMBlocagem.qPessoa.ParamByName('CODIGO').AsInteger := ID;
  fDMBlocagem.qPessoa.Open;
end;

procedure TfrmGArqBlocagem.prc_Gera_CSV(Separador: Char);
var
  intC1, intC2: Integer;
begin
  strLista := TStringList.Create;
  strLinha := EmptyStr;

  for intC1 := 0 to fDMBlocagem.qPessoa.Fields.Count - 1 do
    if intC1 < fDMBlocagem.qPessoa.Fields.Count - 1 then
      strLinha := strLinha + fDMBlocagem.qPessoa.Fields[intC1].DisplayName + Separador
    else
      strLinha := strLinha + fDMBlocagem.qPessoa.Fields[intC1].DisplayName;

  strLista.Add(strLinha);
  strLinha := EmptyStr;
  fDMBlocagem.mBlocagem.First;
  while not fDMBlocagem.mBlocagem.Eof do
  begin
    prc_Abre_Pessoa(fDMBlocagem.mBlocagemID_Cliente.AsInteger);
    if not (fDMBlocagem.qPessoa.IsEmpty) then
    begin
      for intC1 := 1 to 1 do
      begin
        for intC2 := 0 to fDMBlocagem.qPessoa.Fields.Count - 1 do
          if intC2 < fDMBlocagem.qPessoa.Fields.Count - 1 then
            strLinha := strLinha + fDMBlocagem.qPessoa.Fields[intC2].AsString + Separador
          else
            strLinha := strLinha + fDMBlocagem.qPessoa.Fields[intC2].AsString;
        strLista.Add(strLinha);
        strLinha := EmptyStr;
        fDMBlocagem.qPessoa.Next;
      end;
    end;
  fDMBlocagem.mBlocagem.Next;
  end;

end;

procedure TfrmGArqBlocagem.Imprimir1Click(Sender: TObject);
begin
  frmRelArqCSV := TfrmRelArqCSV.Create(Self);
  frmRelArqCSV.RLReport1.Preview;
  frmRelArqCSV.RLReport1.Free;
end;

end.

