unit UCadPeriodo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Buttons, Grids, SMDBGrid, UDMCadPeriodo,
  DBGrids, ExtCtrls, StdCtrls, DB, RzTabs, DBCtrls, ToolEdit, UCBase, RxLookup, Mask,
  RXDBCtrl;

type
  TfrmCadPeriodo = class(TForm)
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
  private
    { Private declarations }
    fDMCadPeriodo: TDMCadPeriodo;

    procedure prc_Inserir_Registro;
    procedure prc_Excluir_Registro;
    procedure prc_Gravar_Registro;
    procedure prc_Consultar;

  public
    { Public declarations }

  end;

var
  frmCadPeriodo: TfrmCadPeriodo;

implementation

uses DateUtils, DmdDatabase, rsDBUtils, UMenu, uUtilPadrao;

{$R *.dfm}

procedure TfrmCadPeriodo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  Action := Cafree;
end;

procedure TfrmCadPeriodo.btnExcluirClick(Sender: TObject);
begin
  if fDMCadPeriodo.cdsPeriodo.IsEmpty then
    exit;

  if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  prc_Excluir_Registro;
end;

procedure TfrmCadPeriodo.prc_Excluir_Registro;
begin
  fDMCadPeriodo.prc_Excluir;
end;

procedure TfrmCadPeriodo.prc_Gravar_Registro;
begin
  fDMCadPeriodo.prc_Gravar;
  if fDMCadPeriodo.cdsPeriodo.State in [dsEdit,dsInsert] then
  begin
    MessageDlg(fDMCadPeriodo.vMsgErro, mtError, [mbno], 0);
    exit;
  end;
  TS_Consulta.TabEnabled    := not(TS_Consulta.TabEnabled);
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadPeriodo.prc_Inserir_Registro;
begin
  fDMCadPeriodo.prc_Inserir;

  if fDMCadPeriodo.cdsPeriodo.State in [dsBrowse] then
    exit;

  RzPageControl1.ActivePage := TS_Cadastro;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
  DBEdit7.SetFocus;
end;

procedure TfrmCadPeriodo.FormShow(Sender: TObject);
begin
  fDMCadPeriodo := TDMCadPeriodo.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMCadPeriodo);
end;

procedure TfrmCadPeriodo.prc_Consultar;
begin
  fDMCadPeriodo.cdsPeriodo.Close;
  fDMCadPeriodo.sdsPeriodo.CommandText := fDMCadPeriodo.ctCommand
                                      + ' WHERE 0 = 0 ';
  if Trim(Edit4.Text) <> '' then
    fDMCadPeriodo.sdsPeriodo.CommandText := fDMCadPeriodo.sdsPeriodo.CommandText
                                    + ' AND NOME LIKE ' + QuotedStr('%'+Edit4.Text+'%');
  fDMCadPeriodo.cdsPeriodo.Open;
end;

procedure TfrmCadPeriodo.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmCadPeriodo.btnCancelarClick(Sender: TObject);
begin
  if (fDMCadPeriodo.cdsPeriodo.State in [dsBrowse]) or not(fDMCadPeriodo.cdsPeriodo.Active) then
  begin
    RzPageControl1.ActivePage := TS_Consulta;
    exit;
  end;

  if MessageDlg('Deseja cancelar alteração/inclusão do registro?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  fDMCadPeriodo.cdsPeriodo.CancelUpdates;
  TS_Consulta.TabEnabled    := True;
  RzPageControl1.ActivePage := TS_Consulta;
  pnlCadastro.Enabled       := not(pnlCadastro.Enabled);
  btnConfirmar.Enabled      := not(btnConfirmar.Enabled);
  btnAlterar.Enabled        := not(btnAlterar.Enabled);
end;

procedure TfrmCadPeriodo.SMDBGrid1DblClick(Sender: TObject);
begin
  RzPageControl1.ActivePage := TS_Cadastro;
end;

procedure TfrmCadPeriodo.btnAlterarClick(Sender: TObject);
begin
  if (fDMCadPeriodo.cdsPeriodo.IsEmpty) or not(fDMCadPeriodo.cdsPeriodo.Active) or (fDMCadPeriodo.cdsPeriodoID.AsInteger < 1) then
    exit;

  fDMCadPeriodo.cdsPeriodo.Edit;

  TS_Consulta.TabEnabled := False;
  btnAlterar.Enabled     := False;
  btnConfirmar.Enabled   := True;
  pnlCadastro.Enabled    := True;
end;

procedure TfrmCadPeriodo.btnConfirmarClick(Sender: TObject);
begin
  prc_Gravar_Registro;
end;

procedure TfrmCadPeriodo.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMCadPeriodo);
end;

procedure TfrmCadPeriodo.btnInserirClick(Sender: TObject);
begin
  prc_Inserir_Registro;
end;

procedure TfrmCadPeriodo.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := fnc_Encerrar_Tela(fDMCadPeriodo.cdsPeriodo);
end;

end.
