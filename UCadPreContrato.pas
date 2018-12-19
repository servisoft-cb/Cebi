unit uCadPreContrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RzTabs, StdCtrls, DBCtrls, RxDBComb, RxLookup, db,
  Mask, Grids, DateUtils, DBGrids, SMDBGrid, Buttons, ExtCtrls, UCBase, uDmCadContrato, uDmEBS,
  ToolEdit, RXDBCtrl, UCadAssinatura, UCadPeriodo, CurrEdit, NxCollection;

type
  TfrmCadPreContrato = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    Panel3: TPanel;
    Label6: TLabel;
    Panel2: TPanel;
    SMDBGrid1: TSMDBGrid;
    Label13: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Shape1: TShape;
    Label1: TLabel;
    Label7: TLabel;
    DateEdit5: TDateEdit;
    Label10: TLabel;
    DateEdit6: TDateEdit;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    RadioGroup1: TRadioGroup;
    UCControls1: TUCControls;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    DateEdit2: TDateEdit;
    btnConsultar: TNxButton;
    btnGerar_PreContrato: TNxButton;
    btnExcluir_PreContrato: TNxButton;
    btnAtivar_PreContrato: TNxButton;
    Edit2: TEdit;
    Edit3: TEdit;
    StaticText3: TStaticText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExcluir_PreContratoClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure btnGerar_PreContratoClick(Sender: TObject);
    procedure btnAtivar_PreContratoClick(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure Edit2Enter(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit3Enter(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    fDMCadContrato: TDMCadContrato;
    fDMEBS: TDMEBS;
    ffrmCadAssinatura : TfrmCadAssinatura;
    ffrmCadPeriodo : TfrmCadPeriodo;

    procedure prc_Consultar;
    procedure prc_Posiciona_Contrato;
    procedure prc_Calcular_DtEncerramento;

    procedure prc_Gravar_Pre_Contrato;
    procedure prc_Mover_DadosAssinatura;
    procedure prc_Calcular_Valor;
    procedure prc_Le_cdsContrato_Consulta(Tipo : String); //P= Pré Contrato   E=Excluir   A=Ativar Pré Contrato

  public
    { Public declarations }
  end;

var
  frmCadPreContrato: TfrmCadPreContrato;

implementation

uses UMenu, DmdDatabase, rsDBUtils, uUtilPadrao, USel_Pessoa;

{$R *.dfm}

procedure TfrmCadPreContrato.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmCadPreContrato.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadContrato);
  FreeAndNil(fDMEBS);
end;

procedure TfrmCadPreContrato.FormShow(Sender: TObject);
begin
  fDMCadContrato := TDMCadContrato.Create(Self);
  fDMEBS         := TDMEBS.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadContrato);
  DateEdit2.Date := Date;
end;

procedure TfrmCadPreContrato.btnExcluir_PreContratoClick(Sender: TObject);
begin
  if not(fDMCadContrato.cdsContrato_Consulta.Active) or (fDMCadContrato.cdsContrato_Consulta.IsEmpty) or (fDMCadContrato.cdsContrato_ConsultaID.AsInteger < 1) then
    exit;

  if MessageDlg('Deseja excluir os pré contratos selecionados?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Le_cdsContrato_Consulta('E');
end;

procedure TfrmCadPreContrato.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadPreContrato.prc_Consultar;
begin
  fDMCadContrato.cdsContrato_Consulta.Close;
  fDMCadContrato.sdsContrato_Consulta.CommandText := fDMCadContrato.ctContrato_Consulta;
  fDMCadContrato.sdsContrato_Consulta.CommandText := fDMCadContrato.sdsContrato_Consulta.CommandText + ' WHERE 1 = 1';
  if trim(Edit2.Text) <> '' then
    fDMCadContrato.sdsContrato_Consulta.CommandText := fDMCadContrato.sdsContrato_Consulta.CommandText
                                                     + ' AND CT.APEL_EBS = ' + QuotedStr(Edit2.Text);
  if RxDBLookupCombo4.Text <> '' then
    fDMCadContrato.sdsContrato_Consulta.CommandText := fDMCadContrato.sdsContrato_Consulta.CommandText
                                                     + ' AND CT.ID_ASSINATURA = ' + IntToStr(RxDBLookupCombo4.KeyValue);
  if trim(Edit1.Text) <> '' then
    fDMCadContrato.sdsContrato_Consulta.CommandText := fDMCadContrato.sdsContrato_Consulta.CommandText
                                                     + ' AND CT.NUM_CONTRATO_ANT = ' + QuotedStr(Edit1.Text);
  if DateEdit5.Date > 0 then
    fDMCadContrato.sdsContrato_Consulta.CommandText := fDMCadContrato.sdsContrato_Consulta.CommandText + ' AND DTENCERRAMENTO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit5.date));
  if DateEdit6.Date > 0 then
    fDMCadContrato.sdsContrato_Consulta.CommandText := fDMCadContrato.sdsContrato_Consulta.CommandText + ' AND DTENCERRAMENTO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit6.date));
  case RadioGroup1.ItemIndex of
    0 : fDMCadContrato.sdsContrato_Consulta.CommandText := fDMCadContrato.sdsContrato_Consulta.CommandText + ' AND GEROU_PRE_CONTRATO = ' + QuotedStr('N') + ' AND PRE_CONTRATO = ' + QuotedStr('N');
    1 : fDMCadContrato.sdsContrato_Consulta.CommandText := fDMCadContrato.sdsContrato_Consulta.CommandText + ' AND PRE_CONTRATO = ' + QuotedStr('S');
  end;
  fDMCadContrato.cdsContrato_Consulta.Open;
  fDMCadContrato.cdsContrato_Consulta.IndexFieldNames := 'NUM_CONTRATO';
end;

procedure TfrmCadPreContrato.FormCloseQuery(Sender: TObject;
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

procedure TfrmCadPreContrato.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmCadPreContrato.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (fDMCadContrato.cdsContrato_ConsultaPRE_CONTRATO.AsString = 'S') then
    Background := clYellow;
end;

procedure TfrmCadPreContrato.prc_Posiciona_Contrato;
begin
  fDMCadContrato.prc_Localizar(fDMCadContrato.cdsContrato_ConsultaID.AsInteger);
end;

procedure TfrmCadPreContrato.prc_Calcular_DtEncerramento;
begin
  if (fDMCadContrato.cdsContratoDTCONTRATO.AsDateTime > 10) and (fDMCadContrato.cdsContratoID_PERIODO.AsInteger > 0) then
  begin                                                
    fDMCadContrato.cdsPeriodo.Locate('ID',fDMCadContrato.cdsContratoID_PERIODO.AsInteger,([Locaseinsensitive]));
    fDMCadContrato.cdsContratoDTENCERRAMENTO.AsDateTime := IncMonth(fDMCadContrato.cdsContratoDTCONTRATO.AsDateTime,fDMCadContrato.cdsPeriodoQTD_MES.AsInteger);
  end;
end;

procedure TfrmCadPreContrato.btnGerar_PreContratoClick(Sender: TObject);
begin
  if DateEdit1.Date < 10 then
  begin
    ShowMessage('Data de vencimento não informada!');
    exit;
  end;

  if not(fDMCadContrato.cdsContrato_Consulta.Active) or (fDMCadContrato.cdsContrato_Consulta.IsEmpty) or (fDMCadContrato.cdsContrato_ConsultaID.AsInteger < 1) then
    exit;

  if MessageDlg('Deseja gerar Pré Contrato dos itens selecionados?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Le_cdsContrato_Consulta('P');
end;

procedure TfrmCadPreContrato.prc_Gravar_Pre_Contrato;
begin
  try
    fDMCadContrato.prc_Inserir;
    fDMCadContrato.cdsContratoID_CLIENTE.AsInteger       := fDMCadContrato.cdsContrato_ConsultaID_CLIENTE.AsInteger;
    fDMCadContrato.cdsContratoID_ASSINATURA.AsInteger    := fDMCadContrato.cdsContrato_ConsultaID_ASSINATURA.AsInteger;
    //fDMCadContrato.cdsContratoDTCONTRATO.AsDateTime      := fDMCadContrato.cdsContrato_ConsultaDTCONTRATO.AsDateTime;
    fDMCadContrato.cdsContratoDTCONTRATO.AsDateTime      := fDMCadContrato.cdsContrato_ConsultaDTENCERRAMENTO.AsDateTime;
    fDMCadContrato.cdsContratoDTCOBRANCA.AsDateTime      := DateEdit1.Date;
    fDMCadContrato.cdsContratoDTEMISSAO.AsDateTime       := DateEdit2.Date;
    fDMCadContrato.cdsContratoQTD.AsFloat                := fDMCadContrato.cdsContrato_ConsultaQTD.AsInteger;
    fDMCadContrato.cdsContratoPERIODO.AsString           := fDMCadContrato.cdsContrato_ConsultaPERIODO.AsString;
    fDMCadContrato.cdsContratoID_PERIODO.AsInteger       := fDMCadContrato.cdsContrato_ConsultaID_PERIODO.AsInteger;
    prc_Mover_DadosAssinatura;
    prc_Calcular_DtEncerramento;
    prc_Calcular_Valor;
    fDMCadContrato.cdsContratoAPEL_EBS.AsString              := fDMCadContrato.cdsContrato_ConsultaAPEL_EBS.AsString;
    fDMCadContrato.cdsContratoPRE_CONTRATO.AsString          := 'S';
    fDMCadContrato.cdsContratoENCERRADO.AsString             := 'N';
    fDMCadContrato.cdsContratoANO_CONTRATO_ANT.AsInteger     := fDMCadContrato.cdsContrato_ConsultaANO_CONTRATO.AsInteger;
    fDMCadContrato.cdsContratoNUM_CONTRATO_INT_ANT.AsInteger := fDMCadContrato.cdsContrato_ConsultaNUM_CONTRATO_INT.AsInteger;
    fDMCadContrato.cdsContratoNUM_CONTRATO_ANT.AsString      := fDMCadContrato.cdsContrato_ConsultaNUM_CONTRATO.AsString;
    fDMCadContrato.cdsContratoID_ANT.AsInteger               := fDMCadContrato.cdsContrato_ConsultaID.AsInteger;

    fDMCadContrato.vPre_Contrato := True;
    fDMCadContrato.prc_Gravar;
    fDMCadContrato.vPre_Contrato := False;

    if fDMCadContrato.cdsContrato.State in [dsEdit,dsInsert] then
    begin
      MessageDlg(fDMCadContrato.vMsgErro, mtError, [mbno], 0);
      fDMCadContrato.cdsContrato.Cancel;
      exit;
    end;

  except
    on e: Exception do
    begin
      fDMCadContrato.cdsContrato.Cancel;
      Raise Exception.Create('Ocorreu o seguinte erro ao gravar: ' + #13 + e.Message);
    end
  end;
end;

procedure TfrmCadPreContrato.prc_Mover_DadosAssinatura;
begin
  if fDMCadContrato.cdsAssinatura.Locate('ID',fDMCadContrato.cdsContrato_ConsultaID_ASSINATURA.AsInteger,([Locaseinsensitive])) then
  begin
    fDMCadContrato.cdsContratoVLR_UNITARIO.AsFloat := fDMCadContrato.cdsAssinaturaVALOR.AsFloat;
  end
  else
  begin
    fDMCadContrato.cdsContratoID_PERIODO.AsInteger := fDMCadContrato.cdsContrato_ConsultaID_PERIODO.AsInteger;
    fDMCadContrato.cdsContratoVLR_UNITARIO.AsFloat := fDMCadContrato.cdsContrato_ConsultaVLR_UNITARIO.AsFloat;
  end;
end;

procedure TfrmCadPreContrato.prc_Calcular_Valor;
var
  vAux : Real;
begin
  vAux := 0;
  if (fDMCadContrato.cdsContratoQTD.AsInteger > 0) and (fDMCadContrato.cdsContratoVLR_UNITARIO.AsFloat > 0) then
    vAux := fDMCadContrato.cdsContratoQTD.AsInteger * fDMCadContrato.cdsContratoVLR_UNITARIO.AsFloat;
  fDMCadContrato.cdsContratoVLR_TOTAL.AsFloat := StrToFloat(FormatFloat('0.00',vAux));
end;

procedure TfrmCadPreContrato.prc_Le_cdsContrato_Consulta(Tipo: String);
begin
  fDMCadContrato.cdsContrato_Consulta.First;
  while not fDMCadContrato.cdsContrato_Consulta.Eof do
  begin
    if SMDBGrid1.SelectedRows.CurrentRowSelected then
    begin
      try
        if (Tipo = 'P') and (fDMCadContrato.cdsContrato_ConsultaPRE_CONTRATO.AsString <> 'S') and
           (fDMCadContrato.cdsContrato_ConsultaGEROU_PRE_CONTRATO.AsString <> 'S') then
          prc_Gravar_Pre_Contrato
        else
        if (Tipo = 'E') and (fDMCadContrato.cdsContrato_ConsultaPRE_CONTRATO.AsString = 'S') then
        begin
          fDMCadContrato.vPre_Contrato := True;
          prc_Posiciona_Contrato;
          if not fDMCadContrato.cdsContrato.IsEmpty then
            fDMCadContrato.prc_Excluir;
          fDMCadContrato.vPre_Contrato := False;
        end
        else
        if (Tipo = 'A') and (fDMCadContrato.cdsContrato_ConsultaPRE_CONTRATO.AsString = 'S') then
        begin
          fDMCadContrato.vPre_Contrato := True;
          prc_Posiciona_Contrato;
          if not fDMCadContrato.cdsContrato.IsEmpty then
            fDMCadContrato.prc_Ativar_Pre;
          fDMCadContrato.vPre_Contrato := False;
        end;
      except
        on e: Exception do
        begin
          fDMCadContrato.vPre_Contrato := False;
          raise;
        end
      end;
    end;
    fDMCadContrato.cdsContrato_Consulta.Next;
  end;
  btnConsultarClick(nil);
end;

procedure TfrmCadPreContrato.btnAtivar_PreContratoClick(Sender: TObject);
begin
  if not(fDMCadContrato.cdsContrato_Consulta.Active) or (fDMCadContrato.cdsContrato_Consulta.IsEmpty) or (fDMCadContrato.cdsContrato_ConsultaID.AsInteger < 1) then
    exit;

  if MessageDlg('Deseja ativar os Pré Contratos dos itens selecionados?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Le_cdsContrato_Consulta('A');
end;

procedure TfrmCadPreContrato.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Integer;
  ColunaOrdenada: String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMCadContrato.cdsContrato_Consulta.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmCadPreContrato.Edit2Enter(Sender: TObject);
begin
  StaticText3.Caption := 'F2 Consultar   ou   Enter para pesquisar pelo nome';
end;

procedure TfrmCadPreContrato.Edit2Exit(Sender: TObject);
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
      Edit3.Clear;
      exit;
    end
    else
      Edit3.Text := fDMCadContrato.cdsEmpresaRazo.AsString;
  end
  else
    Edit3.Clear;
end;

procedure TfrmCadPreContrato.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F2) then
  begin
    vApel_Pos     := Edit2.Text;
    vNomePes_Pos  := Edit3.Text;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'C';
    frmSel_Pessoa.ShowModal;
    FreeAndNil(frmSel_Pessoa);
    Edit2.Text := vApel_Pos;
    Edit3.Text := vNomePes_Pos;
    Edit2.SetFocus;
  end
  else
  if (Key = VK_RETURN) and (trim(Edit2.Text) = '') then
    Edit3.SetFocus;
end;

procedure TfrmCadPreContrato.Edit3Enter(Sender: TObject);
begin
  StaticText3.Caption := 'Enter para pesquisar pelo nome';
end;

procedure TfrmCadPreContrato.Edit3Exit(Sender: TObject);
begin
  StaticText3.Caption := '';
end;

procedure TfrmCadPreContrato.Edit3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
  begin
    vApel_Pos     := '';
    vNomePes_Pos  := Edit3.Text;
    frmSel_Pessoa := TfrmSel_Pessoa.Create(Self);
    frmSel_Pessoa.vTipo_Pessoa := 'C';
    frmSel_Pessoa.ShowModal;
    FreeAndNil(frmSel_Pessoa);
    Edit2.Text := vApel_Pos;
    edit3.Text := vNomePes_Pos;
    Edit2.SetFocus;
  end;
end;

end.
