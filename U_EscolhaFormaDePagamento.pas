unit U_EscolhaFormaDePagamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls, Grids, DBGrids, Mask, DBCtrls;

type
  T_frmEscolhaFormaDePagamento = class(TForm)
    pnl_cabecalho: TPanel;
    pnl_rodape: TPanel;
    pnl1: TPanel;
    grid_formaPagto: TDBGrid;
    GroupBox1: TGroupBox;
    edt_FormaPagto: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure PopulandoGridFormaPagtos;
    procedure pnl_rodapeClick(Sender: TObject);
    procedure grid_formaPagtoCellClick(Column: TColumn);
    procedure PesquisaPelaFormaDePagto;
    procedure edt_FormaPagtoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GravarIDFormaPagto;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_FormaPagtoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }

  public
    { Public declarations }
     nome : string;


  end;

var
  _frmEscolhaFormaDePagamento: T_frmEscolhaFormaDePagamento;

implementation

uses U_Caixa, U_dmPesquisas, U_BiblioSysSalao, DB;

{$R *.dfm}

procedure T_frmEscolhaFormaDePagamento.FormCreate(Sender: TObject);
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

  PopulandoGridFormaPagtos;

end;

procedure T_frmEscolhaFormaDePagamento.FormKeyPress(Sender: TObject;
  var Key: Char);
begin

       if key=#27 then begin

         close;
         Release;

      end;

end;

procedure T_frmEscolhaFormaDePagamento.PopulandoGridFormaPagtos;
begin

          _Sql := 'SELECT * FROM formapagto ORDER BY forma_descricao';
          

            with DM_Pesq.cdsPesqFormaPagto do begin

                Close;
                CommandText:=(_Sql);
                Open;

            end;

            with grid_formaPagto do
            begin

              DataSource:=  DM_Pesq.dsPesqFormaPagto;
              Columns.Clear;

              Columns.Add;
              Columns[0].FieldName        := 'FORMA_DESCRICAO';
              Columns[0].Width            := 840;
              Columns[0].Alignment        := taLeftJustify;
              Columns[0].Title.caption    := 'DESCRIÇÃO';
              Columns[0].Title.Font.Style := [fsBold];
              Columns[0].Title.Alignment  := taCenter;

            end;

end;

procedure T_frmEscolhaFormaDePagamento.pnl_rodapeClick(Sender: TObject);
begin

   close;

end;


procedure T_frmEscolhaFormaDePagamento.FormShow(Sender: TObject);
begin

    edt_FormaPagto.Setfocus;

end;


procedure T_frmEscolhaFormaDePagamento.GravarIDFormaPagto;
begin

     _frmCaixa.idFormaPagto := DM_Pesq.cdsPesqFormaPagto.FieldByName('forma_id').asInteger;
     Close;


end;


procedure T_frmEscolhaFormaDePagamento.grid_formaPagtoCellClick(
  Column: TColumn);
begin

      GravarIDFormaPagto;

end;


procedure T_frmEscolhaFormaDePagamento.PesquisaPelaFormaDePagto;
begin

      nome := edt_FormaPagto.Text;

      with DM_Pesq.cdsPesqFormaPagto do begin

          Close;
          CommandText:= 'SELECT * FROM formapagto WHERE forma_descricao LIKE (''%'+nome+'%'') ORDER BY forma_descricao';
          Open;

      end;


end;


procedure T_frmEscolhaFormaDePagamento.edt_FormaPagtoChange(
  Sender: TObject);
begin

     PesquisaPelaFormaDePagto;

end;


procedure T_frmEscolhaFormaDePagamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

     _frmCaixa.ListBox1.SetFocus;
     _frmCaixa.PagarVenda;
     
end;

procedure T_frmEscolhaFormaDePagamento.edt_FormaPagtoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin

        //USANDO AS SETINHAS E DANDO ENTER

        case Key of

          VK_UP  : DM_Pesq.cdsPesqFormaPagto.Prior;
          VK_DOWN: DM_Pesq.cdsPesqFormaPagto.Next;

        end;

end;

end.
