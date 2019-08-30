unit uCadContrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RzTabs, StdCtrls, DBCtrls, RxDBComb, RxLookup, db,
  Mask, Grids, DateUtils, DBGrids, SMDBGrid, Buttons, ExtCtrls, UCBase, uDmCadContrato, uDmEBS,
  ToolEdit, RXDBCtrl, UCadAssinatura, UCadPeriodo, CurrEdit, URelContrato, StrUtils,
  RzPanel, NxCollection;

type
  TfrmCadContrato = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    Panel3: TPanel;
    Label6: TLabel;
    Panel2: TPanel;
    SMDBGrid1: TSMDBGrid;
    Panel1: TPanel;
    btnConfirmar: TBitBtn;
    btnCancelar: TBitBtn;
    btnAlterar: TBitBtn;
    RZPageControlDados: TRzPageControl;
    TS_Pessoa_Dados: TRzTabSheet;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    lblInscEstadual: TLabel;
    DBEdit4: TDBEdit;
    RxDBLookupCombo2: TRxDBLookupCombo;
    DBEDIT11: TDBEdit;
    SpeedButton4: TSpeedButton;
    StaticText1: TStaticText;
    Label13: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    SpeedButton2: TSpeedButton;
    DBDateEdit1: TDBDateEdit;
    Label14: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Label15: TLabel;
    DBDateEdit2: TDBDateEdit;
    Label25: TLabel;
    DBDateEdit3: TDBDateEdit;
    Label26: TLabel;
    DBEdit6: TDBEdit;
    Label27: TLabel;
    DBEdit8: TDBEdit;
    UCControls1: TUCControls;
    Shape1: TShape;
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    Label3: TLabel;
    DateEdit2: TDateEdit;
    Label4: TLabel;
    DateEdit3: TDateEdit;
    Label5: TLabel;
    DateEdit4: TDateEdit;
    Label7: TLabel;
    DateEdit5: TDateEdit;
    Label10: TLabel;
    DateEdit6: TDateEdit;
    Label22: TLabel;
    CurrencyEdit1: TCurrencyEdit;
    Shape2: TShape;
    Label17: TLabel;
    Label19: TLabel;
    DBEdit1: TDBEdit;
    Label21: TLabel;
    Label23: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    Shape3: TShape;
    Label24: TLabel;
    Label28: TLabel;
    RxDBComboBox1: TRxDBComboBox;
    CheckBox1: TCheckBox;
    Shape4: TShape;
    Label29: TLabel;
    Shape5: TShape;
    Label30: TLabel;
    Label31: TLabel;
    DBDateEdit4: TDBDateEdit;
    Edit1: TEdit;
    RzGroupBox1: TRzGroupBox;
    Label16: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label32: TLabel;
    lblQtdPre: TLabel;
    lblQtdAtivo: TLabel;
    lblQtdEncerrado: TLabel;
    lblQtdTotal: TLabel;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    edtNome: TEdit;
    Label33: TLabel;
    Label34: TLabel;
    lblNovo: TLabel;
    lblRenovacao: TLabel;
    Label35: TLabel;
    btnInserir: TNxButton;
    btnExcluir: TNxButton;
    btnConsultar: TNxButton;
    btnCalcular: TNxButton;
    btnImprimir: TNxButton;
    StaticText2: TStaticText;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label36: TLabel;
    Edit2: TEdit;
    StaticText3: TStaticText;
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
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure btnCalcularClick(Sender: TObject);
    procedure DBDateEdit1Exit(Sender: TObject);
    procedure RxDBLookupCombo2Exit(Sender: TObject);
    procedure RxDBLookupCombo6Exit(Sender: TObject);
    procedure DBEDIT11Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure RxDBLookupCombo2Enter(Sender: TObject);
    procedure RxDBLookupCombo6Enter(Sender: TObject);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtNomeEnter(Sender: TObject);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure edtNomeExit(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
  private
    { Private declarations }
    fDMCadContrato: TDMCadContrato;
    fDMEBS: TDMEBS;
    ffrmCadAssinatura : TfrmCadAssinatura;
    ffrmCadPeriodo : TfrmCadPeriodo;
    vID_Assinatura_Ant, vID_Periodo_Ant : Integer;
    vNum_Contrato_Ant : String;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;
    procedure prc_Posiciona_Contrato;
    procedure prc_Calcular_DtEncerramento;
    procedure prc_Calcular_Valor;

  public
    { Public declarations }
  end;

var
  frmCadContrato: TfrmCadContrato;

implementation

uses UMenu, DmdDatabase, rsDBUtils, uUtilPadrao, USel_Pessoa;

{$R *.dfm}

procedure TfrmCadContrato.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadContrato.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadContrato);
  FreeAndNil(fDMEBS);
end;

procedure TfrmCadContrato.FormShow(Sender: TObject);
begin
  fDMCadContrato := TDMCadContrato.Create(Self);
  fDMEBS         := TDMEBS.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadContrato);
end;

procedure TfrmCadContrato.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadContrato.btnExcluirClick(Sender: TObject);
begin
  if not(fDMCadContrato.cdsContrato_Consulta.Active) or (fDMCadContrato.cdsContrato_Consulta.IsEmpty) or (fDMCadContrato.cdsContrato_ConsultaID.AsInteger < 1) then
    exit;

  prc_Posiciona_Contrato;

  if fDMCadContrato.cdsContrato.IsEmpty then
    exit;

  if fDMCadContrato.cdsContratoENCERRADO.AsString = 'S' then
  begin
    MessageDlg('*** Contrato não pode ser excluido, pois já foi encerrado!', mtError, [mbno], 0);
    exit;
  end;

  fDMCadContrato.prc_Abrir_adsDuplicatas;
  if not(fDMCadContrato.cdsDuplicatas.IsEmpty) then
  begin
    if fDMCadContrato.cdsDuplicatasPagamento.AsDateTime > 10 then
    begin
      MessageDlg('*** Contrato não pode ser excluido, pois já foi pago!', mtError, [mbno], 0);
      exit;
    end;
  end;

  if fDMCadContrato.cdsContratoGEROU_PRE_CONTRATO.AsString = 'S' then
  begin
    fDMCadContrato.qContrato_Ant.Close;
    fDMCadContrato.qContrato_Ant.ParamByName('NUM_CONTRATO_ANT').AsString := fDMCadContrato.cdsContratoNUM_CONTRATO.AsString;
    fDMCadContrato.qContrato_Ant.Open;
    if not(fDMCadContrato.qContrato_Ant.IsEmpty) and (trim(fDMCadContrato.qContrato_AntNUM_CONTRATO.AsString) <> '') then
    begin
      MessageDlg('*** Contrato não pode ser excluido, pois possui um pré contrato!' +#13 +
                 'Pré Contrato nº: ' + fDMCadContrato.qContrato_AntNUM_CONTRATO.AsString, mtError, [mbno], 0);
      exit;
    end;
  end;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
  btnConsultarClick(Sender);
end;

procedure TfrmCadContrato.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadContrato.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadContrato.cdsContrato.IsEmpty) or not(fDMCadContrato.cdsContrato.Active) or (fDMCadContrato.cdsContratoID.AsInteger < 1) then
    exit;

  if fDMCadContrato.cdsContratoENCERRADO.AsString = 'S' then
  begin
    MessageDlg('*** Contrato não pode ser alterado, pois já foi encerrado!', mtError, [mbno], 0);
    exit;
  end;

  fDMCadContrato.prc_Abrir_adsDuplicatas;
  if not(fDMCadContrato.cdsDuplicatas.IsEmpty) then
  begin
    if (fDMCadContrato.cdsDuplicatasPagamento.AsDateTime > 10) then
    begin
      MessageDlg('*** Contrato não pode ser alterado, pois já foi pago!', mtError, [mbno], 0);
      exit;
    end;
  end;

  fDMCadContrato.cdsContrato.Edit;

  TS_Consulta.TabEnabled  := False;
  btnAlterar.Enabled      := False;
  btnConfirmar.Enabled    := True;
  TS_Pessoa_Dados.Enabled := True;
  DBEdit1.SetFocus;
  RxDBComboBox1.Enabled   := False;

  DBEdit2.ReadOnly := True;
  edtNome.ReadOnly := True;

  //RxDBLookupCombo3.ReadOnly := True;
  //RxDBLookupCombo2.ReadOnly := True;
  //RxDBLookupCombo6.ReadOnly := True;
end;

procedure TfrmCadContrato.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadContrato.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadContrato.cdsContrato.State in [dsBrowse]) or not(fDMCadContrato.cdsContrato.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadContrato.cdsContrato.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  //pnlCadastro.Enabled       := False;
  btnConfirmar.Enabled      := False;
  btnAlterar.Enabled        := True;

  TS_Pessoa_Dados.Enabled      := False;
end;

procedure TfrmCadContrato.prc_Consultar;
begin
  fDMCadContrato.cdsContrato_Consulta.Close;
  fDMCadContrato.sdsContrato_Consulta.CommandText := fDMCadContrato.ctContrato_Consulta;
  fDMCadContrato.sdsContrato_Consulta.CommandText := fDMCadContrato.sdsContrato_Consulta.CommandText + ' WHERE 1 = 1';
  if trim(Edit1.Text) <> '' then
    fDMCadContrato.sdsContrato_Consulta.CommandText := fDMCadContrato.sdsContrato_Consulta.CommandText
                                                     + ' AND PES.NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%');
  if RxDBLookupCombo4.Text <> '' then
    fDMCadContrato.sdsContrato_Consulta.CommandText := fDMCadContrato.sdsContrato_Consulta.CommandText
                                                     + ' AND CT.ID_ASSINATURA = ' + IntToStr(RxDBLookupCombo4.KeyValue);
  if RxDBLookupCombo1.Text <> '' then
    fDMCadContrato.sdsContrato_Consulta.CommandText := fDMCadContrato.sdsContrato_Consulta.CommandText
                                                     + ' AND PES.UF = ' + QuotedStr(RxDBLookupCombo1.Text);
  if CurrencyEdit1.AsInteger > 0 then
    fDMCadContrato.sdsContrato_Consulta.CommandText := fDMCadContrato.sdsContrato_Consulta.CommandText
                                                     + ' AND CT.QTD = ' + CurrencyEdit1.Text;
  if CurrencyEdit2.AsInteger > 0 then
    fDMCadContrato.sdsContrato_Consulta.CommandText := fDMCadContrato.sdsContrato_Consulta.CommandText
                                                     + ' AND CT.NUM_PEDIDO = ' + CurrencyEdit2.Text;
  if DateEdit1.Date > 0 then
    fDMCadContrato.sdsContrato_Consulta.CommandText := fDMCadContrato.sdsContrato_Consulta.CommandText + ' AND DTCONTRATO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 0 then
    fDMCadContrato.sdsContrato_Consulta.CommandText := fDMCadContrato.sdsContrato_Consulta.CommandText + ' AND DTCONTRATO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  if DateEdit3.Date > 0 then
    fDMCadContrato.sdsContrato_Consulta.CommandText := fDMCadContrato.sdsContrato_Consulta.CommandText + ' AND DTCOBRANCA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit3.date));
  if DateEdit4.Date > 0 then
    fDMCadContrato.sdsContrato_Consulta.CommandText := fDMCadContrato.sdsContrato_Consulta.CommandText + ' AND DTCOBRANCA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));
  if DateEdit5.Date > 0 then
    fDMCadContrato.sdsContrato_Consulta.CommandText := fDMCadContrato.sdsContrato_Consulta.CommandText + ' AND DTENCERRAMENTO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit5.date));
  if DateEdit6.Date > 0 then
    fDMCadContrato.sdsContrato_Consulta.CommandText := fDMCadContrato.sdsContrato_Consulta.CommandText + ' AND DTENCERRAMENTO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit6.date));
  case RadioGroup1.ItemIndex of
    0 : fDMCadContrato.sdsContrato_Consulta.CommandText := fDMCadContrato.sdsContrato_Consulta.CommandText + ' AND ((DTENCERRAMENTO IS Null) OR (DTENCERRAMENTO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',Date)) + ' ))'
                                                         + ' AND (PRE_CONTRATO = ' + QuotedStr('N') + ')';
    1 : fDMCadContrato.sdsContrato_Consulta.CommandText := fDMCadContrato.sdsContrato_Consulta.CommandText + ' AND (((DTENCERRAMENTO IS NOT Null) AND (DTENCERRAMENTO < '
                                                         + QuotedStr(FormatDateTime('MM/DD/YYYY',Date)) + ' )) OR (ENCERRADO = ' + QuotedStr('S') + '))';
    2 : fDMCadContrato.sdsContrato_Consulta.CommandText := fDMCadContrato.sdsContrato_Consulta.CommandText + ' AND (PRE_CONTRATO = ' + QuotedStr('S') + ')';
  end;
  fDMCadContrato.cdsContrato_Consulta.Open;
  fDMCadContrato.cdsContrato_Consulta.IndexFieldNames := 'NUM_CONTRATO';
end;

procedure TfrmCadContrato.prc_Excluir_Registro;
var
  vCodAux: Integer;
begin
  try
    vCodAux := fDMCadContrato.cdsContratoID.AsInteger;
    fDMCadContrato.vPre_Contrato := (fDMCadContrato.cdsContratoPRE_CONTRATO.AsString = 'S');
    fDMCadContrato.prc_Excluir;
    fDMCadContrato.vPre_Contrato := False;
  except
    on e: Exception do
    begin
      prc_Consultar;
      if vCodAux > 0 then
         fDMCadContrato.cdsContrato.Locate('CODIGO',vCodAux,([Locaseinsensitive]));
      raise;
    end
  end;
end;

procedure TfrmCadContrato.prc_Gravar_Registro;
var
  vID_Aux : Integer;
begin
  vID_Aux := fDMCadContrato.cdsContratoID.AsInteger;
  fDMCadContrato.vPre_Contrato := False;
  fDMCadContrato.prc_Gravar;
  if fDMCadContrato.cdsContrato.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadContrato.vMsgErro, mtError, [mbno], 0);
    exit;
  end;
  btnConsultarClick(frmCadContrato);
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  btnConfirmar.Enabled      := False;
  btnAlterar.Enabled        := True;
  fDMCadContrato.cdsContrato_Consulta.Locate('ID',vID_Aux,([Locaseinsensitive]));
end;

procedure TfrmCadContrato.prc_Inserir_Registro;
begin
  fDMCadContrato.prc_Inserir;

  if fDMCadContrato.cdsContrato.State in [dsBrowse] then
    Exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled  := False;
  btnAlterar.Enabled      := False;
  btnConfirmar.Enabled    := True;

  TS_Pessoa_Dados.Enabled := True;
  DBEdit4.SetFocus;
  RxDBComboBox1.Enabled   := True;

  DBEdit2.ReadOnly := False;
  edtNome.ReadOnly := False;

  //RxDBLookupCombo3.ReadOnly := False;
  RxDBLookupCombo2.ReadOnly := False;
  RxDBLookupCombo6.ReadOnly := False;
  edtNome.Clear;
end;

procedure TfrmCadContrato.RzPageControl1Change(Sender: TObject);
begin
  if not(fDMCadContrato.cdsContrato.State in [dsEdit, dsInsert]) then
  begin
    if RzPageControl1.ActivePage = TS_Cadastro then
    begin
      if not(fDMCadContrato.cdsContrato_Consulta.Active) or (fDMCadContrato.cdsContrato_Consulta.IsEmpty) or (fDMCadContrato.cdsContrato_ConsultaID.AsInteger <= 0) then
        exit;
      prc_Posiciona_Contrato;
    end;
  end;
end;

procedure TfrmCadContrato.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadContrato.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := True;
  if fDMCadContrato.cdsContrato.State in [dsEdit,dsInsert] then
  begin
    if MessageDlg('Fechar esta tela sem confirmar?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      CanClose := False
    else
      CanClose := True;
  end;
end;

procedure TfrmCadContrato.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadContrato.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadContrato.cdsContrato_ConsultaPRE_CONTRATO.AsString = 'S' then
    Background := clYellow
  else
  if (fDMCadContrato.cdsContrato_ConsultaENCERRADO.AsString = 'S') then
    Background := $0080FF80
  else
  if fDMCadContrato.cdsContrato_ConsultaGEROU_PRE_CONTRATO.AsString = 'A' then
  begin
    Background  := $00FFFFD2;
    AFont.Color := clWindowText;
  end
  else
  if (fDMCadContrato.cdsContrato_ConsultaDTENCERRAMENTO.AsDateTime > 10 ) and (fDMCadContrato.cdsContrato_ConsultaDTENCERRAMENTO.AsDateTime < Date) then
  begin
    Background  := $00404080;
    AFont.Color := clWhite;
  end
  else
  if fDMCadContrato.cdsContrato_ConsultaGEROU_PRE_CONTRATO.AsString = 'S' then
  begin
    Background  := $004080FF;
    AFont.Color := clwhite;
  end
  else
  if trim(fDMCadContrato.cdsContrato_ConsultaNUM_CONTRATO_ANT.AsString) <> '' then
  begin
    AFont.Style := [fsBold];
    AFont.Color := clBlue;
  end;
end;

procedure TfrmCadContrato.prc_Posiciona_Contrato;
begin
  fDMCadContrato.prc_Localizar(fDMCadContrato.cdsContrato_ConsultaID.AsInteger);
  edtNome.Clear;
  if trim(fDMCadContrato.cdsContratoAPEL_EBS.AsString) <> '' then
    edtNome.Text := fDMCadContrato.cdsEmpresaRazo.AsString;
end;

procedure TfrmCadContrato.SpeedButton2Click(Sender: TObject);
begin
  fDMCadContrato.cdsAssinatura.Close;
  fDMCadContrato.cdsAssinatura.Open;
end;

procedure TfrmCadContrato.SpeedButton3Click(Sender: TObject);
begin
  ffrmCadPeriodo := TfrmCadPeriodo.Create(self);
  ffrmCadPeriodo.ShowModal;

  FreeAndNil(ffrmCadPeriodo);

  SpeedButton5Click(Sender);
end;

procedure TfrmCadContrato.SpeedButton5Click(Sender: TObject);
begin
  fDMCadContrato.cdsPeriodo.Close;
  fDMCadContrato.cdsPeriodo.Open;
end;

procedure TfrmCadContrato.SpeedButton6Click(Sender: TObject);
begin
  ffrmCadAssinatura := TfrmCadAssinatura.Create(self);
  ffrmCadAssinatura.ShowModal;

  FreeAndNil(ffrmCadAssinatura);

  SpeedButton2Click(Sender);
end;

procedure TfrmCadContrato.SpeedButton4Click(Sender: TObject);
begin
  fDMCadContrato.cdsEmpresa.Close;
  fDMCadContrato.cdsEmpresa.Open;
end;

procedure TfrmCadContrato.btnCalcularClick(Sender: TObject);
var
  vQtdTotal, vQtdEncerrado, vQtdAtivo : Integer;
  vQtdPre : Integer;
  vQtdNovo, vQtdRenovacao : Integer;
begin
  lblQtdAtivo.Caption     := '0';
  lblQtdEncerrado.Caption := '0';
  lblQtdTotal.Caption     := '0';
  lblQtdPre.Caption       := '0';
  lblNovo.Caption         := '0';
  lblRenovacao.Caption    := '0';

  if not fDMCadContrato.cdsContrato_Consulta.Active then
    exit;

  SMDBGrid1.DisableScroll;
  vQtdTotal     := 0;
  vQtdEncerrado := 0;
  vQtdAtivo     := 0;
  vQtdPre       := 0;
  vQtdNovo      := 0;
  vQtdRenovacao := 0;
  fDMCadContrato.cdsContrato_Consulta.First;
  while not fDMCadContrato.cdsContrato_Consulta.Eof do
  begin
    vQtdTotal := vQtdTotal + 1;
    lblQtdTotal.Caption := FormatFloat('0',vQtdTotal);
    lblQtdTotal.Refresh;
    Refresh;
    if fDMCadContrato.cdsContrato_ConsultaPRE_CONTRATO.AsString = 'S' then
      vQtdPre := vQtdPre + 1
    else
    if (fDMCadContrato.cdsContrato_ConsultaDTENCERRAMENTO.AsDateTime > 10) and (fDMCadContrato.cdsContrato_ConsultaDTENCERRAMENTO.AsDateTime < Date) then
      vQtdEncerrado := vQtdEncerrado + 1
    else
    begin
      vQtdAtivo := vQtdAtivo + 1;
      if trim(fDMCadContrato.cdsContrato_ConsultaNUM_CONTRATO_ANT.AsString) <> '' then
        vQtdRenovacao := vQtdRenovacao + 1
      else
        vQtdNovo := vQtdNovo + 1;
    end;
    fDMCadContrato.cdsContrato_Consulta.Next;
  end;

  lblQtdAtivo.Caption     := FormatFloat('0',vQtdAtivo);
  lblQtdEncerrado.Caption := FormatFloat('0',vQtdEncerrado);
  lblQtdPre.Caption       := FormatFloat('0',vQtdPre);
  lblNovo.Caption         := FormatFloat('0',vQtdNovo);
  lblRenovacao.Caption    := FormatFloat('0',vQtdRenovacao);
  SMDBGrid1.EnableScroll;
end;

procedure TfrmCadContrato.DBDateEdit1Exit(Sender: TObject);
begin
  prc_Calcular_DtEncerramento;
end;

procedure TfrmCadContrato.RxDBLookupCombo2Exit(Sender: TObject);
begin
  if (RxDBLookupCombo2.Text <> '') and ((fDMCadContrato.cdsContrato.State in [dsInsert]) or (vID_Assinatura_Ant <> fDMCadContrato.cdsContratoID_ASSINATURA.AsInteger)) then
  begin
    fDMCadContrato.cdsContratoVLR_UNITARIO.AsFloat := fDMCadContrato.cdsAssinaturaVALOR.AsFloat;
    fDMCadContrato.cdsContratoID_PERIODO.AsInteger := fDMCadContrato.cdsAssinaturaID_PERIODO.AsInteger;
  end;
end;

procedure TfrmCadContrato.prc_Calcular_DtEncerramento;
begin
  if (fDMCadContrato.cdsContratoDTCONTRATO.AsDateTime > 10) and (fDMCadContrato.cdsContratoID_PERIODO.AsInteger > 0) then
  begin
    fDMCadContrato.cdsPeriodo.Locate('ID',fDMCadContrato.cdsContratoID_PERIODO.AsInteger,([Locaseinsensitive]));
    fDMCadContrato.cdsContratoDTENCERRAMENTO.AsDateTime := IncMonth(fDMCadContrato.cdsContratoDTCONTRATO.AsDateTime,fDMCadContrato.cdsPeriodoQTD_MES.AsInteger);
  end;
end;

procedure TfrmCadContrato.RxDBLookupCombo6Exit(Sender: TObject);
begin
  if (fDMCadContrato.cdsContrato.State in [dsInsert]) or (fDMCadContrato.cdsContratoID_PERIODO.AsInteger <> vID_Periodo_Ant) then
    prc_Calcular_DtEncerramento;
end;

procedure TfrmCadContrato.prc_Calcular_Valor;
var
  vAux : Real;
begin
  vAux := 0;
  if (fDMCadContrato.cdsContratoQTD.AsInteger > 0) and (fDMCadContrato.cdsContratoVLR_UNITARIO.AsFloat > 0) then
    vAux := fDMCadContrato.cdsContratoQTD.AsInteger * fDMCadContrato.cdsContratoVLR_UNITARIO.AsFloat;
  fDMCadContrato.cdsContratoVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
end;

procedure TfrmCadContrato.DBEDIT11Exit(Sender: TObject);
begin
  prc_Calcular_Valor;
end;

procedure TfrmCadContrato.DBEdit8Exit(Sender: TObject);
begin
  prc_Calcular_Valor;
end;

procedure TfrmCadContrato.btnImprimirClick(Sender: TObject);
var
  vAux : String;
begin
  vAux := '';
  if Edit1.Text <> '' then
    vAux := vAux + '(Clinte: ' + Edit1.Text + ')';
  if RxDBLookupCombo4.Text <> '' then
    vAux := vAux + '(Assinatura: ' + RxDBLookupCombo4.Text + ')';
  if (DateEdit1.Date > 10) and (DateEdit2.Date > 10) then
    vAux := vAux + '(Dt.Contrato: ' + DateEdit1.Text + ' a ' + DateEdit2.Text + ')'
  else
  if DateEdit1.Date > 10 then
    vAux := vAux + '(Dt.Contrato Ini: ' + DateEdit1.Text + ')'
  else
  if DateEdit2.Date > 10 then
    vAux := vAux + '(Dt.Contrato Fin: ' + DateEdit2.Text + ')';
  if (DateEdit5.Date > 10) and (DateEdit6.Date > 10) then
    vAux := vAux + '(Dt.Encerramento: ' + DateEdit5.Text + ' a ' + DateEdit6.Text + ')'
  else
  if DateEdit5.Date > 10 then
    vAux := vAux + '(Dt.Encerramento Ini: ' + DateEdit5.Text + ')';
  if DateEdit6.Date > 10 then
    vAux := vAux + '(Dt.Encerramento Fin: ' + DateEdit6.Text + ')';
  case RadioGroup1.ItemIndex of
    0 : vAux := vAux + '(Ativo)';
    1 : vAux := vAux + '(Encerrados)';
    2 : vAux := vAux + '(Pré Contrato)';
  end;
  try
    SMDBGrid1.DisableScroll;
    frmRelContrato := TfrmRelContrato.Create(Self);
    frmRelContrato.fDMCadContrato := fDMCadContrato;
    frmRelContrato.vOpcaoCab      := vAux;
    frmRelContrato.vImpValor      := CheckBox1.Checked;
    frmRelContrato.RLReport1.Preview;
    frmRelContrato.RLReport1.Free;
  finally
    SMDBGrid1.EnableScroll;
  end;
end;

procedure TfrmCadContrato.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
  ColunaOrdenada : String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadContrato.cdsContrato_Consulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadContrato.RxDBLookupCombo2Enter(Sender: TObject);
begin
  vID_Assinatura_Ant := 0;
  if RxDBLookupCombo2.Text <> '' then
    vID_Assinatura_Ant := RxDBLookupCombo2.KeyValue;
end;

procedure TfrmCadContrato.RxDBLookupCombo6Enter(Sender: TObject);
begin
  vID_Periodo_Ant := 0;
  if RxDBLookupCombo6.Text <> '' then
    vID_Periodo_Ant := RxDBLookupCombo6.KeyValue;
end;

procedure TfrmCadContrato.DBEdit4Enter(Sender: TObject);
begin
  vNum_Contrato_Ant := fDMCadContrato.cdsContratoNUM_CONTRATO.AsString;
end;

procedure TfrmCadContrato.DBEdit4Exit(Sender: TObject);
var
  vAux : String;
begin
  if (vNum_Contrato_Ant <> fDMCadContrato.cdsContratoNUM_CONTRATO.AsString) then
  begin
    if (trim(fDMCadContrato.cdsContratoNUM_CONTRATO.AsString) <> '') then
    begin
      vAux := Monta_Numero(copy(fDMCadContrato.cdsContratoNUM_CONTRATO.AsString,3,Length(fDMCadContrato.cdsContratoNUM_CONTRATO.AsString) - 2),0);
      if trim(vAux) = '' then
        vAux := '0';
      fDMCadContrato.cdsContratoNUM_CONTRATO_INT.AsInteger := StrToInt(vAux);
      vAux := '20' + copy(fDMCadContrato.cdsContratoNUM_CONTRATO.AsString,1,2);
      fDMCadContrato.cdsContratoANO_CONTRATO.AsInteger := StrToInt(vAux);
    end
    else
      fDMCadContrato.cdsContratoANO_CONTRATO.AsInteger := YearOf(Date);
  end;
end;

procedure TfrmCadContrato.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    vApel_Pos     := '';
    vNomePes_Pos  := Edit1.Text;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'C';
    frmSel_Pessoa.ShowModal;
    FreeAndNil(frmSel_Pessoa);
    Edit2.Text := vApel_Pos;
    edit1.Text := vNomePes_Pos;
    Edit2.SetFocus;
  end;
end;

procedure TfrmCadContrato.edtNomeEnter(Sender: TObject);
begin
  edtNome.ReadOnly    := (trim(fDMCadContrato.cdsContratoAPEL_EBS.AsString) <> '');
  StaticText2.Caption := 'Enter para pesquisar pelo nome';
end;

procedure TfrmCadContrato.DBEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vApel_Pos     := fDMCadContrato.cdsContratoAPEL_EBS.AsString;
    vNomePes_Pos  := edtNome.Text;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'C';
    frmSel_Pessoa.ShowModal;
    FreeAndNil(frmSel_Pessoa);
    fDMCadContrato.cdsContratoAPEL_EBS.AsString := vApel_Pos;
    edtNome.Text := vNomePes_Pos;
    DBEdit2.SetFocus;
  end
  else
  if (Key = VK_RETURN) and (trim(fDMCadContrato.cdsContratoAPEL_EBS.AsString) = '') then
    edtNome.SetFocus;
end;

procedure TfrmCadContrato.edtNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    vApel_Pos     := '';
    vNomePes_Pos  := edtNome.Text;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'C';
    frmSel_Pessoa.ShowModal;
    FreeAndNil(frmSel_Pessoa);
    fDMCadContrato.cdsContratoAPEL_EBS.AsString := vApel_Pos;
    edtNome.Text := vNomePes_Pos;
    DBEdit2.SetFocus;
  end
end;

procedure TfrmCadContrato.DBEdit2Exit(Sender: TObject);
begin
  StaticText2.Caption := '';
  if trim(fDMCadContrato.cdsContratoAPEL_EBS.AsString) <> '' then
  begin
    fDMCadContrato.prc_Abrir_cdsEmpresa(fDMCadContrato.cdsContratoAPEL_EBS.AsString);
    if fDMCadContrato.cdsEmpresa.IsEmpty then
    begin
      MessageDlg('*** Cliente não encontrado!', mtInformation, [mbno], 0);
      fDMCadContrato.cdsContratoAPEL_EBS.AsString := '';
      DBEdit2.SetFocus;
      edtNome.Clear;
      exit;
    end
    else
      edtNome.Text := fDMCadContrato.cdsEmpresaRazo.AsString;
  end;
end;

procedure TfrmCadContrato.DBEdit2Enter(Sender: TObject);
begin
  StaticText2.Caption := 'F2 Consultar   ou   Enter para pesquisar pelo nome';
end;

procedure TfrmCadContrato.edtNomeExit(Sender: TObject);
begin
  StaticText2.Caption := '';
end;

procedure TfrmCadContrato.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vApel_Pos     := Edit2.Text;
    vNomePes_Pos  := Edit1.Text;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'C';
    frmSel_Pessoa.ShowModal;
    FreeAndNil(frmSel_Pessoa);
    Edit2.Text := vApel_Pos;
    Edit1.Text := vNomePes_Pos;
    Edit2.SetFocus;
  end
  else
  if (Key = VK_RETURN) and (trim(Edit2.Text) = '') then
    Edit1.SetFocus;
end;

procedure TfrmCadContrato.Edit2Exit(Sender: TObject);
begin
  StaticText3.Caption := '';
  if trim(Edit2.Text) <> '' then
  begin
    fDMCadContrato.prc_Abrir_cdsEmpresa(Edit2.Text);
    if fDMCadContrato.cdsEmpresa.IsEmpty then
    begin
      MessageDlg('*** Cliente não encontrado!', mtInformation, [mbno], 0);
      Edit2.Text := '';
      Edit2.SetFocus;
      Edit1.Clear;
      exit;
    end
    else
      Edit1.Text := fDMCadContrato.cdsEmpresaRazo.AsString;
  end
  else
    Edit1.Clear;
end;

procedure TfrmCadContrato.Edit2Enter(Sender: TObject);
begin
  StaticText3.Caption := 'F2 Consultar   ou   Enter para pesquisar pelo nome';
end;

procedure TfrmCadContrato.Edit1Exit(Sender: TObject);
begin
  StaticText3.Caption := '';
end;

procedure TfrmCadContrato.Edit1Enter(Sender: TObject);
begin
  StaticText3.Caption := 'Enter para pesquisar pelo nome';
end;

end.
