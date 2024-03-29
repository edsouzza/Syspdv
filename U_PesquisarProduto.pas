unit U_PesquisarProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons, Mask, Encryp, DBCtrls,
  Menus, IniFiles, ToolEdit, CurrEdit;

type
  T_frmConsultarProduto = class(TForm)
    pnl_cabecalho: TPanel;
    pnl_rodape: TPanel;
    btn_Sair: TSpeedButton;
    pnl_DadosUsuario: TPanel;
    lblHoraAtual: TLabel;
    lblDataDoDia: TLabel;
    pnl1: TPanel;
    GroupBox1: TGroupBox;
    lbl2: TLabel;
    lbl4: TLabel;
    edt_descricao: TStaticText;
    GroupBox2: TGroupBox;
    edt_CodBarProduto: TEdit;
    edt_precovenda: TStaticText;
    Label1: TLabel;
    btnLimpar: TSpeedButton;
    Label2: TLabel;
    edt_estoque: TStaticText;
    procedure btn_SairClick(Sender: TObject);
    procedure AbrirTabelas;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PesquisarCodBarProduto;
    procedure edt_CodBarProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnLimparClick(Sender: TObject);


  private
    { Private declarations }


  public
    { Public declarations }


  end;

var
  _frmConsultarProduto: T_frmConsultarProduto;
  EstoqueMinimo : Integer;

implementation

uses U_dmDados, U_dmPesquisas, U_BiblioSysSalao, U_dmDadosSegundo,
  U_principal, U_Produtos;

{$R *.dfm}


procedure T_frmConsultarProduto.FormCreate(Sender: TObject);
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

   AbrirTabelas;

end;


procedure T_frmConsultarProduto.AbrirTabelas;
begin

    DM_Pesq.cdsPesqProduto.Active         := true;

end;


procedure T_frmConsultarProduto.btn_SairClick(Sender: TObject);
begin

    Close;

end;


procedure T_frmConsultarProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin

    Release;

end;

procedure T_frmConsultarProduto.FormKeyPress(Sender: TObject; var Key: Char);
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


procedure T_frmConsultarProduto.PesquisarCodBarProduto;
begin

      NomeDoProduto:= edt_CodBarProduto.Text;

      _Sql := ('SELECT * FROM produtos WHERE descricao <> '+QuotedStr('PRODUTO NAO CADASTRADO')+' '+
              'AND descricao LIKE ''%'+NomeDoProduto+'%'' AND status = '+QuotedStr('A')+' AND tipo = '+QuotedStr('P')+''+
              'OR COD_ALT1 LIKE ''%'+NomeDoProduto+'%'' OR COD_ALT2 LIKE ''%'+NomeDoProduto+'%'' '+
              'OR COD_ALT3 LIKE ''%'+NomeDoProduto+'%'' OR COD_ALT4 LIKE ''%'+NomeDoProduto+'%'' '+
              'OR COD_BARRAS LIKE ''%'+NomeDoProduto+'%''ORDER BY descricao');

         with DM_Pesq.cdsPesqProduto do begin

            Close;
            CommandText:= (_Sql);
            Open;

                //se o codigo do produto existir
                if not DM_Pesq.cdsPesqProduto.IsEmpty then
                begin

                    edt_descricao.Caption            := DM_Pesq.cdsPesqProduto.Fieldbyname('descricao').AsString;
                    edt_precovenda.Caption           := FloatToStrF(DM_Pesq.cdsPesqProduto.Fieldbyname('precovenda').AsFloat,ffNumber,4,2);
                    edt_estoque.Caption              := FloatToStr(DM_Pesq.cdsPesqProduto.Fieldbyname('estoque_atual').AsFloat);
                    btnLimpar.Enabled                := true;
                    
                end
                else begin

                         Application.MessageBox('Produto n�o encontrado no cadastro!', 'Aten��o este produto n�o existe', MB_OK);
                         edt_CodBarProduto.Text := '';
                         edt_CodBarProduto.SetFocus;

                   end;

           end;

end;


procedure T_frmConsultarProduto.edt_CodBarProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin

      if key = vk_return then
      begin

          PesquisarCodBarProduto;

      end;

end;

procedure T_frmConsultarProduto.btnLimparClick(Sender: TObject);
begin

      edt_descricao.Caption := '';
      edt_CodBarProduto.Clear;
      edt_precovenda.Caption := '';
      edt_estoque.Caption    := '';
      edt_CodBarProduto.SetFocus;
      btnLimpar.Enabled      := false;

end;

end.
