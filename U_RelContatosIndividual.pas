unit U_RelContatosIndividual;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls, Midas,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, FMTBcd, DB, SqlExpr;

type
  TQ_RelContatosIndividual = class(TQuickRep)
    qrbndTitleBand1: TQRBand;
    qrsysdt2: TQRSysData;
    qrbnd1: TQRBand;
    qrsysdt1: TQRSysData;
    qrbnd2: TQRBand;
    qrshp4: TQRShape;
    qrshp5: TQRShape;
    qrshp6: TQRShape;
    qrlbl16: TQRLabel;
    qrlbl17: TQRLabel;
    qrdbtxtFUNC_ID: TQRDBText;
    qrdbtxtFUNC_NOME: TQRDBText;
    qrlbl20: TQRLabel;
    qrlbl21: TQRLabel;
    qrlbl22: TQRLabel;
    qrlbl23: TQRLabel;
    qrlbl24: TQRLabel;
    qrlbl25: TQRLabel;
    qrlbl26: TQRLabel;
    qrlbl27: TQRLabel;
    qrlbl28: TQRLabel;
    qrdbtxtFUNC_DATACAD: TQRDBText;
    edtSTATUS: TQRDBText;
    qrlbl29: TQRLabel;
    qrdbtxtCLI_ENDERECO: TQRDBText;
    qrdbtxtCLI_COMPLEMENTO: TQRDBText;
    qrdbtxtCLI_CEP: TQRDBText;
    qrdbtxtCLI_EMAIL: TQRDBText;
    qrlbl3: TQRLabel;
    qrdbtxt2: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabelTotal: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    Qry_DadosIndividual: TSQLQuery;
    Qry_DadosIndividualCONT_ID: TIntegerField;
    Qry_DadosIndividualCONT_NOME: TStringField;
    Qry_DadosIndividualCONT_SEGID: TIntegerField;
    Qry_DadosIndividualCONT_ENDERECO: TStringField;
    Qry_DadosIndividualCONT_BAIRRO: TStringField;
    Qry_DadosIndividualCONT_CEP: TStringField;
    Qry_DadosIndividualCONT_TELEFONE1: TStringField;
    Qry_DadosIndividualCONT_TELEFONE2: TStringField;
    Qry_DadosIndividualCONT_CELULAR1: TStringField;
    Qry_DadosIndividualCONT_CELULAR2: TStringField;
    Qry_DadosIndividualCONT_EMAIL: TStringField;
    Qry_DadosIndividualCONT_DATACAD: TStringField;
    Qry_DadosIndividualCONT_STATUS: TStringField;
    Qry_DadosIndividualCONT_OBS: TStringField;
    Qry_DadosIndividualSEGMENTO: TStringField;
    QRLogo: TQRImage;
    qrbTitulo: TQRLabel;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  Q_RelContatosIndividual: TQ_RelContatosIndividual;

implementation

uses U_dmDados, U_dmDadosSegundo, U_BiblioSysSalao;

{$R *.DFM}

{ TQ_RelFuncCompleto }

procedure TQ_RelContatosIndividual.QuickRepBeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
   QRLogo.Picture.LoadFromFile(CarregarLogoEmpresa);
end;

end.
