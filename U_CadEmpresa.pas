unit U_CadEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons, Mask, Encryp, DBCtrls,
  Menus,  ToolEdit, CurrEdit, ExtDlgs, jpeg;

type
  T_frmCadastraEmpresa = class(TForm)
    pnl_cabecalho: TPanel;
    pnl_rodape: TPanel;
    btn_Sair: TSpeedButton;
    btn_Gravar: TSpeedButton;
    lblHoraAtual: TLabel;
    lblDataDoDia: TLabel;
    Panel4: TPanel;
    grDadosEmpresa: TGroupBox;
    Label12: TLabel;
    edtMsg: TEdit;
    Label4: TLabel;
    edtEmail: TEdit;
    Label3: TLabel;
    edtDDD: TEdit;
    msk_Fone: TMaskEdit;
    Label5: TLabel;
    Label14: TLabel;
    msk_celular: TMaskEdit;
    Label7: TLabel;
    msk_cep: TMaskEdit;
    edtUF: TEdit;
    Label8: TLabel;
    Label6: TLabel;
    msk_cnpj: TMaskEdit;
    msk_ie: TMaskEdit;
    Label11: TLabel;
    Label10: TLabel;
    edtCidade: TEdit;
    edtBairro: TEdit;
    Label13: TLabel;
    edtEndereco: TEdit;
    Label1: TLabel;
    edtEmpresa: TEdit;
    Label2: TLabel;
    grCarregamentoLogo: TGroupBox;
    edtCaminhoDaFoto: TEdit;
    btnCarregarImagem: TSpeedButton;
    pan_imagem: TPanel;
    Logo: TImage;
    btnCancelar: TBitBtn;
    openImage: TOpenPictureDialog;
    lblSIGLA: TStaticText;
    Label9: TLabel;
    CaminhoDoBackup: TOpenDialog;
    Label15: TLabel;
    edt_destino: TEdit;
    btnSetarPastaDestino: TButton;
    Label16: TLabel;
    msk_cpf: TMaskEdit;

    //PROCEDIMENTOS PERSO
    procedure AbrirTabelas;
    procedure FecharTabelas;
    procedure AbrirFecharTabelas;
    procedure GravarEmpresa;
    procedure AlterarDadosEmpresa;
    procedure AtualizarListaEmpresa;
    procedure MostrarDadosCadastrados;
    procedure controlesDefault;
    procedure controleAlterado;
    procedure verificarAlteracaoNoCampoEdit(nomeIni, nomeAlt:string; nomeEdt:Tedit);
    procedure verificarAlteracaoNoCampoMask(nomeIni, nomeAlt:string; nomeMsk:TMaskEdit);
    procedure MostrarFotoPadrao;
    procedure MostrarHintPastaPadrao;
    procedure GravarAtualizarPastaBackupDados;

    procedure edtEmpresaEnter(Sender: TObject);
    procedure btn_SairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btn_GravarClick(Sender: TObject);
    procedure AtualizarLoginAdministracaoComNovaSiglaEmpresa;
    procedure edtDDDClick(Sender: TObject);
    procedure edtEnderecoClick(Sender: TObject);
    procedure edtUFClick(Sender: TObject);
    procedure edtCidadeClick(Sender: TObject);
    procedure edtEmailClick(Sender: TObject);
    procedure msk_FoneClick(Sender: TObject);
    procedure msk_cepClick(Sender: TObject);
    procedure msk_cnpjClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure msk_cnpjChange(Sender: TObject);
    procedure edtDDDChange(Sender: TObject);
    procedure msk_FoneChange(Sender: TObject);
    procedure msk_cepChange(Sender: TObject);
    procedure edtUFChange(Sender: TObject);
    procedure msk_celularClick(Sender: TObject);
    procedure edtUFKeyPress(Sender: TObject; var Key: Char);
    procedure edtDDDKeyPress(Sender: TObject; var Key: Char);
    procedure edtEnderecoEnter(Sender: TObject);
    procedure edtEmpresaExit(Sender: TObject);
    procedure btnCarregarImagemClick(Sender: TObject);
    procedure LogoClick(Sender: TObject);
    procedure edtBairroEnter(Sender: TObject);
    procedure edtBairroClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edtEnderecoExit(Sender: TObject);
    procedure edtBairroExit(Sender: TObject);
    procedure msk_cepExit(Sender: TObject);
    procedure edtCidadeExit(Sender: TObject);
    procedure edtUFExit(Sender: TObject);
    procedure msk_cnpjExit(Sender: TObject);
    procedure msk_ieExit(Sender: TObject);
    procedure edtDDDExit(Sender: TObject);
    procedure msk_FoneExit(Sender: TObject);
    procedure msk_celularExit(Sender: TObject);
    procedure edtEmailExit(Sender: TObject);
    procedure edtMsgExit(Sender: TObject);
    procedure msk_cepEnter(Sender: TObject);
    procedure edtCidadeEnter(Sender: TObject);
    procedure edtUFEnter(Sender: TObject);
    procedure msk_cnpjEnter(Sender: TObject);
    procedure msk_ieEnter(Sender: TObject);
    procedure edtDDDEnter(Sender: TObject);
    procedure msk_FoneEnter(Sender: TObject);
    procedure msk_celularEnter(Sender: TObject);
    procedure edtEmailEnter(Sender: TObject);
    procedure edtMsgEnter(Sender: TObject);
    procedure msk_celularChange(Sender: TObject);
    procedure edtEmpresaClick(Sender: TObject);
    procedure btnSetarPastaDestinoClick(Sender: TObject);
    procedure edt_destinoClick(Sender: TObject);
    procedure edt_destinoMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure msk_cpfEnter(Sender: TObject);
    procedure msk_cpfExit(Sender: TObject);
    procedure msk_ieChange(Sender: TObject);
    procedure msk_ieClick(Sender: TObject);
    procedure msk_cpfChange(Sender: TObject);
    procedure msk_cpfClick(Sender: TObject);



  private
    { Private declarations }
     sSigla,nome,nome_alt,endereco,endereco_alt,bairro,bairro_alt,cep,cep_alt,cidade,cidade_alt,uf,uf_alt,cnpj,cnpj_alt,ie,ie_alt,cpf,cpf_alt,
     ddd,ddd_alt,tel,tel_alt,cel,cel_alt,email,email_alt,msg,msg_alt,caminho_backup,caminho_pasta_deletar : string;
     carregouFoto, alterouEdit,cancelou : boolean;

  public
    { Public declarations }

  end;

var
  _frmCadastraEmpresa : T_frmCadastraEmpresa;
  proxNumCaixa : Integer;
  

implementation

uses U_BiblioSysSalao, U_dmDadosSegundo, U_principal, U_dmDados,
  U_dmPesquisas, DB, U_CadFuncionarios, U_dmPesqDados, DBClient;

{$R *.dfm}


procedure T_frmCadastraEmpresa.FormCreate(Sender: TObject);
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

procedure T_frmCadastraEmpresa.FormShow(Sender: TObject);
begin

      AbrirTabelas;
      MostrarDadosCadastrados;
      controlesDefault;

end;


procedure T_frmCadastraEmpresa.AbrirTabelas;
begin

    dm_DadosSegundo.cds_Empresa.Active      := True;
    dm_Conexao.cds_ListaEmpresas.Active     := True;

end;


procedure T_frmCadastraEmpresa.FecharTabelas;
begin

    dm_DadosSegundo.cds_Empresa.Active      := False;
    dm_Conexao.cds_ListaEmpresas.Active     := false;

end;


procedure T_frmCadastraEmpresa.AbrirFecharTabelas;
begin

     dm_DadosSegundo.cds_Empresa.Active      := False;
     dm_DadosSegundo.cds_Empresa.Active      := True;

     dm_Conexao.cds_ListaEmpresas.Active     := False;
     dm_Conexao.cds_ListaEmpresas.Active     := True;

     dm_DadosSegundo.cds_Expiracao.Active    := false;
     dm_DadosSegundo.cds_Expiracao.Active    := true;

end;


procedure T_frmCadastraEmpresa.btn_SairClick(Sender: TObject);
begin

   close;

end;


procedure T_frmCadastraEmpresa.FormClose(Sender: TObject; var Action: TCloseAction);
begin

    alterouEdit           := false;
    AlterandoDadosEmpresa := false;
    verificarAlteracaoNoCampoEdit(nome,nome_alt,edtEmpresa);
    _frmPrincipal.logo.Picture.LoadFromFile(getLogoEmpresa);
    Release;

end;

procedure T_frmCadastraEmpresa.FormKeyPress(Sender: TObject; var Key: Char);
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


procedure T_frmCadastraEmpresa.btn_GravarClick(Sender: TObject);
begin

  if dm_DadosSegundo.cds_Empresa.RecordCount = 0 then
   begin

       GravarEmpresa;

   end else
   begin

       AlterarDadosEmpresa;

   end;

end;

procedure T_frmCadastraEmpresa.AlterarDadosEmpresa;
begin

           _Sql := 'UPDATE empresa SET razaosocial=:pNomempresa, endereco=:pEndereco, bairro=:pBairro, ddd=:pDdd, '+
             'telefone=:pTelefone, celular=:pCel, email=:pEmail, cnpj=:pCnpj, ie=:pIe, cpf=:pCpf, cidade=:pCidade, cep=:pCep, '+
             'uf=:pUf, msg=:pMsg, sigla=:pSigla, logo=:pLogo WHERE id_empresa = 1';

           With DM_Pesq.Qry_Geral do
           begin

             close;
             sql.Clear;
             sql.Add(_Sql);
             Params.ParamByName('pNomempresa').AsString       := edtEmpresa.Text;
             Params.ParamByName('pEndereco').AsString         := edtEndereco.Text;
             Params.ParamByName('pBairro').AsString           := edtBairro.Text;
             Params.ParamByName('pDdd').AsString              := edtDDD.Text;
             Params.ParamByName('pTelefone').AsString         := msk_Fone.Text;
             Params.ParamByName('pCel').AsString              := msk_celular.Text;
             Params.ParamByName('pEmail').AsString            := edtEmail.Text;
             Params.ParamByName('pCnpj').AsString             := msk_cnpj.Text;
             Params.ParamByName('pIe').AsString               := msk_ie.Text;
             Params.ParamByName('pCpf').AsString              := msk_cpf.Text;
             Params.ParamByName('pCidade').AsString           := edtCidade.Text;
             Params.ParamByName('pCep').AsString              := msk_cep.Text;
             Params.ParamByName('pUf').AsString               := edtUF.Text;
             Params.ParamByName('pSigla').AsString            := lblSIGLA.Caption;
             Params.ParamByName('pMsg').AsString              := edtMsg.Text;
             Params.ParamByName('pLogo').AsString             := edtCaminhoDaFoto.Text;
             ExecSQL();

          end;


          //atualiza o destino do backup conforme escolha do cliente
          caminho_backup      := edt_destino.Text;
          atualizarUmCampoDaTabela('expiracao','caminho_backup',caminho_backup,'id_dia','1','string');
          Application.MessageBox('O dados da Empresa foram alterados com sucesso!', 'Alterando...', MB_OK);
          AtualizarListaEmpresa;
          AbrirFecharTabelas;
          close;

end;

procedure T_frmCadastraEmpresa.GravarEmpresa;
begin

     proxNum := GerarProximoID('id_empresa','EMPRESA');

     _Sql := 'insert into empresa (id_empresa, razaosocial, endereco, bairro, ddd, telefone, celular, email, cnpj, ie, cpf, cidade, cep, uf, sigla, msg, logo) '+
                 'values (:id_empresa, :razaosocial, :endereco, :bairro, :ddd, :telefone, :celular, :email, :cnpj, :ie, :cpf, :cidade, :cep, :uf, :sigla, :msg, :logo)';

         with DM_Pesq.Qry_Auxiliar do
         begin

             close;
             sql.Clear;
             sql.Add(_Sql);
             ParamByName('id_empresa').AsInteger       := proxNum;
             ParamByName('razaosocial').AsString       := edtEmpresa.text;
             ParamByName('endereco').AsString          := edtEndereco.Text;
             ParamByName('bairro').AsString            := edtBairro.Text;
             ParamByName('ddd').AsString               := edtDDD.Text;
             ParamByName('telefone').AsString          := msk_Fone.Text;
             ParamByName('celular').AsString           := msk_celular.Text;
             ParamByName('email').AsString             := edtEmail.Text;
             ParamByName('cnpj').AsString              := msk_cnpj.Text;
             ParamByName('ie').AsString                := msk_ie.Text;
             ParamByName('cpf').AsString               := msk_cpf.Text;
             ParamByName('cidade').AsString            := edtCidade.Text;
             ParamByName('cep').AsString               := msk_cep.Text;
             ParamByName('uf').AsString                := edtUF.Text;
             ParamByName('sigla').AsString             := sSigla;
             ParamByName('msg').AsString               := edtMsg.Text;

             if(cadastroInicial) and (edtCaminhoDaFoto.text = '')then
             begin
                  ParamByName('logo').AsString         := RetornarCaminhoImgPadrao;   // 'imagens\logo.gif';
             end else begin
                  ParamByName('logo').AsString         := edtCaminhoDaFoto.Text;
                  //ParamByName('logo').AsString         :=  ExtractFilePath(Application.ExeName)+'imagens\logo.gif';
             end;

             ExecSQL;

        end;

      //atualiza o destino do backup conforme escolha do cliente
      caminho_backup      := edt_destino.Text;
      atualizarUmCampoDaTabela('expiracao','caminho_backup',caminho_backup,'id_dia','1','string');

      btn_Sair.Enabled := false;

      proxNum1 := GerarProximoID('id_empresa','LISTAEMPRESAS');

      // Abrindo um registro novo e gravando no bd
      with dm_Conexao.cds_ListaEmpresas do
      begin

        Append;

        FieldByName('id_empresa').AsInteger   := proxNum1;
        FieldByName('empresa').AsString       := edtEmpresa.text;
        ApplyUpdates(0);

      end;

      if(cadastroInicial)then
      begin

       LogOperacoes('ADMINISTRADOR', 'alteracao no cadastro da empresa');
       AtualizarLoginAdministracaoComNovaSiglaEmpresa;
       AbrirFecharTabelas;

      end else begin

       LogOperacoes(NomeDoUsuarioLogado, 'alteracao no cadastro da empresa');
       AtualizarLoginAdministracaoComNovaSiglaEmpresa;
       AbrirFecharTabelas;

      end;

      if(cadastroInicial)then
      begin

       Application.MessageBox('Empresa cadastrada com sucesso, cadastre seu usu�rio!', 'Cadastrando...', MB_OK);

       //abrindo a tela de funcionario para ser criado o primeiro usu�rio
       Application.CreateForm(TF_FUNCIONARIOS,  F_FUNCIONARIOS);
       F_FUNCIONARIOS.ShowModal;
       FreeAndNil(F_FUNCIONARIOS);
       Release;
       close;

      end else begin

        Application.MessageBox('Empresa cadastrada com sucesso!', 'Cadastrando...', MB_OK);
        close;

     end;

end;

procedure T_frmCadastraEmpresa.edtDDDClick(Sender: TObject);
begin

    edtDDD.SelStart := 0;
    edtDDD.SelLength:= Length(edtDDD.Text);

end;

procedure T_frmCadastraEmpresa.edtEnderecoClick(Sender: TObject);
begin

     edtEndereco.SelStart := 0;
     edtEndereco.SelLength:= Length(edtEndereco.Text);      

end;

procedure T_frmCadastraEmpresa.edtUFClick(Sender: TObject);
begin

     edtUF.SelStart := 0;
     edtUF.SelLength:= Length(edtUF.Text);

end;

procedure T_frmCadastraEmpresa.edtCidadeClick(Sender: TObject);
begin

     edtCidade.SelStart := 0;
     edtCidade.SelLength:= Length(edtCidade.Text);

end;

procedure T_frmCadastraEmpresa.edtEmailClick(Sender: TObject);
begin

     edtEmail.SelStart := 0;
     edtEmail.SelLength:= Length(edtEmail.Text);

end;

procedure T_frmCadastraEmpresa.msk_FoneClick(Sender: TObject);
begin

    msk_Fone.SelStart := 0;
    msk_Fone.SelLength:= Length(msk_Fone.Text);

end;

procedure T_frmCadastraEmpresa.msk_cepClick(Sender: TObject);
begin

   msk_cep.SelStart := 0;
   msk_cep.SelLength:= Length(msk_cep.Text);

end;

procedure T_frmCadastraEmpresa.msk_cnpjClick(Sender: TObject);
begin

   msk_cnpj.SelStart := 0;
   msk_cnpj.SelLength:= Length(msk_cnpj.Text);

end;

procedure T_frmCadastraEmpresa.GravarAtualizarPastaBackupDados;
var
 pastaBackup : string;
begin

     pastaBackup := 'c:\bkpdados\';

     if(edt_destino.Text = '')then
     begin

          //criando a pasta padr�o do backup
          if not DirectoryExists(pastaBackup) then
          begin
                MkDir(PChar(pastaBackup));

               //grava no banco
               atualizarUmCampoDaTabela('expiracao','caminho_backup','c:\bkpdados\','id_dia','1','string');
               AbrirFecharTabelas;
               //Application.MessageBox('A pasta  de  backup do banco de dados foi definida  como  c:\bkpdados\, se  desejar   retorne  a  esta  tela  e  altere  o  caminho!',
               //'Pasta de backup de dados', MB_OK + MB_ICONWARNING);
          end;

     end;

end;

procedure T_frmCadastraEmpresa.MostrarDadosCadastrados;
begin

     edt_destino.Text := RetornarCaminhoPastaBackup;

     with dm_DadosSegundo.cds_Empresa do
     begin

         close;
         CommandText := ('SELECT * FROM empresa WHERE id_empresa = 1');
         open;

         if not IsEmpty then
         begin

              edtEmpresa.Text           := fieldbyname('razaosocial').AsString;
              edtEndereco.Text          := fieldbyname('endereco').AsString;
              edtBairro.Text            := fieldbyname('bairro').AsString;
              edtDDD.Text               := fieldbyname('ddd').AsString;
              msk_Fone.Text             := fieldbyname('telefone').AsString;
              msk_celular.Text          := fieldbyname('celular').AsString;
              edtEmail.Text             := fieldbyname('email').AsString;
              msk_cnpj.Text             := fieldbyname('cnpj').AsString;
              msk_ie.Text               := fieldbyname('ie').AsString;
              msk_cpf.Text              := fieldbyname('cpf').AsString;
              edtCidade.Text            := fieldbyname('cidade').AsString;
              msk_cep.Text              := fieldbyname('cep').AsString;
              edtUF.Text                := fieldbyname('uf').AsString;
              lblSIGLA.Caption          := fieldbyname('sigla').AsString;
              edtMsg.Text               := fieldbyname('msg').AsString;
              edtCaminhoDaFoto.Text     := fieldbyname('logo').AsString;

         end;

     end;

     //edtCaminhoDaFoto.Text := RetornarCaminhoDaAplicacao+'imagens\padrao.jpg';
     logo.Picture.LoadFromFile(edtCaminhoDaFoto.Text);
     edtEmpresa.SetFocus;

end;


procedure T_frmCadastraEmpresa.AtualizarListaEmpresa;
begin

        _Sql := 'UPDATE listaempresas SET empresa=:pNomempresa WHERE id_empresa = 2';

           With DM_Pesq.Qry_Geral do
           begin

             close;
             sql.Clear;
             sql.Add(_Sql);
             Params.ParamByName('pNomempresa').AsString   := edtEmpresa.Text;
             ExecSQL();

          end;

end;

procedure T_frmCadastraEmpresa.AtualizarLoginAdministracaoComNovaSiglaEmpresa;
begin

    _Sql := 'UPDATE funcionarios SET func_login=:pLogin WHERE func_id = 1';

       With DM_Pesq.Qry_Geral do
       begin

         close;
         sql.Clear;
         sql.Add(_Sql);
         Params.ParamByName('pLogin').AsString   := sSigla+'0000';
         ExecSQL();

      end;

     _Sql := 'UPDATE login SET usuario=:pLogin WHERE func_id = 1';

       With DM_Pesq.Qry_Geral do
       begin

         close;
         sql.Clear;
         sql.Add(_Sql);
         Params.ParamByName('pLogin').AsString   := sSigla+'0000';
         ExecSQL();

      end;

end;

procedure T_frmCadastraEmpresa.msk_cnpjChange(Sender: TObject);
begin

    if Length(Trim(msk_cnpj.Text)) = 18 then  msk_ie.setfocus;

end;

procedure T_frmCadastraEmpresa.edtDDDChange(Sender: TObject);
begin

    if Length(Trim(edtDDD.Text)) = 3 then  msk_Fone.setfocus;

end;

procedure T_frmCadastraEmpresa.msk_FoneChange(Sender: TObject);
begin

    if Length(Trim(msk_Fone.Text)) = 9 then  msk_celular.setfocus;

end;

procedure T_frmCadastraEmpresa.msk_cepChange(Sender: TObject);
begin

   if Length(Trim(msk_cep.Text)) = 9 then  edtCidade.setfocus;

end;

procedure T_frmCadastraEmpresa.edtUFChange(Sender: TObject);
begin

    if Length(Trim(edtUF.Text)) = 2 then  msk_cnpj.setfocus;

end;

procedure T_frmCadastraEmpresa.msk_celularChange(Sender: TObject);
begin

   if Length(Trim(msk_celular.Text)) = 10 then  edtEmail.setfocus;

end;

procedure T_frmCadastraEmpresa.msk_celularClick(Sender: TObject);
begin

     msk_celular.SelStart := 0;
     msk_celular.SelLength:= Length(msk_celular.Text);

end;

procedure T_frmCadastraEmpresa.edtUFKeyPress(Sender: TObject;
  var Key: Char);
begin

    if Key in['0'..'9',#8,#13] then
    begin

         Key:=#0;

    end;

end;

procedure T_frmCadastraEmpresa.edtDDDKeyPress(Sender: TObject;
  var Key: Char);
begin

    if Key in['a'..'z','A'..'Z',#8,#13] then
    begin

         Key:=#0;

    end;

end;

procedure T_frmCadastraEmpresa.btnCarregarImagemClick(Sender: TObject);
begin

     if openImage.Execute then
     begin

         Logo.Picture.LoadFromFile(openImage.FileName);
         edtCaminhoDaFoto.Text := openImage.FileName;

     end;

     carregouFoto        := true;
     btn_Sair.Enabled    := false;
     btn_Gravar.Enabled  := true; 
     btnCancelar.Enabled := true;
     
end;

procedure T_frmCadastraEmpresa.LogoClick(Sender: TObject);
begin
  btnCarregarImagemClick(self);
end;

procedure T_frmCadastraEmpresa.edtBairroClick(Sender: TObject);
begin

   edtBairro.SelStart := 0;
   edtBairro.SelLength:= Length(edtBairro.Text);

end;

procedure T_frmCadastraEmpresa.btnCancelarClick(Sender: TObject);
begin
   if not(cadastroInicial)then
   begin
      Application.MessageBox('Aten��o as altera��es n�o salvas ser�o perdidas!', 'Cancelando altera��es!', MB_ICONEXCLAMATION);
      close;
   end else begin
      Application.MessageBox('Termine o cadastro inicial para continuar testando o sistema!', 'Opera��o inv�lida!', MB_ICONEXCLAMATION);
        btnCancelar.Enabled:=false;
        edtEmpresa.SetFocus; 
   end;
   cancelou := true;
end;

procedure T_frmCadastraEmpresa.edtEmpresaExit(Sender: TObject);
begin

  if( retornaTotalPalavras(edtEmpresa.Text) ) >= 2 then
  begin
    sSigla             := GerarSigla(edtEmpresa.Text);
    lblSIGLA.Caption   := sSigla;


  end else begin
     Application.MessageBox('Digite pelo menos dois nomes para prosseguir!',
        'N�o foi poss�vel gerar a sigla da empresa!', MB_OK + MB_ICONWARNING);
     edtEmpresa.SetFocus;

  end;

  verificarAlteracaoNoCampoEdit(nome,nome_alt,edtEmpresa);

  if (NaoTemSigla) then
  begin
        GerarNovaSigla;
        controleAlterado;
        AbrirFecharTabelas;
  end;

end;

procedure T_frmCadastraEmpresa.edtEnderecoExit(Sender: TObject);
begin
verificarAlteracaoNoCampoEdit(endereco,endereco_alt,edtEndereco);
end;

procedure T_frmCadastraEmpresa.edtBairroExit(Sender: TObject);
begin
verificarAlteracaoNoCampoEdit(bairro,bairro_alt,edtBairro);
end;

procedure T_frmCadastraEmpresa.msk_cepExit(Sender: TObject);
begin
verificarAlteracaoNoCampoMask(cep,cep_alt,msk_cep);
end;

procedure T_frmCadastraEmpresa.edtCidadeExit(Sender: TObject);
begin
verificarAlteracaoNoCampoEdit(cidade,cidade_alt,edtCidade);
end;

procedure T_frmCadastraEmpresa.edtUFExit(Sender: TObject);
begin
verificarAlteracaoNoCampoEdit(uf,uf_alt,edtUF);
end;

procedure T_frmCadastraEmpresa.msk_cnpjExit(Sender: TObject);
begin
verificarAlteracaoNoCampoMask(cnpj,cnpj_alt,msk_cnpj);
end;

procedure T_frmCadastraEmpresa.msk_ieExit(Sender: TObject);
begin
verificarAlteracaoNoCampoMask(ie,ie_alt,msk_ie);
end;

procedure T_frmCadastraEmpresa.edtDDDExit(Sender: TObject);
begin
verificarAlteracaoNoCampoEdit(ddd,ddd_alt,edtDDD);
end;

procedure T_frmCadastraEmpresa.msk_FoneExit(Sender: TObject);
begin
verificarAlteracaoNoCampoMask(tel,tel_alt,msk_Fone);
end;

procedure T_frmCadastraEmpresa.msk_celularExit(Sender: TObject);
begin
verificarAlteracaoNoCampoMask(cel,cel_alt,msk_celular);
end;

procedure T_frmCadastraEmpresa.edtEmailExit(Sender: TObject);
begin
verificarAlteracaoNoCampoEdit(email,email_alt,edtEmail);
end;

procedure T_frmCadastraEmpresa.edtMsgExit(Sender: TObject);
begin
verificarAlteracaoNoCampoEdit(msg,msg_alt,edtMsg);
end;

procedure T_frmCadastraEmpresa.edtEmpresaEnter(Sender: TObject);
begin
//recebendo os valores default dos campos   
nome        := edtEmpresa.Text;
end;

procedure T_frmCadastraEmpresa.edtEnderecoEnter(Sender: TObject);
begin
sSigla := GerarSigla(edtEmpresa.Text);
//recebendo os valores default dos campos
endereco := edtEndereco.Text;
end;

procedure T_frmCadastraEmpresa.edtBairroEnter(Sender: TObject);
begin
//recebendo os valores default dos campos
bairro := edtBairro.Text;
end;

procedure T_frmCadastraEmpresa.msk_cepEnter(Sender: TObject);
begin
//recebendo os valores default dos campos
cep := msk_cep.Text;
end;

procedure T_frmCadastraEmpresa.edtCidadeEnter(Sender: TObject);
begin
//recebendo os valores default dos campos
cidade := edtCidade.Text;
end;

procedure T_frmCadastraEmpresa.edtUFEnter(Sender: TObject);
begin
//recebendo os valores default dos campos
uf := edtUF.Text;
end;

procedure T_frmCadastraEmpresa.msk_cnpjEnter(Sender: TObject);
begin
//recebendo os valores default dos campos
cnpj := msk_cnpj.Text;
end;

procedure T_frmCadastraEmpresa.msk_ieEnter(Sender: TObject);
begin
//recebendo os valores default dos campos
ie := msk_ie.Text;
end;

procedure T_frmCadastraEmpresa.edtDDDEnter(Sender: TObject);
begin
//recebendo os valores default dos campos
ddd := edtDDD.Text;
end;

procedure T_frmCadastraEmpresa.msk_FoneEnter(Sender: TObject);
begin
//recebendo os valores default dos campos
tel := msk_Fone.Text;
end;

procedure T_frmCadastraEmpresa.msk_celularEnter(Sender: TObject);
begin
//recebendo os valores default dos campos
cel := msk_celular.Text;
end;

procedure T_frmCadastraEmpresa.edtEmailEnter(Sender: TObject);
begin
//recebendo os valores default dos campos
email := edtEmail.Text;
end;

procedure T_frmCadastraEmpresa.edtMsgEnter(Sender: TObject);
begin
//recebendo os valores default dos campos
msg := edtMsg.Text;
end;

procedure T_frmCadastraEmpresa.controlesDefault;
begin

    alterouEdit           := false;
    btnCancelar.Enabled   := false;
    btn_Gravar.Enabled    := false;
    caminho_pasta_deletar := edt_destino.Text;
    
    if(NaoTemSigla)then
       edtEndereco.SetFocus
    else
       if(cadastroInicial)then  btn_Sair.Enabled := false else btn_Sair.Enabled := true;

end;

procedure T_frmCadastraEmpresa.controleAlterado;
begin

    alterouEdit         := true;
    btn_Gravar.Enabled  := true;
    btnCancelar.Enabled := true;
    btn_Sair.Enabled    := false;

end;

procedure T_frmCadastraEmpresa.MostrarFotoPadrao;
var
  pathImgPadrao : string;
begin

      pathImgPadrao   := RetornarCaminhoDaAplicacao+'imagens\padrao.jpg';

      if FileExists(pathImgPadrao) then
      begin
            //verifica se a imagem da tela principal existe
            logo.Picture.LoadFromFile(pathImgPadrao);
            logo.Transparent := true;

      end else begin

            texto:= 'A Imagem '+pathImgPadrao+', correspondente � imagem padr�o n�o foi encontrada!';
            Application.MessageBox(PChar(texto),'Imagem n�o encontrada!',MB_OK + MB_SYSTEMMODAL);

      end;

end;

procedure T_frmCadastraEmpresa.verificarAlteracaoNoCampoEdit(nomeIni, nomeAlt:string; nomeEdt:Tedit);
begin

   if not(alterouEdit)then
   begin

     //PROCEDIMENTO RECEBE OS VALORES INICIAIS E OS VALORES ALTERADOS COMPARANDO-OS
     nomeAlt := nomeEdt.Text;
     if( nomeAlt<>nomeIni )then
     begin
          controleAlterado;
     end else
     begin
          controlesDefault;
     end;

   end;

end;

procedure T_frmCadastraEmpresa.verificarAlteracaoNoCampoMask(nomeIni,
  nomeAlt: string; nomeMsk: TMaskEdit);
begin

   if not(alterouEdit)then
   begin

     //PROCEDIMENTO RECEBE OS VALORES INICIAIS E OS VALORES ALTERADOS COMPARANDO-OS
     nomeAlt := nomeMsk.text;
     if( nomeAlt<>nomeIni )then
     begin
          controleAlterado;
     end else
     begin
          controlesDefault;
     end;

   end;

end;


procedure T_frmCadastraEmpresa.edtEmpresaClick(Sender: TObject);
begin

   edtEmpresa.SelStart := 0;
   edtEmpresa.SelLength:= Length(edtEmpresa.Text);

end;

procedure T_frmCadastraEmpresa.btnSetarPastaDestinoClick(Sender: TObject);
begin

    btn_Gravar.Enabled  := true;
    if CaminhoDoBackup.Execute then
    begin
        edt_destino.Text  :=  CaminhoDoBackup.FileName;  
    end;

    //COM O EXTRACTFILEPATH O TXT MOSTRARA APENAS A PASTA E N�O O ARQUIVO
    edt_destino.Text :=  ExtractFilePath(CaminhoDoBackup.FileName);

    //ShowMessage('pasta a ser deletada : '+RetornarCaminhoPastaBackup);
    DeletarPasta(PChar(caminho_pasta_deletar),false);
    caminho_pasta_deletar := '';

    if(edt_destino.Text = '')then
    begin
        edt_destino.Text := RetornarCaminhoPastaBackup;
    end;

end;

procedure T_frmCadastraEmpresa.MostrarHintPastaPadrao;
begin
    edt_destino.Hint := 'Se  desejar alterar o caminho da pasta de backup do banco de dados clique'#13'no bot�o ao lado caso contr�rio ser� mantida a pasta padr�o j� selecionada!';
end;

procedure T_frmCadastraEmpresa.edt_destinoClick(Sender: TObject);
begin
  MostrarHintPastaPadrao;
end;

procedure T_frmCadastraEmpresa.edt_destinoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  MostrarHintPastaPadrao;
end;  


procedure T_frmCadastraEmpresa.msk_cpfEnter(Sender: TObject);
begin
//recebendo os valores default dos campos
cpf := msk_cpf.Text;
end;

procedure T_frmCadastraEmpresa.msk_cpfExit(Sender: TObject);
begin
verificarAlteracaoNoCampoMask(cpf,cpf_alt,msk_cpf);
end;

procedure T_frmCadastraEmpresa.msk_ieChange(Sender: TObject);
begin
    if Length(Trim(msk_ie.Text)) = 15 then  msk_cpf.setfocus;
end;

procedure T_frmCadastraEmpresa.msk_ieClick(Sender: TObject);
begin

    msk_ie.SelStart := 0;
    msk_ie.SelLength:= Length(msk_ie.Text);

end;

procedure T_frmCadastraEmpresa.msk_cpfChange(Sender: TObject);
begin
   if Length(Trim(msk_cpf.Text)) = 14 then  edtDDD.setfocus;
end;

procedure T_frmCadastraEmpresa.msk_cpfClick(Sender: TObject);
begin

    msk_cpf.SelStart := 0;
    msk_cpf.SelLength:= Length(msk_cpf.Text);

end;

end.


