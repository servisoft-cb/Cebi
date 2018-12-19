unit uConsContrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RzTabs, StdCtrls, DBCtrls, RxDBComb, RxLookup, db,
  Mask, Grids, DateUtils, DBGrids, SMDBGrid, Buttons, ExtCtrls, UCBase, uDmCadContrato, uDmEBS,
  ToolEdit, RXDBCtrl, CurrEdit, SqlExpr, NxCollection, RzPrgres, RzPanel;

type
  TfrmConsContrato = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    Panel3: TPanel;
    Label6: TLabel;
    Panel2: TPanel;
    SMDBGrid1: TSMDBGrid;
    Label13: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
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
    Label23: TLabel;
    CurrencyEdit2: TCurrencyEdit;
    Shape1: TShape;
    Label1: TLabel;
    Shape3: TShape;
    Label8: TLabel;
    Shape4: TShape;
    Label9: TLabel;
    Edit1: TEdit;
    btnConsultar: TNxButton;
    ckNotificacao: TCheckBox;
    RzProgressBar1: TRzProgressBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
  private
    { Private declarations }
    fDMCadContrato: TDMCadContrato;
    fDMEBS: TDMEBS;
    vQtdTotal, vQtdEncerrado, vQtdAtivo, vQtdPre : Integer;

    procedure prc_Consultar;
    procedure prc_Le_Consulta;
    procedure prc_Limpa_Totais;

    function fnc_Posicionar_Empresa : Boolean;
    function fnc_Posicionar_Endereco : Boolean;

  public
    { Public declarations }
  end;

var
  frmConsContrato: TfrmConsContrato;

implementation

uses UMenu, DmdDatabase, rsDBUtils, uUtilPadrao, DmdDatabase_EBS;

{$R *.dfm}

procedure TfrmConsContrato.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsContrato.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadContrato);
  FreeAndNil(fDMEBS);
end;

procedure TfrmConsContrato.FormShow(Sender: TObject);
begin
  fDMCadContrato := TDMCadContrato.Create(Self);
  fDMEBS         := TDMEBS.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadContrato);
end;

procedure TfrmConsContrato.btnConsultarClick(Sender: TObject);
begin
  SMDBGrid1.DisableScroll;
  prc_Consultar;
  prc_Le_Consulta;
  SMDBGrid1.EnableScroll;
  ShowMessage('Consulta Gerada!');
  RzProgressBar1.Visible := False;
end;

procedure TfrmConsContrato.prc_Consultar;
begin
  fDMCadContrato.cdsContrato_Consulta.Close;
  fDMCadContrato.sdsContrato_Consulta.CommandText := fDMCadContrato.ctContrato_Consulta;
  fDMCadContrato.sdsContrato_Consulta.CommandText := fDMCadContrato.sdsContrato_Consulta.CommandText + ' WHERE 1 = 1';
  if trim(Edit1.Text) <> '' then
    fDMCadContrato.sdsContrato_Consulta.CommandText := fDMCadContrato.sdsContrato_Consulta.CommandText
                                                     + ' AND PES.NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%');
  //if RxDBLookupCombo5.Text <> '' then
  //  fDMCadContrato.sdsContrato_Consulta.CommandText := fDMCadContrato.sdsContrato_Consulta.CommandText
  //                                                   + ' AND CT.APEL_EBS = ' + QuotedStr(RxDBLookupCombo5.Value);
  if RxDBLookupCombo4.Text <> '' then
    fDMCadContrato.sdsContrato_Consulta.CommandText := fDMCadContrato.sdsContrato_Consulta.CommandText
                                                     + ' AND CT.ID_ASSINATURA = ' + IntToStr(RxDBLookupCombo4.KeyValue);
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

procedure TfrmConsContrato.FormCloseQuery(Sender: TObject;
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

procedure TfrmConsContrato.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmConsContrato.prc_Le_Consulta;
var
  vGerar : Boolean;
  vExisteApel : Boolean;
  vExisteEnd : Boolean;
begin
  RzProgressBar1.Visible := True;
  Refresh;
  prc_Limpa_Totais;
  fDMCadContrato.mConsulta.EmptyDataSet;
  RzProgressBar1.TotalParts    := fDMCadContrato.cdsContrato_Consulta.RecordCount;
  RzProgressBar1.PartsComplete := 0;
  fDMCadContrato.cdsContrato_Consulta.First;
  while not fDMCadContrato.cdsContrato_Consulta.Eof do
  begin
    RzProgressBar1.PartsComplete := RzProgressBar1.PartsComplete + 1;
    if not ckNotificacao.Checked then
      vGerar := True
    else
    if ckNotificacao.Checked then
    begin
      vGerar      := False;
      vExisteApel := fnc_Posicionar_Empresa;
      vExisteEnd  := fnc_Posicionar_Endereco;
      if not(vExisteApel) or not(vExisteEnd) then
        vGerar := True;
      if not vGerar then
      begin
        if fDMCadContrato.mConsultaFone_EBS.AsString <> fDMCadContrato.cdsEmpresaFone1.AsString then
          vGerar := True;
        if fDMCadContrato.mConsultaEmailNFe_EBS.AsString <> fDMCadContrato.cdsEmpresaemail_nfe.AsString then
          vGerar := True;
      end;
    end;
    if vGerar then
    begin
      fDMCadContrato.mConsulta.Insert;
      fDMCadContrato.mConsultaNumContrato.AsString    := fDMCadContrato.cdsContrato_ConsultaNUM_CONTRATO.AsString;
      fDMCadContrato.mConsultaID_Cliente.AsInteger    := fDMCadContrato.cdsContrato_ConsultaID_CLIENTE.AsInteger;
      fDMCadContrato.mConsultaNomeCliente.AsString    := fDMCadContrato.cdsContrato_ConsultaNOMECLIENTE.AsString;
      fDMCadContrato.mConsultaApel_EBS.AsString       := fDMCadContrato.cdsContrato_ConsultaAPEL_EBS.AsString;
      fDMCadContrato.mConsultaDtContrato.AsDateTime   := fDMCadContrato.cdsContrato_ConsultaDTCONTRATO.AsDateTime;
      fDMCadContrato.mConsultaNomeAssinatura.AsString := fDMCadContrato.cdsContrato_ConsultaNOMEASSINATURA.AsString;
      fDMCadContrato.mConsultaFone.AsString           := fDMCadContrato.cdsContrato_ConsultaTELEFONE1_FB.AsString;
      fDMCadContrato.mConsultaEmailNFe.AsString       := fDMCadContrato.cdsContrato_ConsultaEMAIL_NFE_FB.AsString;

      fDMCadContrato.mConsultaExisteApel.AsBoolean    := fnc_Posicionar_Empresa;
      fDMCadContrato.mConsultaFone_EBS.AsString       := fDMCadContrato.cdsEmpresaFone1.AsString;
      fDMCadContrato.mConsultaEmailNFe_EBS.AsString   := fDMCadContrato.cdsEmpresaemail_nfe.AsString;

      fDMCadContrato.mConsultaExisteEnd.AsBoolean     := fnc_Posicionar_Endereco;

      fDMCadContrato.mConsulta.Post;
    end;

    fDMCadContrato.cdsContrato_Consulta.Next;
  end;
end;

function TfrmConsContrato.fnc_Posicionar_Empresa: Boolean;
var
  sds: TSQLDataSet;
begin
  Result := False;
  fDMEBS.cdsEmpresa.Close;
  fDMEBS.sdsEmpresa.CommandText := ctEmpresa
                                 + '  WHERE((Apel = ' + QuotedStr(fDMCadContrato.cdsContrato_ConsultaAPEL_EBS.AsString) + '))';
                                 //+ '   OR (Apel = ' + QuotedStr(fDMCadContrato.cdsContrato_ConsultaAPEL_EBS.AsString+' ') + '))';
  fDMEBS.cdsEmpresa.Open;
  //if not(fDMEBS.cdsEmpresa.IsEmpty) and (trim(fDMEBS.cdsEmpresaApel.AsString) = trim(fDMCadContrato.mConsultaApel_EBS.AsString)) then
  if not(fDMEBS.cdsEmpresa.IsEmpty) then
    Result := True
  else
  begin
    fDMEBS.cdsEmpresa.Close;
    fDMEBS.sdsEmpresa.CommandText := ctEmpresa
                                   + '   WHERE (Apel = ' + QuotedStr(fDMCadContrato.cdsContrato_ConsultaAPEL_EBS.AsString+' ') + ')';
    fDMEBS.cdsEmpresa.Open;
    if not(fDMEBS.cdsEmpresa.IsEmpty) then
      Result := True
  end;

  {sds := TSQLDataSet.Create(nil);
  sds.GetMetadata := False;
  sds.NoMetadata  := True;
  try
    sds.SQLConnection := dmDatabase_EBS.Conexao_MSSQL; //--
    sds.Close;
    sds.CommandText := 'SELECT [Apel], [Razão], [Fone1], [email_nfe] FROM [FOX_00001].[dbo].[Empresas] '
                     + '  WHERE((Apel =  ' +  QuotedStr(fDMCadContrato.cdsContrato_ConsultaAPEL_EBS.AsString) + '))';
                     //+ '   OR (Apel =  '  + QuotedStr(fDMCadContrato.cdsContrato_ConsultaAPEL_EBS.AsString+' ') + '))';
    sds.Open;
    if not(sds.IsEmpty) then
      Result := True;
  finally
    FreeAndNil(sds);
  end;}
end;

function TfrmConsContrato.fnc_Posicionar_Endereco: Boolean;
begin
  Result := False;
  fDMEBS.cdsEmpresa_Endereco.Close;
  fDMEBS.sdsEmpresa_Endereco.CommandText := ctEmpresaEndereco
                                // + '  WHERE((Apel = ' + QuotedStr(fDMCadContrato.mConsultaApel_EBS.AsString) + ')'
                                // + '   OR (Apel = ' + QuotedStr(fDMCadContrato.mConsultaApel_EBS.AsString+' ') + '))'
                                 + '  WHERE((Apel = ' + QuotedStr(fDMCadContrato.cdsContrato_ConsultaAPEL_EBS.AsString) + ')'
                                 + '   OR (Apel = ' + QuotedStr(fDMCadContrato.cdsContrato_ConsultaAPEL_EBS.AsString+' ') + '))'
                                 + '   AND Tipo = ' + QuotedStr('Entrega');
  fDMEBS.cdsEmpresa_Endereco.Open;
  //if not(fDMEBS.cdsEmpresa_Endereco.IsEmpty) and ((fDMEBS.cdsEmpresa_EnderecoApel.AsString = fDMCadContrato.mConsultaApel_EBS.AsString) or (fDMEBS.cdsEmpresa_EnderecoApel.AsString = fDMCadContrato.mConsultaApel_EBS.AsString+' ')) then
  if not(fDMEBS.cdsEmpresa_Endereco.IsEmpty) then
    Result := True;
end;

procedure TfrmConsContrato.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if not fDMCadContrato.mConsultaExisteApel.AsBoolean then
  begin
    Background  := clRed;
    AFont.Color := clWhite;
  end
  else
  if not fDMCadContrato.mConsultaExisteEnd.AsBoolean then
    Background := clYellow
  else
  if trim(fDMCadContrato.mConsultaEmailNFe_EBS.AsString) <> '' then
  begin
    if fDMCadContrato.mConsultaEmailNFe_EBS.AsString <> fDMCadContrato.mConsultaEmailNFe.AsString then
    begin
      Background  := $008CFFC6;
      AFont.Color := clBlack;
    end;
  end
  else
  if trim(fDMCadContrato.mConsultaFone_EBS.AsString) <> '' then
  begin
    if fDMCadContrato.mConsultaFone_EBS.AsString <> fDMCadContrato.mConsultaFone.AsString then
    begin
      Background  := $0097B9FF;
      AFont.Color := clBlack;
    end;
  end;
end;

procedure TfrmConsContrato.prc_Limpa_Totais;
begin
  vQtdAtivo     := 0;
  vQtdEncerrado := 0;
  vQtdPre       := 0;
  vQtdTotal     := 0;
end;

end.
