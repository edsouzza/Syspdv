unit U_ControlaExclusoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, Mask, DBCtrls,SqlExpr,
  EditNum, DateUtils, ComCtrls, DBClient;

type
  T_frmControlaExclusoes = class(TForm)
    pan_titulo: TPanel;
    pan_botoes: TPanel;
    btnExcluir: TSpeedButton;
    btnSair: TSpeedButton;
    lblHoraAtual: TLabel;
    lblDataDoDia: TLabel;
    lblStatusLogoff: TLabel;
    lbl45: TLabel;
    PageControl1: TPageControl;
    TabClientes: TTabSheet;
    GroupBox9: TGroupBox;
    edtConsCliente: TEdit;
    gridClientes: TDBGrid;
    TabFornecedores: TTabSheet;
    TabFuncionarios: TTabSheet;
    TabProdutos: TTabSheet;
    TabServicos: TTabSheet;
    DBIdCliente: TDBEdit;
    DBIdFornecedor: TDBEdit;
    GroupBox1: TGroupBox;
    edtConsFornecedor: TEdit;
    GridFornecedores: TDBGrid;
    DBIdFuncionario: TDBEdit;
    GroupBox2: TGroupBox;
    edtConsFuncionario: TEdit;
    GridFuncionarios: TDBGrid;
    DBIdProduto: TDBEdit;
    GroupBox3: TGroupBox;
    edtConsProduto: TEdit;
    GridProdutos: TDBGrid;
    DBIdServico: TDBEdit;
    GroupBox4: TGroupBox;
    edtConsServico: TEdit;
    GridServicos: TDBGrid;
    txtNomeCliente: TStaticText;
    txtNomeFornecedor: TStaticText;
    txtNomeFuncionario: TStaticText;
    txtNomeProduto: TStaticText;
    txtNomeServico: TStaticText;
    DBCodBarras: TDBEdit;
    TabVendas: TTabSheet;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    edtNumVenda: TEdit;
    Panel1: TPanel;
    Label2: TLabel;
    DBMemoHistorico: TDBMemo;
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure AbrirTabelas;
    procedure FecharTabelas;
    procedure FecharAbrirTabelas;
    procedure Filtrar;
    procedure edtConsClienteChange(Sender: TObject);
    procedure edtConsClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtConsFornecedorChange(Sender: TObject);
    procedure edtConsFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TabFornecedoresShow(Sender: TObject);
    procedure TabClientesShow(Sender: TObject);
    procedure Filtrando(cds:TClientDataSet; nomeTabela:string; nomeCampo:string; nomeEdit:TEdit);
    procedure TabFuncionariosShow(Sender: TObject);
    procedure TabProdutosShow(Sender: TObject);
    procedure TabServicosShow(Sender: TObject);
    procedure edtConsFuncionarioKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtConsFuncionarioChange(Sender: TObject);
    procedure edtConsProdutoChange(Sender: TObject);
    procedure edtConsProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtConsServicoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtConsServicoChange(Sender: TObject);
    procedure excluirRegistro;
    procedure edtConsClienteClick(Sender: TObject);
    procedure edtConsFornecedorClick(Sender: TObject);
    procedure edtConsFuncionarioClick(Sender: TObject);
    procedure edtConsProdutoClick(Sender: TObject);
    procedure edtConsServicoClick(Sender: TObject);
    procedure gridClientesCellClick(Column: TColumn);
    procedure GridFornecedoresCellClick(Column: TColumn);
    procedure GridFuncionariosCellClick(Column: TColumn);
    procedure GridProdutosCellClick(Column: TColumn);
    procedure GridServicosCellClick(Column: TColumn);
    procedure MostrarDadosNosGrids;
    procedure DevolverItensAoEstoque;
    procedure EstornarValorDaVenda;
    procedure CancelarVendaEItens;
    procedure ExcluirVenda;
    procedure AtualizaHistoricoAtivos;
    procedure GravarCancelamentoNoHistorico;
    procedure FormShow(Sender: TObject);
    procedure TabVendasShow(Sender: TObject);
    procedure edtNumVendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);


  private
    { Private declarations }
    idProdutoExcluido, id_produtoItem, quantidadeItem  : integer;
    NumVenda : string;
    ValorDaVenda, ValorSaldoAnterior, ValorSaldoAtualAposMovto, estoqueAtualdoProduto, estoqueAtualizado : double;

  public
    { Public declarations }
  end;

var
  _frmControlaExclusoes: T_frmControlaExclusoes;


implementation

uses U_dmDados, U_dmPesquisas, U_BiblioSysSalao, U_dmDadosSegundo,
  U_principal, DB;


{$R *.dfm}


procedure T_frmControlaExclusoes.FormCreate(Sender: TObject);
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

    lblDataDoDia.Caption    :=  DateToStr(now);
    lblHoraAtual.Caption    :=  timetoStr(time);
    lblStatusLogoff.Caption :=  IdentificarUsuarioLogado;
   
end;

procedure T_frmControlaExclusoes.FormShow(Sender: TObject);
begin

     MostrarDadosNosGrids;

end;

procedure T_frmControlaExclusoes.btnExcluirClick(Sender: TObject);
begin

       opc:=Application.MessageBox('Confirma o desejo de excluir o registro selecionado?','Pergunta do Sistema',Mb_YesNo + Mb_IconQuestion);

       If opc=IdYes then begin

          //exclui o registro conforme as condicoes impostas
          excluirRegistro;

       end else
       begin

           MostrarDadosNosGrids;

       end;

end;

procedure T_frmControlaExclusoes.excluirRegistro;
begin

     //procedure de exclus�o do registro selecionado CLIENTES
    
    if ( PageControl1.ActivePage = tabclientes ) then
    begin

        //verifica se tem or�amentos em nome do cliente
        dm_DadosSegundo.cds_Orcamento.Active := true;
        if ( dm_DadosSegundo.cds_Orcamento.Locate('id_cliente',strtoint(DBIdCliente.Text),[] )) then
        begin

            Application.MessageBox('O cliente n�o pode ser exclu�do porque existem or�amentos em seu nome!','Exclus�o n�o permitida', MB_OK);
            edtConsCliente.Clear;
            edtConsCliente.SetFocus;
            MostrarDadosNosGrids;
            exit;

        end else
        //verifica se tem venda em nome do cliente
        dm_DadosSegundo.cds_Venda.Active := true;
        if ( dm_DadosSegundo.cds_Venda.Locate('cliente_id',strtoint(DBIdCliente.Text),[])) then
        begin

                      Application.MessageBox('O cliente n�o pode ser exclu�do porque existem vendas em seu nome!','Exclus�o n�o permitida', MB_OK);
                      edtConsCliente.Clear;
                      edtConsCliente.SetFocus;
                      MostrarDadosNosGrids;
                      exit;

        end else
        //verifica se tem O.S. em nome do cliente
        dm_DadosSegundo.cds_OS.Active := true;
        if ( dm_DadosSegundo.cds_OS.Locate('cliente_id',strtoint(DBIdCliente.Text),[])) then
        begin

                      Application.MessageBox('O cliente n�o pode ser exclu�do porque existem O.S. em seu nome!','Exclus�o n�o permitida', MB_OK);
                      edtConsCliente.Clear;
                      edtConsCliente.SetFocus;
                      MostrarDadosNosGrids;
                      exit;

        end else
        //verifica se tem agendamento em nome do cliente
        dm_DadosSegundo.cds_Agendamentos.Active := true;
        if ( dm_DadosSegundo.cds_Agendamentos.Locate('cliente',dm_Conexao.cds_DadosClientes.Fields[1].AsString,[])) then
        begin

                      Application.MessageBox('O cliente n�o pode ser exclu�do porque existem agendamentos em seu nome!','Exclus�o n�o permitida', MB_OK);
                      edtConsCliente.Clear;
                      edtConsCliente.SetFocus;
                      MostrarDadosNosGrids;
                      exit;

        end else

                     _Sql := 'DELETE FROM clientes WHERE cli_id = :pIDCliente';

                     with DM_Pesq.Qry_Geral do
                     begin

                         close;
                         sql.Clear;
                         sql.Add(_Sql);
                         Params.ParamByName('pIDCliente').AsInteger := StrToInt(DBIdCliente.text);
                         ExecSQL;

                     end;

                       Application.MessageBox('O cliente foi exclu�do com sucesso!','Informa��o do Sistema', MB_OK);
                       LogOperacoes(NomeDoUsuarioLogado, 'exclus�o de cliente');
                       edtConsCliente.Clear;
                       edtConsCliente.SetFocus;
                       MostrarDadosNosGrids;

     end;

//=============================================================================================================================//

        //procedure de exclus�o do registro selecionado FORNECEDORES

        if ( PageControl1.ActivePage = TabFornecedores ) then
        begin

              //verifica se tem pedidos com o nome do fornecedor e produtos cadastrados do mesmo
              dm_DadosSegundo.cds_CPedido.Active := true;
              if ( dm_DadosSegundo.cds_CPedido.Locate('fornecedor_id',strtoint(DBIdFornecedor.Text),[])) then
              begin

                            Application.MessageBox('O fornecedor n�o pode ser exclu�do porque existem pedidos em seu nome!','Exclus�o n�o permitida', MB_OK);
                            edtConsFornecedor.Clear;
                            edtConsFornecedor.SetFocus;
                            MostrarDadosNosGrids;
                            exit;

              end else
              //verifica se tem produto cadastrado deste fornecedor
              if ( dm_Conexao.cds_CadProduto.Locate('fornecedor_id',strtoint(DBIdFornecedor.Text),[])) then
              begin

                            Application.MessageBox('O fornecedor n�o pode ser exclu�do porque existem produtos cadastrados fornecido pelo mesmo!','Exclus�o n�o permitida', MB_OK);
                            edtConsFornecedor.Clear;
                            edtConsFornecedor.SetFocus;
                            MostrarDadosNosGrids;
                            exit;

              end else

                       _Sql := 'DELETE FROM fornecedores WHERE forne_id = :pIDFornecedor';

                       with DM_Pesq.Qry_Geral do
                       begin

                           close;
                           sql.Clear;
                           sql.Add(_Sql);
                           Params.ParamByName('pIDFornecedor').AsInteger := StrToInt(DBIdFornecedor.text);
                           ExecSQL;

                       end;

                         Application.MessageBox('O fornecedor foi exclu�do com sucesso!','Informa��o do Sistema', MB_OK);
                         LogOperacoes(NomeDoUsuarioLogado, 'exclus�o de fornecedor');
                         edtConsFornecedor.Clear;
                         edtConsFornecedor.SetFocus;
                         MostrarDadosNosGrids;

  end;

//=============================================================================================================================//

    //procedure de exclus�o do registro selecionado FUNCIONARIOS

    if ( PageControl1.ActivePage = TabFuncionarios ) then
    begin

        //verifica se tem or�amentos abertos pelo funcionario
        dm_DadosSegundo.cds_Orcamento.Active := true;
        if ( dm_DadosSegundo.cds_Orcamento.Locate('id_operador',strtoint(DBIdFuncionario.Text),[] )) then
        begin

            Application.MessageBox('O funcion�rio n�o pode ser exclu�do porque existem cota��es efetuadas pelo mesmo!','Exclus�o n�o permitida', MB_OK);
            edtConsFuncionario.Clear;
            edtConsFuncionario.SetFocus;
            MostrarDadosNosGrids;
            exit;

        end else
        //verifica se tem venda aberta pelo funcionario
        dm_DadosSegundo.cds_Venda.Active := true;
        if ( dm_DadosSegundo.cds_Venda.Locate('id_vendedor',strtoint(DBIdFuncionario.Text),[])) then
        begin

                      Application.MessageBox('O funcion�rio n�o pode ser exclu�do porque existem vendas efetuadas pelo mesmo!','Exclus�o n�o permitida', MB_OK);
                      edtConsFuncionario.Clear;
                      edtConsFuncionario.SetFocus;
                      MostrarDadosNosGrids;
                      exit;

        end else
        //verifica se tem pedido aberto pelo funcionario
        dm_DadosSegundo.cds_CPedido.Active := true;
        if ( dm_DadosSegundo.cds_Orcamento.Locate('id_operador',strtoint(DBIdFuncionario.Text),[])) then
        begin

                      Application.MessageBox('O funcion�rio n�o pode ser exclu�do porque existem pedidos cadastrados pelo mesmo!','Exclus�o n�o permitida', MB_OK);
                      edtConsFuncionario.Clear;
                      edtConsFuncionario.SetFocus;
                      MostrarDadosNosGrids;
                      exit;

        end else
        //verifica se tem servi�o cadastrado pelo funcionario
        dm_DadosSegundo.cds_Servicos.Active := true;
        if ( dm_DadosSegundo.cds_Servicos.Locate('operador_id',strtoint(DBIdFuncionario.Text),[])) then
        begin

                      Application.MessageBox('O funcion�rio n�o pode ser exclu�do porque existem servi�os cadastrados pelo mesmo!','Exclus�o n�o permitida', MB_OK);
                      edtConsFuncionario.Clear;
                      edtConsFuncionario.SetFocus;
                      MostrarDadosNosGrids;
                      exit;

        end else

                  //verifica se tem o.s. cadastrada pelo funcionario
                 _Sql := 'SELECT operador_id FROM os WHERE operador_id = :pIDOperador';

                 with DM_Pesq.Qry_Auxiliar do
                 begin

                     close;
                     sql.Clear;
                     sql.Add(_Sql);
                     Params.ParamByName('pIDOperador').AsInteger := StrToInt(DBIdFuncionario.text);
                     open;

                     if not IsEmpty then
                     begin

                          Application.MessageBox('O funcion�rio n�o pode ser exclu�do porque existem O.S. cadastradas pelo mesmo!','Exclus�o n�o permitida', MB_OK);
                          edtConsFuncionario.Clear;
                          edtConsFuncionario.SetFocus;
                          MostrarDadosNosGrids;
                          exit;

                     end else begin

                          _Sql := 'DELETE FROM funcionarios WHERE func_id = :pIDFuncionario';

                           with DM_Pesq.Qry_Geral do
                           begin

                               close;
                               sql.Clear;
                               sql.Add(_Sql);
                               Params.ParamByName('pIDFuncionario').AsInteger := StrToInt(DBIdFuncionario.text);
                               ExecSQL;

                           end;

                             Application.MessageBox('O funcion�rio foi exclu�do com sucesso!','Informa��o do Sistema', MB_OK);
                             LogOperacoes(NomeDoUsuarioLogado, 'exclus�o de funcion�rio');
                             edtConsFuncionario.Clear;
                             edtConsFuncionario.SetFocus;
                             MostrarDadosNosGrids;
                             FecharAbrirTabelas;
                         end;
                    end;
 end;
//=============================================================================================================================//

 //procedure de exclus�o do registro selecionado PRODUTOS

    if ( PageControl1.ActivePage = TabProdutos ) then
    begin

              //verifica se tem vendas com o produto
              dm_DadosSegundo.cds_ItensVendas.Active := true;
              if ( dm_DadosSegundo.cds_ItensVendas.Locate('id_produto',strtoint(DBIdProduto.Text),[]) ) then
              begin

                            Application.MessageBox('O produto n�o pode ser exclu�do porque existem vendas com o mesmo!','Exclus�o n�o permitida', MB_OK);
                            edtConsProduto.Clear;
                            edtConsProduto.SetFocus;
                            MostrarDadosNosGrids;
                            exit;

              end else
              //verifica se tem cotacao com o produto
              dm_DadosSegundo.cds_ICotacao.Active := true;
              if ( dm_DadosSegundo.cds_ICotacao.Locate('produto_id',strtoint(DBIdProduto.Text),[] ) ) then
              begin

                            Application.MessageBox('O produto n�o pode ser exclu�do porque existem cota��es com o mesmo!','Exclus�o n�o permitida', MB_OK);
                            edtConsProduto.Clear;
                            edtConsProduto.SetFocus;
                            MostrarDadosNosGrids;
                            exit;

              end else
              //verifica se tem pedido com o produto
              dm_DadosSegundo.cds_IPedido.Active := true;
              if ( dm_DadosSegundo.cds_IPedido.Locate('produto_id',strtoint(DBIdProduto.Text),[])) then
              begin

                            Application.MessageBox('O produto n�o pode ser exclu�do porque existem pedidos com o mesmo!','Exclus�o n�o permitida', MB_OK);
                            edtConsProduto.Clear;
                            edtConsProduto.SetFocus;
                            MostrarDadosNosGrids;
                            exit;

              end else

                           _Sql := 'DELETE FROM produtos WHERE id_produto = :pIDProduto';

                           with DM_Pesq.Qry_Geral do
                           begin

                               close;
                               sql.Clear;
                               sql.Add(_Sql);
                               Params.ParamByName('pIDProduto').AsInteger := StrToInt(DBIdProduto.text);
                               ExecSQL;

                           end;

                             Application.MessageBox('O produto foi exclu�do com sucesso!','Informa��o do Sistema', MB_OK);
                             LogOperacoes(NomeDoUsuarioLogado, 'exclus�o de produto');
                             edtConsProduto.Clear;
                             edtConsProduto.SetFocus;
                             MostrarDadosNosGrids;

    end;

//=============================================================================================================================//
  
    //procedure de exclus�o do registro selecionado SERVI�OS

    if ( PageControl1.ActivePage = TabServicos ) then
    begin

           _Sql := 'SELECT id_produto, cod_barras FROM produtos WHERE cod_barras = :pCodBarras';

           with DM_Pesq.Qry_Auxiliar do
           begin

               close;
               sql.Clear;
               sql.Add(_Sql);
               Params.ParamByName('pCodBarras').AsString := DBCodBarras.text;
               open;

               if not IsEmpty then
               begin

                    idProdutoExcluido := DM_Pesq.Qry_Auxiliar.Fields[0].AsInteger;

                    dm_DadosSegundo.cds_ItensVendas.Active := true;
                    if ( dm_DadosSegundo.cds_ItensVendas.Locate('id_produto',idProdutoExcluido,[]) ) then
                    begin

                            Application.MessageBox('O servi�o n�o pode ser exclu�do porque existem vendas com o mesmo!','Exclus�o n�o permitida', MB_OK);
                            edtConsServico.Clear;
                            edtConsServico.SetFocus;
                            MostrarDadosNosGrids;
                            exit;

                    end else begin

                           _Sql := 'DELETE FROM servicos WHERE id_servico = :pIDServico';

                           with DM_Pesq.Qry_Geral do
                           begin

                               close;
                               sql.Clear;
                               sql.Add(_Sql);
                               Params.ParamByName('pIDServico').AsInteger := StrToInt(DBIdServico.text);
                               ExecSQL;

                           end;

                            _Sql := 'DELETE FROM produtos WHERE cod_barras = :pCODBARRAS';

                           with DM_Pesq.Qry_Auxiliar do
                           begin

                               close;
                               sql.Clear;
                               sql.Add(_Sql);
                               Params.ParamByName('pCODBARRAS').AsString := DBCodBarras.text;
                               ExecSQL;

                           end;

                           Application.MessageBox('O servi�o foi exclu�do com sucesso!','Informa��o do Sistema', MB_OK);
                           LogOperacoes(NomeDoUsuarioLogado, 'exclus�o de servi�o');
                           edtConsServico.Clear;
                           edtConsServico.SetFocus;
                           MostrarDadosNosGrids;

                     end;

                     FecharAbrirTabelas;

              end;
         end;
     end;
end;


procedure T_frmControlaExclusoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  FecharTabelas;
  Release;

end;

procedure T_frmControlaExclusoes.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure T_frmControlaExclusoes.btnSairClick(Sender: TObject);
begin 

   FecharTabelas;
   close;

end;


procedure T_frmControlaExclusoes.AbrirTabelas;
begin

     dm_Conexao.cds_DadosClientes.Active       := true;
     dm_Conexao.cds_Fornecedor.Active          := true;
     dm_Conexao.cds_DadosFuncionarios.Active   := true;
     dm_Conexao.cds_CadProduto.Active          := true;
     dm_DadosSegundo.cds_Servicos.Active       := True;
     dm_DadosSegundo.cds_Orcamento.Active        := true;
     dm_DadosSegundo.cds_Venda.Active          := true;
     dm_DadosSegundo.cds_Agendamentos.Active        := true;
     dm_DadosSegundo.cds_OS.Active             := true;

end;

procedure T_frmControlaExclusoes.FecharTabelas;
begin

     dm_Conexao.cds_DadosClientes.Active       := false;
     dm_Conexao.cds_Fornecedor.Active          := false;
     dm_Conexao.cds_DadosFuncionarios.Active   := false;
     dm_Conexao.cds_CadProduto.Active          := false;
     dm_DadosSegundo.cds_Servicos.Active       := false;
     dm_DadosSegundo.cds_Orcamento.Active        := false;
     dm_DadosSegundo.cds_Venda.Active          := false;
     dm_DadosSegundo.cds_Agendamentos.Active        := false;
     dm_DadosSegundo.cds_OS.Active             := false;

end;

procedure T_frmControlaExclusoes.FecharAbrirTabelas;
begin

     dm_Conexao.cds_DadosClientes.Active       := false;
     dm_Conexao.cds_Fornecedor.Active          := false;
     dm_Conexao.cds_DadosFuncionarios.Active   := false;
     dm_Conexao.cds_CadProduto.Active          := false;
     dm_DadosSegundo.cds_Servicos.Active       := false;

     dm_Conexao.cds_DadosClientes.Active       := true;
     dm_Conexao.cds_Fornecedor.Active          := true;
     dm_Conexao.cds_DadosFuncionarios.Active   := true;
     dm_Conexao.cds_CadProduto.Active          := true;
     dm_DadosSegundo.cds_Servicos.Active       := True;

end;

procedure T_frmControlaExclusoes.Filtrando(cds: TClientDataSet; nomeTabela,
  nomeCampo: string; nomeEdit: TEdit);
begin    

       {esta procedure faz a filtragem durante a digita��o das tabelas apos a passagem dos parametros '+
       (cds, nometabela, nomecampo, edit que esta sendo digitado)}

       _Sql :=  'SELECT * FROM '+nomeTabela+' WHERE '+nomeCampo+' LIKE :pNome';

         with cds do
         begin

           Close;
           CommandText:= (_Sql);
           Params.ParamByName('pNome').AsString := '%'+(nomeEdit.Text)+'%';
           Open;

         end;

end;

procedure T_frmControlaExclusoes.Filtrar;
begin

        {passando os parametros conforme a aba(tab) escolhida
        cds: TClientDataSet; nomeTabela, nomeCampo: string; nomeEdit: TEdit}

        if ( PageControl1.ActivePage = tabclientes ) then
        begin

              Filtrando(dm_Conexao.cds_DadosClientes,'clientes','cli_nome',edtConsCliente);

        end else if ( PageControl1.ActivePage = tabfornecedores ) then
        begin

              Filtrando(dm_Conexao.cds_Fornecedor,'fornecedores','forne_nome',edtConsFornecedor);

         end else if ( PageControl1.ActivePage = tabfuncionarios ) then
        begin

              Filtrando(dm_Conexao.cds_DadosFuncionarios,'funcionarios','func_nome',edtConsFuncionario);

        end else if ( PageControl1.ActivePage = tabprodutos ) then
        begin

              Filtrando(dm_Conexao.cds_CadProduto,'produtos','descricao',edtConsProduto);

        end else if ( PageControl1.ActivePage = tabservicos ) then
        begin

              Filtrando(dm_DadosSegundo.cds_Servicos,'servicos','descricao',edtConsServico);

        end;


end;

procedure T_frmControlaExclusoes.edtConsClienteChange(Sender: TObject);
begin

     Filtrar;
    //mostra o nome no txt de acordo com o filtro
    txtNomeCliente.Caption := dm_Conexao.cds_DadosClientes.Fields[1].AsString;

end;

procedure T_frmControlaExclusoes.edtConsFornecedorChange(Sender: TObject);
begin

     Filtrar;
     //mostra o nome no txt de acordo com o filtro
     txtNomeFornecedor.Caption := dm_Conexao.cds_Fornecedor.Fields[1].AsString;

end;

procedure T_frmControlaExclusoes.edtConsServicoChange(Sender: TObject);
begin

    Filtrar;
    //mostra o nome no txt de acordo com o filtro
    txtNomeServico.Caption := dm_DadosSegundo.cds_Servicos.Fields[2].AsString;

end;

procedure T_frmControlaExclusoes.edtConsFuncionarioChange(Sender: TObject);
begin

    Filtrar;
    //mostra o nome no txt de acordo com o filtro
    txtNomeFuncionario.Caption := dm_Conexao.cds_DadosFuncionarios.Fields[2].AsString;

end;

procedure T_frmControlaExclusoes.edtConsProdutoChange(Sender: TObject);
begin

   Filtrar;
   //mostra o nome no txt de acordo com o filtro
   txtNomeProduto.Caption := dm_Conexao.cds_CadProduto.Fields[4].AsString;

end;


procedure T_frmControlaExclusoes.TabFornecedoresShow(Sender: TObject);
begin

   edtConsFornecedor.SetFocus;
   btnExcluir.Enabled := true;

end;

procedure T_frmControlaExclusoes.TabClientesShow(Sender: TObject);
begin

    edtConsCliente.SetFocus;
    btnExcluir.Enabled := true;

end;

procedure T_frmControlaExclusoes.TabFuncionariosShow(Sender: TObject);
begin

    edtConsFuncionario.SetFocus;
    btnExcluir.Enabled := true;

end;

procedure T_frmControlaExclusoes.TabProdutosShow(Sender: TObject);
begin

    edtConsProduto.SetFocus;
    btnExcluir.Enabled := true;

end;

procedure T_frmControlaExclusoes.TabServicosShow(Sender: TObject);
begin

  edtConsServico.SetFocus;
  btnExcluir.Enabled := true;

end;


procedure T_frmControlaExclusoes.edtConsFuncionarioKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

     if KEY = VK_RETURN then
     begin

          edtConsFuncionario.Clear;
          MostrarDadosNosGrids;

     end;

end;

procedure T_frmControlaExclusoes.edtConsProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

     if KEY = VK_RETURN then
     begin

          edtConsProduto.Clear;
          MostrarDadosNosGrids;

     end;

end;

procedure T_frmControlaExclusoes.edtConsServicoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

     if KEY = VK_RETURN then
     begin

          edtConsServico.Clear;
          MostrarDadosNosGrids;

     end;

end;

procedure T_frmControlaExclusoes.edtConsClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

     if KEY = VK_RETURN then
     begin

          edtConsCliente.Clear;
          MostrarDadosNosGrids;

     end;

end;

procedure T_frmControlaExclusoes.edtConsFornecedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

     if KEY = VK_RETURN then
     begin

          edtConsFornecedor.Clear;
          MostrarDadosNosGrids;

     end;

end;


procedure T_frmControlaExclusoes.edtConsClienteClick(Sender: TObject);
begin

    edtConsCliente.Clear;

end;

procedure T_frmControlaExclusoes.edtConsFornecedorClick(Sender: TObject);
begin

    edtConsFornecedor.Clear;

end;

procedure T_frmControlaExclusoes.edtConsFuncionarioClick(Sender: TObject);
begin

    edtConsFuncionario.Clear;

end;

procedure T_frmControlaExclusoes.edtConsProdutoClick(Sender: TObject);
begin

   edtConsProduto.Clear;

end;

procedure T_frmControlaExclusoes.edtConsServicoClick(Sender: TObject);
begin

    edtConsServico.Clear;

end;

procedure T_frmControlaExclusoes.gridClientesCellClick(Column: TColumn);
begin

  if dm_Conexao.cds_DadosClientes.FieldByName('cli_id').AsInteger > 1 then

      txtNomeCliente.Caption := dm_Conexao.cds_DadosClientes.FieldByName('cli_nome').AsString

  else

      btnExcluir.Enabled := false;


  if  dm_Conexao.cds_Fornecedor.FieldByName('forne_id').AsInteger = 1 then

      txtNomeCliente.Caption := dm_Conexao.cds_Fornecedor.FieldByName('forne_nome').AsString

  else

      btnExcluir.Enabled := false;


  if dm_Conexao.cds_DadosFuncionarios.FieldByName('func_id').AsInteger > 1 then

      txtNomeCliente.Caption := dm_Conexao.cds_DadosFuncionarios.FieldByName('func_nome').AsString

  else

      btnExcluir.Enabled := false;


  if dm_Conexao.cds_CadProduto.FieldByName('id_produto').AsInteger > 1 then

      txtNomeCliente.Caption := dm_Conexao.cds_CadProduto.FieldByName('descricao').AsString

  else

      btnExcluir.Enabled := false;


  if dm_DadosSegundo.cds_Servicos.FieldByName('id_servico').AsInteger > 1 then

      txtNomeCliente.Caption := dm_DadosSegundo.cds_Servicos.FieldByName('descricao').AsString

  else

      btnExcluir.Enabled := false;


end;

procedure T_frmControlaExclusoes.GridFornecedoresCellClick(
  Column: TColumn);
begin

    txtNomeFornecedor.Caption := dm_Conexao.cds_Fornecedor.Fields[1].AsString;

end;

procedure T_frmControlaExclusoes.GridFuncionariosCellClick(
  Column: TColumn);
begin

    txtNomeFuncionario.Caption := dm_Conexao.cds_DadosFuncionarios.Fields[2].AsString;

end;

procedure T_frmControlaExclusoes.GridProdutosCellClick(Column: TColumn);
begin

    txtNomeProduto.Caption := dm_Conexao.cds_CadProduto.Fields[4].AsString;

end;

procedure T_frmControlaExclusoes.GridServicosCellClick(Column: TColumn);
begin

    txtNomeServico.Caption := dm_DadosSegundo.cds_Servicos.Fields[2].AsString;

end;         


procedure T_frmControlaExclusoes.MostrarDadosNosGrids;
begin

            //limpando o txt
            txtNomeCliente.Caption     := '';
            txtNomeFornecedor.Caption  := '';
            txtNomeFuncionario.Caption := '';
            txtNomeProduto.Caption     := '';
            txtNomeServico.Caption     := '';

            //MOSTRAR TODOS OS CLIENTES COM EXCE��O DO CODBARRAS E INATIVOS

            with dm_Conexao.cds_DadosClientes do
            begin

                Close;
                CommandText:= ('SELECT * FROM clientes WHERE cli_id > 1 AND cli_status = :pStatus '+
                'ORDER BY cli_nome');
                Params.ParamByName('pStatus').AsString := 'A';
                Open;   

            end;

            DBIdCliente.DataSource          :=  dm_Conexao.ds_DadosClientes;
            DBIdCliente.DataField           := 'CLI_ID';

            with gridClientes do
            begin

              DataSource:=  dm_Conexao.ds_DadosClientes;
              Columns.Clear;

              Columns.Add;
              Columns[0].FieldName         := 'CLI_NOME';
              Columns[0].Width             := 775;
              Columns[0].Alignment         := taLeftJustify;
              Columns[0].Title.caption     := 'CLIENTES';
              Columns[0].Title.Font.Style  := [fsBold];
              Columns[0].Title.Font.color  := clBlue;
              Columns[0].Title.Alignment   := taCenter;

            end;


//======================================================================================================================

           //MOSTRAR TODOS OS FORNECEDORES ATIVOS

            with dm_Conexao.cds_Fornecedor do
            begin

                Close;
                CommandText:= ('SELECT * FROM fornecedores WHERE forne_status = :pStatus ORDER BY forne_nome');
                Params.ParamByName('pStatus').AsString  := 'A';
                Open;

            end;

            DBIdFornecedor.DataSource          :=  dm_Conexao.ds_Fornecedor;
            DBIdFornecedor.DataField           := 'FORNE_ID';

            with GridFornecedores do
            begin

              DataSource:=  dm_Conexao.ds_Fornecedor;
              Columns.Clear;

              Columns.Add;
              Columns[0].FieldName         := 'FORNE_NOME';
              Columns[0].Width             := 775;
              Columns[0].Alignment         := taLeftJustify;
              Columns[0].Title.caption     := 'FORNECEDORES';
              Columns[0].Title.Font.Style  := [fsBold];
              Columns[0].Title.Font.color  := clBlue;
              Columns[0].Title.Alignment   := taCenter;

            end;


//======================================================================================================================


       //MOSTRAR TODOS OS FUNCIONARIOS ATIVOS

            with dm_Conexao.cds_DadosFuncionarios do
            begin

                Close;
                CommandText:= ('SELECT * FROM funcionarios WHERE func_status = :pStatus AND func_nome <> :pFuncNome ORDER BY func_nome');
                Params.ParamByName('pStatus').AsString   := 'A';
                Params.ParamByName('pFuncNome').AsString := 'ADMINISTRACAO';
                Open;

            end;

            DBIdFuncionario.DataSource          :=  dm_Conexao.ds_DadosFuncionarios;
            DBIdFuncionario.DataField           := 'FUNC_ID';

            with GridFuncionarios do
            begin

              DataSource:=  dm_Conexao.ds_DadosFuncionarios;
              Columns.Clear;

              Columns.Add;
              Columns[0].FieldName         := 'FUNC_NOME';
              Columns[0].Width             := 775;
              Columns[0].Alignment         := taLeftJustify;
              Columns[0].Title.caption     := 'FUNCIONARIOS';
              Columns[0].Title.Font.Style  := [fsBold];
              Columns[0].Title.Font.color  := clBlue;
              Columns[0].Title.Alignment   := taCenter;

            end;

//======================================================================================================================

            //MOSTRAR TODOS OS PRODUTOS ATIVOS

            with dm_Conexao.cds_CadProduto do
            begin

                Close;
                CommandText:= ('SELECT * FROM produtos WHERE status = :pStatus ORDER BY descricao');
                Params.ParamByName('pStatus').AsString  := 'A';
                Open;

            end;

            DBIdProduto.DataSource          :=  dm_Conexao.ds_CadProduto;
            DBIdProduto.DataField           := 'ID_PRODUTO';

            with GridProdutos do
            begin

              DataSource:=  dm_Conexao.ds_CadProduto;
              Columns.Clear;

              Columns.Add;
              Columns[0].FieldName         := 'DESCRICAO';
              Columns[0].Width             := 775;
              Columns[0].Alignment         := taLeftJustify;
              Columns[0].Title.caption     := 'PRODUTOS';
              Columns[0].Title.Font.Style  := [fsBold];
              Columns[0].Title.Font.color  := clBlue;
              Columns[0].Title.Alignment   := taCenter;

            end;

//======================================================================================================================

             //MOSTRAR TODOS OS SERVI�OS ATIVOS

            with dm_DadosSegundo.cds_Servicos do
            begin

                Close;
                CommandText:= ('SELECT * FROM servicos WHERE status = :pStatus ORDER BY descricao');
                Params.ParamByName('pStatus').AsString  := 'A';
                Open;

            end;

            DBIdServico.DataSource          :=  dm_DadosSegundo.ds_Servicos;
            DBIdServico.DataField           := 'ID_SERVICO';

            DBCodBarras.DataSource          :=  dm_DadosSegundo.ds_Servicos;
            DBCodBarras.DataField           := 'CODBARRAS';


            with GridServicos do
            begin

              DataSource:=  dm_DadosSegundo.ds_Servicos;
              Columns.Clear;

              Columns.Add;
              Columns[0].FieldName         := 'DESCRICAO';
              Columns[0].Width             := 775;
              Columns[0].Alignment         := taLeftJustify;
              Columns[0].Title.caption     := 'SERVI�OS';
              Columns[0].Title.Font.Style  := [fsBold];
              Columns[0].Title.Font.color  := clBlue;
              Columns[0].Title.Alignment   := taCenter;

            end;


end;


procedure T_frmControlaExclusoes.DevolverItensAoEstoque;
begin

        _Sql := 'SELECT p.estoque_atual, p.id_produto, i.id_produto, i.id_venda, i.quantidade FROM produtos p, '+
                'itens_vendas i WHERE p.id_produto = i.id_produto AND i.id_venda = :pIDVenda';

        with DM_Pesq.Qry_Auxiliar do
        begin

            close;
            sql.Clear;
            sql.Add(_Sql);
            Params.ParamByName('pIDVenda').AsInteger   := StrToInt(NumVenda);
            open;

            while not eof do
            begin

                 estoqueAtualdoProduto :=  DM_Pesq.Qry_Auxiliar.Fields[0].AsFloat;
                 id_produtoItem        :=  DM_Pesq.Qry_Auxiliar.Fields[1].AsInteger;
                 quantidadeItem        :=  DM_Pesq.Qry_Auxiliar.Fields[4].AsInteger;

                 EstoqueAtualizado :=  ( estoqueAtualdoProduto + quantidadeItem );

                 //ATUALIZANDO O ESTOQUE NA TABELA PRODUTOS
                 with DM_Pesq.Qry_Geral do
                 begin

                      close;
                      sql.Clear;
                      sql.Add('UPDATE produtos SET Estoque_atual = :pEstoqueAtual WHERE id_produto = :pIdProduto');
                      Params.ParamByName('pEstoqueAtual').AsFloat    := EstoqueAtualizado;
                      Params.ParamByName('pIdProduto').AsInteger     := id_produtoItem;
                      ExecSQL();

                 end;
             next;
           end;
     end;
end;

procedure T_frmControlaExclusoes.EstornarValorDaVenda;
var
  proxNumIdCaixa  : integer;

begin

     // Selecionar o valor pago pela venda
    _Sql := 'SELECT vl_liquido FROM venda WHERE id_venda = :pIDVenda';

    with DM_Pesq.Qry_Auxiliar do
    begin

        close;
        sql.Clear;
        sql.Add(_Sql);
        Params.ParamByName('pIDVenda').AsInteger   := StrToInt(NumVenda);
        open;

        if not IsEmpty then
        begin

            ValorDaVenda := DM_Pesq.Qry_Auxiliar.Fields[0].Value;

        end;

    end;

     // Estornar o valor da venda excluida do CAIXA

      proxNumIdCaixa := 0;

     //VERIFICAR O VALOR DO SALDO ANTERIOR (ULTIMO REGISTRO)

      _Sql := 'select id_caixa, saldo_atual from caixa WHERE '+
              'id_caixa = (select max(id_caixa) from caixa)';

     With DM_Pesq.qry_Cod do
     begin

        Close;
        SQL.Clear;
        SQL.Add(_Sql);
        Open;

            if not IsEmpty then begin

                 ValorSaldoAnterior := DM_Pesq.qry_Cod.Fields[1].Value;

            end;

     end;

     ValorSaldoAtualAposMovto := ( ValorSaldoAnterior - ValorDaVenda );

     // ATUALIZANDO O CAIXA
     With DM_Pesq.qry_Cod do begin

        Close;
        SQL.Clear;
        SQL.Add('select max(id_caixa) from caixa');
        Open;

        if not IsEmpty then begin

           proxNumIdCaixa := DM_Pesq.qry_Cod.Fields[0].AsInteger + 1;

        end;

     end;
     
      dm_Conexao.cds_Caixa.Active := true;
      with dm_Conexao.cds_Caixa do
      begin

          Append;
          FieldByName('id_caixa').AsInteger        := proxNumIdCaixa;
          FieldByName('id_venda').AsInteger        := StrToInt(NumVenda);
          FieldByName('saldo_anterior').AsFloat    := ValorSaldoAnterior;
          FieldByName('valor_movimento').AsFloat   := -ValorDaVenda;
          FieldByName('saldo_atual').AsFloat       := ValorSaldoAtualAposMovto;
          FieldByName('data').AsDateTime           := date;
          FieldByName('historico').AsString        := 'ESTORNO DA VENDA N : '+ NumVenda;

          if (CaixaAberto) then
          begin

             FieldByName('status').AsString        := 'A';

          end else
          if (CaixaFechado) then
          begin

             FieldByName('status').AsString        := 'F';

          end;

          ApplyUpdates(0);

      end;

end;

procedure T_frmControlaExclusoes.AtualizaHistoricoAtivos;
var
  idCliente : integer;
begin

    idCliente := 0;

     // Selecionar o ID do cliente para atualizar o historico ativos
    _Sql := 'SELECT cliente_id FROM venda WHERE id_venda = :pIDVenda';

    with DM_Pesq.Qry_Auxiliar do
    begin

        close;
        sql.Clear;
        sql.Add(_Sql);
        Params.ParamByName('pIDVenda').AsInteger   := StrToInt(NumVenda);
        open;

        if not IsEmpty then
        begin

            idCliente := DM_Pesq.Qry_Auxiliar.Fields[0].Value;

        end;

    end;


      // ATUALIZANDO O HISTORICO DE ATIVOS

      With DM_Pesq.qry_Cod do begin

        Close;
        SQL.Clear;
        SQL.Add('select max(id_historicoativos) from historico_ativos');
        Open;

        if not IsEmpty then begin

           proxNum := DM_Pesq.qry_Cod.Fields[0].AsInteger + 1;

        end;

      end;

      DataDoDia  := date;
      numMes     := MonthOf(DataDoDia); //retorna o numero do mes corrente

      case (numMes) of

        1 : nomeMes := 'JAN';
        2 : nomeMes := 'FEV';
        3 : nomeMes := 'MAR';
        4 : nomeMes := 'ABR';
        5 : nomeMes := 'MAI';
        6 : nomeMes := 'JUN';
        7 : nomeMes := 'JUL';
        8 : nomeMes := 'AGO';
        9 : nomeMes := 'SET';
       10 : nomeMes := 'OUT';
       11 : nomeMes := 'NOV';
       12 : nomeMes := 'DEZ';

      end;

      dm_Conexao.cds_HistoricoAtivos.Active := true;
      with dm_Conexao.cds_HistoricoAtivos do
      begin

        append;
        FieldByname('id_historicoativos').AsInteger   := proxNum;
        FieldByname('cliente_id').AsInteger           := idCliente;
        FieldByname('vendedor_id').AsInteger          := IdFuncionarioLogado('status');
        FieldByname('id_venda').AsInteger             := StrToInt(NumVenda);
        FieldByname('vl_liquido').AsFloat             := -ValorDaVenda;
        FieldByName('historico').AsString             := 'ESTORNO  DA VENDA N : '+ NumVenda;
        FieldByName('flag_pagto').AsString            := 'EV';  //estorno de venda
        mes_ano                                       := nomeMes + '/' +  IntToStr(YearOf(DataDoDia));
        FieldByName('mesano').AsString                := mes_ano;
        FieldByname('data').AsDateTime                := date;

        ApplyUpdates(0);

      end;

      //localizar a venda cancelada e atualizar seu flag_pagto em historico_ativo

     with DM_Pesq.Qry_Geral do
     begin

          close;
          sql.Clear;
          sql.Add('UPDATE historico_ativos SET flag_pagto = '+QuotedStr('EV')+' WHERE id_venda = :pIdVenda');
          Params.ParamByName('pIdVenda').AsInteger  := StrToInt(NumVenda);
          ExecSQL();

     end;

end;

procedure T_frmControlaExclusoes.GravarCancelamentoNoHistorico;
var
  servRealizado, conteudoAtual, dataHistorico, horaHistorico  : string;
  posicaoAtual, IDCliente : integer;
begin

          //FAZER PESQUISA DO ID DO CLIENTE DA VENDA DIGITADA PARA PROSSEGUIR ABAIXO

          IDCliente := 0;
          
          _Sql := 'SELECT cliente_id FROM venda WHERE id_venda = :pIDVenda';

          with DM_Pesq.Qry_Geral do
          begin

              Close;
              sql.Clear;
              sql.Add(_Sql);
              Params.ParamByName('pIDVenda').AsInteger  := StrToInt(edtNumVenda.Text);
              Open;

              if not IsEmpty then
              begin

                 IDCliente := DM_Pesq.Qry_Geral.FieldByName('cliente_id').AsInteger;

              end;

              if ( dm_Conexao.cds_DadosClientes.Locate('CLI_ID',StrToInt( IntToStr(IDCliente) ),[]) )then
              begin

                  dm_Conexao.cds_DadosClientes.Edit;

                  //passando a dataAtual e horaAtual
                  horaHistorico := TimeToStr(time);
                  dataHistorico := DateToStr(date);

                  // Armazena a coluna atual em que se encontra o no dbMemo
                  posicaoAtual :=  DBMemoHistorico.SelStart;

                  // Armazena o texto contido anteriormente no dbMemo - Copy(objeto,inicio,fim);
                  conteudoAtual := Copy(DBMemoHistorico.Text,0,posicaoAtual);

                  //Preenchendo o dbMemo com o conteudo
                  DBMemoHistorico.SelStart := Length(conteudoAtual);

                  //adiciona o item vendido no historico do cliente
                  servRealizado := trim(dataHistorico + ' ' + horaHistorico + ' ..: A Venda N� '+ edtNumVenda.Text + ' foi cancelada.');

                  //Entrando com o servi�o inserido na venda
                  DBMemoHistorico.Lines.Add(servRealizado);

                  dm_Conexao.cds_DadosClientes.ApplyUpdates(0);

              end;
       end;
end;


procedure T_frmControlaExclusoes.CancelarVendaEItens;
begin

     //Cancelando a venda
     with DM_Pesq.Qry_Geral do
     begin

          close;
          sql.Clear;
          sql.Add('UPDATE venda SET status = '+QuotedStr('C')+' WHERE id_venda = :pIdVenda');
          Params.ParamByName('pIdVenda').AsInteger  := StrToInt(NumVenda);
          ExecSQL();

     end;

     //Cancelando os �tens da venda
      with DM_Pesq.Qry_Geral do
      begin

          close;
          sql.Clear;
          sql.Add('UPDATE itens_vendas SET flag_devolucao = '+QuotedStr('C')+' WHERE id_venda = :pIdVenda');
          Params.ParamByName('pIdVenda').AsInteger  := StrToInt(NumVenda);
          ExecSQL();

     end;        

end;

procedure T_frmControlaExclusoes.TabVendasShow(Sender: TObject);
begin

     edtNumVenda.SetFocus;
     btnExcluir.Enabled := false;

end;

procedure T_frmControlaExclusoes.ExcluirVenda;
begin

      NumVenda := edtNumVenda.Text;

      with DM_Pesq.Qry_Geral do
      begin

          Close;
          sql.Clear;
          sql.Add('SELECT id_venda FROM venda WHERE status='+QuotedStr('F')+' AND id_venda = :pIDVenda');
          Params.ParamByName('pIDVenda').AsInteger  := StrToInt(NumVenda);
          Open;

          if IsEmpty then
          begin

             Application.MessageBox('Esta venda j� esta cancelada, ou n�o existe, verifique!','N�o foi poss�vel excluir', MB_OK + MB_ICONWARNING);
             edtNumVenda.Clear;
             edtNumVenda.SetFocus;
             exit;

          end else begin

               opc:=Application.MessageBox('Confirma o desejo de excluir a venda selecionada?','Exclus�o da venda',Mb_YesNo + Mb_IconQuestion);

               If opc=IdYes then begin

                  //cancelando a venda
                  DevolverItensAoEstoque;
                  EstornarValorDaVenda;
                  CancelarVendaEItens;
                  AtualizaHistoricoAtivos;
                  GravarCancelamentoNoHistorico;
                  FecharAbrirTabelas;

                  Application.MessageBox('A venda foi cancelada e os �tens foram devolvidos ao estoque!',
                                          'Informa��o do Sistema', MB_OK + MB_ICONINFORMATION);
                  edtNumVenda.Clear;
                  edtNumVenda.SetFocus;

               end else
               begin

                   edtNumVenda.Clear;
                   edtNumVenda.SetFocus;

               end;
           end;
     end;
end;

procedure T_frmControlaExclusoes.edtNumVendaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

     if key = 13 then
     begin

         ExcluirVenda;

     end;

end;

end.



