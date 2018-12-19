unit uCadPessoa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RzTabs, StdCtrls, DBCtrls, RxDBComb, RxLookup, db,
  Mask, Grids, DateUtils, DBGrids, SMDBGrid, Buttons, ExtCtrls, UCBase, uDmCadPessoa;

type
  TfrmCadPessoa = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    Panel3: TPanel;
    Label6: TLabel;
    btnConsultar: TBitBtn;
    Edit4: TEdit;
    Panel2: TPanel;
    btnInserir: TBitBtn;
    btnExcluir: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    btnConfirmar: TBitBtn;
    btnCancelar: TBitBtn;
    btnAlterar: TBitBtn;
    RZPageControlDados: TRzPageControl;
    TS_Pessoa_Dados: TRzTabSheet;
    TS_Pessoa_Endereco: TRzTabSheet;
    GroupBox2: TGroupBox;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    RxDBComboBox2: TRxDBComboBox;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    RxDBLookupCombo8: TRxDBLookupCombo;
    RxDBLookupCombo9: TRxDBLookupCombo;
    GroupBox3: TGroupBox;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    RxDBComboBox3: TRxDBComboBox;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    RxDBLookupCombo10: TRxDBLookupCombo;
    RxDBLookupCombo11: TRxDBLookupCombo;
    UCControls1: TUCControls;
    SpeedButton1: TSpeedButton;
    CheckBox1: TCheckBox;
    StaticText1: TStaticText;
    Label1: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    lblInscEstadual: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    lblRG: TLabel;
    SpeedButton4: TSpeedButton;
    DBEdit7: TDBEdit;
    RxDBLookupCombo1: TRxDBLookupCombo;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    RxDBComboBox1: TRxDBComboBox;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    dbeInscEstadual: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    dbeRG: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    GroupBox1: TGroupBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    Label13: TLabel;
    DBEdit8: TDBEdit;
    Label14: TLabel;
    btnAtualizar: TBitBtn;
    Label15: TLabel;
    DBEdit9: TDBEdit;
    Label25: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure RzPageControl1Change(Sender: TObject);
    procedure RxDBLookupCombo8Change(Sender: TObject);
    procedure RxDBLookupCombo1Change(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit6Enter(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnAtualizarClick(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit8Enter(Sender: TObject);
    procedure DBEdit8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBComboBox1Exit(Sender: TObject);
  private
    { Private declarations }
    fDMCadPessoa: TDMCadPessoa;
    vApel_Ant : String;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;

    procedure prc_Posiciona_Pessoa;
    procedure prc_Posiciona_Empresa(Apel : String);

    procedure prc_Mover_Empresa_Pessoa;

  public
    { Public declarations }
  end;

var
  frmCadPessoa: TfrmCadPessoa;

implementation

uses UMenu, DmdDatabase, rsDBUtils, uUtilPadrao, USel_Pessoa;

{$R *.dfm}

procedure TfrmCadPessoa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadPessoa.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadPessoa);
end;

procedure TfrmCadPessoa.FormShow(Sender: TObject);
begin
  fDMCadPessoa := TDMCadPessoa.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadPessoa);
  Edit4.SetFocus;
end;

procedure TfrmCadPessoa.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadPessoa.btnExcluirClick(Sender: TObject);
begin
  ShowMessage('*** Opção não autorizada!');
  {if fDMCadPessoa.cdsPessoa.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;}
end;

procedure TfrmCadPessoa.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadPessoa.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadPessoa.cdsPessoa.IsEmpty) or not(fDMCadPessoa.cdsPessoa.Active) or (fDMCadPessoa.cdsPessoaCODIGO.AsInteger < 1) then
    exit;

  fDMCadPessoa.cdsPessoa.Edit;

  TS_Consulta.TabEnabled       := False;
  btnAlterar.Enabled           := False;
  btnConfirmar.Enabled         := True;
  //pnlCadastro.Enabled          := True;
  TS_Pessoa_Dados.Enabled      := True;
  TS_Pessoa_Endereco.Enabled   := True;
end;

procedure TfrmCadPessoa.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadPessoa.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadPessoa.cdsPessoa.State in [dsBrowse]) or not(fDMCadPessoa.cdsPessoa.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadPessoa.cdsPessoa.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  //pnlCadastro.Enabled       := False;
  btnConfirmar.Enabled      := False;
  btnAlterar.Enabled        := True;

  TS_Pessoa_Dados.Enabled      := False;
  TS_Pessoa_Endereco.Enabled   := False;
end;

procedure TfrmCadPessoa.prc_Consultar;
begin
  fDMCadPessoa.cdsPessoa_Consulta.Close;
  fDMCadPessoa.sdsPessoa_Consulta.CommandText := fDMCadPessoa.ctConsulta;
  fDMCadPessoa.sdsPessoa_Consulta.CommandText := fDMCadPessoa.sdsPessoa_Consulta.CommandText + ' WHERE 1 = 1';

  if Trim(Edit4.Text) <> '' then
    fDMCadPessoa.sdsPessoa_Consulta.CommandText := fDMCadPessoa.sdsPessoa_Consulta.CommandText +
                                          ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  if not(CheckBox1.Checked) then
    fDMCadPessoa.sdsPessoa_Consulta.CommandText := fDMCadPessoa.sdsPessoa_Consulta.CommandText +
                                          ' AND INATIVO <> ''S''';
  fDMCadPessoa.cdsPessoa_Consulta.Open;
end;

procedure TfrmCadPessoa.prc_Excluir_Registro;
var
  vCodAux: Integer;
begin
  try
    vCodAux := fDMCadPessoa.cdsPessoaCODIGO.AsInteger;
    fDMCadPessoa.prc_Excluir;
  except
    on e: Exception do
    begin
      prc_Consultar;
      if vCodAux > 0 then
         fDMCadPessoa.cdsPessoa.Locate('CODIGO',vCodAux,([Locaseinsensitive]));
      raise;
    end
  end;
end;

procedure TfrmCadPessoa.prc_Gravar_Registro;
begin
  fDMCadPessoa.cdsPessoaCIDADE.AsString      := RxDBLookupCombo2.Text;
  fDMCadPessoa.cdsPessoaCIDADE_ENT.AsString  := RxDBLookupCombo10.Text;
  fDMCadPessoa.cdsPessoaCIDADE_PGTO.AsString := RxDBLookupCombo8.Text;
  fDMCadPessoa.prc_Gravar;
  if fDMCadPessoa.cdsPessoa.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadPessoa.vMsgPessoa, mtError, [mbno], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  btnConfirmar.Enabled      := False;
  btnAlterar.Enabled        := True;
end;

procedure TfrmCadPessoa.prc_Inserir_Registro;
begin
  fDMCadPessoa.prc_Inserir;

  if fDMCadPessoa.cdsPessoa.State in [dsBrowse] then
    Exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  //pnlCadastro.Enabled    := True;

  TS_Pessoa_Dados.Enabled      := True;
  TS_Pessoa_Endereco.Enabled   := True;

  DBEdit8.SetFocus;
end;

procedure TfrmCadPessoa.RzPageControl1Change(Sender: TObject);
begin
  if RzPageControl1.ActivePage = TS_Cadastro then
  begin
    if not(fDMCadPessoa.cdsPessoa.State in [dsEdit, dsInsert]) then
    begin
      lblInscEstadual.Visible := (RxDBComboBox1.ItemIndex = 0);
      dbeInscEstadual.Visible := (RxDBComboBox1.ItemIndex = 0);
      lblRG.Visible           := (RxDBComboBox1.ItemIndex = 1);
      dbeRG.Visible           := (RxDBComboBox1.ItemIndex = 1);
      prc_Posiciona_Pessoa;
    end;
  end;
end;

procedure TfrmCadPessoa.RxDBLookupCombo8Change(Sender: TObject);
begin
  if RxDBLookupCombo8.Text <> '' then
    fDMCadPessoa.cdsPessoaUF_ENT.AsString := fDMCadPessoa.cdsCidadeUF.AsString;
end;

procedure TfrmCadPessoa.RxDBLookupCombo1Change(Sender: TObject);
begin
  if RxDBLookupCombo1.Text <> '' then
  begin
    fDMCadPessoa.cdsUF.Locate('UF',RxDBLookupCombo1.Value,[loCaseInsensitive]);
    if fDMCadPessoa.cdsUFIDPAIS.AsInteger > 0 then
      fDMCadPessoa.cdsPessoaID_PAIS.AsInteger := fDMCadPessoa.cdsUFIDPAIS.AsInteger;
  end;
end;

procedure TfrmCadPessoa.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadPessoa.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if RxDBLookupCombo2.Text <> '' then
    fDMCadPessoa.cdsPessoaUF.AsString := fDMCadPessoa.cdsCidadeUF.AsString;
end;

procedure TfrmCadPessoa.SpeedButton4Click(Sender: TObject);
begin
  fDMCadPessoa.cdsCidade.Close;
  fDMCadPessoa.cdsCidade.Open;
end;

procedure TfrmCadPessoa.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;
  if fDMCadPessoa.cdsPessoa.State in [dsEdit,dsInsert] then
  begin
    if MessageDlg('Fechar esta tela sem confirmar?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      CanClose := False
    else
      CanClose := True;
  end;
end;

procedure TfrmCadPessoa.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadPessoa.DBEdit6Enter(Sender: TObject);
begin
  fDMCadPessoa.cdsPESSOACNPJ_CPF.EditMask := '00.000.000/0000-00';
  if fDMCadPessoa.cdsPESSOAPessoa.AsString = 'F' then
    fDMCadPessoa.cdsPESSOACNPJ_CPF.EditMask := '000.000.000-00';
end;

procedure TfrmCadPessoa.DBEdit6Exit(Sender: TObject);
var
  vNomeAux: String;
  vAux: String;
begin
  vAux := Monta_Numero(DBEdit6.Text,0);
  if (trim(vAux) = '') or (copy(vAux,1,9) = '000000000') then
    exit;
  if fDMCadPessoa.cdsPessoaPESSOA.AsString = 'J' then
  begin
    if not ValidaCNPJ(DBEdit6.Text) then
    begin
      ShowMessage('CNPJ incorreto!');
      fDMCadPessoa.cdsPessoaCNPJ_CPF.Clear;
      DBEdit6.SetFocus;
    end;
  end
  else
  if not ValidaCPF(DBEdit6.Text) then
  begin
    ShowMessage('CPF incorreto!');
    fDMCadPessoa.cdsPessoaCNPJ_CPF.Clear;
    DBEdit6.SetFocus;
  end;

  if not(fDMCadPessoa.cdsPessoaCNPJ_CPF.IsNull) then
  begin
    vNomeAux := VerificaDuplicidade(DBEdit6.Text,'P');
    if trim(vNomeAux) <> '' then
    begin
      ShowMessage('CNPJ ou CPF já utilizado para ' + vNomeAux + '!');
      fDMCadPessoa.cdsPessoaCNPJ_CPF.Clear;
      DBEdit6.SetFocus;
    end;
  end;
end;

procedure TfrmCadPessoa.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadPessoa.cdsPessoaINATIVO.AsString = 'S' then
    AFont.Color := clRed;
end;

procedure TfrmCadPessoa.prc_Posiciona_Pessoa;
begin
  fDMCadPessoa.prc_Localizar(fDMCadPessoa.cdsPessoa_ConsultaCODIGO.AsInteger);
end;

procedure TfrmCadPessoa.btnAtualizarClick(Sender: TObject);
begin
  if (fDMCadPessoa.cdsPessoa_Consulta.IsEmpty) then
  begin
    MessageDlg('*** Consulta não gerada!', mtError, [mbOk], 0);
    exit;
  end;
  if MessageDlg('Deseja atualizar o cadastro do CEBI conforme o cadastro da EBS?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;
  SMDBGrid1.DisableScroll;
  fDMCadPessoa.cdsPessoa_Consulta.First;
  while not fDMCadPessoa.cdsPessoa_Consulta.Eof do
  begin
    prc_Posiciona_Pessoa;
    if not fDMCadPessoa.cdsPessoa.IsEmpty then
    begin
      prc_Posiciona_Empresa(fDMCadPessoa.cdsPessoaAPEL_EBS.AsString);
      if not fDMCadPessoa.cdsEmpresa.IsEmpty then
      begin
        fDMCadPessoa.cdsPessoa.Edit;
        prc_Mover_Empresa_Pessoa;
        fDMCadPessoa.cdsPessoa.Post;
        fDMCadPessoa.cdsPessoa.ApplyUpdates(0);
      end;
    end;
    fDMCadPessoa.cdsPessoa_Consulta.Next;
  end;
  SMDBGrid1.EnableScroll;
end;

procedure TfrmCadPessoa.prc_Posiciona_Empresa(Apel: String);
begin
  fDMCadPessoa.cdsEmpresa.Close;
  fDMCadPessoa.sdsEmpresa.CommandText := fDMCadPessoa.ctEmpresa + ' WHERE Apel = ' + QuotedStr(Apel);
  fDMCadPessoa.cdsEmpresa.Open;
end;

procedure TfrmCadPessoa.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadPessoa.cdsPessoa_Consulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadPessoa.DBEdit8Exit(Sender: TObject);
begin
  if trim(fDMCadPessoa.cdsPessoaAPEL_EBS.AsString) = '' then
    exit;
  if trim(fDMCadPessoa.cdsPessoaAPEL_EBS.AsString) <> trim(vApel_Ant) then
  begin
    prc_Posiciona_Empresa(fDMCadPessoa.cdsPessoaAPEL_EBS.AsString);
    if not fDMCadPessoa.cdsEmpresa.IsEmpty then
      prc_Mover_Empresa_Pessoa
    else
    begin
      MessageDlg('*** Apel. não encontrado na base do FOX!', mtError, [mbno], 0);
      DBEdit8.SetFocus;
    end;
  end;
end;

procedure TfrmCadPessoa.DBEdit8Enter(Sender: TObject);
begin
  vApel_Ant := fDMCadPessoa.cdsPessoaAPEL_EBS.AsString;
end;

procedure TfrmCadPessoa.prc_Mover_Empresa_Pessoa;
begin
  if trim(fDMCadPessoa.cdsEmpresaemail_nfe.AsString) <> '' then
    fDMCadPessoa.cdsPessoaEMAIL_NFE.AsString := fDMCadPessoa.cdsEmpresaemail_nfe.AsString;
  if trim(fDMCadPessoa.cdsEmpresaFone1.AsString) <> '' then
    fDMCadPessoa.cdsPessoaTELEFONE1.AsString := fDMCadPessoa.cdsEmpresaFone1.AsString;
  if trim(fDMCadPessoa.cdsEmpresaFone2.AsString) <> '' then
    fDMCadPessoa.cdsPessoaTELEFONE2.AsString := fDMCadPessoa.cdsEmpresaFone2.AsString;

  if fDMCadPessoa.cdsPessoaNOME.AsString = '' then
    fDMCadPessoa.cdsPessoaNOME.AsString := fDMCadPessoa.cdsEmpresaRazo.AsString;

  fDMCadPessoa.cdsPessoaENDERECO.AsString        := fDMCadPessoa.cdsEmpresaEndereo.AsString;
  fDMCadPessoa.cdsPessoaCOMPLEMENTO_END.AsString := fDMCadPessoa.cdsEmpresacomplem.AsString;
  fDMCadPessoa.cdsPessoaNUM_END.AsString         := '';
  fDMCadPessoa.cdsPessoaBAIRRO.AsString          := fDMCadPessoa.cdsEmpresaBairro.AsString;
  fDMCadPessoa.cdsPessoaCIDADE.AsString          := fDMCadPessoa.cdsEmpresaCidade.AsString;
  fDMCadPessoa.cdsPessoaUF.AsString              := fDMCadPessoa.cdsEmpresaEstado.AsString;
  fDMCadPessoa.cdsPessoaCEP.AsString             := fDMCadPessoa.cdsEmpresaCEP.AsString;
  if copy(fDMCadPessoa.cdsEmpresaPessoa.AsString,1,1) = 'F' then
    fDMCadPessoa.cdsPessoaPESSOA.AsString := 'F'
  else
    fDMCadPessoa.cdsPessoaPESSOA.AsString := 'J';
  if fDMCadPessoa.cdsPessoaPESSOA.AsString = 'J' then
    fDMCadPessoa.cdsPESSOACNPJ_CPF.EditMask := '00.000.000/0000-00'
  else
  if fDMCadPessoa.cdsPESSOAPessoa.AsString = 'F' then
    fDMCadPessoa.cdsPESSOACNPJ_CPF.EditMask := '000.000.000-00';
  fDMCadPessoa.cdsPessoaCNPJ_CPF.AsString := fDMCadPessoa.cdsEmpresaCNPJCPF.AsString;
  if fDMCadPessoa.cdsPessoaPESSOA.AsString = 'J' then
    fDMCadPessoa.cdsPessoaINSCR_EST.AsString := fDMCadPessoa.cdsEmpresaIEstRG.AsString
  else
    fDMCadPessoa.cdsPessoaRG.AsString        := fDMCadPessoa.cdsEmpresaIEstRG.AsString;
end;

procedure TfrmCadPessoa.DBEdit8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vApel_Pos     := fDMCadPessoa.cdsPessoaAPEL_EBS.AsString;
    vNomePes_Pos  := '';
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'C';
    frmSel_Pessoa.ShowModal;
    FreeAndNil(frmSel_Pessoa);
    fDMCadPessoa.cdsPessoaAPEL_EBS.AsString := vApel_Pos;
    DBEdit8.SetFocus;
  end;
end;

procedure TfrmCadPessoa.RxDBComboBox1Exit(Sender: TObject);
begin
  fDMCadPessoa.cdsPESSOACNPJ_CPF.EditMask := '00.000.000/0000-00';
  if fDMCadPessoa.cdsPESSOAPessoa.AsString = 'F' then
    fDMCadPessoa.cdsPESSOACNPJ_CPF.EditMask := '000.000.000-00';

  lblInscEstadual.Visible := (RxDBComboBox1.ItemIndex = 0);
  dbeInscEstadual.Visible := (RxDBComboBox1.ItemIndex = 0);
  lblRG.Visible           := (RxDBComboBox1.ItemIndex = 1);
  dbeRG.Visible           := (RxDBComboBox1.ItemIndex = 1);
end;

end.
