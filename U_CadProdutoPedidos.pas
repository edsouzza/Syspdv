unit U_CadProdutoPedidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls, Grids, DBGrids, Mask, DBCtrls, DB, DateUtils;

type
  T_frmCadProdutoPedidos = class(TForm)
    pnl_cabecalho: TPanel;
    pnl_rodape: TPanel;
    pnl1: TPanel;
    bloco_campos: TGroupBox;
    lbl11: TLabel;
    lbl2: TLabel;
    Label26: TLabel;
    edt_DescricaoCadProduto: TEdit;
    DBCategoria: TDBLookupComboBox;
    DBFabricante: TDBLookupComboBox;
    DBIDCat: TDBEdit;
    btnConfirmaInclusao: TSpeedButton;
    btnRetornaDaInclusao: TSpeedButton;
    cod_barras: TImage;
    edt_CodigoProduto: TEdit;
    Label1: TLabel;
    DBIDFabr: TDBEdit;
    Label21: TLabel;
    Label20: TLabel;
    cmbAliquota: TComboBox;
    cmbUnidade: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure pnl_rodapeClick(Sender: TObject);
    procedure GravarProdutos;
    procedure btnRetornaDaInclusaoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConfirmaInclusaoClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure AbrirTabelas;
    procedure FecharTabelas;
    procedure FecharAbriTabelas;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBFabricanteClick(Sender: TObject);
    procedure DBFornecedorClick(Sender: TObject);
  private
    { Private declarations }
    escolheuFornecedor, escolheuFabricante : Boolean;
    IDFornecedor, IDFabricante : integer;

  public
    { Public declarations }

  end;

var
  _frmCadProdutoPedidos: T_frmCadProdutoPedidos;

implementation

uses U_dmDados, U_BiblioSysSalao, U_dmPesquisas,
   U_dmDadosSegundo, U_Cotacao, U_QdeCotacao, U_FecharCotacao,
  U_QdeFecharCotacao, SqlExpr, U_CadPedido;

{$R *.dfm}

procedure T_frmCadProdutoPedidos.FormCreate(Sender: TObject);
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

  AbrirTabelas;

end;

procedure T_frmCadProdutoPedidos.FormShow(Sender: TObject);
begin   

    DBCategoria.KeyValue                  := 1;
    DBFabricante.KeyValue                 := 1;
    escolheuFabricante                    := false;
    IDFornecedor                          := _frmCadPedido.idFornecedorEntrada;

    cod_barras.Picture.LoadFromFile('C:\Arquivos de programas\SysPdv\codigo_barras.gif');
    cod_barras.Transparent := true;


end;

procedure T_frmCadProdutoPedidos.pnl_rodapeClick(Sender: TObject);
begin
    close;
end;

procedure T_frmCadProdutoPedidos.GravarProdutos;
var
  proximoId : integer;
begin

      proximoId := 0;

      if escolheuFabricante then
                 IDFabricante   := StrToInt(DBIDFabr.Text)
                    else    IDFabricante := 0;


       With DM_Pesq.qry_Cod do begin

            Close;
            SQL.Clear;
            SQL.Add('select max(ID_PRODUTO) from PRODUTOS');
            Open;

            if not IsEmpty then begin

               proximoId := DM_Pesq.qry_Cod.Fields[0].AsInteger + 1;

            end;

       end;

       //extraindo o mes e ano para cadastro no banco
       DataDoDia                                   := date;
       mes_ano:= IntToStr(MonthOf(DataDoDia)) + '/' +  IntToStr(YearOf(DataDoDia));


       _Sql := 'INSERT INTO produtos(id_produto, categoria_id, fabricante_id, fornecedor_id, cod_barras, descricao, estoque_atual, '+
               'precovenda, datacad, status, tipo, mesano, unidade, aliquota,obs) VALUES (:pIDProduto, :pcat, :pfabr, :pforne, :pCodBarras, :pDescricao, '+
               ':pEstoqueAtual, :pPrecoVenda, :pDataCad, :pStatus, :pTipo, :pMesano, :pUnidade, :pAliquota, :pObs)';


       with DM_Pesq.Qry_Geral do
       begin

            close;
            sql.Clear;
            sql.Add(_Sql);
            Params.ParamByName('pIDProduto').Value       := proximoId;
            Params.ParamByName('pcat').AsInteger         := Strtoint(DBIDCat.Text);
            Params.ParamByName('pfabr').AsInteger        := IDFabricante;
            Params.ParamByName('pforne').AsInteger       := IDFornecedor;
            Params.ParamByName('pCodBarras').AsString    := edt_CodigoProduto.Text;
            Params.ParamByName('pDescricao').AsString    := edt_DescricaoCadProduto.Text;
            Params.ParamByName('pEstoqueAtual').AsFloat  := 0;
            Params.ParamByName('pDataCad').AsDateTime    := date;
            Params.ParamByName('pPrecoVenda').AsFloat    := 0;
            Params.ParamByName('pMesano').AsString       := mes_ano;
            Params.ParamByName('pStatus').AsString       := 'A';
            Params.ParamByName('pTipo').AsString         := 'P';
            Params.ParamByName('pUnidade').AsString      := cmbUnidade.Text;
            Params.ParamByName('pAliquota').AsString     := cmbAliquota.Text;
            Params.ParamByName('pObs').AsString          := 'ENTRADA INICIAL DO PRODUTO';
            ExecSQL();

       end;
       LogOperacoes(NomeDoUsuarioLogado, 'cadastro r�pido de produto');
       FecharAbriTabelas;

end;

procedure T_frmCadProdutoPedidos.btnRetornaDaInclusaoClick(
  Sender: TObject);
begin
    close;
end;


procedure T_frmCadProdutoPedidos.btnConfirmaInclusaoClick(Sender: TObject);
begin

  try
    GravarProdutos;
    Application.MessageBox('Cadastro efetuado com sucesso!', 'Ok', MB_OK);
    close;
  except
    Application.MessageBox('N�o foi poss�vel efetuar a grava��o com sucesso!', 'Verifique se todos os par�metros foram atendidos!', MB_OK);
    exit;
  end;

end;

procedure T_frmCadProdutoPedidos.FormKeyPress(Sender: TObject;
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

procedure T_frmCadProdutoPedidos.AbrirTabelas;
begin

    dm_DadosSegundo.cds_Categorias.Active := true;
    dm_Conexao.cds_Fabricante.Active      := true;
    dm_Conexao.cds_Fornecedor.Active      := true;

end;

procedure T_frmCadProdutoPedidos.FecharTabelas;
begin

    dm_DadosSegundo.cds_Categorias.Active := false;
    dm_Conexao.cds_Fabricante.Active      := false;
    dm_Conexao.cds_Fornecedor.Active      := false;

end;

procedure T_frmCadProdutoPedidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

     FecharTabelas;

end;

procedure T_frmCadProdutoPedidos.DBFabricanteClick(Sender: TObject);
begin

     escolheuFabricante := true;

end;

procedure T_frmCadProdutoPedidos.DBFornecedorClick(Sender: TObject);
begin

    escolheuFornecedor := true;

end;

procedure T_frmCadProdutoPedidos.FecharAbriTabelas;
begin

    dm_DadosSegundo.cds_Categorias.Active := false;
    dm_Conexao.cds_Fabricante.Active      := false;
    dm_Conexao.cds_Fornecedor.Active      := false;
    dm_Conexao.cds_CadProduto.Active      := false;

    dm_DadosSegundo.cds_Categorias.Active := true;
    dm_Conexao.cds_Fabricante.Active      := true;
    dm_Conexao.cds_Fornecedor.Active      := true;
    dm_Conexao.cds_CadProduto.Active      := true;

end;

end.
