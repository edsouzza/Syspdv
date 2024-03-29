unit U_CadAplicacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, Grids, DBGrids, ExtCtrls;

type
  T_frmCadAplicacoes = class(TForm)
    panGridAplicacoes: TPanel;
    grProdutos: TGroupBox;
    GroupBox17: TGroupBox;
    btnSair: TSpeedButton;
    btnGravar: TSpeedButton;
    memoProduto: TDBMemo;
    GridProdutos: TDBGrid;
    GroupBox2: TGroupBox;
    chk_Produtos: TCheckBox;
    chk_Aplicacoes: TCheckBox;
    grFiltrar: TGroupBox;
    edtFiltrar: TEdit;
    grAplicacoes: TGroupBox;
    memoAplicacoes: TDBMemo;
    GridProdutos1: TDBGrid;
    btnLimparFiltro: TSpeedButton;
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FiltrarProdutoPeloNome;
    procedure FiltrarProdutoPelaAplicacao;
    procedure GravarAlteracao;
    procedure edtFiltrarChange(Sender: TObject);
    procedure edtFiltrarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridProdutosCellClick(Column: TColumn);
    procedure btnGravarClick(Sender: TObject);
    procedure memoProdutoClick(Sender: TObject);
    procedure memoProdutoChange(Sender: TObject);
    procedure chk_ProdutosClick(Sender: TObject);
    procedure chk_AplicacoesClick(Sender: TObject);
    procedure edtFiltrarClick(Sender: TObject);
    procedure btnLimparFiltroClick(Sender: TObject);


  private
    { Private declarations }
    IDProdutoPrincipal : integer;

  public
    { Public declarations }
  end;

var
  _frmCadAplicacoes: T_frmCadAplicacoes;

implementation

uses Q_RelImprimeEtiquetas, U_dmDados, U_dmDadosSegundo, U_dmPesquisas,
  U_BiblioSysSalao, DB, DBClient, SqlExpr;

{$R *.dfm}

procedure T_frmCadAplicacoes.btnSairClick(
  Sender: TObject);
begin   

    edtFiltrar.Clear;
    Close;
        
end;

procedure T_frmCadAplicacoes.FormCreate(Sender: TObject);
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

     dm_Conexao.cds_Similares.Active  := true;
     dm_Conexao.cds_CadProduto.Active := true;

end;

procedure T_frmCadAplicacoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

     dm_Conexao.cds_Similares.Active  := false;
     grFiltrar.Enabled                := false;
     grProdutos.Enabled               := false;
     grAplicacoes.Enabled             := false;
     chk_Produtos.Checked             := false;
     chk_Aplicacoes.Checked           := false;
     grProdutos.Visible               := true;
     grAplicacoes.Visible             := true;
     
end;

procedure T_frmCadAplicacoes.FormShow(Sender: TObject);
begin

     btnGravar.Enabled    := false;
     IDProdutoPrincipal   := dm_Conexao.cds_CadProduto.FieldByname('ID_PRODUTO').AsInteger;
     grFiltrar.Enabled    := false;
     grProdutos.Enabled   := false;
     grAplicacoes.Enabled := false;

end;

procedure T_frmCadAplicacoes.FiltrarProdutoPelaAplicacao;
var
  nome : string;
begin

      nome := edtFiltrar.Text;

      _Sql  := 'SELECT * FROM produtos WHERE obs LIKE (''%'+nome+'%'') AND id_produto > 1 AND status = '+QuotedStr('A')+' ORDER BY descricao';

      with dm_Conexao.cds_CadProduto do
      begin

            Close;
            CommandText:= (_Sql);
            Open;

      end;

      IDProdutoPrincipal   := dm_Conexao.cds_CadProduto.FieldByname('ID_PRODUTO').AsInteger;

end;

procedure T_frmCadAplicacoes.FiltrarProdutoPeloNome;
var
  nome : string;
begin

      nome := edtFiltrar.Text;

      _Sql  := 'SELECT * FROM produtos WHERE descricao LIKE (''%'+nome+'%'') AND id_produto > 1 AND status = '+QuotedStr('A')+' ORDER BY descricao';

      with dm_Conexao.cds_CadProduto do
      begin

            Close;
            CommandText:= (_Sql);
            Open;

      end;

      IDProdutoPrincipal    := dm_Conexao.cds_CadProduto.FieldByname('ID_PRODUTO').AsInteger;

end;

procedure T_frmCadAplicacoes.edtFiltrarChange(Sender: TObject);
begin

    if chk_Produtos.Checked then
    begin

         FiltrarProdutoPeloNome;

    end else if chk_Aplicacoes.Checked then
    begin

         FiltrarProdutoPelaAplicacao;

    end;

    btnLimparFiltro.Enabled := true;

end;

procedure T_frmCadAplicacoes.edtFiltrarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

      if KEY = VK_RETURN then
      begin

          edtFiltrar.Clear;

      end;

end;

procedure T_frmCadAplicacoes.GridProdutosCellClick(Column: TColumn);
begin

    IDProdutoPrincipal  := dm_Conexao.cds_CadProduto.FieldByname('ID_PRODUTO').AsInteger;

end;

procedure T_frmCadAplicacoes.GravarAlteracao;
begin

   if ( chk_Produtos.Checked ) then
   begin

       with DM_Pesq.Qry_Geral do
        begin

            Close;
            SQL.Clear;
            SQL.add('Update produtos SET obs = :pNovaObs WHERE Id_Produto = :pIdProduto');
            ParamByName('pNovaObs').AsString    :=  memoProduto.Text;
            ParamByName('pIdProduto').AsInteger :=  IDProdutoPrincipal;
            ExecSQL;

        end;

   end else if ( chk_Aplicacoes.Checked ) then
   begin

       with DM_Pesq.Qry_Geral do
        begin

            Close;
            SQL.Clear;
            SQL.add('Update produtos SET obs = :pNovaObs WHERE Id_Produto = :pIdProduto');
            ParamByName('pNovaObs').AsString    :=  memoAplicacoes.Text;
            ParamByName('pIdProduto').AsInteger :=  IDProdutoPrincipal;
            ExecSQL;

        end;

   end;


   Application.MessageBox('Aplicação atualizada com sucesso!!', 'Atualização de aplicações', MB_OK + MB_ICONINFORMATION);
   LogOperacoes(NomeDoUsuarioLogado, 'alteração no cadastro de aplicações');

end;

procedure T_frmCadAplicacoes.btnGravarClick(Sender: TObject);
begin

    GravarAlteracao;
    btnGravar.Enabled := false;
    edtFiltrar.Clear;
    edtFiltrar.SetFocus;

end;

procedure T_frmCadAplicacoes.memoProdutoClick(Sender: TObject);
begin

  btnGravar.Enabled := true;
  
end;

procedure T_frmCadAplicacoes.memoProdutoChange(Sender: TObject);
begin
     btnGravar.Enabled := true;
end;

procedure T_frmCadAplicacoes.chk_ProdutosClick(Sender: TObject);
begin

    if (chk_Produtos.Checked )then
    begin

        chk_Aplicacoes.Checked  := false;
        grAplicacoes.Visible    := false;
        grProdutos.Visible      := true;
        grFiltrar.Enabled       := true;
        grProdutos.Enabled      := true;
        grAplicacoes.Enabled    := true;
        btnLimparFiltro.Enabled := false;
        edtFiltrar.Clear;
        edtFiltrar.SetFocus;

    end;

end;

procedure T_frmCadAplicacoes.chk_AplicacoesClick(Sender: TObject);
begin

    if (chk_Aplicacoes.Checked )then
    begin

        chk_Produtos.Checked    := false;
        grProdutos.Visible      := false;
        grAplicacoes.Visible    := true;
        grFiltrar.Enabled       := true;
        grProdutos.Enabled      := true;
        grAplicacoes.Enabled    := true;
        btnLimparFiltro.Enabled := false;
        edtFiltrar.Clear;
        edtFiltrar.CharCase     := ecNormal;
        edtFiltrar.SetFocus;

    end;

end;   

procedure T_frmCadAplicacoes.edtFiltrarClick(Sender: TObject);
begin

    edtFiltrar.Clear;
    
end;

procedure T_frmCadAplicacoes.btnLimparFiltroClick(Sender: TObject);
begin

   edtFiltrar.Clear;
   btnLimparFiltro.Enabled := false;
   btnGravar.Enabled       := false;

end;



end.
