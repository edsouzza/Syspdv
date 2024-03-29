unit U_EscolhaClienteParaOrcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls, Grids, DBGrids, Mask, DBCtrls;

type
  T_frmEscolhaClienteParaOrcamento = class(TForm)
    pnl_cabecalho: TPanel;
    pnl_rodape: TPanel;
    pnl1: TPanel;
    grid_clientesOrcamento: TDBGrid;
    GroupBox1: TGroupBox;
    edt_NomeCliente: TEdit;
    lblHoraAtual: TLabel;
    lblDataDoDia: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure PopulandoGridClientes;
    procedure grid_clientesOrcamentoCellClick(Column: TColumn);
    procedure PesquisaPeloNomeCliente;
    procedure edt_NomeClienteChange(Sender: TObject);
    procedure edt_NomeClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure pnl_rodapeClick(Sender: TObject);
    procedure pnl_rodapeMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    

  end;

var
  _frmEscolhaClienteParaOrcamento: T_frmEscolhaClienteParaOrcamento;

implementation

uses U_dmDados, U_BiblioSysSalao, U_dmPesquisas,
  DB, U_Cotacao, U_dmDadosSegundo,U_Clientes, U_orcamento,
  U_CadClientesParaOrcamento;

{$R *.dfm}

procedure T_frmEscolhaClienteParaOrcamento.FormCreate(Sender: TObject);
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

  lblDataDoDia.Caption      := DateToStr(date);
  lblHoraAtual.Caption      := timetoStr(time);

  PopulandoGridClientes;

end;

procedure T_frmEscolhaClienteParaOrcamento.PopulandoGridClientes;
begin

        _Sql := 'SELECT * FROM clientes WHERE cli_status = '+QuotedStr('A')+' '+
        'AND cli_nome <> '+QuotedStr('VENDA BALCAO')+' ORDER BY cli_nome';


            with dm_Conexao.cds_DadosClientes do begin

                Close;
                CommandText:= (_Sql);
                Open;

                if IsEmpty then begin

                   grid_clientesOrcamento.Enabled := false;
                   edt_NomeCliente.Enabled        := false;

                end else
                begin

                        with grid_clientesOrcamento do
                        begin

                          DataSource:=  dm_Conexao.ds_DadosClientes;
                          Columns.Clear;

                          Columns.Add;
                          Columns[0].FieldName       := 'CLI_NOME';
                          Columns[0].Width           := 540;
                          Columns[0].Alignment       := taLeftJustify;

                        end;

                end;

          end;

end;

procedure T_frmEscolhaClienteParaOrcamento.grid_clientesOrcamentoCellClick(
  Column: TColumn);
begin

      _frmOrcamento.txtNomeCliente.Caption     :=  ' '+dm_Conexao.cds_DadosClientes.fieldbyname('CLI_NOME').AsString;
      _frmOrcamento.txt_IDCLIENTE.Text         :=  IntToStr(dm_Conexao.cds_DadosClientes.fieldbyname('CLI_ID').AsInteger);
      _frmOrcamento.panel_detalhes.Visible     :=  true;
      _frmOrcamento.AbreNovoOrcamento;
      close;

end;

procedure T_frmEscolhaClienteParaOrcamento.PesquisaPeloNomeCliente;
var
  nome : string;
begin

       nome := edt_NomeCliente.Text;

       _Sql := 'SELECT * FROM clientes WHERE cli_status = :pStatusCliente '+
                'AND cli_nome <> '+QuotedStr('VENDA BALCAO')+' AND cli_nome LIKE (''%'+nome+'%'') ORDER BY cli_nome';

        //with DM_Pesq.cdsPesqClientesOrcamento do
        with dm_Conexao.cds_DadosClientes do
        begin

                Close;
                CommandText:=(_Sql);
                Params.ParamByName('pStatusCliente').AsString :=  'A';
                Open;

                if IsEmpty then begin

                   grid_clientesOrcamento.Enabled := false;
                   edt_NomeCliente.Enabled        := false;

                end else begin

                    with grid_clientesOrcamento do
                    begin

                      DataSource:=  dm_Conexao.ds_DadosClientes;
                      Columns.Clear;

                      Columns.Add;
                      Columns[0].FieldName       := 'CLI_NOME';
                      Columns[0].Width           := 535;
                      Columns[0].Alignment       := taLeftJustify;

                    end;

                end;

            end;

end;


procedure T_frmEscolhaClienteParaOrcamento.edt_NomeClienteChange(
  Sender: TObject);
begin

    PesquisaPeloNomeCliente;

end;

procedure T_frmEscolhaClienteParaOrcamento.edt_NomeClienteKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin


         if key=13 then
         begin

              _frmOrcamento.txtNomeCliente.Caption     :=  dm_Conexao.cds_DadosClientes.fieldbyname('CLI_NOME').AsString;
              _frmOrcamento.txt_IDCLIENTE.Text         :=  IntToStr(dm_Conexao.cds_DadosClientes.fieldbyname('CLI_ID').AsInteger);
              _frmOrcamento.panel_detalhes.Visible     := true;
              _frmOrcamento.AbreNovoOrcamento;
              close;

         end;

         case Key of

           VK_UP  : dm_Conexao.cds_DadosClientes.Prior;
           VK_DOWN: dm_Conexao.cds_DadosClientes.Next;

         end;


end;

procedure T_frmEscolhaClienteParaOrcamento.FormShow(Sender: TObject);
begin

  edt_NomeCliente.SetFocus;

end;

procedure T_frmEscolhaClienteParaOrcamento.pnl_rodapeClick(
  Sender: TObject);
begin

      Application.CreateForm(T_frmCadastraClientesParaOrcamento,  _frmCadastraClientesParaOrcamento);
      _frmCadastraClientesParaOrcamento.ShowModal;
      FreeAndNil(_frmCadastraClientesParaOrcamento);
    
end;

procedure T_frmEscolhaClienteParaOrcamento.pnl_rodapeMouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  if pnl_rodape.Font.Color = clYellow then
     pnl_rodape.Font.Color := clWhite
  else
     pnl_rodape.Font.Color := clYellow
end;

end.
