unit uEncerraContrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RzTabs, StdCtrls, DBCtrls, RxDBComb, RxLookup, db,
  Mask, Grids, DateUtils, DBGrids, SMDBGrid, Buttons, ExtCtrls, UCBase, uDmCadContrato, uDmEBS,
  ToolEdit, RXDBCtrl, UCadAssinatura, UCadPeriodo, CurrEdit, URelContrato;

type
  TfrmEncerraContrato = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    Panel3: TPanel;
    btnConsultar: TBitBtn;
    Panel2: TPanel;
    btnEncerrar: TBitBtn;
    SMDBGrid1: TSMDBGrid;
    StaticText1: TStaticText;
    Label7: TLabel;
    DateEdit5: TDateEdit;
    Label18: TLabel;
    lblQtdEncerrado: TLabel;
    UCControls1: TUCControls;
    Shape4: TShape;
    Label29: TLabel;
    Shape5: TShape;
    Label30: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEncerrarClick(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
    fDMCadContrato: TDMCadContrato;
    fDMEBS: TDMEBS;
    ffrmCadAssinatura : TfrmCadAssinatura;
    ffrmCadPeriodo : TfrmCadPeriodo;

    vQtdEncerrado : Integer;

    procedure prc_Consultar;
    procedure prc_Posiciona_Contrato;

    procedure prc_Encerrar_Contrato;

  public
    { Public declarations }
  end;

var
  frmEncerraContrato: TfrmEncerraContrato;

implementation

uses UMenu, DmdDatabase, rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmEncerraContrato.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmEncerraContrato.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadContrato);
  FreeAndNil(fDMEBS);
end;

procedure TfrmEncerraContrato.FormShow(Sender: TObject);
begin
  fDMCadContrato := TDMCadContrato.Create(Self);
  fDMEBS         := TDMEBS.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadContrato);
end;

procedure TfrmEncerraContrato.btnEncerrarClick(Sender: TObject);
begin
  if not(fDMCadContrato.cdsContrato_Consulta.Active) or (fDMCadContrato.cdsContrato_Consulta.IsEmpty) or (fDMCadContrato.cdsContrato_ConsultaID.AsInteger < 1) then
    exit;

  if MessageDlg('Deseja encerrar os contratos selecionados?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  vQtdEncerrado := 0;
  fDMCadContrato.cdsContrato_Consulta.First;
  while not fDMCadContrato.cdsContrato_Consulta.Eof do
  begin
    
    if SMDBGrid1.SelectedRows.CurrentRowSelected then
    begin
      prc_Posiciona_Contrato;
      if not fDMCadContrato.cdsContrato.IsEmpty then
        prc_Encerrar_Contrato;
    end;

    fDMCadContrato.cdsContrato_Consulta.Next;
  end;
  btnConsultarClick(Sender);

  lblQtdEncerrado.Caption := FormatFloat('0',vQtdEncerrado);
end;

procedure TfrmEncerraContrato.btnConsultarClick(Sender: TObject);
begin
  if DateEdit5.Date < 10 then
  begin
    ShowMessage('Data de encerramento não foi informada!');
    exit;
  end;
  if DateEdit5.Date >= Date then
  begin
    ShowMessage('Data de encerramento inválida, data aceita é igual ou menor que:' + DateToStr(Date - 1));
    exit;
  end;

  prc_Consultar;
end;

procedure TfrmEncerraContrato.prc_Consultar;
begin
  fDMCadContrato.cdsContrato_Consulta.Close;
  fDMCadContrato.sdsContrato_Consulta.CommandText := fDMCadContrato.ctContrato_Consulta
                                                   + ' WHERE ENCERRADO = ' + QuotedStr('N')
                                                   + '   AND PRE_CONTRATO = ' + QuotedStr('N')
                                                   + '   AND DTENCERRAMENTO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit5.date));
  fDMCadContrato.cdsContrato_Consulta.Open;
end;

procedure TfrmEncerraContrato.FormCloseQuery(Sender: TObject;
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

procedure TfrmEncerraContrato.Edit4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = Vk_Return then
    btnConsultarClick(Sender);
end;

procedure TfrmEncerraContrato.SMDBGrid1GetCellParams(Sender: TObject;
  Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if fDMCadContrato.cdsContrato_ConsultaGEROU_PRE_CONTRATO.AsString = 'A' then
    Background := $00408080
  else
  if (fDMCadContrato.cdsContrato_ConsultaDTENCERRAMENTO.AsDateTime > 10 ) and (fDMCadContrato.cdsContrato_ConsultaDTENCERRAMENTO.AsDateTime < Date) then
    Background := $00404080;
end;

procedure TfrmEncerraContrato.prc_Posiciona_Contrato;
begin
  fDMCadContrato.prc_Localizar(fDMCadContrato.cdsContrato_ConsultaID.AsInteger);
end;

procedure TfrmEncerraContrato.SMDBGrid1TitleClick(Column: TColumn);
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

procedure TfrmEncerraContrato.prc_Encerrar_Contrato;
begin
  try
    fDMCadContrato.cdsContrato.Edit;
    fDMCadContrato.cdsContratoENCERRADO.AsString := 'S';
    fDMCadContrato.cdsContratoDTBAIXA.AsDateTime := Date;
    fDMCadContrato.cdsContrato.Post;
    fDMCadContrato.cdsContrato.ApplyUpdates(0);

    vQtdEncerrado := vQtdEncerrado + 1;

  except
    on E: exception do
    begin
      raise Exception.Create('Erro ao gravar o encerramento do contrato:' + #13 +
                             'Mensagem: ' + E.Message);
    end;
  end;
end;

end.
