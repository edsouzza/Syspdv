unit U_AlteraPrecosVendaDoPedidoPorPercentual;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons, Mask, Encryp, DBCtrls,
  Menus, IniFiles, ToolEdit, CurrEdit, EditNum;

type
  T_frmAlteraPrecosDeVendaDoPedidoPorPercentual = class(TForm)
    pnl_cabecalho: TPanel;
    pnl_rodape: TPanel;
    btn_SairDaAlteracaoDosPrecos: TSpeedButton;
    pnl_DadosUsuario: TPanel;
    btn_GravarAlteracaoDosPrecos: TSpeedButton;
    grp1: TGroupBox;
    pnl1: TPanel;
    lbl2: TLabel;
    lbl5: TLabel;
    edt_PercentualDeAlteracao: TEditNum;
    procedure AbrirTabelas;
    procedure FecharAbrirTabelas;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure GravarAlteracaoDosPrecos;
    procedure btn_GravarAlteracaoDosPrecosClick(Sender: TObject);
    procedure btn_SairDaAlteracaoDosPrecosClick(Sender: TObject);
    procedure edt_PercentualDeAlteracaoKeyPress(Sender: TObject;
      var Key: Char);
    procedure FormShow(Sender: TObject);


  private
    { Private declarations }
    idDoProduto, idDoPedido : integer;


  public
    { Public declarations }

  end;

var
  _frmAlteraPrecosDeVendaDoPedidoPorPercentual: T_frmAlteraPrecosDeVendaDoPedidoPorPercentual;
  PrecoCusto, PrecoVenda, PercentualLucro : Currency;

implementation

uses U_dmDados, U_dmPesquisas, U_BiblioSysSalao, U_dmDadosSegundo,
  U_principal, U_FecharPedido, DB;

{$R *.dfm}


procedure T_frmAlteraPrecosDeVendaDoPedidoPorPercentual.FormCreate(Sender: TObject);
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


procedure T_frmAlteraPrecosDeVendaDoPedidoPorPercentual.AbrirTabelas;
begin

    dm_Conexao.cds_CadProduto.Active      := True;

end;


procedure T_frmAlteraPrecosDeVendaDoPedidoPorPercentual.FecharAbrirTabelas;
begin

    dm_Conexao.cds_CadProduto.Active      := False;
    dm_Conexao.cds_CadProduto.Active      := True;

end;


procedure T_frmAlteraPrecosDeVendaDoPedidoPorPercentual.FormClose(Sender: TObject; var Action: TCloseAction);
begin

    Release;

end;

procedure T_frmAlteraPrecosDeVendaDoPedidoPorPercentual.FormActivate(Sender: TObject);
begin

    AbrirTabelas;

end;

procedure T_frmAlteraPrecosDeVendaDoPedidoPorPercentual.FormKeyPress(Sender: TObject; var Key: Char);
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


procedure T_frmAlteraPrecosDeVendaDoPedidoPorPercentual.GravarAlteracaoDosPrecos;
var  texto : string;
begin

        texto := 'Os pre�os dos produtos desse pedido foram aumentados em ' +(edt_PercentualDeAlteracao.Text)+ '%';

        with DM_Pesq.Qry_Geral do
        begin

           Close;
           SQL.Clear;
           SQL.Add('SELECT pedido_id, produto_id FROM t_pedido WHERE pedido_id = :pPedido');
           Params.ParamByName('pPedido').AsInteger :=  idDoPedido;
           open;

           if not IsEmpty then
           begin

              idDoProduto :=  DM_Pesq.Qry_Geral.Fields[1].Value;

              with DM_Pesq.Qry_Auxiliar do
              begin

                 Close;
                 SQL.Clear;
                 SQL.Add('Update produtos Set precovenda = ((precovenda * (:pPercent))/100) + PrecoVenda');
                 Params.ParamByName('pPercent').AsInteger := StrToInt(edt_PercentualDeAlteracao.Text);
                 ExecSQL();

              end;

              FecharAbrirTabelas;

    end;

        Application.MessageBox(PChar(texto),'Confirma��o', MB_OK);
        LogOperacoes(NomeDoUsuarioLogado, 'alterado pre�o de venda dos produtos por percentual');

    end;

    Close;

end;

procedure T_frmAlteraPrecosDeVendaDoPedidoPorPercentual.btn_GravarAlteracaoDosPrecosClick(
  Sender: TObject);
var
  texto : string;
begin

       // perguntar se deseja alterar os valores de venda de todos os �tens deste pedido

       texto:= 'Confirma a altera��o dos valores de venda dos �tens deste pedido em ' +(edt_PercentualDeAlteracao.Text)+'% '+'?';

       if Application.MessageBox(PChar(texto),'Cancelando o Pedido',MB_YESNO + MB_ICONQUESTION) = IdYes then
       begin

             GravarAlteracaoDosPrecos;

       end else begin

             close;

       end;

end;

procedure T_frmAlteraPrecosDeVendaDoPedidoPorPercentual.btn_SairDaAlteracaoDosPrecosClick(
  Sender: TObject);
begin

   Close;

end;

procedure T_frmAlteraPrecosDeVendaDoPedidoPorPercentual.edt_PercentualDeAlteracaoKeyPress(
  Sender: TObject; var Key: Char);
begin
        

    btn_GravarAlteracaoDosPrecos.Enabled   := true;


end;

procedure T_frmAlteraPrecosDeVendaDoPedidoPorPercentual.FormShow(
  Sender: TObject);
begin

     idDoPedido            := strtoint(_frmFecharPedido.edt_IDPedidoAberto.text);
     pnl_cabecalho.Caption := 'Alterar pre�os de venda dos produtos do pedido N� '+ _frmFecharPedido.edt_pedido.Caption ;

end;

end.
