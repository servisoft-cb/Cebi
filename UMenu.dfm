object fMenu: TfMenu
  Left = 264
  Top = 182
  Width = 753
  Height = 480
  Caption = 'fMenu'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 176
    Top = 104
    object Cadastro1: TMenuItem
      Caption = 'Manuten'#231#227'o'
      ImageIndex = 0
      object Assinatura1: TMenuItem
        Caption = 'Assinatura'
        OnClick = Assinatura1Click
      end
      object Perodo1: TMenuItem
        Caption = 'Per'#237'odo'
        OnClick = Perodo1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object GeraoArquivoBlocagem1: TMenuItem
        Caption = 'Gera'#231#227'o Arquivo Blocagem'
        OnClick = GeraoArquivoBlocagem1Click
      end
      object EtiquetasBlocagem1: TMenuItem
        Caption = 'Etiquetas Blocagem'
        OnClick = EtiquetasBlocagem1Click
      end
      object N8: TMenuItem
        Caption = '-'
      end
      object ConsultaEstoqueContratosGerados1: TMenuItem
        Caption = 'Consulta Estoque (Contratos Gerados)'
        OnClick = ConsultaEstoqueContratosGerados1Click
      end
      object Pessoa1: TMenuItem
        Caption = 'Pessoa'
        OnClick = Pessoa1Click
      end
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Inserir1: TMenuItem
      Caption = 'Vendas'
      object Contrato1: TMenuItem
        Caption = 'Contrato'
        OnClick = Contrato1Click
      end
      object PrContrato1: TMenuItem
        Caption = 'Pr'#233' Contrato'
        OnClick = PrContrato1Click
      end
      object N6: TMenuItem
        Caption = '-'
      end
      object EncerrarContrato1: TMenuItem
        Caption = 'Encerrar Contrato'
        OnClick = EncerrarContrato1Click
      end
      object N9: TMenuItem
        Caption = '-'
      end
      object VerificaClienteeEndereo1: TMenuItem
        Caption = 'Verifica Cliente e Endere'#231'o de Entrega'
        OnClick = VerificaClienteeEndereo1Click
      end
    end
    object N10: TMenuItem
      Caption = '-'
    end
    object ConsutlasRealtrios1: TMenuItem
      Caption = 'Consultas/Realt'#243'rios'
      object Contratos1: TMenuItem
        Caption = 'Contratos'
        OnClick = Contratos1Click
      end
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object Administrao1: TMenuItem
      Caption = 'Administra'#231#227'o'
      object CadastrodeUsurios1: TMenuItem
        Caption = 'Cadastro de Usu'#225'rios'
      end
      object PerfildeUsurios1: TMenuItem
        Caption = 'Perfil de Usu'#225'rios'
      end
      object LogdoSistema1: TMenuItem
        Caption = 'Log do Sistema'
      end
      object N4: TMenuItem
        Caption = '-'
      end
      object ImportarClientes1: TMenuItem
        Caption = 'Importar Clientes do Sistema Ant'
        OnClick = ImportarClientes1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object rocarSenha1: TMenuItem
        Caption = 'Trocar Senha'
      end
      object EfetuarLogoff1: TMenuItem
        Caption = 'Efetuar Logoff'
        OnClick = EfetuarLogoff1Click
      end
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object Sobre1: TMenuItem
      Caption = 'Sobre'
      OnClick = Sobre1Click
    end
  end
  object UCDBXConn1: TUCDBXConn
    Connection = dmDatabase.scoDados
    Left = 456
    Top = 24
  end
  object UserControl1: TUserControl
    AutoStart = True
    ApplicationID = 'NewProject'
    ControlRight.MainMenu = MainMenu1
    UsersForm.MenuItem = CadastrodeUsurios1
    UsersForm.UsePrivilegedField = False
    UsersForm.ProtectAdmin = True
    EncryptKey = 0
    NotAllowedItems.MenuVisible = True
    NotAllowedItems.ActionVisible = True
    Login.AutoLogon.Active = False
    Login.AutoLogon.MessageOnError = True
    Login.InitialLogin.User = 'servisoft'
    Login.InitialLogin.Email = 'qmd@usercontrol.com.br'
    Login.InitialLogin.Password = '3597'
    Login.MaxLoginAttempts = 0
    Login.GetLoginName = lnNone
    LogControl.Active = False
    LogControl.TableLog = 'UCLog'
    ExtraRight = <
      item
        FormName = 'frmCadPercSimples'
        CompName = 'btnInserir'
        Caption = 'Inserir'
        GroupName = 'Percentual Simples'
      end
      item
        FormName = 'frmCadPercSimples'
        CompName = 'btnExcluir'
        Caption = 'Excluir'
        GroupName = 'Percentual Simples'
      end
      item
        FormName = 'frmCadPercSimples'
        CompName = 'btnAlterar'
        Caption = 'Alterar'
        GroupName = 'Percentual Simples'
      end
      item
        FormName = 'frmCadTab_Cofins'
        CompName = 'btnInserir'
        Caption = 'Inserir'
        GroupName = 'Cofins'
      end
      item
        FormName = 'frmCadTab_Cofins'
        CompName = 'btnExcluir'
        Caption = 'Excluir'
        GroupName = 'Cofins'
      end
      item
        FormName = 'frmCadTab_Cofins'
        CompName = 'btnAlterar'
        Caption = 'Alterar'
        GroupName = 'Cofins'
      end
      item
        FormName = 'frmCadPis'
        CompName = 'btnInserir'
        Caption = 'Inserir'
        GroupName = 'Pis'
      end
      item
        FormName = 'frmCadPis'
        CompName = 'btnExcluir'
        Caption = 'Excluir'
        GroupName = 'Pis'
      end
      item
        FormName = 'frmCadPis'
        CompName = 'btnAlterar'
        Caption = 'Alterar'
        GroupName = 'Pis'
      end
      item
        FormName = 'frmCadCSTIcms'
        CompName = 'btnInserir'
        Caption = 'Inserir'
        GroupName = 'CST ICMS'
      end
      item
        FormName = 'frmCadCSTIcms'
        CompName = 'btnExcluir'
        Caption = 'Excluir'
        GroupName = 'CST ICMS'
      end
      item
        FormName = 'frmCadCSTIcms'
        CompName = 'btnAlterar'
        Caption = 'Alterar'
        GroupName = 'CST ICMS'
      end
      item
        FormName = 'frmCadUnidade'
        CompName = 'btnInserir'
        Caption = 'Inserir'
        GroupName = 'Unidade de Medida'
      end
      item
        FormName = 'frmCadUnidade'
        CompName = 'btnExcluir'
        Caption = 'Excluir'
        GroupName = 'Unidade de Medida'
      end
      item
        FormName = 'frmCadUnidade'
        CompName = 'btnAlterar'
        Caption = 'Alterar'
        GroupName = 'Unidade de Medida'
      end
      item
        FormName = 'frmCadPais'
        CompName = 'btnInserir'
        Caption = 'Inserir'
        GroupName = 'Pais'
      end
      item
        FormName = 'frmCadPais'
        CompName = 'btnExcluir'
        Caption = 'Excluir'
        GroupName = 'Pais'
      end
      item
        FormName = 'frmCadPais'
        CompName = 'btnAlterar'
        Caption = 'Alterar'
        GroupName = 'Pais'
      end
      item
        FormName = 'frmCadCSTIpi'
        CompName = 'btnInserir'
        Caption = 'Inserir'
        GroupName = 'CST IPI'
      end
      item
        FormName = 'frmCadCSTIpi'
        CompName = 'btnExcluir'
        Caption = 'Excluir'
        GroupName = 'CST IPI'
      end
      item
        FormName = 'frmCadCSTIpi'
        CompName = 'btnAlterar'
        Caption = 'Alterar'
        GroupName = 'CST IPI'
      end
      item
        FormName = 'frmCadCFOP'
        CompName = 'btnInserir'
        Caption = 'Inserir'
        GroupName = 'CFOP'
      end
      item
        FormName = 'frmCadCFOP'
        CompName = 'btnExcluir'
        Caption = 'Excluir'
        GroupName = 'CFOP'
      end
      item
        FormName = 'frmCadCFOP'
        CompName = 'btnAlterar'
        Caption = 'Alterar'
        GroupName = 'CFOP'
      end
      item
        FormName = 'frmCadCondPgto'
        CompName = 'btnInserir'
        Caption = 'Inserir'
        GroupName = 'Cond. Pgto.'
      end
      item
        FormName = 'frmCadCondPgto'
        CompName = 'btnExcluir'
        Caption = 'Excluir'
        GroupName = 'Cond. Pgto.'
      end
      item
        FormName = 'frmCadCondPgto'
        CompName = 'btnAlterar'
        Caption = 'Alterar'
        GroupName = 'Cond. Pgto.'
      end
      item
        FormName = 'frmCadCidade'
        CompName = 'btnExcluir'
        Caption = 'Excluir'
        GroupName = 'Cidades'
      end
      item
        FormName = 'frmCadCidade'
        CompName = 'btnInserir'
        Caption = 'Inserir'
        GroupName = 'Cidades'
      end
      item
        FormName = 'frmCadCidade'
        CompName = 'btnAlterar'
        Caption = 'Alterar'
        GroupName = 'Cidades'
      end
      item
        FormName = 'frmCadFilial'
        CompName = 'btnInserir'
        Caption = 'Inserir'
        GroupName = 'Filiais'
      end
      item
        FormName = 'frmCadFilial'
        CompName = 'btnExcluir'
        Caption = 'Excluir'
        GroupName = 'Filiais'
      end
      item
        FormName = 'frmCadFilial'
        CompName = 'btnAlterar'
        Caption = 'Alterar'
        GroupName = 'Filiais'
      end
      item
        FormName = 'frmCadNCM'
        CompName = 'btnInserir'
        Caption = 'Inserir'
        GroupName = 'NCM'
      end
      item
        FormName = 'frmCadNCM'
        CompName = 'btnExcluir'
        Caption = 'Excluir'
        GroupName = 'NCM'
      end
      item
        FormName = 'frmCadNCM'
        CompName = 'btnAlterar'
        Caption = 'Alterar'
        GroupName = 'NCM'
      end
      item
        FormName = 'frmCadNFe_Inutilizacao'
        CompName = 'btnInserir'
        Caption = 'Inserir'
        GroupName = 'Inutilizar NFe'
      end
      item
        FormName = 'frmCadNFe_Inutilizacao'
        CompName = 'btnExcluir'
        Caption = 'Excluir'
        GroupName = 'Inutilizar NFe'
      end
      item
        FormName = 'frmCadNotaFiscal'
        CompName = 'btnInserir'
        Caption = 'Inserir'
        GroupName = 'Nota Fiscal'
      end
      item
        FormName = 'frmCadNotaFiscal'
        CompName = 'btnExcluir'
        Caption = 'Excluir'
        GroupName = 'Nota Fiscal'
      end
      item
        FormName = 'frmCadNotaFiscal'
        CompName = 'btnAlterar'
        Caption = 'Alterar'
        GroupName = 'Nota Fiscal'
      end
      item
        FormName = 'frmCadNotaFiscal'
        CompName = 'btnCCe'
        Caption = 'Carta de Corre'#231#227'o'
        GroupName = 'Nota Fiscal'
      end
      item
        FormName = 'frmCadNotaFiscal'
        CompName = 'btnCancelar_Nota'
        Caption = 'Cancelar Nota'
        GroupName = 'Nota Fiscal'
      end
      item
        FormName = 'frmCadObs_Aux'
        CompName = 'btnInserir'
        Caption = 'Inserir'
        GroupName = 'Observa'#231#227'o Auxiliar'
      end
      item
        FormName = 'frmCadObs_Aux'
        CompName = 'btnExcluir'
        Caption = 'Excluir'
        GroupName = 'Observa'#231#227'o Auxiliar'
      end
      item
        FormName = 'frmCadObs_Aux'
        CompName = 'btnAlterar'
        Caption = 'Alterar'
        GroupName = 'Observa'#231#227'o Auxiliar'
      end
      item
        FormName = 'frmCadParametros'
        CompName = 'btnAlterar'
        Caption = 'Alterar'
        GroupName = 'Par'#226'metros'
      end
      item
        FormName = 'fNFe'
        CompName = 'btEnviar'
        Caption = 'Enviar'
        GroupName = 'NFe Envio'
      end
      item
        FormName = 'fNFe'
        CompName = 'btGerarChave'
        Caption = 'Gera Chave NFe'
        GroupName = 'NFe Envio'
      end
      item
        FormName = 'fNFe'
        CompName = 'btGravaNota'
        Caption = 'Grava Chave na Nota'
        GroupName = 'NFe Envio'
      end
      item
        FormName = 'frmCadUF'
        CompName = 'btnInserir'
        Caption = 'Inserir'
        GroupName = 'UF'
      end
      item
        FormName = 'frmCadUF'
        CompName = 'btnExcluir'
        Caption = 'Excluir'
        GroupName = 'UF'
      end
      item
        FormName = 'frmCadUF'
        CompName = 'btnAlterar'
        Caption = 'Alterar'
        GroupName = 'UF'
      end
      item
        FormName = 'frmCadRegime_Trib'
        CompName = 'btnInserir'
        Caption = 'Inserir'
        GroupName = 'Regime Tribut'#225'rio'
      end
      item
        FormName = 'frmCadRegime_Trib'
        CompName = 'btnExcluir'
        Caption = 'Excluir'
        GroupName = 'Regime Tribut'#225'rio'
      end
      item
        FormName = 'frmCadRegime_Trib'
        CompName = 'btnAlterar'
        Caption = 'Alterar'
        GroupName = 'Regime Tribut'#225'rio'
      end
      item
        FormName = 'frmCadOrigem_Prod'
        CompName = 'btnInserir'
        Caption = 'Inserir'
        GroupName = 'Origem Produto'
      end
      item
        FormName = 'frmCadOrigem_Prod'
        CompName = 'btnExcluir'
        Caption = 'Excluir'
        GroupName = 'Origem Produto'
      end
      item
        FormName = 'frmCadOrigem_Prod'
        CompName = 'btnAlterar'
        Caption = 'Alterar'
        GroupName = 'Origem Produto'
      end
      item
        FormName = 'frmCadNotaEntrada'
        CompName = 'btnInserir'
        Caption = 'Inserir'
        GroupName = 'Nota Entrada'
      end
      item
        FormName = 'frmCadNotaEntrada'
        CompName = 'btnExcluir'
        Caption = 'Excluir'
        GroupName = 'Nota Entrada'
      end
      item
        FormName = 'frmCadNotaEntrada'
        CompName = 'btnAlterar'
        Caption = 'Alterar'
        GroupName = 'Nota Entrada'
      end
      item
        FormName = 'frmCadContas'
        CompName = 'btnInserir'
        Caption = 'Inserir'
        GroupName = 'Contas / Bancos'
      end
      item
        FormName = 'frmCadContas'
        CompName = 'btnExcluir'
        Caption = 'Excluir'
        GroupName = 'Contas / Bancos'
      end
      item
        FormName = 'frmCadContas'
        CompName = 'btnAlterar'
        Caption = 'Alterar'
        GroupName = 'Contas / Bancos'
      end
      item
        FormName = 'frmCadTipoCobranca'
        CompName = 'btnInserir'
        Caption = 'Inserir'
        GroupName = 'Tipo de Cobran'#231'a'
      end
      item
        FormName = 'frmCadTipoCobranca'
        CompName = 'btnExcluir'
        Caption = 'Excluir'
        GroupName = 'Tipo de Cobran'#231'a'
      end
      item
        FormName = 'frmCadTipoCobranca'
        CompName = 'btnAlterar'
        Caption = 'Alterar'
        GroupName = 'Tipo de Cobran'#231'a'
      end
      item
        FormName = 'frmCadConfig_CFOP'
        CompName = 'btnInserir'
        Caption = 'Inserir'
        GroupName = 'Configura'#231#227'o CFOP'
      end
      item
        FormName = 'frmCadConfig_CFOP'
        CompName = 'btnExcluir'
        Caption = 'Excluir'
        GroupName = 'Configura'#231#227'o CFOP'
      end
      item
        FormName = 'frmCadConfig_CFOP'
        CompName = 'btnAlterar'
        Caption = 'Alterar'
        GroupName = 'Configura'#231#227'o CFOP'
      end
      item
        FormName = 'frmCadAssinatura'
        CompName = 'btnInserir'
        Caption = 'Inserir'
        GroupName = 'Assinatura'
      end
      item
        FormName = 'frmCadAssinatura'
        CompName = 'btnExcluir'
        Caption = 'Excluir'
        GroupName = 'Assinatura'
      end
      item
        FormName = 'frmCadAssinatura'
        CompName = 'btnAlterar'
        Caption = 'Alterar'
        GroupName = 'Assinatura'
      end
      item
        FormName = 'frmCadPeriodo'
        CompName = 'btnInserir'
        Caption = 'Inserir'
        GroupName = 'Per'#237'odo'
      end
      item
        FormName = 'frmCadPeriodo'
        CompName = 'btnExcluir'
        Caption = 'Excluir'
        GroupName = 'Per'#237'odo'
      end
      item
        FormName = 'frmCadPeriodo'
        CompName = 'btnAlterar'
        Caption = 'Alterar'
        GroupName = 'Per'#237'odo'
      end
      item
        FormName = 'frmCadContrato'
        CompName = 'btnInserir'
        Caption = 'Inserir'
        GroupName = 'Contrato'
      end
      item
        FormName = 'frmCadContrato'
        CompName = 'btnExcluir'
        Caption = 'Excluir'
        GroupName = 'Contrato'
      end
      item
        FormName = 'frmCadContrato'
        CompName = 'btnAlterar'
        Caption = 'Alterar'
        GroupName = 'Contrato'
      end
      item
        FormName = 'frmCadPreContrato'
        CompName = 'btnAtivar_PreContrato'
        Caption = 'Ativar Pr'#233' Contrato'
        GroupName = 'Pr'#233' Contrato'
      end
      item
        FormName = 'frmCadPreContrato'
        CompName = 'btnExcluir_PreContrato'
        Caption = 'Excluir Pr'#233' Contrato'
        GroupName = 'Pr'#233' Contrato'
      end
      item
        FormName = 'frmCadPreContrato'
        CompName = 'btnGerar_PreContrato'
        Caption = 'Gerar Pr'#233' Contrato'
        GroupName = 'Pr'#233' Contrato'
      end
      item
        FormName = 'frmGArqBlocagem'
        CompName = 'ckEstoque'
        Caption = 'Gerar Estoque'
        GroupName = 'Gerar Arquivo Blocagem'
      end
      item
        FormName = 'frmEncerraContrato'
        CompName = 'btnEncerrar'
        Caption = 'Encerrar'
        GroupName = 'Encerrar Contrato'
      end
      item
        FormName = 'frmConsEstoque'
        CompName = 'btnExcluir'
        Caption = 'Excluir os selecionados'
        GroupName = 'Consulta Estoque'
      end>
    LoginMode = lmActive
    UsersProfile.Active = True
    TableUsers.FieldUserID = 'UCIdUser'
    TableUsers.FieldUserName = 'UCUserName'
    TableUsers.FieldLogin = 'UCLogin'
    TableUsers.FieldPassword = 'UCPassword'
    TableUsers.FieldEmail = 'UCEmail'
    TableUsers.FieldPrivileged = 'UCPrivileged'
    TableUsers.FieldTypeRec = 'UCTypeRec'
    TableUsers.FieldProfile = 'UCProfile'
    TableUsers.FieldKey = 'UCKey'
    TableUsers.TableName = 'UCTabUsers'
    TableRights.FieldUserID = 'UCIdUser'
    TableRights.FieldModule = 'UCModule'
    TableRights.FieldComponentName = 'UCCompName'
    TableRights.FieldFormName = 'UCFormName'
    TableRights.FieldKey = 'UCKey'
    TableRights.TableName = 'UCTabRights'
    ChangePasswordForm.MenuItem = rocarSenha1
    ChangePasswordForm.ForcePassword = False
    ChangePasswordForm.MinPasswordLength = 0
    DataConnector = UCDBXConn1
    CheckValidationKey = False
    Left = 456
    Top = 56
  end
  object UCSettings1: TUCSettings
    AppMessages.MsgsForm_BtNew = '&Nova Mensagem'
    AppMessages.MsgsForm_BtReplay = '&Responder'
    AppMessages.MsgsForm_BtForward = 'E&ncaminhar'
    AppMessages.MsgsForm_BtDelete = '&Excluir'
    AppMessages.MsgsForm_BtClose = '&Close'
    AppMessages.MsgsForm_WindowCaption = 'Mensagens do Sistema'
    AppMessages.MsgsForm_ColFrom = 'Remetente'
    AppMessages.MsgsForm_ColSubject = 'Assunto'
    AppMessages.MsgsForm_ColDate = 'Data'
    AppMessages.MsgsForm_PromptDelete = 'Confirma excluir as mensagens selecionadas ?'
    AppMessages.MsgsForm_PromptDelete_WindowCaption = 'Deletar Mensagens'
    AppMessages.MsgsForm_NoMessagesSelected = 'Sem Mensagens Selecionadas'
    AppMessages.MsgsForm_NoMessagesSelected_WindowCaption = 'Informa'#231#227'o'
    AppMessages.MsgRec_BtClose = '&Fechar'
    AppMessages.MsgRec_WindowCaption = 'Mensagem'
    AppMessages.MsgRec_Title = 'Mensagem Recebida'
    AppMessages.MsgRec_LabelFrom = 'De :'
    AppMessages.MsgRec_LabelDate = 'Date'
    AppMessages.MsgRec_LabelSubject = 'Assunto'
    AppMessages.MsgRec_LabelMessage = 'Mensagem'
    AppMessages.MsgSend_BtSend = '&Enviar'
    AppMessages.MsgSend_BtCancel = '&Cancelar'
    AppMessages.MsgSend_WindowCaption = 'Mensagem'
    AppMessages.MsgSend_Title = 'Enviar Nova Mensagem'
    AppMessages.MsgSend_GroupTo = 'Para'
    AppMessages.MsgSend_RadioUser = 'Usu'#225'rio :'
    AppMessages.MsgSend_RadioAll = 'Todos'
    AppMessages.MsgSend_GroupMessage = 'Mensagem'
    AppMessages.MsgSend_LabelSubject = 'Assunto'
    AppMessages.MsgSend_LabelMessageText = 'Texto da Mensagem'
    CommonMessages.AutoLogonError = 'Falha de Auto Logon!'#13#10'Informe um usu'#225'rio e senha v'#225'lidos.'
    CommonMessages.ChangePasswordError.InvalidCurrentPassword = 'Senha Atual n'#227'o confere!'
    CommonMessages.ChangePasswordError.NewPasswordError = 'Os campos: Nova Senha e Confirma'#231#227'o devem ser iguais.'
    CommonMessages.ChangePasswordError.NewEqualCurrent = 'Nova senha igual a senha atual'
    CommonMessages.ChangePasswordError.PasswordRequired = 'A Senha '#233' obrigat'#243'ria'
    CommonMessages.ChangePasswordError.MinPasswordLength = 'A senha deve conter no m'#237'nimo %d caracteres'
    CommonMessages.ChangePasswordError.InvalidNewPassword = 'Proibido utilizar senhas obvias!'
    CommonMessages.InvalidLogin = 'Usu'#225'rio ou Senha inv'#225'lidos!'
    CommonMessages.InitialMessage.Strings = (
      'ATEN'#199#195'O Login Inicial:'
      ''
      'Usu'#225'rio : :user'
      'Senha : :password'
      ''
      'Defina as permiss'#245'es para este usu'#225'rio.')
    CommonMessages.MaxLoginAttemptsError = 
      '%d Tentativas de login inv'#225'lido. Por motivos de segun'#231'a o '#13#10'sist' +
      'ema ser'#225' fechado.'
    CommonMessages.PasswordChanged = 'Senha alterada com sucesso!'
    CommonMessages.BlankPassword = 'Retirada senha do Login %s'
    Login.WindowCaption = 'Login'
    Login.LabelUser = 'Usu'#225'rio '
    Login.LabelPassword = 'Senha: '
    Login.BtOk = 'OK'
    Login.BtCancel = '&Cancelar'
    Login.LeftImage.Data = {
      07544269746D617016090000424D160900000000000036040000280000003200
      0000180000000100080000000000E00400000000000000000000000100000000
      000000000000000080000080000000808000800000008000800080800000C0C0
      C000C0DCC000F0CAA6000020400000206000002080000020A0000020C0000020
      E00000400000004020000040400000406000004080000040A0000040C0000040
      E00000600000006020000060400000606000006080000060A0000060C0000060
      E00000800000008020000080400000806000008080000080A0000080C0000080
      E00000A0000000A0200000A0400000A0600000A0800000A0A00000A0C00000A0
      E00000C0000000C0200000C0400000C0600000C0800000C0A00000C0C00000C0
      E00000E0000000E0200000E0400000E0600000E0800000E0A00000E0C00000E0
      E00040000000400020004000400040006000400080004000A0004000C0004000
      E00040200000402020004020400040206000402080004020A0004020C0004020
      E00040400000404020004040400040406000404080004040A0004040C0004040
      E00040600000406020004060400040606000406080004060A0004060C0004060
      E00040800000408020004080400040806000408080004080A0004080C0004080
      E00040A0000040A0200040A0400040A0600040A0800040A0A00040A0C00040A0
      E00040C0000040C0200040C0400040C0600040C0800040C0A00040C0C00040C0
      E00040E0000040E0200040E0400040E0600040E0800040E0A00040E0C00040E0
      E00080000000800020008000400080006000800080008000A0008000C0008000
      E00080200000802020008020400080206000802080008020A0008020C0008020
      E00080400000804020008040400080406000804080008040A0008040C0008040
      E00080600000806020008060400080606000806080008060A0008060C0008060
      E00080800000808020008080400080806000808080008080A0008080C0008080
      E00080A0000080A0200080A0400080A0600080A0800080A0A00080A0C00080A0
      E00080C0000080C0200080C0400080C0600080C0800080C0A00080C0C00080C0
      E00080E0000080E0200080E0400080E0600080E0800080E0A00080E0C00080E0
      E000C0000000C0002000C0004000C0006000C0008000C000A000C000C000C000
      E000C0200000C0202000C0204000C0206000C0208000C020A000C020C000C020
      E000C0400000C0402000C0404000C0406000C0408000C040A000C040C000C040
      E000C0600000C0602000C0604000C0606000C0608000C060A000C060C000C060
      E000C0800000C0802000C0804000C0806000C0808000C080A000C080C000C080
      E000C0A00000C0A02000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0
      E000C0C00000C0C02000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0
      A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
      FF00FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
      FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD0000FDFDFDFDFDFDFDFDFDFD
      FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD525252525252525252525252
      5252FDFDFDFDFDFD0000FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
      FDFDFDFDFDFDFDAFB75E5E5E66666767676F6F6F6FB752FDFDFDFDFD0000FDFD
      FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDAFBF6FBFBF
      BFBFBFBFBFBFBFBFBFB752FDFDFDFDFD0000FDFDFDFDFDFDFDFDFDFDFDFDFDFD
      FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDAFB76F676F6FB7B7B7B7B7776F5EB752FD
      FDFDFDFD0000FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
      FDFDFDAFBF6FBFBFBFBFBFBFBFBFBFBFBFB752FDFDFDFDFD0000FDFDFDFDFDFD
      FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDAFB76F676F6F6FB7B7
      B7B7776F5EB752FDFDFDFDFD0000FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
      FDFDFDFDFDFDFDFDFDFDFDAFBF6FBFBFBFBFBFBFBFBFBFBFBFBF52FDFDFDFDFD
      0000FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDAF
      B76767676F6F6FB7B7B7776F5EB752FDFDFDFDFD0000FDFDFDFDFDFDFDFDFDFD
      FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDAFBF6FBFBFBFBFBFBFBFBFBFBF
      BFBF52FDFDFDFDFD0000FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
      FDFDFDFDFDFDFDAFB76767676F6F6F6FB7B7776F5EB752FDFDFDFDFD0000FDFD
      FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDAFBF6FBFBF
      BFBFBFBFBFBFBFBFBFBF52FDFDFDFDFD0000FDFDFDFDFDFDFDFDFDFDFDFDFDFD
      FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDAFBFB7AFAFB7B7B7B7BFBFBFBFB7B752FD
      FDFDFDFD0000FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
      FDFDFDFDAFB76F675E5E5E5E5E5E676FB7A5FDFDFDFDFDFD0000FDFDFDFDFDFD
      FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF7F79BFDFDFDFD
      FDFDA4F7A3FDFDFDFDFDFDFD0000FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
      FDFDFDFDFDFDFDFDFDFDFDFDFDF7F79BFDFDFDFDFDFDA407A3FDFDFDFDFDFDFD
      0000FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
      FDF7F79BFDFDFDFDFDFDA407A3FDFDFDFDFDFDFD0000FDFDFDFDFDFDFDFDFDFD
      FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF7F7A4FDFDFDFDFDFDF707
      A3FDFDFDFDFDFDFD0000FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
      FDFDFDFDFDFDFDFDFDF707A49AFDFDFDFDA30707A3FDFDFDFDFDFDFD0000FDFD
      FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF7F6A4
      A49B9A9AA3A407079AFDFDFDFDFDFDFD0000FDFDFDFDFDFDFDFDFDFDFDFDFDFD
      FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF7F6F7F7A4A4F70707A3FDFDFDFD
      FDFDFDFD0000FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
      FDFDFDFDFDFDFDF7F6F6F6F6F607A3FDFDFDFDFDFDFDFDFD0000FDFDFDFDFDFD
      FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDF7A3A3A3
      A3A3FDFDFDFDFDFDFDFDFDFD0000FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
      FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD
      0000}
    Log.WindowCaption = 'Seguran'#231'a'
    Log.LabelDescription = 'Log do Sistema'
    Log.LabelUser = 'Usu'#225'rio:'
    Log.LabelDate = 'Data:'
    Log.LabelLevel = 'N'#237'vel m'#237'nimo: '
    Log.ColLevel = 'N'#237'vel'
    Log.ColMessage = 'Mensagem'
    Log.ColUser = 'Usu'#225'rio'
    Log.ColDate = 'Data'
    Log.BtFilter = '&Aplicar Filtro'
    Log.BtDelete = '&Excluir Log'
    Log.BtClose = '&Fechar'
    Log.PromptDelete = 'Confirma excluir todos os registros de log selecionados ?'
    Log.PromptDelete_WindowCaption = 'Confirma Exclus'#227'o'
    Log.OptionUserAll = 'All'
    Log.OptionLevelLow = 'Baixo'
    Log.OptionLevelNormal = 'Normal'
    Log.OptionLevelHigh = 'Alto'
    Log.OptionLevelCritic = 'Cr'#237'tico'
    Log.DeletePerformed = 
      'Dele'#231#227'o do LOG do Sistema Completo: Usu'#225'rio = "%s" | Data = %s a' +
      ' %s | Level <= %s'
    UsersForm.WindowCaption = 'Seguran'#231'a'
    UsersForm.LabelDescription = 'Cadastro de Usu'#225'rios'
    UsersForm.ColName = 'Nome'
    UsersForm.ColLogin = 'Login'
    UsersForm.ColEmail = 'Email'
    UsersForm.BtAdd = '&Adicionar'
    UsersForm.BtChange = 'A&lterar'
    UsersForm.BtDelete = '&Excluir'
    UsersForm.PromptDelete = 'Confirma excluir o usu'#225'rio "%s" ?'
    UsersForm.PromptDelete_WindowCaption = 'Deletar Usu'#225'rio'
    UsersForm.BtRights = 'A&cessos'
    UsersForm.BtPassword = '&Senha'
    UsersForm.BtClose = '&Fechar'
    AddChangeUser.WindowCaption = 'Cadastro de Usu'#225'rios'
    AddChangeUser.LabelAdd = 'Adicionar Usu'#225'rio'
    AddChangeUser.LabelChange = 'Alterar Usu'#225'rio'
    AddChangeUser.LabelName = 'Nome: '
    AddChangeUser.LabelLogin = 'Login: '
    AddChangeUser.LabelEmail = 'Email: '
    AddChangeUser.CheckPrivileged = 'Usu'#225'rio privilegiado'
    AddChangeUser.BtSave = '&Gravar'
    AddChangeUser.BtCancel = 'Cancelar'
    AddChangeProfile.WindowCaption = 'Perfil de Usu'#225'rios'
    AddChangeProfile.LabelAdd = 'Adicionar Perfil'
    AddChangeProfile.LabelChange = 'Alterar Perfil'
    AddChangeProfile.LabelName = 'Descri'#231#227'o : '
    AddChangeProfile.BtSave = '&Gravar'
    AddChangeProfile.BtCancel = 'Cancelar'
    UsersProfile.WindowCaption = 'Seguran'#231'a'
    UsersProfile.LabelDescription = 'Perfil de Usu'#225'rios'
    UsersProfile.ColProfile = 'Perfil'
    UsersProfile.BtAdd = '&Adicionar'
    UsersProfile.BtChange = 'A&lterar'
    UsersProfile.BtDelete = '&Excluir'
    UsersProfile.BtRights = 'A&cessos'
    UsersProfile.PromptDelete = 'Existem usu'#225'rios com o perfil "%s". Confirma excluir?'
    UsersProfile.PromptDelete_WindowCaption = 'Deletar Perfil'
    UsersProfile.BtClose = '&Fechar'
    Rights.WindowCaption = 'Seguran'#231'a'
    Rights.LabelUser = 'Permiss'#245'es do Usu'#225'rio : '
    Rights.LabelProfile = 'Permiss'#245'es do Perfil : '
    Rights.PageMenu = 'Itens do Menu'
    Rights.PageActions = 'A'#231#245'es'
    Rights.BtUnlock = '&Liberar'
    Rights.BtLock = '&Bloquear'
    Rights.BtSave = '&Gravar'
    Rights.BtCancel = '&Cancelar'
    ChangePassword.WindowCaption = 'Seguran'#231'a'
    ChangePassword.LabelDescription = 'Trocar Senha'
    ChangePassword.LabelCurrentPassword = 'Senha Atual:'
    ChangePassword.LabelNewPassword = 'Nova Senha: '
    ChangePassword.LabelConfirm = 'Confirma'#231#227'o: '
    ChangePassword.BtSave = '&Gravar'
    ChangePassword.BtCancel = 'Cancelar'
    ResetPassword.WindowCaption = 'Definir senha do usu'#225'rio : "%s"'
    ResetPassword.LabelPassword = 'Senha:'
    XPStyleSet.DimLevel = 30
    XPStyleSet.GrayLevel = 10
    XPStyleSet.Font.Charset = DEFAULT_CHARSET
    XPStyleSet.Font.Color = clMenuText
    XPStyleSet.Font.Height = -12
    XPStyleSet.Font.Name = 'Segoe UI'
    XPStyleSet.Font.Style = []
    XPStyleSet.Color = clBtnFace
    XPStyleSet.DrawMenuBar = False
    XPStyleSet.IconBackColor = clBtnFace
    XPStyleSet.MenuBarColor = clBtnFace
    XPStyleSet.SelectColor = clHighlight
    XPStyleSet.SelectBorderColor = clHighlight
    XPStyleSet.SelectFontColor = clMenuText
    XPStyleSet.DisabledColor = clInactiveCaption
    XPStyleSet.SeparatorColor = clBtnFace
    XPStyleSet.CheckedColor = clHighlight
    XPStyleSet.IconWidth = 24
    XPStyleSet.DrawSelect = True
    XPStyleSet.UseSystemColors = True
    XPStyleSet.UseDimColor = False
    XPStyleSet.OverrideOwnerDraw = False
    XPStyleSet.Gradient = False
    XPStyleSet.FlatMenu = False
    XPStyleSet.AutoDetect = False
    XPStyleSet.BitBtnColor = clBtnFace
    XPStyleSet.ColorsChanged = False
    XPStyle = False
    WindowsPosition = poMainFormCenter
    Left = 456
    Top = 88
  end
  object ActionList1: TActionList
    State = asSuspended
    Left = 456
    Top = 120
    object Action1: TAction
      Category = 'Cidades'
      Caption = 'Inserir'
      OnExecute = Action1Execute
    end
    object Action2: TAction
      Category = 'Cidades'
      Caption = 'Excluir'
    end
  end
  object ImageList1: TImageList
    Height = 48
    Width = 48
    Left = 456
    Top = 152
  end
end
