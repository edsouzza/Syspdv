unit U_EscolhaDoProdutoParaReativacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls, Grids, DBGrids, Mask, DBCtrls;

type
  T_frmEscolhaProdutoParaReativacao = class(TForm)
    pnl_cabecalho: TPanel;
    pnl_rodape: TPanel;
    pnl1: TPanel;
    Grid_ProdutosReativacao: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure PopulandoGridProdutosParaReativacao;
    procedure pnl_rodapeClick(Sender: TObject);
    procedure Grid_ProdutosReativacaoCellClick(Column: TColumn);
    procedure ReativarProduto;

  private
    { Private declarations }
     NomeProduto, texto : string;
  public
    { Public declarations }

  end;

var
  _frmEscolhaProdutoParaReativacao: T_frmEscolhaProdutoParaReativacao;

implementation

uses U_dmDados, U_BiblioSysSalao, U_dmPesquisas,
     DB, U_Produtos;

{$R *.dfm}

procedure T_frmEscolhaProdutoParaReativacao.FormCreate(Sender: TObject);
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

  PopulandoGridProdutosParaReativacao;

end;

procedure T_frmEscolhaProdutoParaReativacao.PopulandoGridProdutosParaReativacao;
begin


          _Sql := 'SELECT * FROM produtos WHERE status = :pStatus AND id_produto > 1 ORDER BY descricao';


            with DM_Pesq.cdsPesqProduto do begin

                Close;
                CommandText:=(_Sql);
                Params.ParamByName('pStatus').AsString   :=  'I';
                Open;

                if IsEmpty then begin

                   Grid_ProdutosReativacao.Enabled := false;

                end;


            end;

            with Grid_ProdutosReativacao do
            begin

              DataSource:=  DM_Pesq.dsPesqProduto;
              Columns.Clear;

              Columns.Add;
              Columns[0].FieldName       := 'DESCRICAO';
              Columns[0].Width           := 540;
              Columns[0].Alignment       := taLeftJustify;

            end;

end;

procedure T_frmEscolhaProdutoParaReativacao.pnl_rodapeClick(Sender: TObject);
begin

   close;

end;

procedure T_frmEscolhaProdutoParaReativacao.Grid_ProdutosReativacaoCellClick(
  Column: TColumn);
begin

   ReativarProduto;

end;

procedure T_frmEscolhaProdutoParaReativacao.ReativarProduto;
begin

       NomeProduto :=  DM_Pesq.cdsPesqProduto.Fieldbyname('descricao').asString;

      texto:= 'Confirma o desejo de reativar o Produto '+ NomeProduto + '?';

      if Application.MessageBox(PChar(texto),'Reativação de Produtos',MB_YESNO + MB_ICONQUESTION) = IdYes then
      begin

              with DM_Pesq.cdsPesqProduto do
              begin

                edit;
                Fieldbyname('status').AsString := 'A';
                ApplyUpdates(0);

              end;

                Application.MessageBox('O Produto foi reativado com sucesso!',
                'Reativado...', MB_OK);
                LogOperacoes(NomeDoUsuarioLogado, 'reativação de produto');

              end else begin

                  DM_Pesq.cdsPesqProduto.CancelUpdates;

      end;

              _frmProdutos.Abrir_Fechar_Tabelas;
              PopulandoGridProdutosParaReativacao;


end;

end.
