unit U_EscolhaMesAnoParaPesquisarBoleto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls, Grids, DBGrids, Mask, DBCtrls,DateUtils,
  ToolEdit, ComCtrls, RXDBCtrl;

type
  T_frmEscolhaMesAnoParaPesquisarBoleto = class(TForm)
    pnl_cabecalho: TPanel;
    pnl_rodape: TPanel;
    cmbMeses: TComboBox;
    cmbAnos: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure PreencherComboAnos;
    procedure PreencherComboMeses;
    procedure PreencherComboComNumerosDeAnos;
    procedure Consultar;
    procedure pnl_rodapeClick(Sender: TObject);
    procedure cmbAnosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cmbMesesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    mesSelecionado, anoSelecionado, AnoAtual  : string;

  public
    { Public declarations }

  end;

var
  _frmEscolhaMesAnoParaPesquisarBoleto: T_frmEscolhaMesAnoParaPesquisarBoleto;

implementation

uses U_dmDados, U_BiblioSysSalao, DB, U_ContasPagar;

{$R *.dfm}

procedure T_frmEscolhaMesAnoParaPesquisarBoleto.FormCreate(Sender: TObject);
//DESABILITA O BOTAO FECHAR DO FORMULÁRIO
var
  hwndHandle : THANDLE;
  hMenuHandle : HMenu;
begin
//Impede movimentação do formulário
 DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);

  hwndHandle := Self.Handle;
  if (hwndHandle <> 0) then
    begin
      hMenuHandle := GetSystemMenu(hwndHandle, FALSE);
        if (hMenuHandle <> 0) then
          DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);

  end;

  PreencherComboAnos;
  PreencherComboMeses;

end;

procedure T_frmEscolhaMesAnoParaPesquisarBoleto.PreencherComboComNumerosDeAnos;
var
  i : integer;
begin

     //setando o ano vigente na comboano
     DataDoDia    := date;
     AnoAtual     := IntToStr(YearOf(DataDoDia));

     //populando a comboano com os anos
     for i := 2000 to 3000 do
     begin

          cmbAnos.Items.Add(inttostr(i));

     end;

     cmbAnos.ItemIndex := Integer(cmbAnos.Items.IndexOf(AnoAtual));

end;

procedure T_frmEscolhaMesAnoParaPesquisarBoleto.PreencherComboAnos;
begin

     PreencherComboComNumerosDeAnos;        

end;

procedure T_frmEscolhaMesAnoParaPesquisarBoleto.PreencherComboMeses;
var
  MesAtual : string;
  numMes   : integer;
begin

     //setando o mes vigente na combomes
     DataDoDia    := date;
     MesAtual     := IntToStr(MonthOf(DataDoDia));
     numMes       := StrToInt(MesAtual)-1;

     cmbMeses.ItemIndex := numMes;

end;


procedure T_frmEscolhaMesAnoParaPesquisarBoleto.pnl_rodapeClick(
  Sender: TObject);
begin

    Consultar;

end;

procedure T_frmEscolhaMesAnoParaPesquisarBoleto.Consultar;
begin

     mesSelecionado    := cmbMeses.Text;
     anoSelecionado    := cmbAnos.Text;
     mesAnoSelecionado := mesSelecionado +'/'+ anoSelecionado;

     _frmContasPagar.btnExcluirBoleto.Enabled := false;
     _frmContasPagar.btnBaixarBoleto.Enabled  := false;
     _frmContasPagar.MostrarBoletosPeloMesAnoSelecionado;

     close;

end;

procedure T_frmEscolhaMesAnoParaPesquisarBoleto.cmbAnosKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

     if(key = 13)then
       Consultar;

end;

procedure T_frmEscolhaMesAnoParaPesquisarBoleto.cmbMesesKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
    if(key = 13)then
       cmbAnos.SetFocus;
end;

procedure T_frmEscolhaMesAnoParaPesquisarBoleto.FormKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
    if(key = 13)then
       Consultar;
end;

end.
