object _frmContasPagar: T_frmContasPagar
  Left = 517
  Top = 197
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro e Baixa de Boletos'
  ClientHeight = 650
  ClientWidth = 995
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001001010000001000800680500001600000028000000100000002000
    0000010008000000000000000000000000000000000000000000000000000000
    000001010100FFFFFF00EFEFEF00DFDFDF00CFCFCF00C0C0C000BFBFBF00AFAF
    AF009F9FBF00A0A0A0009F9F9F007F7FBF00808080007F7F7F006F6FAF006060
    A00040404000800000000000FF00000000000000000000000000000000000000
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
    0000000000000000000000000000000B1111111111111111111111110E000007
    0204020402040204060606060E0000070405040504050405060606060E000007
    0204020402040204020402040E0000070405040504050405040504050E000007
    0204020402040204020402040E00000704050405040504050C0904050E000007
    020402040204020C030F02040E00000704050405040504090F1004050E000007
    0606060606060204020402040E0000070A0A0A0A0A0A0708070807080E000007
    1212121212120D0D0D0D0D0D0D00000707070707070707070707070707000000
    000000000000000000000000000000000000000000000000000000000000FFFF
    0000800100008001000080010000800100008001000080010000800100008001
    00008001000080010000800100008001000080010000FFFF0000FFFF0000}
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GridContas: TDBGrid
    Left = -1
    Top = 143
    Width = 996
    Height = 399
    Cursor = crHandPoint
    Hint = 'Cadastre um novo boleto acima'
    Color = clInfoBk
    Ctl3D = False
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect]
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = GridContasCellClick
    OnDrawColumnCell = GridContasDrawColumnCell
  end
  object panel_total: TPanel
    Left = -2
    Top = 542
    Width = 997
    Height = 51
    TabOrder = 1
    object lbl37: TLabel
      Left = 779
      Top = 13
      Width = 84
      Height = 24
      Caption = 'Total R$ '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object edtValorTotal: TStaticText
      Left = 861
      Top = 15
      Width = 134
      Height = 21
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Color = clHighlightText
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object txtMsg: TStaticText
      Left = 2
      Top = 15
      Width = 15
      Height = 21
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Color = clYellow
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      Visible = False
    end
  end
  object pan_titulo: TPanel
    Left = 0
    Top = 0
    Width = 995
    Height = 65
    Align = alTop
    BevelInner = bvLowered
    BevelWidth = 2
    BorderWidth = 2
    BorderStyle = bsSingle
    Caption = 'Boletos do m'#234's vigente'
    Color = clMaroon
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object lblHoraAtual: TLabel
      Left = 10
      Top = 13
      Width = 87
      Height = 16
      Caption = 'lblHoraAtual'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDataDoDia: TLabel
      Left = 882
      Top = 13
      Width = 95
      Height = 16
      Alignment = taRightJustify
      Caption = 'lblDataDoDia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblStatusLogoff: TLabel
      Left = 11
      Top = 36
      Width = 35
      Height = 14
      Caption = 'Status'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
  end
  object pan_botoes: TPanel
    Left = -2
    Top = 589
    Width = 999
    Height = 64
    BevelInner = bvLowered
    BevelWidth = 2
    BorderWidth = 2
    BorderStyle = bsSingle
    Color = clMaroon
    TabOrder = 3
    object btnExcluirBoleto: TSpeedButton
      Left = 668
      Top = 9
      Width = 150
      Height = 42
      Cursor = crHandPoint
      Hint = 'Excluir Boleto'
      Caption = 'Excluir Boleto'
      Enabled = False
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        04000000000078000000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888888888888888881F88881F8888888888888991F8888889F8888191F888881
        F888888199F88891F8888888191F819F88888888819199F88888888888919F88
        88888888891911F888888888191F89F88888889191F88819F88881919F888881
        9F88891F8888888819F88888888888888888}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = btnExcluirBoletoClick
    end
    object btnSair: TSpeedButton
      Left = 833
      Top = 9
      Width = 150
      Height = 42
      Cursor = crHandPoint
      Hint = 'Sair'
      Caption = 'Sair'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Arial'
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
      OnClick = btnSairClick
    end
    object btnCadCredor: TSpeedButton
      Left = 11
      Top = 9
      Width = 150
      Height = 42
      Cursor = crHandPoint
      Hint = 'Cadastro r'#225'pido de credores'
      Caption = 'Credores'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFF909790909790909790909790909790DFD8DFDFD8DFDFD8DFDFD8DFDFD8
        DFDFD8DFDFD8DFDFD8DF90979000000000000000000090979090979090979090
        9790909790909790909790909790FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9097909097909097909097909097909097909097909097909097909097909097
        90909790000000000000000000FF6700FF3000FF300000000090979090979090
        9790909790909790909790909790FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        9097909097909097909097909097909097909097909097909097909097909097
        90000000FF6700FF3000000000FF6700FF3000FF300000000090979090979090
        9790909790909790FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF909790909790909790909790909790FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000FF6700FF3000000000FF6700FF3000FF3000000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000FF6700FF3000000000FF6700FF3000FF3000000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000FF6700FF3000000000FF6700FF3000FF3000000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000FF6700FF3000000000FF6700FF3000FF3000000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000FF6700FF3000000000FF6700FF3000FF3000000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000FF6700FF3000000000FF6700FF3000FF3000000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000FF6700FF3000000000FF6700FF3000FF3000000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000FF6700FF3000000000FF6700FF3000FF3000000000000000000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000FF6700FF3000000000FF6700FF3000FF3000000000DFD8DFBFBFBF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000FF6700FF3000000000FF3000FF3000FF3000000000DFD8DFBFBFBF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000FF6700FF3000FF3000FF3000FF3000FF3000000000DFD8DFBFBFBF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000FF6700FF3000FF3000FF3000000000000000000000DFD8DFBFBFBF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000FF3000FF300000000000000000C8FF00C8FF000000DFD8DFBFBFBF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000000BFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF00000000000000000000C8FF00C8FF00C8FF00C8FF000000DFD8DFBFBFBF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000000DFD8DFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
        FF00000000C8FF00C8FF2FC8FF2FC8FF00C8FF000000000000DFD8DFBFBFBF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000000000000FFFFFFDFD8DFBFBFBF000000FFFFFFFFFFFFFFFF
        FF0000002FC8FF2FC8FF00000000000000C8FF000000000000DFD8DFBFBFBF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000000000000DFD8DFFFFFFFDFD8DFBFBFBF000000FFFFFFFFFF
        FF00000000000000000000000000C8FF000000DFD8DFDFD8DFDFD8DFBFBFBF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000000000000000000DFD8DFFFFFFFDFD8DFBFBFBF000000FFFF
        FF000000BFBFBFDFD8DF00000000C8FF000000DFD8DFDFD8DFBFBFBFBFBFBF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000000000000DFD8DF000000DFD8DFFFFFFFBFBFBFBFBFBF0000
        00000000DFD8DF00000000C8FF000000DFD8DFDFD8DFFFFFFFFFFFFFBFBFBF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000000000000000000DFD8DF000000DFD8DFFFFFFFDFD8DFBFBF
        BFBFBFBF00000000C8FF000000BFBFBFBFBFBFFFFFFFDFD8DFDFD8DFDFD8DF00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF0000000000DF0000FF000000000000FFFFFF000000DFD8DFFFFFFFDFD8
        DFDFD8DF00000000C8FF000000909790909790909790DFD8DF000000000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF0000000000DF0000FF000000000000FFFFFFFFFFFF000000DFD8DFDFD8
        DF00000000C8FF000000000000000000000000000000000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF0000000000DF0000FF000000000000FFFFFFFFFFFFFFFFFF0000000000
        0000C8FF000000505050505050404040505050000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF0000000000DF0000FF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000404040A09F9FA09F9FA09F9F505050404040000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF0000000000DF0000FF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF1F201FA09F9FDFD8DFDFD8DFBFBFBF909790404040000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000DFD8DFFFFFFFFFFFFFDFD8DFA09F9F505050000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF1F201FDFD8DFFFFFFFFFFFFFDFD8DFA09F9F404040000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF1F201FDFD8DFBFBFBF909790404040000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF00000000001F000000404040FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = btnCadCredorClick
    end
    object btnBaixarBoleto: TSpeedButton
      Left = 504
      Top = 9
      Width = 150
      Height = 42
      Cursor = crHandPoint
      Hint = 'Baixar Boleto'
      Caption = 'Baixar Boleto'
      Enabled = False
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000070777070777070
        7770707770707770707770707770707770707770707770707770FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000DF00008000000070777070
        7770707770707770707770707770707770707770707770707770FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF0000000000DF0000CF000090000080000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF0000000000DF0000CF000090000080000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF0000000000DF0000CF0000DF0000DF00008000008000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF0000000000DF0000CF0000DF0000DF00008000008000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000000000000000000000000000000707770707770FFFFFFFFFF
        FFFFFFFFFFFFFF0000000000DF0000CFCFC8FF6067FF0000DF0000CF00009000
        0080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        404040000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000707770707770FFFF
        FFFFFFFFFFFFFF0000000000DF0000CFCFC8FF6067FF0000DF0000CF00009000
        0080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040
        BFBFBFFFFFFF707770707770707770707770707770FFFFFF0000007077707077
        70FFFFFF0000000000DF0000CFCFC8FF6067FF6067FF0000000000DF0000CF00
        0090000080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
        BFBFBF1F201F707770A09F9FA09F9FBFBFBFBFBFBF707770FFFFFF0000007077
        707077700000006067FF6067FF6067FFCFC8FF000000FFFFFF0000000000DF00
        0080000080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF909790404040
        BFBFBF1F201F707770909790A09F9FBFBFBFBFBFBF707770FFFFFF0000007077
        70707770FFFFFF0000006067FF6067FF6067FF000000FFFFFF0000000000DF00
        00CF000090000080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBF
        1F201F404040505050707770707770A09F9FBFBFBF707770FFFFFF0000007077
        70707770FFFFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFF00000000
        00DF000080000080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBF
        1F201F404040404040505050707770909790BFBFBF707770FFFFFF1F201F0000
        00707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000
        00DF0000CF000090000080000000FFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBF
        1F201F1F201F404040404040505050707770707770FFFFFF1F201F4040400000
        00707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        00000000DF000080000080000000FFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBF
        1F201F1F201F1F201F404040404040707770707770FFFFFF1F201F5050500000
        00000000707770707770FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
        00000000DF0000CF000090000080000000FFFFFFFFFFFFFFFFFF909790404040
        BFBFBF1F201F1F201F1F201F4040401F201FBFBFBF1F201F9097907077705050
        50000000000000000000000000000000707770707770FFFFFFFFFFFFFFFFFFFF
        FFFF0000000000DF000080000080000000FFFFFFFFFFFFFFFFFFFFFFFF000000
        BFBFBF1F201F1F201F1F201F1F201FFFFFFF1F201F909790BFBFBF9097907077
        70505050000000000080000060000080000000000000707770707770FFFFFFFF
        FFFF0000000000DF0000CFCFC8FF6067FF000000FFFFFFFFFFFFFFFFFFFFFFFF
        000000BFBFBFBFBFBFBFBFBFBFBFBF1F201F1F201FBFBFBFBFBFBFA09F9F9097
        90707770000000000050000090000060000080000080000000707770FFFFFFFF
        FFFFFFFFFF000000CFC8FF6067FF6067FF000000FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFF404040000000000000000000707770707770FFFFFFEFF8FFBFBFBFBFBF
        BF0000000000800000600000800000900000A0000060000080000000707770FF
        FFFFFFFFFF0000006067FF6067FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000000000000000000000707770BFBFBFEFF8FF0000
        000000A00000800000500000800000A00000A0000080000080000000707770FF
        FFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
        DF0000CF0000A00000800000A00000A00000A00000A0000080000000707770FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000600000CF000060FFFF
        FF0000DF0000CF0000800000A00000CF0000900000A0000080000000707770FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000600000CF0000A00000
        800000600000800000DF0000A00000CF0000900000A0000080000000707770FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000800000DF0000FF0000
        DF0000FF0000CF0000DF0000A00000CF0000A00000A0000080000000FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000DF0000CF0000
        FF0000DF0000DF0000DF0000A00000A00000A0000080000080000000FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000800000CF0000
        CFFFFFFF0000DF0000CF0000CF0000900000A0000080000060000000FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000600000
        DF0000DF0000DF0000A00000A0000090000090000060000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000
        00000060000080000080000080000080000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = btnBaixarBoletoClick
    end
    object btnConsultarBoletos: TSpeedButton
      Left = 175
      Top = 9
      Width = 150
      Height = 42
      Cursor = crHandPoint
      Hint = 'Consultar Boletos'
      Caption = 'Boletos'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
        000055555F77777777775555000FFFFFFFF0555F777F5FFFF55755000F0F0000
        FFF05F777F7F77775557000F0F0FFFFFFFF0777F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFFFFF70F0F0F0F0000
        00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFF55570F0F0F0F000F
        FFF07F7F7F7F77755FF70F0F0F0FFFFF00007F7F7F7F5FF577770F0F0F0F00FF
        0F057F7F7F7F77557F750F0F0F0FFFFF00557F7F7F7FFFFF77550F0F0F000000
        05557F7F7F77777775550F0F0000000555557F7F7777777555550F0000000555
        55557F7777777555555500000005555555557777777555555555}
      NumGlyphs = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = btnConsultarBoletosClick
    end
    object btnImprimir: TSpeedButton
      Left = 339
      Top = 9
      Width = 150
      Height = 42
      Cursor = crHandPoint
      Hint = 'Impress'#227'o'
      Caption = 'Imprimir'
      Enabled = False
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C4C28C89839F9A96A29D9AA19C98A19C
        98A19C98A19C98A19C98A29C99A29D99A29D99A29D99A29D99A39D9A9F9A968B
        8782C3C1BEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAEAB645E567A736D7F78737D76717D76
        717D76717D76717D76717E76717F77727F77727F77727F77717F78727A736E63
        5D55ACA9A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9E9B974E453A5A4D435E50495C50475C50
        475D50475C50475B4E465B4E465C4F455C50465C4F465C4F465D51475A4D424D
        42389D9893FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        F1F0EFDCD8D5E1DFDDE5E3E2E7E5E4968D8553443B56483F58483E58473E5847
        3E57473E56473D56453C56463C55453B55463A55473A55473A57473C5346384C
        44378F8581E7E5E4E5E3E1E3E0DFDBD8D5EDECEBFCFCFCFDFDFDD8D7D5C5C3C0
        A0958FA79A92A79B95A9A09AA79E9673645DA29696C4BFBDBEB7B3BEB6B2BEB6
        B2BDB5B1BDB5B0BDB5B1BDB6B1BDB5B1BDB6B1BDB6B1BDB6B1BDB5B1C1BEB9A6
        A7A070645FA0938DADA39DA49A95A89D959C938CB9B6B3CECDCB928B8360554B
        8E847AFFFFFFFFFFFFFFFFFFFFFEFD776B6C908B8BCFD2CFC6C6C4C4C4C3C4C4
        C3C4C4C3C4C4C4C4C4C3C5C3C4C6C3C3C5C3C2C5C4C1C5C4C1C5C4C1CFCDCBA2
        9D99766F67F7F4F3FFFFFFFFFEFDFFFFFFA99F975D50458A8179A39C977A7068
        9B988EFFFFFFFCFCFAF7F5F3FFFFFFB7ACAB625C586B6862746D66716B67716A
        67716A676F6A676F6A67726A67736A68726B66726D64726D64757067746E6668
        5F56B1ABA1FFFFFFF9F7F7FCF8F8FFFFFFB1A79F81766EA59D97ABA49F867A73
        9E958BFFFFFFF0ECEBE3DBD8ECE3E2FBF5F1EAE8E8E1DFDEE6E2E0E5E2E0E5E2
        E0E5E2E0E4E2E0E4E2E0E5E3E0E5E3E1E5E3E1E3E2DFE8E7E5EDEAEAE6E1E2EB
        E7E7FFFBFAFFFFFFFDF7F8ECE6E5FFFFFAAEA298867C75AAA29EAAA29D837770
        9F948BFFFFFFECE7E7DFD8D6E4DDDBEAE4E2F4EFEDF5EFEEF4EEEDF4EEEDF4EE
        EDF4EEEDF4EEEDF4EEEDF4EEEDF4EEEDF4EEEDFDF7F6E4E0E0A8A2A5A09A9DA2
        A2A59697998F8A8BB7B1B3F5F1EEFFFFFDA89B91867B75A9A29DAAA29D837771
        9E958EFFFFFFE9DFDBD9D2CBE0DBD4DFD7D1DED6D0DED6D0DED6D0DED6D0DED6
        D0DED6D0DED6D0DED6D0DED6D0DED6D0E0D8D2F1E6E19A938E6A7570B7C6C5A8
        BDB2B8C8C0808E8A595954E3DBDDFFFFFFA5958D867D76A8A39EA9A19D837771
        9F9690FFFEFCE0D3CBD0C7BDD7CFC6D7CEC5D7CEC5D7CEC5D7CEC5D7CEC5D7CE
        C5D7CEC5D7CEC5D7CEC5D7CEC5D7CEC5D8CFC6E8DCD49D938F6D7E71B1C7B7AA
        BBACB5C6B582948564605BE2CFD0FFFDF7A3958D877F77A9A49EA8A19C817770
        9C9791FFFFFFEAE5DFDCD8D2E4E0DBE4E0DAE4DFDAE4DFDAE4DFDAE4DFDAE4DF
        DAE4DFDAE4DFDAE4DFDAE4DFDAE4DFDAE4DFDAE8E4DEDEDBD7BAB8B2B2ADA7B7
        B0B0B2AFACB1ADA9CBC5C2EFEDE8FCF8F1A0958C867E76AAA49FACA6A1877E77
        978E84F1EFEBD9D3CDE5DBD2F9EFE5F3E9E0F2E8E0F2E9E0F2E9E0F2E9E0F2E9
        E0F2E9E0F2E9E0F2E9E0F2E9E0F2E9E0F2E8E0F0E7DEF8EFE4FFF6EDFEF0E9FE
        F0E9FDF0E8FFF9F1F7F0E7D8D6D1DFD7CE998C7C8B827AADA7A3B0ABA68E877F
        94867BCCBDB4B9A495A28D7D7F6F627C6A5C826F61816F60816F60816F60816F
        60816F60816F60816F60816F60816F60816F60816F60816E5F81705F82716082
        71617E6D5E7C6D5F9B8A7AB5A495BFAC9F928274908880B1ABA5AEAAA68A857F
        8E857BE4CFC3D8BFB0463F3A0003042626272725272524252624262624262624
        2626242626242626242626242626242626242626242626242626242626242626
        252728282A03060A2A2521C4B09DDBC8B48F80738F887FB0AAA5B2AEAA8E8A85
        90877CE4D2C4CDB7AA3A35323D40438382817877787C7B7D7D7C7E7D7C7E7D7C
        7E7D7C7E7D7C7E7D7C7E7D7C7E7D7C7E7D7C7E7D7C7E7D7C7E7D7C7E7E7C7E78
        7677848584504D5522191CB4A394DDCCB9908273938B83B3AEA99B9591716963
        92847AFCECDDDECBBA4F474236343A797172645C5B4844444A46464D48484D48
        484D48484D48484D48484D48484D48484D48484D48484D48484B47474743435F
        57567E7675414045302627CEB8A8F1DFCB918373807870A59F99ADA8A488817A
        83756AD3C0B3C4B1A0483B37211D24544D51483F41332D2A302B28312D2A312D
        2A312D2A312D2A312D2A312D2A312D2A312D2A312D2A312D2A302B28322C2A43
        3D3E5A4F5326282B271F1BB79D8DCEBBA8847566837A71A7A19AF5F4F3F0EEED
        C6BFBBA89C96C6BDB85E59591411121210115C5B5CD6D4D1D9D2C9D3CABFD3CB
        C1D3CBC1D3CBC1D3CBC1D3CBC1D3CBC1D3CBC1D3CBC1D3CABFD8D1C5D9D7D666
        676A131011161012433E40BAB2ACB4A9A1BAB4AEE4E1DFEDECEAFFFFFFFFFFFF
        FFFFFFFCFBFBFFFFFFA2A2A2151516272727716F6CFFFFFFFFFFFFFFFFF8FFFF
        FAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFFAFFFFF9FFFFFFFFFFFF82
        7E7C272727151515929295FFFFFFFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF7F7F7E3E3E3E3E2E0D7C5B1FFFEF8FCF5EEFAF0E6FAF1
        E7FAF1E7FAF1E7FAF1E7FAF1E7FAF1E7FAF1E7FAF1E7FAF1E6FCF5EBFFF9F1E8
        D4BFE2DFDCE3E3E3F4F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDEAD5BBFBF7F1FCF5EEF9F0E6F9F1
        E7F9F1E7F9F1E7F9F1E7F9F1E7F9F1E7F9F1E7F9F1E7F9F1E6FBF4EBFCF9F3E6
        D2BFFCF9F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBF8DCC8B3FBF9F5FFF9F3FCF2EAFCF3
        EBFCF3EBFCF3EBFCF3EBFCF3EBFCF3EBFCF3EBFCF3EBFCF3EAFEF7EFFEFBF8DA
        C7B6F6F2EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F7DDCAB6FDFBF8FEF9F4FAF3ECFBF4
        EDFBF4EDFBF4EDFBF4EDFBF4EDFBF4EDFBF4EDFBF4EDFBF4ECFDF7F2FEFBF9DD
        CAB8F4F1EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFAF7DECCB7FDFBF8FEFBF6FBF5EEFBF6
        EFFBF6EFFBF6EFFBF6EFFBF6EFFBF6EFFBF6EFFBF6EFFBF6EEFEF9F3FEFCF9DE
        CBB8F4F1EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F7DECBB6FDFBF9FFFCF9FCF5F0FCF6
        F2FCF6F2FCF6F2FCF6F2FCF6F2FCF6F2FCF6F2FCF6F2FCF6F1FDFAF5FFFCFADF
        CDB9F4F1EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAF8E0CDB9FDFCFAFFFEFEFEFBFBFEFC
        FBFEFCFBFEFCFBFEFCFBFEFCFBFEFCFBFEFCFBFEFCFBFEFCFBFEFDFDFFFCFBE1
        CDBCF5F2EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF8F5DBCCBAFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDA
        CCBDF2EEEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF9F7CEB99FE0CEBADECFBCDCCBB5DCCB
        B6DCCBB6DCCBB6DCCBB6DCCBB6DCCBB6DCCBB6DCCBB6DCCBB6DDCDBAE0D0BBCC
        B59BF4F0ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFDE3D4C1D1B698D5C0A6D6C0A7D5C0
        A7D5C0A7D5C0A7D5C0A7D5C0A7D5C0A7D5C0A7D5C0A7D5C0A7D5C1A7D0B698E2
        CEB9FCFBFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2EAE1E6D8C7EADFD2EAE0D3EADF
        D2EADFD2EADFD2EADFD2EADFD2EADFD2EADFD2EADFD2EADFD2EAE0D3E6D7C8F1
        E7DCFEFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2ECE3E9DCCEEDE3D7EDE3D8ECE3
        D7ECE3D7ECE3D7ECE3D7ECE3D7ECE3D7ECE3D7ECE3D7ECE3D7ECE3D8E9DCCFF2
        E9DFFEFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = btnImprimirClick
    end
  end
  object grCabecalho: TGroupBox
    Left = 1
    Top = 63
    Width = 994
    Height = 80
    Cursor = crHandPoint
    Caption = 'Cadastrar Boleto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object lbl52: TLabel
      Left = 8
      Top = 25
      Width = 55
      Height = 20
      Caption = 'Credor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 555
      Top = 25
      Width = 43
      Height = 20
      Caption = 'Valor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 695
      Top = 25
      Width = 96
      Height = 20
      Caption = 'Vencimento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object edtIDCredor: TEdit
      Left = 480
      Top = 15
      Width = 56
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Visible = False
    end
    object edtCredor: TStaticText
      Left = 8
      Top = 47
      Width = 529
      Height = 22
      Cursor = crHandPoint
      AutoSize = False
      BorderStyle = sbsSingle
      Color = clInfoBk
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 3
      OnClick = edtCredorClick
    end
    object edtValorConta: TCurrencyEdit
      Left = 555
      Top = 47
      Width = 123
      Height = 22
      AutoSize = False
      Ctl3D = False
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      OnChange = edtValorContaChange
      OnClick = edtValorContaClick
      OnKeyPress = edtValorContaKeyPress
    end
    object edtIDContaSelecionada: TEdit
      Left = 408
      Top = 15
      Width = 56
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      Visible = False
    end
    object edtVencimento: TDateEdit
      Left = 697
      Top = 46
      Width = 137
      Height = 22
      Ctl3D = False
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      NumGlyphs = 2
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object btnGravarBoleto: TButton
      Left = 848
      Top = 31
      Width = 137
      Height = 36
      Cursor = crHandPoint
      Caption = 'Gravar'
      Enabled = False
      TabOrder = 5
      OnClick = btnGravarBoletoClick
    end
  end
end