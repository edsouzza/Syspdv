unit U_EscolhaTipoDeRelatorioParaCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, ToolEdit, Buttons, DB;

type
  T_FrmEscolhaTipoDeRelatorioParaCaixa = class(TForm)
    lstTiposDeRelatorios: TListBox;
    pnl_Periodo: TPanel;
    lbl41: TLabel;
    lbl42: TLabel;
    edt_DataInicio: TDateEdit;
    edt_DataFim: TDateEdit;
    GroupBox1: TGroupBox;
    btnFechar: TSpeedButton;
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure lstTiposDeRelatoriosClick(Sender: TObject);
    procedure edt_DataFimButtonClick(Sender: TObject);
    procedure edt_DataInicioButtonClick(Sender: TObject);
    procedure criarRelatorios;
    procedure destruirRelatorios;
    procedure EstadoInicialDatas;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
    DataDia : Tdate;

  public
    { Public declarations }


  end;

var
  _FrmEscolhaTipoDeRelatorioParaCaixa: T_FrmEscolhaTipoDeRelatorioParaCaixa;

implementation

uses  U_QRelAberturaCaixa, U_QRelMovimentosCaixa,
  U_QRelFechamentoCaixa, U_QRelMovimentoMensalCaixa,
  U_QRelFaturamentoDiario, U_BiblioSysSalao, U_QRelExtratoCaixa,
  U_dmPesquisas, U_principal;

{$R *.dfm}

procedure T_FrmEscolhaTipoDeRelatorioParaCaixa.FormCreate(
  Sender: TObject);
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

  criarRelatorios;
  EstadoInicialDatas;

end;

procedure T_FrmEscolhaTipoDeRelatorioParaCaixa.lstTiposDeRelatoriosClick(
  Sender: TObject);
begin

     DataDia := date;
     periodo := edt_DataInicio.Text+' a '+edt_DataFim.Text;

     if (edt_DataFim.Date >= edt_DataInicio.Date) then
      begin

      if lstTiposDeRelatorios.Items[lstTiposDeRelatorios.ItemIndex] = 'RELAT�RIO PERI�DICO DE VENDAS E OR�AMENTOS' then
            begin

                 with Q_RelMovimentoMensal.cds_RelMovimentosMensais do
                 begin

                    Close;
                    Params.ParamByName('pDataIni').AsDate         :=  StrToDate(edt_DataInicio.Text);
                    Params.ParamByName('pDataFim').AsDate         :=  StrToDate(edt_DataFim.Text);
                    Open;

                        if IsEmpty then
                        begin

                               texto := 'N�o foram encontrados registros para o per�odo de'#13''+periodo;
                               Application.MessageBox(Pchar(texto), 'Nenhum registro encontrado!',MB_OK + MB_ICONEXCLAMATION);
                               EstadoInicialDatas;
                               exit;

                        end else begin

                             Q_RelMovimentoMensal.ReportTitle          :='Relat�rio de Vendas e Or�amentos no Per�odo de '+periodo;
                             Q_RelMovimentoMensal.qrbTitulo.Caption    :='Relat�rio de Vendas e Or�amentos no Per�odo de '+periodo;
                             Q_RelMovimentoMensal.Preview;
                             EstadoInicialDatas;
                        end
                   end;

            end else if lstTiposDeRelatorios.Items[lstTiposDeRelatorios.ItemIndex] = 'RELAT�RIO PERI�DICO   DO    EXTRATO   DE   CAIXA ' then
            begin

                     with Q_RelExtratoCaixa.cds_ExtratoCaixa do
                     begin

                        Close;
                        Params.ParamByName('pDataIni').AsDate         :=  StrToDate(edt_DataInicio.Text);
                        Params.ParamByName('pDataFim').AsDate         :=  StrToDate(edt_DataFim.Text);
                        Open;

                            if IsEmpty then
                            begin

                                texto := 'N�o foram encontrados registros para o per�odo de'#13''+periodo;
                                Application.MessageBox(Pchar(texto), 'Nenhum registro encontrado!',MB_OK + MB_ICONEXCLAMATION);
                                EstadoInicialDatas;
                                exit;

                            end else begin
                                   Q_RelExtratoCaixa.ReportTitle             :='Relat�rio Peri�dico do Extrato de Caixa de '+periodo;
                                   Q_RelExtratoCaixa.cds_ExtratoCaixa.Active := True;
                                   Q_RelExtratoCaixa.Preview;
                                   EstadoInicialDatas;
                            end

                     end;

             end
     end
     else begin

          ShowMessage('Data final n�o pode ser menor que a Data inicial');
          EstadoInicialDatas;
     end;

end;


procedure T_FrmEscolhaTipoDeRelatorioParaCaixa.edt_DataFimButtonClick(
  Sender: TObject);
begin
    lstTiposDeRelatorios.Enabled := true;
end;

procedure T_FrmEscolhaTipoDeRelatorioParaCaixa.edt_DataInicioButtonClick(
  Sender: TObject);
begin  

    lstTiposDeRelatorios.Enabled  := true;
    
end;

procedure T_FrmEscolhaTipoDeRelatorioParaCaixa.criarRelatorios;
begin

   Application.CreateForm(TQ_RelAberturaCaixa,      Q_RelAberturaCaixa);
   Application.CreateForm(TQ_RelMovimentosCaixa,    Q_RelMovimentosCaixa);
   Application.CreateForm(TQ_RelFechamentoCaixa,    Q_RelFechamentoCaixa);
   Application.CreateForm(TQ_RelMovimentoMensal,    Q_RelMovimentoMensal);
   Application.CreateForm(TQ_RelFaturamentoDiario,  Q_RelFaturamentoDiario);
   Application.CreateForm(TQ_RelExtratoCaixa,       Q_RelExtratoCaixa);

end;


procedure T_FrmEscolhaTipoDeRelatorioParaCaixa.destruirRelatorios;
begin

      FreeAndNil(Q_RelAberturaCaixa);
      FreeAndNil(Q_RelMovimentosCaixa);
      FreeAndNil(Q_RelFechamentoCaixa);
      FreeAndNil(Q_RelMovimentoMensal);
      FreeAndNil(Q_RelFaturamentoDiario);
      FreeAndNil(Q_RelExtratoCaixa);

end;


procedure T_FrmEscolhaTipoDeRelatorioParaCaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  destruirRelatorios;
end;

procedure T_FrmEscolhaTipoDeRelatorioParaCaixa.EstadoInicialDatas;
begin

  DataDia                       := now;
  edt_DataInicio.Date           := DataDia;
  edt_DataFim.Date              := DataDia;
  lstTiposDeRelatorios.Enabled  := true;

end;

procedure T_FrmEscolhaTipoDeRelatorioParaCaixa.btnFecharClick(
  Sender: TObject);
begin
    _frmPrincipal.logo.Visible := true;
    close;
    release;

end;

end.
