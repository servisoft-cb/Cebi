unit uConsGeral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, RzTabs, StdCtrls, DBCtrls, RxDBComb, RxLookup, db,
  Mask, Grids, DateUtils, DBGrids, SMDBGrid, Buttons, ExtCtrls, UCBase,
  ToolEdit, RXDBCtrl, CurrEdit, StrUtils, UDMConsGeral, 
  RzPanel, NxCollection;

type
  TfrmConsGeral = class(TForm)
    RzPageControl1: TRzPageControl;
    TS_Consulta: TRzTabSheet;
    Panel3: TPanel;
    Label6: TLabel;
    Label13: TLabel;
    RxDBLookupCombo4: TRxDBLookupCombo;
    Label2: TLabel;
    DateEdit1: TDateEdit;
    Label3: TLabel;
    DateEdit2: TDateEdit;
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
    Label33: TLabel;
    Label34: TLabel;
    lblNovo: TLabel;
    lblRenovacao: TLabel;
    btnConsultar: TNxButton;
    btnImprimir: TNxButton;
    ComboBox1: TComboBox;
    RzPageControl2: TRzPageControl;
    TS_Cliente: TRzTabSheet;
    SMDBGrid1: TSMDBGrid;
    TabSheet2: TRzTabSheet;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DateEdit3: TDateEdit;
    DateEdit4: TDateEdit;
    Panel1: TPanel;
    Label7: TLabel;
    ComboBox2: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
    fDMConsGeral: TDMConsGeral;

    procedure prc_Consultar;

  public
    { Public declarations }
  end;

var
  frmConsGeral: TfrmConsGeral;

implementation

uses UMenu, DmdDatabase, rsDBUtils, uUtilPadrao;

{$R *.dfm}

procedure TfrmConsGeral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmConsGeral.FormDestroy(Sender: TObject);
begin
  FreeAndNil(fDMConsGeral);
end;

procedure TfrmConsGeral.FormShow(Sender: TObject);
begin
  fDMConsGeral := TDMConsGeral.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fDMConsGeral);
end;

procedure TfrmConsGeral.btnConsultarClick(Sender: TObject);
begin
  prc_Consultar;
end;

procedure TfrmConsGeral.prc_Consultar;
begin
  fDMConsGeral.cdsContrato_Cli.Close;
  fDMConsGeral.sdsContrato_Cli.CommandText := fDMConsGeral.ctContrato_Cli;
  fDMConsGeral.sdsContrato_Cli.CommandText := fDMConsGeral.sdsContrato_Cli.CommandText + ' WHERE 1 = 1';
  if trim(Edit1.Text) <> '' then
    fDMConsGeral.sdsContrato_Cli.CommandText := fDMConsGeral.sdsContrato_Cli.CommandText
                                                     + ' AND PES.NOME LIKE ' + QuotedStr('%'+Edit1.Text+'%');
  if RxDBLookupCombo4.Text <> '' then
    fDMConsGeral.sdsContrato_Cli.CommandText := fDMConsGeral.sdsContrato_Cli.CommandText
                                                     + ' AND CT.ID_ASSINATURA = ' + IntToStr(RxDBLookupCombo4.KeyValue);
  if DateEdit1.Date > 0 then
    fDMConsGeral.sdsContrato_Cli.CommandText := fDMConsGeral.sdsContrato_Cli.CommandText + ' AND DTCONTRATO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit1.date));
  if DateEdit2.Date > 0 then
    fDMConsGeral.sdsContrato_Cli.CommandText := fDMConsGeral.sdsContrato_Cli.CommandText + ' AND DTCONTRATO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit2.date));
  if DateEdit3.Date > 0 then
    fDMConsGeral.sdsContrato_Cli.CommandText := fDMConsGeral.sdsContrato_Cli.CommandText + ' AND DTENCERRAMENTO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit3.date));
  if DateEdit4.Date > 0 then
    fDMConsGeral.sdsContrato_Cli.CommandText := fDMConsGeral.sdsContrato_Cli.CommandText + ' AND DTENCERRAMENTO <= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',DateEdit4.date));
  case ComboBox1.ItemIndex of
    0 : fDMConsGeral.sdsContrato_Cli.CommandText := fDMConsGeral.sdsContrato_Cli.CommandText + ' AND ((DTENCERRAMENTO IS Null) OR (DTENCERRAMENTO >= ' + QuotedStr(FormatDateTime('MM/DD/YYYY',Date)) + ' ))' + ' AND (PRE_CONTRATO = ' + QuotedStr('N') + ')';
    1 : fDMConsGeral.sdsContrato_Cli.CommandText := fDMConsGeral.sdsContrato_Cli.CommandText + ' AND (((DTENCERRAMENTO IS NOT Null) AND (DTENCERRAMENTO < ' + QuotedStr(FormatDateTime('MM/DD/YYYY',Date)) + ' )) OR (ENCERRADO = ' + QuotedStr('S') + '))';
    2 : fDMConsGeral.sdsContrato_Cli.CommandText := fDMConsGeral.sdsContrato_Cli.CommandText + ' AND (PRE_CONTRATO = ' + QuotedStr('S') + ')';
  end;
  fDMConsGeral.sdsContrato_Cli.ParamByName('DTENC').AsDate := Date;
  fDMConsGeral.cdsContrato_Cli.Open;
  fDMConsGeral.cdsContrato_Cli.IndexFieldNames := 'NUM_CONTRATO';
end;

procedure TfrmConsGeral.SMDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
  ColunaOrdenada : String;
begin
  ColunaOrdenada := Column.FieldName;
  fDMConsGeral.cdsContrato_Cli.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfrmConsGeral.btnImprimirClick(Sender: TObject);
var
  vArq: String;
begin
  if RzPageControl2.ActivePage = TS_Cliente then
  begin
    if ComboBox2.ItemIndex = 0 then
    begin
      fDMConsGeral.cdsContrato_Cli.IndexFieldNames := 'UF_FB;NOMECLIENTE';
      vArq := ExtractFilePath(Application.ExeName) + 'Relatorios\URelContrato_Cli.fr3';
    end;
  end;
  if FileExists(vArq) then
    fDMConsGeral.frxReport1.Report.LoadFromFile(vArq)
  else
  begin
    ShowMessage('Relatorio não localizado! ' + vArq);
    Exit;
  end;
  fDMConsGeral.frxReport1.ShowReport;
end;

end.
