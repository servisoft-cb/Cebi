unit UConsEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ExtCtrls, UDMConsEstoque, RxLookup,
  StdCtrls, Buttons, Grids, DBGrids, SMDBGrid, Mask, ToolEdit, Menus,
  UCBase, RzTabs, SqlExpr;

type
  TfrmConsEstoque = class(TForm)
    Panel1: TPanel;
    btnConsultar: TBitBtn;
    Label7: TLabel;
    DateEdit2: TDateEdit;
    Label8: TLabel;
    DateEdit3: TDateEdit;
    Label5: TLabel;
    Edit2: TEdit;
    RzPageControl1: TRzPageControl;
    TabSheet1: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    Panel2: TPanel;
    btnExcluir: TBitBtn;
    UCControls1: TUCControls;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
    fDMConsEstoque: TDMConsEstoque;

    procedure prc_Consultar;
    procedure prc_Le_Controle_Estoque;
    procedure prc_Excluir_EstMovimento;

    procedure prc_Excluir_Controle_Estoque(ID : Integer);

  public
    { Public declarations }
  end;

var
  frmConsEstoque: TfrmConsEstoque;

implementation

uses rsDBUtils, uUtilPadrao, Math, UMenu, DmdDatabase, DateUtils,
  DmdDatabase_EBS;

{$R *.dfm}

procedure TfrmConsEstoque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsEstoque.FormCreate(Sender: TObject);
begin
  fDMConsEstoque := TDMConsEstoque.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsEstoque);
end;

procedure TfrmConsEstoque.btnConsultarClick(Sender: TObject);
begin
  if (DateEdit2.Date < 10) and (DateEdit3.Date < 10) then
  begin
    MessageDlg('*** É obrigatório informar uma data!', mtError, [mbno], 0);
    exit;
  end;
  prc_Consultar;
  prc_Le_Controle_Estoque;
end;

procedure TfrmConsEstoque.prc_Consultar;
var
  vComando : String;
begin
  vComando := ctControle_Estoque;
  fDMConsEstoque.cdsControle_Estoque.Close;
  vComando := ctControle_Estoque
            + ' WHERE DTREFERENCIA >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date))
            + ' AND DTREFERENCIA <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit3.date));
  if trim(Edit2.Text) <> '' then
    vComando := vComando + ' AND NUM_CONTRATO = ' + QuotedStr(Edit2.Text);
  fDMConsEstoque.sdsControle_Estoque.CommandText := vComando;
  fDMConsEstoque.cdsControle_Estoque.Open;
end;

procedure TfrmConsEstoque.btnExcluirClick(Sender: TObject);
var
  vContador : Integer;
begin
  if MessageDlg('Deseja excluir o estoque dos contratos selecionados?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
    exit;

  vContador := 0;
  fDMConsEstoque.mEstoque.First;
  while not fDMConsEstoque.mEstoque.Eof do
  begin
    if SMDBGrid1.SelectedRows.CurrentRowSelected then
    begin
      vContador := vContador + 1;
      prc_Excluir_EstMovimento;
      prc_Excluir_Controle_Estoque(fDMConsEstoque.mEstoqueID.AsInteger);
    end;
    fDMConsEstoque.mEstoque.Next;
  end;
  fDMConsEstoque.cdsControle_Estoque.ApplyUpdates(0);
  if vContador <= 0 then
    ShowMessage('Nenhum registro excluido!')
  else
    ShowMessage('Registros excluidos: ' + IntToStr(vContador));
  btnConsultarClick(Sender);
  SMDBGrid1.UnSelectAllClick(SMDBGrid1);
end;

procedure TfrmConsEstoque.prc_Excluir_EstMovimento;
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  try
    sds.SQLConnection := dmDatabase_EBS.Conexao_MSSQL; //--
    sds.CommandText   := 'DELETE FROM ESTMOVIMENTO '
                       + ' WHERE CODLOC = ' + QuotedStr('1')
                       + '  AND TIPREG = ' + QuotedStr('CONTRATO')
                       + '  AND NRODOC = ' + fDMConsEstoque.mEstoqueNum_Contrato.AsString
                       //+ '  AND DATMOV = :DATMOV ';
                       + ' AND DATMOV = ' + QuotedStr(FormatDateTime('DD/MM/YYYY',fDMConsEstoque.mEstoqueDtReferencia.AsDateTime));
    //sds.ParamByName('DATMOV').Value := fDMConsEstoque.mEstoqueDtReferencia.AsDateTime;
    sds.ExecSQL;
  except
    raise;
  end;
  FreeAndNil(sds);
end;

procedure TfrmConsEstoque.prc_Le_Controle_Estoque;
begin
  SMDBGrid1.DisableScroll;
  fDMConsEstoque.mEstoque.EmptyDataSet;
  fDMConsEstoque.cdsControle_Estoque.First;
  while not fDMConsEstoque.cdsControle_Estoque.Eof do
  begin
    fDMConsEstoque.mEstoque.Insert;
    fDMConsEstoque.mEstoqueID.AsInteger            := fDMConsEstoque.cdsControle_EstoqueID.AsInteger;
    fDMConsEstoque.mEstoqueNum_Contrato.AsString   := fDMConsEstoque.cdsControle_EstoqueNUM_CONTRATO.AsString;
    fDMConsEstoque.mEstoqueDtReferencia.AsDateTime := fDMConsEstoque.cdsControle_EstoqueDTREFERENCIA.AsDateTime;
    fDMConsEstoque.mEstoque.Post;
    fDMConsEstoque.cdsControle_Estoque.Next;
  end;
  SMDBGrid1.EnableScroll;
end;

procedure TfrmConsEstoque.prc_Excluir_Controle_Estoque(ID : Integer);
var
  sds: TSQLDataSet;
begin
  sds := TSQLDataSet.Create(nil);
  sds.SQLConnection := dmDatabase.scoDados;
  sds.NoMetadata  := True;
  sds.GetMetadata := False;
  sds.Close;
  sds.CommandText := 'DELETE FROM CONTROLE_ESTOQUE ' 
                   + 'WHERE ID = ' + IntToStr(ID);
  sds.ExecSQL;
  FreeAndNil(sds);
end;

end.
