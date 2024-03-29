unit U_EscolhaTipoPesquisaDuplicatas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls, Grids, DBGrids, Mask, DBCtrls;

type
  T_frmEscolhaTipoDePesquisaDuplicatas = class(TForm)
    pnl_cabecalho: TPanel;
    pnl1: TPanel;
    pnl_rodape: TPanel;
    lstOpcoes: TListBox;
    procedure FormCreate(Sender: TObject);
    procedure lstOpcoesClick(Sender: TObject);
    procedure pnl_rodapeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    MesEscolhido, nomeDoMes : string;
  end;

var
  _frmEscolhaTipoDePesquisaDuplicatas: T_frmEscolhaTipoDePesquisaDuplicatas;

implementation

uses U_dmDados, U_BiblioSysSalao, U_QRelAniversariantes, U_dmDadosSegundo,
  U_ConsTodosPedidos, U_ConsPedidosPorPeriodo, U_CadPedido, U_orcamento,
  U_ConsOrcamentosPorCliente, U_ConsOrcamentosPeriodo, U_Produtos,
  U_AlteraFornecedorDoProduto, U_AlteraFotoDoProduto,
  U_CadCategoriasProdutos, U_CadFabricantesProdutos, U_ConsSimilares,
  U_GerenciarSimilares, U_GerenciarCreditosPagamentosComCartao,
  U_GerenciarDuplicatas;

{$R *.dfm}

procedure T_frmEscolhaTipoDePesquisaDuplicatas.FormCreate(Sender: TObject);
//DESABILITA O BOTAO FECHAR DO FORMUL�RIO
var
  hwndHandle : THANDLE;
  hMenuHandle : HMenu;
begin
//Impede movimenta��o do formul�rio
 DeleteMenu(GetSystemMenu(Handle, False), SC_MOVE, MF_BYCOMMAND);

  hwndHandle := Self.Handle;
  if (hwndHandle <> 0) then
    begin
      hMenuHandle := GetSystemMenu(hwndHandle, FALSE);
        if (hMenuHandle <> 0) then
          DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);
  end;

end;

procedure T_frmEscolhaTipoDePesquisaDuplicatas.lstOpcoesClick(
  Sender: TObject);
begin

     if lstOpcoes.Items[lstOpcoes.ItemIndex] = 'DUPLICATAS  BAIXADAS  NO  MES SELECIONADO' then
     begin

          //MOSTRAR TODOS OS CREDITOS PG NO MES E ANO SELECIONADOS
          _frmGerenciarDuplicatas.MostrarDuplicatasPagasPeloMesAnoSelecionado;
          close;

    end else if lstOpcoes.Items[lstOpcoes.ItemIndex] = 'DUPLICATAS EM ABERTO NO MES SELECIONADO' then
    begin

            //MOSTRAR TODOS OS CREDITOS AB NO MES E ANO SELECIONADOS
          _frmGerenciarDuplicatas.MostrarDuplicatasAbertasPeloMesAnoSelecionado;
          close;

    end else if lstOpcoes.Items[lstOpcoes.ItemIndex] = 'TODAS  AS  DUPLICATAS DO  MES SELECIONADO' then
    begin

             //MOSTRAR TODOS OS CREDITOS PG E AB NO MES E ANO SELECIONADOS
          _frmGerenciarDuplicatas.MostrarDuplicatasPeloMesAnoSelecionado;
          close;

    end else if lstOpcoes.Items[lstOpcoes.ItemIndex] = 'DUPLICATAS  VENCIDAS DO  MES  SELECIONADO' then
    begin

             //MOSTRAR TODOS OS CREDITOS PG NO MES E ANO SELECIONADOS
          _frmGerenciarDuplicatas.MostrarDuplicatasVencidasPeloMesAnoSelecionado;
          close;
          
    end else if lstOpcoes.Items[lstOpcoes.ItemIndex] = 'DUPLICATAS N�O VENCIDAS MES  SELECIONADO' then
    begin

            //MOSTRAR TODOS OS CREDITOS PG NO MES E ANO SELECIONADOS
          _frmGerenciarDuplicatas.MostrarDuplicatasNaoVencidasPeloMesAnoSelecionado;
          close;

    end;

end;

procedure T_frmEscolhaTipoDePesquisaDuplicatas.pnl_rodapeClick(
  Sender: TObject);
begin

     close;
     Release;

end;

end.
