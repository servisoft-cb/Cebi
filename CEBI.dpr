program CEBI;

uses
  Forms,
  Dialogs,
  SysUtils,
  UMenu in 'UMenu.pas' {fMenu},
  DmdDatabase in 'DmdDatabase.pas' {dmDatabase: TDataModule},
  rsDBUtils in '..\rslib\nova\rsDBUtils.pas',
  uUtilPadrao in 'uUtilPadrao.pas',
  uFrmSobre in 'uFrmSobre.pas' {frmSobre},
  UDMCadAssinatura in 'UDMCadAssinatura.pas' {DMCadAssinatura: TDataModule},
  DmdDatabase_EBS in 'DmdDatabase_EBS.pas' {dmDatabase_EBS: TDataModule},
  UDMEBS in 'UDMEBS.pas' {DMEBS: TDataModule},
  UCadAssinatura in 'UCadAssinatura.pas' {frmCadAssinatura},
  UDMCadPessoa in 'UDMCadPessoa.pas' {DMCadPessoa: TDataModule},
  uCadPessoa in 'uCadPessoa.pas' {frmCadPessoa},
  UDMCadContrato in 'UDMCadContrato.pas' {DMCadContrato: TDataModule},
  UCadContrato in 'UCadContrato.pas' {frmCadContrato},
  UDMCadPeriodo in 'UDMCadPeriodo.pas' {DMCadPeriodo: TDataModule},
  UCadPeriodo in 'UCadPeriodo.pas' {frmCadPeriodo},
  UGArqBlocagem in 'UGArqBlocagem.pas' {frmGArqBlocagem},
  UDMBlocagem in 'UDMBlocagem.pas' {DMBlocagem: TDataModule},
  DmdDatabase_Ant in 'DmdDatabase_Ant.pas' {dmDatabase_Ant: TDataModule},
  UConvCliente in 'UConvCliente.pas' {fConvCliente},
  UCadPreContrato in 'UCadPreContrato.pas' {frmCadPreContrato},
  uRelEtiqBlocagem in 'uRelEtiqBlocagem.pas' {frmRelEtiqBlocagem},
  uEtiqBlocagem in 'uEtiqBlocagem.pas' {frmEtiqBlocagem},
  URelContrato in 'URelContrato.pas' {frmRelContrato},
  UEncerraContrato in 'UEncerraContrato.pas' {frmEncerraContrato},
  UDMConsEstoque in 'UDMConsEstoque.pas' {DMConsEstoque: TDataModule},
  UConsEstoque in 'UConsEstoque.pas' {frmConsEstoque},
  UConsContrato in 'UConsContrato.pas' {frmConsContrato},
  uConsGeral in 'UConsGeral.pas' {frmConsGeral},
  UDMConsGeral in 'UDMConsGeral.pas' {DMConsGeral: TDataModule},
  USel_Pessoa in 'USel_Pessoa.pas' {frmSel_Pessoa},
  uRelArqCSV in 'uRelArqCSV.pas' {frmRelArqCSV};

{$R *.res}

begin
  try
    Application.Initialize;
    Application.Title := 'CEBI';
  Application.CreateForm(TdmDatabase, dmDatabase);
  Application.CreateForm(TdmDatabase_EBS, dmDatabase_EBS);
  Application.CreateForm(TfMenu, fMenu);
  Application.Run;
  except
    on e: Exception do
      ShowMessage('Ocorreu o seguinte erro ao executar: ' + #13 + e.Message);
  end;
end.
