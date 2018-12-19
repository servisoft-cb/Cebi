unit URelContrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UDMCadContrato, RLReport;

type
  TfrmRelContrato = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLMemo1: TRLMemo;
    RLLabel21: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel22: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLBand2: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLBand3: TRLBand;
    RLDraw3: TRLDraw;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLLabel13: TRLLabel;
    RLBand4: TRLBand;
    RLLabel14: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel15: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    vQtdTotal     : Integer;
    vQtdEncerrado : Integer;
    vQtdAtivo     : Integer;

  public
    { Public declarations }
    fDMCadContrato: TDMCadContrato;
    vOpcaoCab : String;
    vImpValor : Boolean;

  end;

var
  frmRelContrato: TfrmRelContrato;

implementation

uses rsDBUtils;

{$R *.dfm}

procedure TfrmRelContrato.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfrmRelContrato.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLMemo1.Lines.Clear;
  RLMemo1.Lines.Text := vOpcaoCab;
end;

procedure TfrmRelContrato.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if fDMCadContrato.cdsContrato_ConsultaPRE_CONTRATO.AsString = 'S' then
    RLLabel13.Caption := 'P'
  else
  if fDMCadContrato.cdsContrato_ConsultaPRE_CONTRATO.AsString = 'N' then
    RLLabel13.Caption := 'C';
  RLDBText9.Visible := vImpValor;
  RLLabel8.Caption := '';
  //if fDMCadContrato.cdsContrato_ConsultaDDDFONE1.AsInteger > 0 then
  //  RLLabel8.Caption := fDMCadContrato.cdsContrato_ConsultaDDDFONE1.AsString + '-';
  RLLabel8.Caption := RLLabel8.Caption + fDMCadContrato.cdsContrato_ConsultaTELEFONE1_FB.AsString;

  vQtdTotal := vQtdTotal + 1;
  if (fDMCadContrato.cdsContrato_ConsultaDTENCERRAMENTO.AsDateTime > 10) and (fDMCadContrato.cdsContrato_ConsultaDTENCERRAMENTO.AsDateTime < Date) then
    vQtdEncerrado := vQtdEncerrado + 1
  else
    vQtdAtivo := vQtdAtivo + 1;
end;

procedure TfrmRelContrato.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel12.Visible := vImpValor;
end;

procedure TfrmRelContrato.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  oDBUtils.SetDataSourceProperties(Self, fDMCadContrato);
end;

procedure TfrmRelContrato.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  //PrintIt := vImpValor;
  RLLabel14.Visible   := vImpValor;
  RLDBResult1.Visible := vImpValor;

  RLLabel18.Caption := FormatFloat('###,###,##0',vQtdTotal);
  RLLabel20.Caption := FormatFloat('###,###,##0',vQtdEncerrado);
  RLLabel24.Caption := FormatFloat('###,###,##0',vQtdAtivo);
  vQtdAtivo     := 0;
  vQtdEncerrado := 0;
  vQtdTotal     := 0;
end;

procedure TfrmRelContrato.FormCreate(Sender: TObject);
begin
  vQtdAtivo     := 0;
  vQtdEncerrado := 0;
  vQtdTotal     := 0;
end;

end.
