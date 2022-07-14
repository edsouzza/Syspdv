object DM_Pesq: TDM_Pesq
  OldCreateOrder = False
  Left = 371
  Top = 77
  Height = 966
  Width = 1065
  object sdsPesquisas: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conexao_dados
    Left = 48
    Top = 16
  end
  object dspPesquisa: TDataSetProvider
    DataSet = sdsPesquisas
    Options = [poAllowCommandText]
    Left = 144
    Top = 16
  end
  object cdsPesqProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesqProduto'
    Left = 530
    Top = 264
  end
  object qry_Produtos: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conexao_dados
    Left = 482
    Top = 16
  end
  object ds_QryGeral: TDataSource
    DataSet = Qry_Geral
    Left = 247
    Top = 80
  end
  object qry_Cod: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conexao_dados
    Left = 409
    Top = 16
  end
  object dsPesqProduto: TDataSource
    DataSet = cdsPesqProduto
    Left = 530
    Top = 328
  end
  object qry_DeletarRegistro: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conexao_dados
    Left = 573
    Top = 16
  end
  object cdsPesqFuncionarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesqFuncionarios'
    Left = 722
    Top = 264
  end
  object dsPesqFuncionarios: TDataSource
    DataSet = cdsPesqFuncionarios
    Left = 720
    Top = 320
  end
  object cdsPesqAutenticacao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesqAutenticacao'
    Left = 144
    Top = 536
  end
  object dsPesqAutenticacao: TDataSource
    DataSet = cdsPesqAutenticacao
    Left = 144
    Top = 592
  end
  object dsPesqConsFuncionarios: TDataSource
    DataSet = cdsPesqConsFuncionarios
    Left = 848
    Top = 320
  end
  object cdsPesqFormaPagto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesqFormaPagto'
    Left = 438
    Top = 264
  end
  object dsPesqFormaPagto: TDataSource
    DataSet = cdsPesqFormaPagto
    Left = 434
    Top = 328
  end
  object cdsPesqConsFuncionarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesqConsFuncionarios'
    Left = 848
    Top = 264
  end
  object cdsPesqLogin: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesqLogin'
    Left = 630
    Top = 264
  end
  object dsPesqLogin: TDataSource
    DataSet = cdsPesqLogin
    Left = 633
    Top = 320
  end
  object cdsPesqLoginPermissoes: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'dspPesqLoginPermissoes'
    Left = 248
    Top = 536
  end
  object dsPesqLoginPermissoes: TDataSource
    DataSet = cdsPesqLoginPermissoes
    Left = 248
    Top = 592
  end
  object qry_Vendas: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'SELECT * FROM PRODUTOS')
    SQLConnection = dm_Conexao.conexao_dados
    Left = 658
    Top = 16
    object qry_VendasID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Required = True
    end
    object qry_VendasCOD_BARRAS: TStringField
      FieldName = 'COD_BARRAS'
      Size = 40
    end
    object qry_VendasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object qry_VendasPRECOVENDA: TBCDField
      FieldName = 'PRECOVENDA'
      Precision = 9
      Size = 2
    end
    object qry_VendasDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object qry_VendasOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object qry_VendasMESANO: TStringField
      FieldName = 'MESANO'
      Size = 10
    end
    object qry_VendasSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object qry_VendasESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 18
      Size = 2
    end
    object qry_VendasESTOQUEMINIMO: TFMTBCDField
      FieldName = 'ESTOQUEMINIMO'
      Precision = 18
      Size = 2
    end
    object qry_VendasCATEGORIA_ID: TIntegerField
      FieldName = 'CATEGORIA_ID'
    end
    object qry_VendasFABRICANTE_ID: TIntegerField
      FieldName = 'FABRICANTE_ID'
    end
    object qry_VendasFORNECEDOR_ID: TIntegerField
      FieldName = 'FORNECEDOR_ID'
    end
    object qry_VendasCOD_ALT1: TStringField
      FieldName = 'COD_ALT1'
      Size = 40
    end
    object qry_VendasCOD_ALT2: TStringField
      FieldName = 'COD_ALT2'
      Size = 40
    end
    object qry_VendasCOD_ALT3: TStringField
      FieldName = 'COD_ALT3'
      Size = 40
    end
    object qry_VendasCOD_ALT4: TStringField
      FieldName = 'COD_ALT4'
      Size = 40
    end
    object qry_VendasPRECOCOMPRA: TFMTBCDField
      FieldName = 'PRECOCOMPRA'
      Precision = 18
      Size = 2
    end
    object qry_VendasVALORDELUCRO: TFMTBCDField
      FieldName = 'VALORDELUCRO'
      Precision = 18
      Size = 2
    end
    object qry_VendasUNIDADE: TStringField
      FieldName = 'UNIDADE'
      FixedChar = True
      Size = 2
    end
    object qry_VendasTIPO: TStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 1
    end
    object qry_VendasALIQUOTA: TStringField
      FieldName = 'ALIQUOTA'
      Size = 4
    end
  end
  object cdsPesqVendaProduto: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesqVendaProduto'
    Left = 338
    Top = 536
    object cdsPesqVendaProdutoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPesqVendaProdutoCOD_BARRAS: TStringField
      FieldName = 'COD_BARRAS'
      Size = 40
    end
    object cdsPesqVendaProdutoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 40
    end
    object cdsPesqVendaProdutoPRECOVENDA: TBCDField
      FieldName = 'PRECOVENDA'
      Precision = 9
      Size = 2
    end
    object cdsPesqVendaProdutoDATACAD: TDateField
      FieldName = 'DATACAD'
    end
    object cdsPesqVendaProdutoOBS: TStringField
      FieldName = 'OBS'
      Size = 100
    end
    object cdsPesqVendaProdutoMESANO: TStringField
      FieldName = 'MESANO'
      Size = 10
    end
    object cdsPesqVendaProdutoSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsPesqVendaProdutoESTOQUE_ATUAL: TFMTBCDField
      FieldName = 'ESTOQUE_ATUAL'
      Precision = 18
      Size = 2
    end
    object cdsPesqVendaProdutoESTOQUEMINIMO: TFMTBCDField
      FieldName = 'ESTOQUEMINIMO'
      Precision = 18
      Size = 2
    end
  end
  object dsPesqVendaProduto: TDataSource
    DataSet = cdsPesqVendaProduto
    Left = 338
    Top = 592
  end
  object cdsPesqItensVendas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesqItensVendas'
    Left = 858
    Top = 792
    object cdsPesqItensVendasID_ITENS: TIntegerField
      FieldName = 'ID_ITENS'
      Required = True
    end
    object cdsPesqItensVendasID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
    end
    object cdsPesqItensVendasID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object cdsPesqItensVendasVL_UNITARIO: TFMTBCDField
      FieldName = 'VL_UNITARIO'
      Precision = 18
      Size = 2
    end
    object cdsPesqItensVendasVL_TOTALITEM: TFMTBCDField
      FieldName = 'VL_TOTALITEM'
      Precision = 18
      Size = 2
    end
    object cdsPesqItensVendasFLAG_DEVOLUCAO: TStringField
      FieldName = 'FLAG_DEVOLUCAO'
      FixedChar = True
      Size = 1
    end
    object cdsPesqItensVendasQUANTIDADE: TFMTBCDField
      FieldName = 'QUANTIDADE'
      Precision = 18
      Size = 2
    end
  end
  object dsPesqItensVendas: TDataSource
    DataSet = cdsPesqItensVendas
    Left = 856
    Top = 840
  end
  object Qry_Auxiliar: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conexao_dados
    Left = 319
    Top = 16
  end
  object dsPesqVenda: TDataSource
    DataSet = cdsPesqVenda
    Left = 968
    Top = 320
  end
  object cdsPesqVenda: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesqVenda'
    Left = 968
    Top = 264
  end
  object cdsPesqCliente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesqCliente'
    Left = 762
    Top = 792
  end
  object dsPesqCliente: TDataSource
    DataSet = cdsPesqCliente
    Left = 768
    Top = 840
  end
  object cdsPesqProdutosCotacao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesqProdutosCotacao'
    Left = 426
    Top = 536
  end
  object dsPesqProdutosCotacao: TDataSource
    DataSet = cdsPesqProdutosCotacao
    Left = 426
    Top = 592
  end
  object cdsPesqListaCotacoes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesqListaCotacoes'
    Left = 522
    Top = 536
  end
  object dsPesqListaCotacoes: TDataSource
    DataSet = cdsPesqListaCotacoes
    Left = 522
    Top = 592
  end
  object cdsPesqClientesCotacao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesqClientesCotacao'
    Left = 618
    Top = 536
  end
  object dsPesqClientesCotacao: TDataSource
    DataSet = cdsPesqClientesCotacao
    Left = 618
    Top = 584
  end
  object cdsPesqFuncionariosCotacao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesqFuncionariosCotacao'
    Left = 842
    Top = 536
  end
  object dsPesqFuncionariosCotacao: TDataSource
    DataSet = cdsPesqFuncionariosCotacao
    Left = 848
    Top = 584
  end
  object Qry_Geral: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conexao_dados
    Left = 247
    Top = 16
  end
  object cdsPesqFornecedor: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesqFornecedor'
    Left = 957
    Top = 536
  end
  object dsPesqFornecedor: TDataSource
    DataSet = cdsPesqFornecedor
    Left = 954
    Top = 584
  end
  object cdsPesqProdutosPedido: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesqProdutosPedido'
    Left = 650
    Top = 792
  end
  object dsPesqProdutosPedido: TDataSource
    DataSet = cdsPesqProdutosPedido
    Left = 650
    Top = 840
  end
  object cdsPesqListaPedidos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesqListaPedidos'
    Left = 418
    Top = 792
    object cdsPesqListaPedidosID_PEDIDO: TIntegerField
      FieldName = 'ID_PEDIDO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsPesqListaPedidosID_OPERADOR: TIntegerField
      FieldName = 'ID_OPERADOR'
    end
    object cdsPesqListaPedidosNUMPEDIDO: TStringField
      FieldName = 'NUMPEDIDO'
      Size = 10
    end
    object cdsPesqListaPedidosNUMNF: TStringField
      FieldName = 'NUMNF'
      Size = 10
    end
    object cdsPesqListaPedidosFORNECEDOR_ID: TIntegerField
      FieldName = 'FORNECEDOR_ID'
    end
    object cdsPesqListaPedidosDATA_ABERTURA: TDateField
      FieldName = 'DATA_ABERTURA'
    end
    object cdsPesqListaPedidosDATA_ENTREGA: TDateField
      FieldName = 'DATA_ENTREGA'
    end
    object cdsPesqListaPedidosVL_TOTALPEDIDO: TFMTBCDField
      FieldName = 'VL_TOTALPEDIDO'
      Precision = 18
      Size = 2
    end
    object cdsPesqListaPedidosSTATUS: TStringField
      FieldName = 'STATUS'
      FixedChar = True
      Size = 1
    end
    object cdsPesqListaPedidosCONTATO_ID: TIntegerField
      FieldName = 'CONTATO_ID'
    end
    object cdsPesqListaPedidosPRAZO_ID: TIntegerField
      FieldName = 'PRAZO_ID'
    end
    object cdsPesqListaPedidosPRAZO: TStringField
      FieldKind = fkLookup
      FieldName = 'PRAZO'
      LookupDataSet = dm_Conexao.cds_Prazos
      LookupKeyFields = 'ID_PRAZO'
      LookupResultField = 'PRAZO'
      KeyFields = 'PRAZO_ID'
      Size = 40
      Lookup = True
    end
  end
  object dsPesqListaPedidos: TDataSource
    DataSet = cdsPesqListaPedidos
    Left = 418
    Top = 840
  end
  object cdsPesqListaTodosPedidos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesqListaTodosPedidos'
    Left = 538
    Top = 792
  end
  object dsPesqListaTodosPedidos: TDataSource
    DataSet = cdsPesqListaTodosPedidos
    Left = 538
    Top = 840
  end
  object cdsPesqGeral: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesqGeral'
    Left = 50
    Top = 264
  end
  object dsPesqGeral: TDataSource
    DataSet = cdsPesqGeral
    Left = 48
    Top = 320
  end
  object cdsPesqAgendamentos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesqAgendamentos'
    Left = 200
    Top = 784
  end
  object dsPesqAgendamentos: TDataSource
    DataSet = cdsPesqAgendamentos
    Left = 200
    Top = 840
  end
  object cdsPesqServicos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesqServicos'
    Left = 312
    Top = 784
  end
  object dsPesqServicos: TDataSource
    DataSet = cdsPesqServicos
    Left = 312
    Top = 840
  end
  object ds_QryAtuxiliar: TDataSource
    DataSet = Qry_Auxiliar
    Left = 319
    Top = 80
  end
  object cdsPesqCredores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesqCredores'
    Left = 962
    Top = 792
  end
  object dsPesqCredores: TDataSource
    DataSet = cdsPesqCredores
    Left = 960
    Top = 840
  end
  object cdsPesqClientesOrcamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesqClientesOrcamento'
    Left = 64
    Top = 784
  end
  object dsPesqClientesOrcamento: TDataSource
    DataSet = cdsPesqClientesOrcamento
    Left = 64
    Top = 840
  end
  object cdsPesqListaOrcamentos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesqListaOrcamentos'
    Left = 714
    Top = 536
  end
  object dsPesqListaOrcamentos: TDataSource
    DataSet = cdsPesqListaOrcamentos
    Left = 714
    Top = 584
  end
  object cdsPesqContatos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesqContatos'
    Left = 48
    Top = 536
  end
  object dsPesqContatos: TDataSource
    DataSet = cdsPesqContatos
    Left = 48
    Top = 592
  end
  object dsPesqAuxiliar: TDataSource
    DataSet = cdsPesqAuxiliar
    Left = 152
    Top = 328
  end
  object cdsPesqAuxiliar: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesqAuxiliar'
    Left = 154
    Top = 264
  end
  object cdsPesqConsulta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesqConsulta'
    Left = 250
    Top = 264
  end
  object dsPesqConsulta: TDataSource
    DataSet = cdsPesqConsulta
    Left = 248
    Top = 328
  end
  object cdsPesqContas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPesqContas'
    Left = 346
    Top = 264
  end
  object dsPesqContas: TDataSource
    DataSet = cdsPesqContas
    Left = 344
    Top = 328
  end
  object sqlPesqGeral: TSQLDataSet
    CommandText = 'SELECT * FROM produtos'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conexao_dados
    Left = 56
    Top = 144
  end
  object dspPesqGeral: TDataSetProvider
    DataSet = sqlPesqGeral
    Options = [poAllowCommandText]
    Left = 56
    Top = 208
  end
  object sqlPesqAuxiliar: TSQLDataSet
    CommandText = 'SELECT * FROM produtos'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conexao_dados
    Left = 152
    Top = 144
  end
  object dspPesqAuxiliar: TDataSetProvider
    DataSet = sqlPesqAuxiliar
    Options = [poAllowCommandText]
    Left = 152
    Top = 208
  end
  object sqlPesqConsulta: TSQLDataSet
    CommandText = 'SELECT * FROM produtos'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conexao_dados
    Left = 248
    Top = 144
  end
  object dspPesqConsulta: TDataSetProvider
    DataSet = sqlPesqConsulta
    Options = [poAllowCommandText]
    Left = 248
    Top = 208
  end
  object sqlPesqContas: TSQLDataSet
    CommandText = 'SELECT * FROM produtos'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conexao_dados
    Left = 344
    Top = 144
  end
  object dspPesqContas: TDataSetProvider
    DataSet = sqlPesqContas
    Options = [poAllowCommandText]
    Left = 344
    Top = 208
  end
  object sqlPesFormaPagto: TSQLDataSet
    CommandText = 'SELECT * FROM produtos'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conexao_dados
    Left = 432
    Top = 144
  end
  object dspPesqFormaPagto: TDataSetProvider
    DataSet = sqlPesFormaPagto
    Options = [poAllowCommandText]
    Left = 432
    Top = 208
  end
  object sqlPesqProduto: TSQLDataSet
    CommandText = 'SELECT * FROM PRODUTOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conexao_dados
    Left = 528
    Top = 144
  end
  object dspPesqProduto: TDataSetProvider
    DataSet = sqlPesqProduto
    Options = [poAllowCommandText]
    Left = 528
    Top = 208
  end
  object sqlPesqLogin: TSQLDataSet
    CommandText = 'select * from login'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conexao_dados
    Left = 624
    Top = 144
  end
  object dspPesqLogin: TDataSetProvider
    DataSet = sqlPesqLogin
    Options = [poAllowCommandText]
    Left = 624
    Top = 208
  end
  object sqlPesqFuncionarios: TSQLDataSet
    CommandText = 
      'select u.*, f.* FROM funcionarios u INNER JOIN funcoes f ON u.fu' +
      'nc_funcaoid = f.funcao_id WHERE u.func_id > 1 AND u.func_status ' +
      '= '#39'A'#39' ORDER BY u.func_nome '
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conexao_dados
    Left = 720
    Top = 144
  end
  object dspPesqFuncionarios: TDataSetProvider
    DataSet = sqlPesqFuncionarios
    Options = [poAllowCommandText]
    Left = 720
    Top = 208
  end
  object sqlPesqConsFuncionarios: TSQLDataSet
    CommandText = 'select * from funcionarios'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conexao_dados
    Left = 848
    Top = 144
  end
  object dspPesqConsFuncionarios: TDataSetProvider
    DataSet = sqlPesqConsFuncionarios
    Options = [poAllowCommandText]
    Left = 848
    Top = 208
  end
  object sqlPesqVenda: TSQLDataSet
    CommandText = 'select * from venda'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conexao_dados
    Left = 960
    Top = 144
  end
  object dspPesqVenda: TDataSetProvider
    DataSet = sqlPesqVenda
    Options = [poAllowCommandText]
    Left = 960
    Top = 208
  end
  object sqlPesqCliente: TSQLDataSet
    CommandText = 'SELECT * from clientes'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conexao_dados
    Left = 760
    Top = 664
  end
  object dspPesqCliente: TDataSetProvider
    DataSet = sqlPesqCliente
    Options = [poAllowCommandText]
    Left = 760
    Top = 728
  end
  object sqlPesqItensVendas: TSQLDataSet
    CommandText = 'select * from itens_vendas'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conexao_dados
    Left = 856
    Top = 664
  end
  object dspPesqItensVendas: TDataSetProvider
    DataSet = sqlPesqItensVendas
    Options = [poAllowCommandText]
    Left = 856
    Top = 728
  end
  object sqlPesqCredores: TSQLDataSet
    CommandText = 'select * from credores'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conexao_dados
    Left = 952
    Top = 664
  end
  object dspPesqCredores: TDataSetProvider
    DataSet = sqlPesqCredores
    Options = [poAllowCommandText]
    Left = 952
    Top = 728
  end
  object sqlPesqContatos: TSQLDataSet
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conexao_dados
    Left = 48
    Top = 408
  end
  object dspPesqContatos: TDataSetProvider
    DataSet = sqlPesqContatos
    Options = [poAllowCommandText]
    Left = 48
    Top = 472
  end
  object sqlPesqAutenticacao: TSQLDataSet
    CommandText = 'select * from login order by usuario'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conexao_dados
    Left = 144
    Top = 408
  end
  object dspPesqAutenticacao: TDataSetProvider
    DataSet = sqlPesqAutenticacao
    Options = [poAllowCommandText]
    Left = 144
    Top = 472
  end
  object sqlPesqLoginPermissoes: TSQLDataSet
    CommandText = 'select * from login'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conexao_dados
    Left = 240
    Top = 408
  end
  object dspPesqLoginPermissoes: TDataSetProvider
    DataSet = sqlPesqLoginPermissoes
    Options = [poAllowCommandText]
    Left = 240
    Top = 472
  end
  object sqlPesqVendaProduto: TSQLDataSet
    CommandText = 'select * from produtos'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conexao_dados
    Left = 336
    Top = 408
  end
  object dspPesqVendaProduto: TDataSetProvider
    DataSet = sqlPesqVendaProduto
    Options = [poAllowCommandText]
    Left = 336
    Top = 472
  end
  object sqlPesqProdutosCotacao: TSQLDataSet
    CommandText = 'select * from produtos'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conexao_dados
    Left = 424
    Top = 408
  end
  object dspPesqProdutosCotacao: TDataSetProvider
    DataSet = sqlPesqProdutosCotacao
    Options = [poAllowCommandText]
    Left = 424
    Top = 472
  end
  object sqlPesqListaCotacoes: TSQLDataSet
    CommandText = 
      'select DISTINCT cot.id_cliente, cli.cli_id, cli.cli_nome FROM co' +
      'tacao cot, clientes cli WHERE cot.id_cliente = cli.cli_id ORDER ' +
      'BY cli.cli_nome'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conexao_dados
    Left = 520
    Top = 408
  end
  object dspPesqListaCotacoes: TDataSetProvider
    DataSet = sqlPesqListaCotacoes
    Options = [poAllowCommandText]
    Left = 520
    Top = 472
  end
  object sqlPesqClientesCotacao: TSQLDataSet
    CommandText = 'select * from clientes'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conexao_dados
    Left = 616
    Top = 408
  end
  object dspPesqClientesCotacao: TDataSetProvider
    DataSet = sqlPesqClientesCotacao
    Options = [poAllowCommandText]
    Left = 616
    Top = 472
  end
  object sqlPesqListaOrcamentos: TSQLDataSet
    CommandText = 
      'select DISTINCT o.id_cliente, cli.cli_id, cli.cli_nome FROM orca' +
      'mento o, clientes cli WHERE o.id_cliente = cli.cli_id ORDER BY c' +
      'li.cli_nome'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conexao_dados
    Left = 712
    Top = 408
  end
  object dspPesqListaOrcamentos: TDataSetProvider
    DataSet = sqlPesqListaOrcamentos
    Options = [poAllowCommandText]
    Left = 712
    Top = 472
  end
  object sqlPesqFuncionariosCotacao: TSQLDataSet
    CommandText = 'select * from funcionarios'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conexao_dados
    Left = 840
    Top = 408
  end
  object dspPesqFuncionariosCotacao: TDataSetProvider
    DataSet = sqlPesqFuncionariosCotacao
    Options = [poAllowCommandText]
    Left = 840
    Top = 472
  end
  object sqlPesqFornecedor: TSQLDataSet
    CommandText = 'select * from fornecedores'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conexao_dados
    Left = 952
    Top = 408
  end
  object dspPesqFornecedor: TDataSetProvider
    DataSet = sqlPesqFornecedor
    Options = [poAllowCommandText]
    Left = 952
    Top = 472
  end
  object sqlPesqProdutosPedido: TSQLDataSet
    CommandText = 'select * from produtos'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conexao_dados
    Left = 648
    Top = 664
  end
  object dspPesqProdutosPedido: TDataSetProvider
    DataSet = sqlPesqProdutosPedido
    Options = [poAllowCommandText]
    Left = 648
    Top = 728
  end
  object sqlPesqListaPedidos: TSQLDataSet
    CommandText = 'SELECT * from c_pedido  where status = '#39'A'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conexao_dados
    Left = 416
    Top = 664
  end
  object dspPesqListaPedidos: TDataSetProvider
    DataSet = sqlPesqListaPedidos
    Options = [poAllowCommandText]
    Left = 416
    Top = 728
  end
  object sqlPesqListaTodosPedidos: TSQLDataSet
    CommandText = 'SELECT * from c_pedido  where status = '#39'A'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conexao_dados
    Left = 528
    Top = 664
  end
  object dspPesqListaTodosPedidos: TDataSetProvider
    DataSet = sqlPesqListaTodosPedidos
    Options = [poAllowCommandText]
    Left = 528
    Top = 728
  end
  object sqlPesqAgendamentos: TSQLDataSet
    CommandText = 'SELECT * FROM agenda'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conexao_dados
    Left = 200
    Top = 656
  end
  object dspPesqAgendamentos: TDataSetProvider
    DataSet = sqlPesqAgendamentos
    Options = [poAllowCommandText]
    Left = 200
    Top = 720
  end
  object sqlPesqServicos: TSQLDataSet
    CommandText = 'SELECT * FROM servicos'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conexao_dados
    Left = 304
    Top = 656
  end
  object dspPesqServicos: TDataSetProvider
    DataSet = sqlPesqServicos
    Options = [poAllowCommandText]
    Left = 304
    Top = 720
  end
  object sqlPesqClientesOrcamento: TSQLDataSet
    CommandText = 'SELECT * FROM produtos'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm_Conexao.conexao_dados
    Left = 64
    Top = 656
  end
  object dspPesqClientesOrcamento: TDataSetProvider
    DataSet = sqlPesqClientesOrcamento
    Options = [poAllowCommandText]
    Left = 64
    Top = 720
  end
end
