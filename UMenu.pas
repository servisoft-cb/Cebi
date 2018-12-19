unit UMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, ComCtrls,
  ToolWin, Menus, UCBase, UCDBXConn, ActnList, ImgList, ShellAPI, UCadAssinatura, UCadPessoa, UCadPeriodo, UGArqBlocagem,
  UCadContrato, UConvCliente, UCadPreContrato, UEncerraContrato, UConsEstoque, UConsContrato, RLConsts,
  jpeg, ExtCtrls;

type
  TfMenu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Sobre1: TMenuItem;
    UCDBXConn1: TUCDBXConn;
    UserControl1: TUserControl;
    UCSettings1: TUCSettings;
    Administrao1: TMenuItem;
    CadastrodeUsurios1: TMenuItem;
    PerfildeUsurios1: TMenuItem;
    LogdoSistema1: TMenuItem;
    N1: TMenuItem;
    rocarSenha1: TMenuItem;
    EfetuarLogoff1: TMenuItem;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    ImageList1: TImageList;
    N3: TMenuItem;
    N5: TMenuItem;
    N7: TMenuItem;
    Assinatura1: TMenuItem;
    Perodo1: TMenuItem;
    GeraoArquivoBlocagem1: TMenuItem;
    Inserir1: TMenuItem;
    N2: TMenuItem;
    Contrato1: TMenuItem;
    N4: TMenuItem;
    ImportarClientes1: TMenuItem;
    PrContrato1: TMenuItem;
    EtiquetasBlocagem1: TMenuItem;
    N6: TMenuItem;
    EncerrarContrato1: TMenuItem;
    ConsultaEstoqueContratosGerados1: TMenuItem;
    N8: TMenuItem;
    Pessoa1: TMenuItem;
    N9: TMenuItem;
    VerificaClienteeEndereo1: TMenuItem;
    N10: TMenuItem;
    ConsutlasRealtrios1: TMenuItem;
    Contratos1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EfetuarLogoff1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Sobre1Click(Sender: TObject);
    procedure Assinatura1Click(Sender: TObject);
    procedure Perodo1Click(Sender: TObject);
    procedure GeraoArquivoBlocagem1Click(Sender: TObject);
    procedure Contrato1Click(Sender: TObject);
    procedure ImportarClientes1Click(Sender: TObject);
    procedure PrContrato1Click(Sender: TObject);
    procedure EtiquetasBlocagem1Click(Sender: TObject);
    procedure EncerrarContrato1Click(Sender: TObject);
    procedure ConsultaEstoqueContratosGerados1Click(Sender: TObject);
    procedure Pessoa1Click(Sender: TObject);
    procedure VerificaClienteeEndereo1Click(Sender: TObject);
    procedure Contratos1Click(Sender: TObject);
  private
    { Private declarations }

    //ffrmCadPais: TfrmCadPais;
    procedure OpenForm(FClass: TFormClass; vEstado: TWindowState; TipoPessoa : String = '');
  public
    { Public declarations }
  end;

var
  fMenu: TfMenu;

implementation

uses DmdDatabase, uFrmSobre, uEtiqBlocagem, UConsGeral;

{$R *.dfm}

procedure TfMenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfMenu.OpenForm(FClass: TFormClass; vEstado: TWindowState; TipoPessoa : String = '');
var
  existe: TForm;
  j: Byte;
begin
  existe := nil;
  for j := 0 to Screen.FormCount - 1 do
  begin
    if Screen.Forms[j] is FClass then
      existe := Screen.Forms[j];
  end;

  if not (existe = nil) then
  begin
    existe.BringToFront;
    existe.SetFocus;
  end
  else
  begin
    Application.CreateForm(FClass,existe);
    existe.FormStyle := fsMDIChild;
    existe.Show;
  end;
  existe.WindowState := vEstado;
end;

procedure TfMenu.EfetuarLogoff1Click(Sender: TObject);
begin
  UserControl1.Logoff;
end;

procedure TfMenu.FormCreate(Sender: TObject);
begin
  UserControl1.Execute;
end;

procedure TfMenu.Action1Execute(Sender: TObject);
begin
//  frmCadCidade.btnInserirClick(Sender);
end;

procedure TfMenu.ToolButton3Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfMenu.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if MessageDlg('Encerrar o programa CEBI?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    CanClose := False
  else
    CanClose := True;
end;

procedure TfMenu.Sobre1Click(Sender: TObject);
begin
  frmSobre := TfrmSobre.Create(Self);
  frmSobre.ShowModal;
end;

procedure TfMenu.Assinatura1Click(Sender: TObject);
begin
  OpenForm(TfrmCadAssinatura,wsMaximized);
end;

procedure TfMenu.Perodo1Click(Sender: TObject);
begin
  OpenForm(TfrmCadPeriodo,wsMaximized);
end;

procedure TfMenu.GeraoArquivoBlocagem1Click(Sender: TObject);
begin
  OpenForm(TfrmGArqBlocagem,wsMaximized);
end;

procedure TfMenu.Contrato1Click(Sender: TObject);
begin
  OpenForm(TfrmCadContrato,wsMaximized);
end;

procedure TfMenu.ImportarClientes1Click(Sender: TObject);
begin
  OpenForm(TfConvCliente,wsMaximized);
end;

procedure TfMenu.PrContrato1Click(Sender: TObject);
begin
  OpenForm(TfrmCadPreContrato,wsMaximized);
end;

procedure TfMenu.EtiquetasBlocagem1Click(Sender: TObject);
begin
  frmEtiqBlocagem := TfrmEtiqBlocagem.Create(Self);
  frmEtiqBlocagem.ShowModal;
end;

procedure TfMenu.EncerrarContrato1Click(Sender: TObject);
begin
  OpenForm(TfrmEncerraContrato,wsMaximized);
end;

procedure TfMenu.ConsultaEstoqueContratosGerados1Click(Sender: TObject);
begin
  OpenForm(TfrmConsEstoque,wsMaximized);
end;

procedure TfMenu.Pessoa1Click(Sender: TObject);
begin
  OpenForm(TfrmCadPessoa,wsMaximized);
end;

procedure TfMenu.VerificaClienteeEndereo1Click(Sender: TObject);
begin
  OpenForm(TfrmConsContrato,wsMaximized);
end;

procedure TfMenu.Contratos1Click(Sender: TObject);
begin
  OpenForm(TfrmConsGeral,wsMaximized);
end;

initialization
  RLConsts.SetVersion(3,72,'B');

end.
