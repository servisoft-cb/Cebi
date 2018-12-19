unit UCadAssinatura;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadAssinatura,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask, RXDBCtrl, UCadPeriodo;

type
  TfrmCadAssinatura = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    TS_Cadastro: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    Panel1: TPanel;
    pnlCadastro: TPanel;
    Label1: TLabel;
    DBEdit7: TDBEdit;
    btnConfirmar: TBitBtn;
    btnCancelar: TBitBtn;
    btnAlterar: TBitBtn;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    DBEdit4: TDBEdit;
    StaticText1: TStaticText;
    Panel3: TPanel;
    Label6: TLabel;
    btnConsultar: TBitBtn;
    Edit4: TEdit;
    btnInserir: TBitBtn;
    btnExcluir: TBitBtn;
    UCControls1: TUCControls;
    Label3: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label4: TLabel;
    DBMemo1: TDBMemo;
    Panel4: TPanel;
    SMDBGrid2: TSMDBGrid;
    Label14: TLabel;
    RxDBLookupCombo6: TRxDBLookupCombo;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
    fDMCadAssinatura: TDMCadAssinatura;
    ffrmCadPeriodo : TfrmCadPeriodo;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;

  public
    { Public declarations }

  end;

var
  frmCadAssinatura: TfrmCadAssinatura;

implementation

uses DateUtils, DmdDatabase, rsDBUtils, UMenu, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadAssinatura.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  Action := Cafree;
end;

procedure TfrmCadAssinatura.btnExcluirClick(Sender: TObject);
begin
  if fDMCadAssinatura.cdsAssinatura.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadAssinatura.prc_Excluir_Registro;
begin
  fDMCadAssinatura.prc_Excluir;
end;

procedure TfrmCadAssinatura.prc_Gravar_Registro;
begin
  fDMCadAssinatura.prc_Gravar;
  if fDMCadAssinatura.cdsAssinatura.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadAssinatura.vMsgErro, mtError, [mbno], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
  SMDBGrid2.ReadOnly        := not(SMDBGrid2.ReadOnly);
end;

procedure TfrmCadAssinatura.prc_Inserir_Registro;
begin
  fDMCadAssinatura.prc_Inserir;

  if fDMCadAssinatura.cdsAssinatura.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  SMDBGrid2.ReadOnly     := not(SMDBGrid2.ReadOnly);
  DBEdit7.SetFocus;
end;

procedure TfrmCadAssinatura.FormShow(Sender: TObject);
begin
  fDMCadAssinatura := TDMCadAssinatura.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadAssinatura);
end;

procedure TfrmCadAssinatura.prc_Consultar;
begin
  fDMCadAssinatura.cdsAssinatura.Close;
  fDMCadAssinatura.sdsAssinatura.CommandText := fDMCadAssinatura.ctCommand
                                      + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadAssinatura.sdsAssinatura.CommandText := fDMCadAssinatura.sdsAssinatura.CommandText
                                    + ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadAssinatura.cdsAssinatura.Open;
end;

procedure TfrmCadAssinatura.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadAssinatura.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadAssinatura.cdsAssinatura.State in [dsBrowse]) or not(fDMCadAssinatura.cdsAssinatura.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadAssinatura.cdsAssinatura.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
  SMDBGrid2.ReadOnly        := not(SMDBGrid2.ReadOnly);
end;

procedure TfrmCadAssinatura.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadAssinatura.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadAssinatura.cdsAssinatura.IsEmpty) or not(fDMCadAssinatura.cdsAssinatura.Active) or (fDMCadAssinatura.cdsAssinaturaID.AsInteger < 1) then
    exit;

  fDMCadAssinatura.cdsAssinatura.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  SMDBGrid2.ReadOnly     := not(SMDBGrid2.ReadOnly);
end;

procedure TfrmCadAssinatura.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadAssinatura.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadAssinatura);
end;

procedure TfrmCadAssinatura.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadAssinatura.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadAssinatura.cdsAssinatura);
end;

procedure TfrmCadAssinatura.SpeedButton3Click(Sender: TObject);
begin
  ffrmCadPeriodo := TfrmCadPeriodo.Create(self);
  ffrmCadPeriodo.ShowModal;

  FreeAndNil(ffrmCadPeriodo);

  SpeedButton5Click(Sender);
end;

procedure TfrmCadAssinatura.SpeedButton5Click(Sender: TObject);
begin
  fDMCadAssinatura.cdsPeriodo.Close;
  fDMCadAssinatura.cdsPeriodo.Open;
end;

end.
