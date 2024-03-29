unit U_AlteraQdeEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons, Mask, Encryp, DBCtrls,
  Menus, IniFiles, ToolEdit, CurrEdit;

type
  T_frmAlteraQdeEstoque = class(TForm)
    pnl_cabecalho: TPanel;
    pnl_rodape: TPanel;
    btn_Cancelar: TSpeedButton;
    btn_Sair: TSpeedButton;
    pnl_DadosUsuario: TPanel;
    btn_GravarNovoEstoque: TSpeedButton;
    lblHoraAtual: TLabel;
    lblDataDoDia: TLabel;
    pnl1: TPanel;
    lbl2: TLabel;
    lbl4: TLabel;
    edt_EstoqueAtual: TEdit;
    edt_DESCRICAO: TDBEdit;
    procedure btn_SairClick(Sender: TObject);
    procedure AbrirTabelas;
    procedure AbrirFecharTabelas;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PesquisaProduto;
    procedure FormShow(Sender: TObject);
    procedure GravarAlteracaoDoEstoqueAtual;
    procedure btn_CancelarClick(Sender: TObject);
    procedure edt_EstoqueAtualKeyPress(Sender: TObject; var Key: Char);
    procedure edt_EstoqueAtualClick(Sender: TObject);
    procedure btn_GravarNovoEstoqueClick(Sender: TObject);


  private
    { Private declarations }


  public
    { Public declarations }


  end;

var
  _frmAlteraQdeEstoque: T_frmAlteraQdeEstoque;
  EstoqueMinimo : Integer;

implementation

uses U_dmDados, U_dmPesquisas, U_BiblioSysSalao, U_dmDadosSegundo,
  U_principal, U_Produtos;

{$R *.dfm}


procedure T_frmAlteraQdeEstoque.FormCreate(Sender: TObject);
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

   lblDataDoDia.Caption:=  DateToStr(date);
   lblHoraAtual.Caption:=  timetoStr(time); 

end;


procedure T_frmAlteraQdeEstoque.AbrirTabelas;
begin

    dm_Conexao.cds_CadProduto.Active      := True;

end;


procedure T_frmAlteraQdeEstoque.AbrirFecharTabelas;
begin

    dm_Conexao.cds_CadProduto.Active      := False;
    dm_Conexao.cds_CadProduto.Active      := True;

end;


procedure T_frmAlteraQdeEstoque.btn_SairClick(Sender: TObject);
begin

    Close;
    btn_Cancelar.Enabled        := False;
    btn_GravarNovoEstoque.Enabled := False;

end;


procedure T_frmAlteraQdeEstoque.FormClose(Sender: TObject; var Action: TCloseAction);
begin

    Release;

end;

procedure T_frmAlteraQdeEstoque.FormActivate(Sender: TObject);
begin

    AbrirTabelas;

end;

procedure T_frmAlteraQdeEstoque.FormKeyPress(Sender: TObject; var Key: Char);
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


procedure T_frmAlteraQdeEstoque.PesquisaProduto;
begin
   
    with DM_Pesq.Qry_Geral do
    begin

       Close;
       SQL.Clear;
       SQL.Add('Select Estoque_Atual from '+
       'Produtos Where Descricao = :pDescr');
       Params.ParamByName('pDescr').AsString := edt_DESCRICAO.Text;
       Open;


       if not IsEmpty then begin

           edt_EstoqueAtual.Text := FloatToStr(DM_Pesq.Qry_Geral.Fields[0].AsFloat);

       end;

    end;

end;

procedure T_frmAlteraQdeEstoque.FormShow(Sender: TObject);
begin

    PesquisaProduto;

end;

procedure T_frmAlteraQdeEstoque.btn_CancelarClick(Sender: TObject);
begin

    btn_Cancelar.Enabled        := False;
    btn_GravarNovoEstoque.Enabled := False;
    Close;
    
end;

procedure T_frmAlteraQdeEstoque.edt_EstoqueAtualKeyPress(Sender: TObject;
  var Key: Char);
begin

    btn_Cancelar.Enabled          := True;
    btn_GravarNovoEstoque.Enabled := True;
    

end;

procedure T_frmAlteraQdeEstoque.edt_EstoqueAtualClick(Sender: TObject);
begin

     edt_EstoqueAtual.SelStart := 0;
     edt_EstoqueAtual.SelLength:= Length(edt_EstoqueAtual.Text);

end;

procedure T_frmAlteraQdeEstoque.btn_GravarNovoEstoqueClick(Sender: TObject);
begin

    GravarAlteracaoDoEstoqueAtual;
    AbrirFecharTabelas;
    PesquisaProduto;
    btn_GravarNovoEstoque.Enabled:= False;
    btn_Cancelar.Enabled:= False;

end;

procedure T_frmAlteraQdeEstoque.GravarAlteracaoDoEstoqueAtual;
begin


    with DM_Pesq.Qry_Geral do
    begin

       Close;
       SQL.Clear;
       SQL.Add('Update Produtos Set Estoque_Atual = :pEstAtual Where Descricao = :pDescr');
       Params.ParamByName('pEstAtual').AsFloat    := StrToFloat(edt_estoqueatual.Text);
       Params.ParamByName('pDescr').AsString      := edt_DESCRICAO.Text;
       ExecSQL();

    end;

    dm_Conexao.cds_CadProduto.ApplyUpdates(0);

    Application.MessageBox('O Estoque Atual do produto foi alterado com sucesso!', 'Confirma��o', MB_OK);
    LogOperacoes(NomeDoUsuarioLogado, 'altera��o na quantidade do estoque de um produto');
    close;

end;

end.
