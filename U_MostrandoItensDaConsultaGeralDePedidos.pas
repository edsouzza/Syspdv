unit U_MostrandoItensDaConsultaGeralDePedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls,DateUtils, ToolEdit,
  CurrEdit, Grids, DBGrids, Menus;

type
  T_frmMostraItensDaConsPedidos = class(TForm)
    pan_titulo: TPanel;
    lblHoraAtual: TLabel;
    lblDataDoDia: TLabel;
    lbl45: TLabel;
    lblStatusLogoff: TLabel;
    panel_Produtos: TPanel;
    panel_total: TPanel;
    Grid_DetalhesDoPedido: TDBGrid;
    pan_botoes: TPanel;
    GroupBox1: TGroupBox;
    edt_pedido: TLabel;
    GroupBox2: TGroupBox;
    edt_IDPedidoAberto: TEdit;
    btnSair: TSpeedButton;
    btnMostrarItens: TButton;
    GroupBox3: TGroupBox;
    btnImprimirPedido: TSpeedButton;
    btnCancelarPedido: TSpeedButton;
    lblFornecedor: TStaticText;
    lblStatus: TStaticText;
    GroupBox4: TGroupBox;
    lblPrazo: TLabel;
    GroupBox5: TGroupBox;
    lblNF: TLabel;
    db_ValorTotal: TDBEdit;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure AbrirTabelas;
    procedure FecharTabelas;
    procedure LimparTabelaPedidoTemp;
    procedure AbrirFecharTabelas;
    procedure edt_QuantidadeProdutoPedidoKeyPress(Sender: TObject;
      var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnMostrarItensClick(Sender: TObject);
    procedure MostrarOsItensDoPedido;
    procedure btnImprimirPedidoClick(Sender: TObject);
    procedure btnCancelarPedidoClick(Sender: TObject);
    procedure VerificarSePedidoTemItens;


  private
    { Private declarations }
    NumPedidoSelecionado : string;

  public
    { Public declarations }

    ValorUnitarioItemProdutoPedido, ValorAtualizadoAposCadastro,ValorTotalPedido,
    ValorAtualizadoAposDelecao, ValorLiquidoItemProdutoPedido, ValorTotalItemProdutoPedido,ValorItemDeletado,
    Qde_deletada, QuantidadeItemProdutoPedido, ValorTotalInicial, ValorTotalConvertido,ValorItemPraDeletarNaExclusao  : double;

    proxNumeDetalhe, proxNumItens, NumeroDaComandaAberta, proxNumComanda,Id_Produto, Id_FuncLogado, Id_Pedido : integer;
    DataDoDia         : TDate;
    PedidoSemItens    : boolean;

  end;

var
  _frmMostraItensDaConsPedidos: T_frmMostraItensDaConsPedidos;
            

implementation

uses U_dmDados, U_BiblioSysSalao, U_dmPesquisas, U_dmDadosSegundo,
  SqlExpr,DBClient, U_principal, DB, U_EscolhaDoProdutoParaPedido,
  U_ConsPedidosPorPeriodo, U_EscolhaProdutoParaAtualizarPedido,
  U_ConsTodosPedidos, U_QRelImprimePedido;


{$R *.dfm}

procedure T_frmMostraItensDaConsPedidos.FormCreate(Sender: TObject);
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

    //Recebe a data atual por padr�o

    lblDataDoDia.Caption         := DateToStr(now);
    lblHoraAtual.Caption         := timetoStr(time);
    lblStatusLogoff.Caption      := IdentificarUsuarioLogado;
    AbrirTabelas;


end;

procedure T_frmMostraItensDaConsPedidos.FormShow(Sender: TObject);
begin

    LimparTabelaPedidoTemp;
    edt_pedido.Caption    := _frmConsTodosPedidos.NumPedidoSelecionado;
    pan_titulo.Caption    := 'Visualizando os �tens do pedido n� '+(_frmConsTodosPedidos.NumPedidoSelecionado);
    lblFornecedor.Caption := _frmConsTodosPedidos.NomeFornecedor;
    lblStatus.Caption     := _frmConsTodosPedidos.StatusDoPedido;
    lblNF.Caption         := _frmConsTodosPedidos.NumeroDaNF;

    btnMostrarItensClick(self);

    if lblNF.Caption <> '0' then btnImprimirPedido.Enabled := true;

end;

procedure T_frmMostraItensDaConsPedidos.MostrarOsItensDoPedido;
begin

          //IDENTIFICANDO O PEDIDO A SER MOSTRADO

          NumPedidoSelecionado  := edt_pedido.Caption;

          with DM_Pesq.Qry_Geral do
          begin

              close;
              sql.Clear;
              sql.Add('SELECT c.id_pedido, c.numpedido, c.prazo_id, c.status, p.prazo FROM c_pedido c, prazos p WHERE c.numpedido = :pIDPedido AND c.prazo_id = p.id_prazo');
              Params.ParamByName('pIDPedido').Value := NumPedidoSelecionado;
              open;

              if not IsEmpty then begin

                  Id_Pedido               := DM_Pesq.Qry_Geral.FieldByName('numpedido').AsInteger;
                  edt_IDPedidoAberto.Text := IntToStr(Id_Pedido);
                  lblPrazo.Caption        := DM_Pesq.Qry_Geral.FieldByName('prazo').AsString;

                  if (DM_Pesq.Qry_Geral.FieldByName('status').AsString = 'F')then
                       btnCancelarPedido.Enabled := false;

              end;


          end;


         //COPIANDO OS ITENS DA TABELA I_PEDIDO PARA TABELA T_PEDIDO

         if dm_DadosSegundo.cds_CPedido.Locate('numpedido',NumPedidoSelecionado,[]) then
         begin

                _Sql := 'INSERT INTO t_pedido (id_pedidotemp, pedido_id, produto_id, vl_unitario, qde, '+
                        'vl_totalitem) select * FROM i_pedido WHERE pedido_id = :pNumPedido';

                 with DM_Pesq.Qry_Geral do
                 begin

                     close;
                     sql.Clear;
                     sql.Add(_Sql);
                     Params.ParamByName('pNumPedido').AsInteger := Id_Pedido;
                     ExecSQL();

                 end;

                 AbrirFecharTabelas;
         end;

end;


procedure T_frmMostraItensDaConsPedidos.btnMostrarItensClick(Sender: TObject);
begin

     MostrarOsItensDoPedido;

end;

procedure T_frmMostraItensDaConsPedidos.LimparTabelaPedidoTemp;
begin  

     With DM_Pesq.Qry_Geral do begin

        Close;
        SQL.Clear;
        SQL.Add('Delete FROM t_pedido');
        ExecSQL;

     end;        

end;

procedure T_frmMostraItensDaConsPedidos.AbrirTabelas;
begin

    dm_DadosSegundo.cds_ipedido.Active               := true;
    dm_DadosSegundo.cds_TPedido.Active               := true;
    dm_DadosSegundo.cds_CPedido.Active               := true;

end;

procedure T_frmMostraItensDaConsPedidos.FecharTabelas;
begin

    dm_DadosSegundo.cds_ipedido.Active               := false;
    dm_DadosSegundo.cds_TPedido.Active               := false;
    dm_DadosSegundo.cds_CPedido.Active               := false;

end;


procedure T_frmMostraItensDaConsPedidos.AbrirFecharTabelas;
begin

    dm_DadosSegundo.cds_ipedido.Active               := false;
    dm_DadosSegundo.cds_TPedido.Active               := false;
    dm_DadosSegundo.cds_CPedido.Active               := false;

    dm_DadosSegundo.cds_ipedido.Active               := true;
    dm_DadosSegundo.cds_TPedido.Active               := true;
    dm_DadosSegundo.cds_CPedido.Active               := true;

end;



procedure T_frmMostraItensDaConsPedidos.edt_QuantidadeProdutoPedidoKeyPress(
  Sender: TObject; var Key: Char);
begin

     // PARA DBEDIT ACEITAR APENAS NUMEROS
        If NOT (Key in['0'..'9',',',#8,#13]) then begin Key:=#0;end;

end;


procedure T_frmMostraItensDaConsPedidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

    release;

end;

procedure T_frmMostraItensDaConsPedidos.FormKeyPress(Sender: TObject;
  var Key: Char);
begin

      // Enter por Tab
      //verifica se a tecla pressionada � a tecla ENTER, conhecida pelo Delphi como #13
      If key = #13 then
      Begin
      //se for, passa o foco para o pr�ximo campo, zerando o valor da vari�vel Key
      Key:= #0;
      Perform(Wm_NextDlgCtl,0,0);
      end;

end;

procedure T_frmMostraItensDaConsPedidos.btnSairClick(Sender: TObject);
begin
    close;
    release;
end;


procedure T_frmMostraItensDaConsPedidos.btnImprimirPedidoClick(
  Sender: TObject);
begin

     with Q_RelImprimePedido.cds_RelImprimePedido do
     begin

        Close;
        Params.ParamByName('pIDPedido').AsInteger  :=  StrToInt(edt_IDPedidoAberto.Text);
        Open;

        with Q_RelImprimePedido do
        begin

          cds_RelImprimePedido.Active := True;
          lblNomeUsuarioLogado.Caption := lblStatusLogoff.Caption;
          Preview;

        end;
     end;
end;

procedure T_frmMostraItensDaConsPedidos.VerificarSePedidoTemItens;
begin

     with DM_Pesq.Qry_Geral do
     begin

          close;
          sql.Clear;
          sql.Add('SELECT pedido_id FROM i_pedido WHERE pedido_id = :pIDPedido');
          Params.ParamByName('pIDPedido').AsInteger := StrToInt(edt_Pedido.Caption);
          open;

          if IsEmpty then
          begin

              PedidoSemItens := true;

          end else begin

              PedidoSemItens := false;

          end;

     end;


end;

procedure T_frmMostraItensDaConsPedidos.btnCancelarPedidoClick(
  Sender: TObject);
var
  texto : string;
begin

       VerificarSePedidoTemItens;

       if ( PedidoSemItens )then
       begin

             texto:= 'Confirma o cancelamento deste pedido?';

             if Application.MessageBox(PChar(texto),'Cancelando o corrente pedido',MB_YESNO + MB_ICONQUESTION) = IdYes then
             begin

                     //DELETANDO O PEDIDO ATUAL QUE ESTA SEM ITENS
                     with DM_Pesq.Qry_Geral do
                     begin

                          close;
                          sql.Clear;
                          sql.Add('DELETE FROM c_pedido WHERE id_pedido = :pIdPedido');
                          Params.ParamByName('pIdPedido').AsInteger  := StrToInt(edt_pedido.Caption);
                          ExecSQL();

                     end;

                     Application.MessageBox('O pedido foi cancelado com sucesso!', 'Cancelamento de pedido', MB_OK);
                     LimparTabelaPedidoTemp;
                     AbrirFecharTabelas;
                     close;

             end else begin

                 exit;

             end;

        end else begin

             // perguntar se deseja cancelar o pedidos e os �tens destinados a ele, se sim excluir pedido e �tens

             texto:= 'Confirma o cancelamento do pedido corrente e seus �tens?';

             if Application.MessageBox(PChar(texto),'Cancelando o Pedido',MB_YESNO + MB_ICONQUESTION) = IdYes then
             begin

                  //DELETANDO O PEDIDO ATUAL QUE ESTA SEM ITENS
                     with DM_Pesq.Qry_Geral do
                     begin

                          close;
                          sql.Clear;
                          sql.Add('DELETE FROM c_pedido WHERE id_pedido = :pIdPedido');
                          Params.ParamByName('pIdPedido').AsInteger  := StrToInt(edt_pedido.Caption);
                          ExecSQL();

                     end;

                 //DELETANDO OS �TENS DA TABELA I_PEDIDO
                 with DM_Pesq.Qry_Geral do
                 begin

                      close;
                      sql.Clear;
                      sql.Add('DELETE FROM i_pedido WHERE pedido_id = :pIdPedido');
                      Params.ParamByName('pIdPedido').AsInteger  := StrToInt(edt_pedido.Caption);
                      ExecSQL();

                 end;

                 Application.MessageBox('O pedido e seus �tens foram cancelados com sucesso!', 'Cancelamento de pedido', MB_OK);
                 LimparTabelaPedidoTemp;
                 AbrirFecharTabelas;
                 close;

             end
             else begin

                 exit;

             end;

       end;        

end;     

end.






