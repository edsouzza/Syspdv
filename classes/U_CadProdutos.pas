unit U_CadProdutos;

interface
uses Controls, SysUtils, Dialogs, u_dmDados, u_biblioSysSalao;
  type
    TProduto = class
  private
    FId_Produto     : integer;
    Fcategoria_id   : integer;
    Ffabricante_id  : integer;
    Ffornecedor_id  : integer;
    Fcod_alt1       : string;
    Fcod_alt2       : string;
    Fcod_alt3       : string;
    Fcod_alt4       : string;
    Fcod_barras     : string;
    Fdescricao      : string;
    Festoque_atual  : double;
    Festoqueminimo  : double;
    Fprecocompra    : double;
    Fprecovenda     : double;
    Fpercentlucro   : double;
    Fvalordelucro   : double;
    Funidade        : string;
    Fdatacad        : Tdate;
    Fobs            : string;
    Fmesano         : string;
    Ftipo           : string;
    Faliquota       : string;
    Fstatus         : string;

  public
    constructor criarObj;
    destructor Destroy; override;
    
    property id_Produto     : integer read Fid_Produto    write FId_Produto;
    property categoria_id   : integer read Fcategoria_id  write Fcategoria_id;
    property fabricante_id  : integer read Ffabricante_id write Ffabricante_id;
    property fornecedor_id  : integer read Ffornecedor_id write Ffornecedor_id;
    property cod_alt1       : string  read Fcod_alt1      write Fcod_alt1;
    property cod_alt2       : string  read Fcod_alt2      write Fcod_alt2;
    property cod_alt3       : string  read Fcod_alt3      write Fcod_alt3;
    property cod_alt4       : string  read Fcod_alt4      write Fcod_alt4;
    property cod_barras     : string  read Fcod_barras    write Fcod_barras;
    property descricao      : string  read Fdescricao     write Fdescricao;
    property estoque_atual  : double  read Festoque_atual write Festoque_atual;
    property estoqueminimo  : double  read Festoqueminimo write Festoqueminimo;
    property precocompra    : double  read Fprecocompra   write Fprecocompra;
    property precovenda     : double  read Fprecovenda    write Fprecovenda;
    property percentlucro   : double  read Fpercentlucro  write Fpercentlucro;
    property valordelucro   : double  read Fvalordelucro  write Fvalordelucro;
    property unidade        : string  read Funidade       write Funidade;
    property datacad        : Tdate   read Fdatacad       write Fdatacad;
    property obs            : string  read Fobs           write Fobs;
    property mesano         : string  read Fmesano        write Fmesano;
    property tipo           : string  read Ftipo          write Ftipo;
    property aliquota       : string  read Faliquota      write Faliquota;
    property status         : string  read Fstatus        write Fstatus;

    Function inserirProduto   : boolean;
    Function atualizarProduto : Boolean;
    Function excluirProduto(pCodigo: integer): Boolean;
    

  end;

  var
  idProdutoPesquisado : integer;
  codAlt              : string;
  codAlts : array[1..4] of string =('COD_ALT1', 'COD_ALT2', 'COD_ALT3', 'COD_ALT4');
  produto : TProduto;

implementation
uses U_dmPesquisas, SqlExpr;

{ TProduto }

constructor TProduto.criarObj;
begin

     id_Produto     := 0;
     categoria_id   := 0;
     fabricante_id  := 0;
     fornecedor_id  := 0;
     cod_alt1       := '';
     cod_alt2       := '';
     cod_alt3       := '';
     cod_alt4       := '';
     cod_barras     := '';
     descricao      := '';
     estoque_atual  := 0;
     estoqueminimo  := 0;
     precocompra    := 0;
     precovenda     := 0;
     percentlucro   := 0;
     valordelucro   := 0;
     unidade        := '';
     datacad        := 0;
     obs            := '';
     mesano         := '';
     tipo           := '';
     aliquota       := '';
     status         := '';     

end;

destructor TProduto.Destroy;
begin
  inherited;
end;


Function TProduto.inserirProduto: boolean;
begin

   with dm_Conexao.cds_CadProduto do
   begin
        append;
        FieldByName('id_produto').AsInteger      := self.id_produto;
        FieldByName('categoria_id').AsInteger    := self.categoria_id;
        FieldByName('fabricante_id').AsInteger   := self.fabricante_id;
        FieldByName('fornecedor_id').AsInteger   := self.fornecedor_id;
        FieldByName('cod_alt1').AsString         := self.cod_alt1;
        FieldByName('cod_alt2').AsString         := self.cod_alt2;
        FieldByName('cod_alt3').AsString         := self.cod_alt3;
        FieldByName('cod_alt4').AsString         := self.cod_alt4;
        FieldByName('cod_barras').AsString       := self.cod_barras;
        FieldByName('descricao').AsString        := self.descricao;
        FieldByName('estoque_atual').AsFloat     := self.estoque_atual;
        FieldByName('estoqueminimo').AsFloat     := self.estoqueminimo;
        FieldByName('precocompra').AsFloat       := self.precocompra;
        FieldByName('precovenda').AsFloat        := self.precovenda;
        FieldByName('percentlucro').AsFloat      := self.percentlucro;
        FieldByName('valordelucro').AsFloat      := self.valordelucro;
        FieldByName('unidade').AsString          := self.unidade;
        FieldByName('datacad').AsDateTime        := self.datacad;
        FieldByName('obs').AsString              := self.obs;
        FieldByName('mesano').AsString           := self.mesano;
        FieldByName('tipo').AsString             := self.tipo;
        FieldByName('aliquota').AsString         := self.aliquota;
        FieldByName('status').AsString           := self.status;

       try
          ApplyUpdates(0);
          Result := True;

      except
          Result := False;

      end;
    end;

end;

Function TProduto.atualizarProduto : Boolean;
begin

   with dm_Conexao.cds_CadProduto do
   begin
        edit;
        FieldByName('id_produto').AsInteger      := self.id_produto;
        FieldByName('categoria_id').AsInteger    := self.categoria_id;
        FieldByName('fabricante_id').AsInteger   := self.fabricante_id;
        FieldByName('fornecedor_id').AsInteger   := self.fornecedor_id;
        FieldByName('cod_alt1').AsString         := self.cod_alt1;
        FieldByName('cod_alt2').AsString         := self.cod_alt2;
        FieldByName('cod_alt3').AsString         := self.cod_alt3;
        FieldByName('cod_alt4').AsString         := self.cod_alt4;
        FieldByName('cod_barras').AsString       := self.cod_barras;
        FieldByName('descricao').AsString        := self.descricao;
        FieldByName('estoque_atual').AsFloat     := self.estoque_atual;
        FieldByName('estoqueminimo').AsFloat     := self.estoqueminimo;
        FieldByName('precocompra').AsFloat       := self.precocompra;
        FieldByName('precovenda').AsFloat        := self.precovenda;
        FieldByName('percentlucro').AsFloat      := self.percentlucro;
        FieldByName('valordelucro').AsFloat      := self.valordelucro;
        FieldByName('unidade').AsString          := self.unidade;
        FieldByName('datacad').AsDateTime        := self.datacad;
        FieldByName('obs').AsString              := self.obs;
        FieldByName('mesano').AsString           := self.mesano;
        FieldByName('tipo').AsString             := self.tipo;
        FieldByName('aliquota').AsString         := self.aliquota;
        FieldByName('status').AsString           := self.status;

       try
          ApplyUpdates(0);
          Result := True;

      except
          Result := False;

      end;
    end;

end;

Function TProduto.excluirProduto(pCodigo: integer): Boolean;
begin
   _Sql := ('DELETE FROM produtos WHERE id_produto = :pID');

   with DM_Pesq.Qry_Geral do
   begin
       close;
       sql.Clear;
       sql.Add(_Sql);
       Params.ParamByName('pID').AsInteger := pCodigo;
       try
          ExecSQL();
          Result := True;

      except
          Result := False;

      end;
    end;

end;



end.
