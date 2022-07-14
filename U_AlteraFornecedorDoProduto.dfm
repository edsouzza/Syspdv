object _frmAssociaProdutoFornecedor: T_frmAssociaProdutoFornecedor
  Left = 281
  Top = 29
  Width = 880
  Height = 673
  Caption = 'Associa Produto ao Fornecedor'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panGridAlteraFabricantes: TPanel
    Left = 0
    Top = 0
    Width = 872
    Height = 646
    Align = alClient
    BevelInner = bvLowered
    BevelWidth = 2
    BorderWidth = 2
    BorderStyle = bsSingle
    Color = clInactiveBorder
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object GroupBox15: TGroupBox
      Left = 14
      Top = 10
      Width = 833
      Height = 546
      TabOrder = 0
      object GridFornecedores: TDBGrid
        Left = 422
        Top = 55
        Width = 400
        Height = 421
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = GridFornecedoresCellClick
        Columns = <
          item
            Expanded = False
            Title.Alignment = taCenter
            Title.Caption = 'FORNECEDOR'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 380
            Visible = True
          end>
      end
      object GridProdutos: TDBGrid
        Left = 12
        Top = 55
        Width = 400
        Height = 421
        Ctl3D = False
        DataSource = dm_Conexao.ds_CadProduto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Options = [dgTitles, dgRowLines, dgAlwaysShowSelection]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = GridProdutosCellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Alignment = taCenter
            Title.Caption = 'PRODUTOS'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clRed
            Title.Font.Height = -12
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 375
            Visible = True
          end>
      end
      object grSituacao: TGroupBox
        Left = 13
        Top = 481
        Width = 810
        Height = 59
        Caption = 'FORNECEDOR ATUAL :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object edtDescricaoDaAtualFornecedorDoProduto: TStaticText
          Left = 152
          Top = 26
          Width = 530
          Height = 21
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Color = clInfoBk
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox9: TGroupBox
        Left = 13
        Top = 12
        Width = 811
        Height = 37
        Caption = 'Filtrar pelo nome :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object edtConsProdutoForne: TEdit
          Left = 134
          Top = 12
          Width = 562
          Height = 19
          Hint = 'Entre com o nome para filtrar'
          CharCase = ecUpperCase
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnChange = edtConsProdutoForneChange
          OnKeyDown = edtConsProdutoForneKeyDown
        end
      end
    end
    object GroupBox17: TGroupBox
      Left = 14
      Top = 559
      Width = 833
      Height = 59
      TabOrder = 1
      object btnGravarAteracaoFornecedores: TSpeedButton
        Left = 6
        Top = 11
        Width = 171
        Height = 41
        Hint = 'Clique Aqui para Confirmar '
        Caption = 'Gravar'
        Enabled = False
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Glyph.Data = {
          360C0000424D360C000000000000360000002800000020000000200000000100
          180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFA09F9FA09F9FA09F9FA09F9FA09F9FA09F9FA09F9FA09F9FA09F9FA09F
          9FA09F9FA09F9FA09F9FA09F9FA09F9FA09F9FA09F9FA09F9FA09F9FA09F9FA0
          9F9FA09F9FA09F9FA09F9FA09F9FA09F9FA09F9FA09F9FFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000A09F9FA09F9FFFFFFF000000
          CF0000CF0000CF00000000009097909097909097909097909097909097909097
          9090979090979090979090979090979090979090979090979090979090979090
          9790909790909790000000CF0000CF0000CF0000000000A09F9FFFFFFF000000
          FFFF90FF9700FF9700000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF000000FF9700FF9700CF0000000000A09F9FFFFFFF000000
          FFFF90FF9700FF9700000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF000000FF9700FF9700CF0000000000A09F9FFFFFFF000000
          FFFF90FF9700FF9700000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
          00CF67FFCF67FFCF67FFCF67FFCF67FFCF67FF000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF000000FF9700FF9700CF0000000000A09F9FFFFFFF000000
          FFFF90FF9700FF9700000000FFFFFF90C8FF90C8FFFFFFFFFFFFFF000000CF67
          FFCF67FFCF67FFCF67FFCF67FFCF67FFCF67FFCF67FF000000FFFFFFFFFFFF90
          C8FF90C8FFFFFFFF000000FF9700FF9700CF0000000000A09F9FFFFFFF000000
          FFFF90FF9700FF970000000090C8FF90C8FF90C8FF90C8FFFFFFFF000000CF67
          FFCF67FFCF67FFCF67FFCF67FFCF67FFCF67FFCF67FF000000FFFFFF90C8FF90
          C8FF90C8FF90C8FF000000FF9700FF9700CF0000000000A09F9FFFFFFF000000
          FFFF90FF9700FF970000000090C8FF90C8FF90C8FF90C8FFFFFFFF0000000000
          00000000000000000000000000000000000000000000000000FFFFFF90C8FF90
          C8FF90C8FF90C8FF000000FF9700FF9700CF0000000000A09F9FFFFFFF000000
          FFFF90FF9700FF9700000000FFFFFF90C8FF90C8FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF90
          C8FF90C8FFFFFFFF000000FF9700FF9700CF0000000000A09F9FFFFFFF000000
          FFFF90FF9700FF9700000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF000000FF9700FF9700CF0000000000A09F9FFFFFFF000000
          FFFF90FF9700FF9700000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFF
          FF000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF000000FFFFFFFF
          FFFFFFFFFFFFFFFF000000FF9700FF9700CF0000000000A09F9FFFFFFF000000
          FFFF90FF9700FF9700000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFF
          FF000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF000000FFFFFFFF
          FFFFFFFFFFFFFFFF000000FF9700FF9700CF0000000000A09F9FFFFFFF000000
          FFFF90FF9700FF9700000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFF
          FF000000FFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF000000FFFFFFFF
          FFFFFFFFFFFFFFFF000000FF9700FF9700CF0000000000A09F9FFFFFFF000000
          FFFF90FF9700FF9700000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000
          00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF000000FF9700FF9700CF0000000000A09F9FFFFFFF000000
          FFFF90FF9700FF9700000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF000000FF9700FF9700CF0000000000A09F9FFFFFFF000000
          FFFF90FF9700FF9700000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF000000FF9700FF9700CF0000000000A09F9FFFFFFF000000
          FFFF90FF9700FF9700FF97000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000FF9700FF9700FF9700CF0000000000A09F9FFFFFFF000000
          FFFF90FF9700FF9700FF9700FF9700FF9700FF9700FF9700FF9700FF9700FF97
          00FF9700FF9700FF9700FF9700FF9700FF9700FF9700FF9700FF9700FF9700FF
          9700FF9700FF9700FF9700FF9700FF9700CF0000000000A09F9FFFFFFF000000
          FFFF90FF9700FF9700FF9700FF9700FF9700FF9700FF9700FF9700FF9700FF97
          00FF9700FF9700FF9700FF9700FF9700FF9700FF9700FF9700FF9700FF9700FF
          9700FF9700FF9700FF9700FF9700FF9700CF0000000000A09F9FFFFFFF000000
          FFFF90FF9700FF9700FF97000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000FF9700FF
          9700FF9700FF9700FF9700FF9700FF9700CF0000000000A09F9FFFFFFF000000
          FFFF90FF9700FF9700000000FF9700FF9700FF9700000000CFC8CFCFC8CFCFC8
          CFCFC8CFCFC8CFCFC8CFCFC8CFCFC8CFCFC8CFCFC8CFCFC8CFCFC8CF000000FF
          9700FF9700FF9700FF9700FF9700FF9700CF0000000000A09F9FFFFFFF000000
          FFFF90FF9700FF9700000000FF9700FF9700FF9700000000CFC8CFCFC8CFCFC8
          CFCFC8CFCFC8CFCFC8CFCFC8CF000000000000000000000000CFC8CF000000FF
          9700FF9700FF9700FF9700FF9700FF9700CF0000000000A09F9FFFFFFF000000
          FFFF90FF9700FF9700000000FF9700FF9700FF9700000000CFC8CFCFC8CFCFC8
          CFCFC8CFCFC8CFCFC8CFCFC8CF000000FF9700FF9700000000CFC8CF000000FF
          9700FF9700FF9700FF9700FF9700FF9700CF0000000000A09F9FFFFFFF000000
          FFFF90FF9700FF9700000000FF9700FF9700FF9700000000CFC8CFCFC8CFCFC8
          CFCFC8CFCFC8CFCFC8CFCFC8CF000000FF9700FF9700000000CFC8CF000000FF
          9700FF9700FF9700FF9700FF9700FF9700CF0000000000A09F9FFFFFFF000000
          FFFF90FF9700FF9700000000FF9700FF9700FF9700000000CFC8CFCFC8CFCFC8
          CFCFC8CFCFC8CFCFC8CFCFC8CF000000FF9700FF9700000000CFC8CF000000FF
          9700FF9700FF9700FF9700FF9700FF9700CF0000000000A09F9FFFFFFF000000
          FFFF90FF9700FF9700000000FF9700FF9700FF9700000000CFC8CFCFC8CFCFC8
          CFCFC8CFCFC8CFCFC8CFCFC8CF000000FF9700FF9700000000CFC8CF000000FF
          9700FF9700FF9700FF9700FF9700FF9700CF0000000000A09F9FFFFFFF000000
          FFFF90FF9700FF9700000000FF9700FF9700FF9700000000CFC8CFCFC8CFCFC8
          CFCFC8CFCFC8CFCFC8CFCFC8CF000000FF9700FF9700000000CFC8CF000000FF
          9700FF9700FF9700FF9700FF9700FF9700CF0000000000A09F9FFFFFFF000000
          FFFF90FF9700FF9700000000FF9700FF9700FF9700000000CFC8CFCFC8CFCFC8
          CFCFC8CFCFC8CFCFC8CFCFC8CF000000000000000000000000CFC8CF000000FF
          FF90FF9700FF9700FF9700FF9700FF9700CF0000000000FFFFFFFFFFFF000000
          FFFF90FFFF90FFFF90000000FFFF90FFFF90FFFF90000000EFF8FFEFF8FFEFF8
          FFEFF8FFEFF8FFEFF8FFEFF8FFEFF8FFEFF8FFEFF8FFEFF8FFEFF8FF00000000
          0000FFFF90FFFF90FFFF90FFFF90FFFF90000000FFFFFFFFFFFFFFFFFFFFFFFF
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000000FF
          FFFF000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = btnGravarAteracaoFornecedoresClick
      end
      object btnSairAteracaoFornecedores: TSpeedButton
        Left = 655
        Top = 12
        Width = 171
        Height = 41
        Hint = 'Clique Aqui para Retornar'
        Caption = 'Sair'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000120B0000120B00000001000008000000000000006699
          CC0066CCCC007F7F7F00FFFFFF000000FF0000FFFF00BFBFBF00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000030500000003
          0503050305030503050307000001000703070307030703070305000001010006
          0404000000000000000000010101000404060005050505050505000101010004
          0404000505050505050500010001000604040005000005050505000100000004
          0406000002000505050500010001000404040002020000000000000101010006
          0400020202020202020000010101000400020202020202020200000101010004
          0400020202020202020000010100000404060002020000000000000100000406
          0404000002000505050500000000040404040005000005050505000004040604
          0406000505050505050500000000000000000005050505050505}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = btnSairAteracaoFornecedoresClick
      end
      object btnAlterar: TSpeedButton
        Left = 222
        Top = 11
        Width = 171
        Height = 41
        Hint = 'Alterar Dados dos Fornecedores'
        Caption = 'Alterar'
        Enabled = False
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000120B0000120B00000001000069000000FFFFFF00F7FF
          FF00FFFEF100F9F8FD00FFFFDE00F7F7F900FFFFCC00F1F2F600F0F0EF00EDED
          E500EDEEDD00E6E6E600F5F7AA00DEDEE300DEDEDE00DBDAD700D4D4E400D7D7
          D700ECEC8C00D2D5DE00D3D3D100D9D9B000D8DB9C00EFDC8D00CCCCCC00E9E9
          6000C4C4D300E3E35700EED19000C6C5C300BBBBBB00B5B7BC00D6D64300B6B6
          B700B1B1C800B4B2AF00CBCD4A00B0AFAF00A6A6C500C3C35A00A4A4CC00C7B4
          8A00B9B97400A5A7AF00ADA5AD00A8A89E00A3A4A700A0A0A3009595C000ADAD
          6400B0B05300A3989D009C9C8D009E9E7A0094968C00A0968200978F81008A8A
          9500878797009797510085878B008686850081809A009999330087817300886E
          AE00656BC500837F78006D6DB5006769BC007A7A78008A8A3D007A7670007E80
          47007B7D4D006060B400727174007A7B4200837F280074753E00666666007972
          2B00645B4F007F584A0058585200393AAF003939A80065553800614C51004F4F
          46006A5523002D2DAD0047474A004F4F27002B2AA70053530E004A3B18004141
          000035352B0045381B003C3C10003B3B0000361C520033330000000099000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000505050505050
          50505050505050505050501A44222630141414141414141405505010565B5545
          0E0E0E0E0E0B0B0B0550500928685E1F0E131D1D1E1E1D180950500D4B424166
          38291D211D18140F0E505008100002334863463D1F2B2E251D50500F0E0F0F0B
          543C2F4C525A371F1F50500707070703360E0B2D3F4E483D3650501111111401
          1C400A2A32245D60435050070707070807363B15125F67675450500E0E0E0E0E
          0E0B350C2F5C65616750500B0B0B0B0B0B0B23514D3A54656762500505050505
          0505052C4F47395964315034343434343434343650494A3E2720505050505050
          5050505050585716061B50505050505050505050505053170419}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = btnAlterarClick
      end
      object btnCancelar: TSpeedButton
        Left = 438
        Top = 11
        Width = 171
        Height = 41
        Hint = 'Clique Aqui para Cancelar'
        Caption = 'Cancelar'
        Enabled = False
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000120B0000120B000000010000030000007F00000000FF
          FF007F7F7F000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000010101010101
          0101010101010101010101010101010101010101010101010101010101010101
          0101010101010101010101010101010101010101010101010101010101010101
          0101010101020001010101010000000000010101010100020101010100000000
          0101010101010100010101010000000101010101010101000101010100000100
          0101010101010100010101010001010100000101010100020101010101010101
          0101000000000201010101010101010101010101010101010101010101010101
          0101010101010101010101010101010101010101010101010101010101010101
          0101010101010101010101010101010101010101010101010101}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = btnCancelarClick
      end
    end
  end
end
