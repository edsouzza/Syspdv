unit U_EscolhaDeOpcaoParaPesquisarAtivosCreditos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  T_frmPesquisarOpcaoAtivoCredito = class(TForm)
    lstOpcoes: TListBox;
    procedure FormCreate(Sender: TObject);
    procedure lstOpcoesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lstOpcoesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
     procedure PreencherListaOpcoes;
     procedure SelecionarItem;
  public
    { Public declarations }
  end;

var
  _frmPesquisarOpcaoAtivoCredito: T_frmPesquisarOpcaoAtivoCredito;

implementation

uses U_BiblioSysSalao, U_Clientes, U_orcamento, U_EscolhaParaOrcamentos,
  U_GerenciarCreditosPagamentosComCartao;

{$R *.dfm}

procedure T_frmPesquisarOpcaoAtivoCredito.FormCreate(Sender: TObject);
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

procedure T_frmPesquisarOpcaoAtivoCredito.PreencherListaOpcoes;
begin
       lstOpcoes.Items.Add('POR NUMERO VENDA');
       lstOpcoes.Items.Add('POR N�. OR�AMENTO');
       lstOpcoes.Items.Add('POR  NOME  CLIENTE');
       lstOpcoes.Selected[0]:= true;  //selecionando o primeiro �tem
end;

procedure T_frmPesquisarOpcaoAtivoCredito.FormShow(Sender: TObject);
begin
   PreencherListaOpcoes;
end;

procedure T_frmPesquisarOpcaoAtivoCredito.lstOpcoesClick(Sender: TObject);
begin
     SelecionarItem;
     close;
end;

procedure T_frmPesquisarOpcaoAtivoCredito.SelecionarItem;
begin

     if lstOpcoes.Items[lstOpcoes.ItemIndex] = 'POR N�. OR�AMENTO' then
     begin
          escolheuPesquisarPorOrc := true;
          _frmGerenciarCreditosPagosComCartao.Pesquisar;

     end else if lstOpcoes.Items[lstOpcoes.ItemIndex] = 'POR  NOME  CLIENTE' then
     begin
           escolheuPesquisarPorNome := true;
           _frmGerenciarCreditosPagosComCartao.Pesquisar;

     end else if lstOpcoes.Items[lstOpcoes.ItemIndex] = 'POR NUMERO VENDA' then
     begin
          escolheuPesquisarPorVenda := true;
          _frmGerenciarCreditosPagosComCartao.Pesquisar;
     end;

end;

procedure T_frmPesquisarOpcaoAtivoCredito.lstOpcoesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
    if key=40 then key:=0
end;

end.
