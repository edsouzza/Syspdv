object _frmContatos: T_frmContatos
  Left = 1059
  Top = 88
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Controle de Contatos'
  ClientHeight = 569
  ClientWidth = 874
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001001010000001000800680500001600000028000000100000002000
    0000010008000000000000000000000000000000000000000000000000000000
    000001010100FFFFFF000000FF00800000000000000000000000000000000000
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
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0004000000010000000000010000000000040400000100000101010000000000
    0404040400000101020201000000000404040404040000010201010100000404
    0404040400000101020202020100040400040400000101010102020201000400
    0004000000010101020202020201040000000000000101010202020101020400
    0000000000010101010102020102000400000000000101010101010102010000
    0000000000000101010101010101000000000000000000010101010100000000
    000000000000000000000000010000000000000000000000000000000000FFFF
    0000FFFF0000EEFB0000E6C70000C30700008183000003010000260100006E00
    00007E0000007E000000BE000000FF000000FF830000FFFD0000FFFF0000}
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label5: TLabel
    Left = 453
    Top = 333
    Width = 32
    Height = 13
    Caption = 'EMAIL'
  end
  object pnl_inclusao: TPanel
    Left = 0
    Top = 65
    Width = 874
    Height = 437
    BevelInner = bvLowered
    BevelWidth = 2
    BorderWidth = 2
    BorderStyle = bsSingle
    Color = clInactiveBorder
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object grp4: TGroupBox
      Left = 36
      Top = 338
      Width = 804
      Height = 73
      TabOrder = 0
      object btnConfirmaInclusao: TSpeedButton
        Left = 6
        Top = 20
        Width = 130
        Height = 41
        Cursor = crHandPoint
        Hint = 'Clique Aqui para Confirmar '
        Caption = 'Gravar'
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
        OnClick = btnConfirmaInclusaoClick
      end
      object btnRetornarDaInclusao: TSpeedButton
        Left = 666
        Top = 20
        Width = 130
        Height = 41
        Cursor = crHandPoint
        Hint = 'Clique Aqui para Retornar a Tela Principal'
        Caption = 'Retornar'
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
        OnClick = btnRetornarDaInclusaoClick
      end
      object btnCancelarInclusao: TSpeedButton
        Left = 336
        Top = 20
        Width = 130
        Height = 41
        Cursor = crHandPoint
        Hint = 'Clique Aqui para Cancelar a Opera'#231#227'o'
        Caption = 'Cancelar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000120B0000120B000000010000020000000000FF000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001010000000000000000000000000001010101
          0000000101010000000000000000010101000101010101000000000000000001
          0101010101000000000000000000000001010100000000000000000000000001
          0101010100000000000000000000010101000101010000000000000000000101
          0000010101010000000000000000010100000001010100000000000000000001
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = btnCancelarInclusaoClick
      end
    end
    object grp_DadosDoFunc: TGroupBox
      Left = 36
      Top = 24
      Width = 804
      Height = 309
      Caption = 'INCLUS'#213'ES'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object lbl11: TLabel
        Left = 27
        Top = 19
        Width = 37
        Height = 13
        Caption = 'NOME'
      end
      object lbl13: TLabel
        Left = 24
        Top = 130
        Width = 69
        Height = 13
        Caption = 'ENDERECO'
      end
      object lbl14: TLabel
        Left = 24
        Top = 196
        Width = 48
        Height = 13
        Caption = 'BAIRRO'
      end
      object lbl18: TLabel
        Left = 649
        Top = 196
        Width = 127
        Height = 13
        Caption = 'DATA DO CADASTRO'
      end
      object lbl15: TLabel
        Left = 697
        Top = 130
        Width = 25
        Height = 13
        Caption = 'CEP'
      end
      object lbl50: TLabel
        Left = 24
        Top = 75
        Width = 70
        Height = 13
        Caption = 'SEGMENTO'
      end
      object lbl16: TLabel
        Left = 24
        Top = 258
        Width = 38
        Height = 13
        Caption = 'EMAIL'
      end
      object lblFones: TLabel
        Left = 282
        Top = 196
        Width = 65
        Height = 13
        Caption = 'TELEFONE'
      end
      object Label23: TLabel
        Left = 373
        Top = 196
        Width = 72
        Height = 13
        Caption = 'TELEFONE2'
      end
      object Label24: TLabel
        Left = 462
        Top = 196
        Width = 64
        Height = 13
        Caption = 'CELULAR1'
      end
      object Label25: TLabel
        Left = 549
        Top = 196
        Width = 64
        Height = 13
        Caption = 'CELULAR2'
      end
      object Label6: TLabel
        Left = 300
        Top = 258
        Width = 92
        Height = 13
        Caption = 'OBSERVA'#199#213'ES'
      end
      object msk_cep: TMaskEdit
        Left = 697
        Top = 150
        Width = 79
        Height = 19
        Ctl3D = False
        EditMask = '#####-###;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 9
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        Text = '     -   '
        OnChange = msk_cepChange
        OnKeyPress = msk_cepKeyPress
      end
      object edt_nome: TEdit
        Left = 24
        Top = 43
        Width = 752
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnChange = edt_nomeChange
        OnExit = edt_nomeExit
        OnKeyDown = edt_nomeKeyDown
      end
      object edt_endereco: TEdit
        Left = 24
        Top = 150
        Width = 662
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnExit = edt_enderecoExit
      end
      object edt_bairro: TEdit
        Left = 24
        Top = 216
        Width = 249
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
      end
      object edt_DataCadastro: TEdit
        Left = 648
        Top = 215
        Width = 129
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 10
      end
      object edt_email: TEdit
        Left = 24
        Top = 278
        Width = 253
        Height = 19
        CharCase = ecLowerCase
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
      end
      object msk_Fone: TMaskEdit
        Left = 285
        Top = 215
        Width = 70
        Height = 19
        Ctl3D = False
        EditMask = '9999-9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 9
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        Text = '    -    '
        OnChange = msk_FoneChange
        OnKeyPress = msk_cepKeyPress
      end
      object msk_Fone2: TMaskEdit
        Left = 372
        Top = 215
        Width = 71
        Height = 19
        Ctl3D = False
        EditMask = '9999-9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 9
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        Text = '    -    '
        OnChange = msk_Fone2Change
        OnKeyPress = msk_cepKeyPress
      end
      object msk_Fone4: TMaskEdit
        Left = 550
        Top = 215
        Width = 83
        Height = 19
        Ctl3D = False
        EditMask = '\99999-9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
        Text = '9    -    '
        OnChange = msk_Fone4Change
        OnKeyPress = msk_cepKeyPress
      end
      object msk_Fone3: TMaskEdit
        Left = 460
        Top = 215
        Width = 77
        Height = 19
        Ctl3D = False
        EditMask = '\99999-9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        Text = '9    -    '
        OnChange = msk_Fone3Change
        OnKeyPress = msk_cepKeyPress
      end
      object edt_obs: TEdit
        Left = 300
        Top = 278
        Width = 478
        Height = 19
        CharCase = ecLowerCase
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 9
      end
      object btnCadNovoSegmento: TButton
        Left = 697
        Top = 92
        Width = 78
        Height = 27
        Cursor = crHandPoint
        Hint = 'Cadastrar novo segmento'
        Caption = '...'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        OnClick = btnCadNovoSegmentoClick
      end
      object lblListaSegmentosParaInclusao: TStaticText
        Left = 24
        Top = 99
        Width = 662
        Height = 19
        Cursor = crHandPoint
        AutoSize = False
        BorderStyle = sbsSingle
        Color = clHighlightText
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 12
        OnClick = lblListaSegmentosParaInclusaoClick
      end
    end
  end
  object pnl_visualizacao: TPanel
    Left = 0
    Top = 65
    Width = 874
    Height = 437
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
    TabOrder = 4
    object lbl1: TLabel
      Left = 344
      Top = 23
      Width = 37
      Height = 13
      Caption = 'NOME'
      FocusControl = dbedtCONT_NOME1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl9: TLabel
      Left = 463
      Top = 359
      Width = 70
      Height = 13
      Caption = 'SEGMENTO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl7: TLabel
      Left = 342
      Top = 358
      Width = 105
      Height = 13
      Caption = 'DATA CADASTRO'
      FocusControl = dbedtCONT_DATACAD
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 344
      Top = 93
      Width = 69
      Height = 13
      Caption = 'ENDERE'#199'O'
      FocusControl = dbedtCONT_ENDERECO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 687
      Top = 152
      Width = 25
      Height = 13
      Caption = 'CEP'
      FocusControl = dbedtCONT_CEP
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl5: TLabel
      Left = 344
      Top = 282
      Width = 38
      Height = 13
      Caption = 'EMAIL'
      FocusControl = dbedtCONT_EMAIL
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl28: TLabel
      Left = 685
      Top = 93
      Width = 49
      Height = 13
      Caption = 'C'#211'DIGO'
      FocusControl = dbedtCONT_ID
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblFone: TLabel
      Left = 344
      Top = 157
      Width = 48
      Height = 13
      Caption = 'BAIRRO'
      FocusControl = dbedtCONT_BAIRRO
    end
    object Label1: TLabel
      Left = 342
      Top = 221
      Width = 72
      Height = 13
      Caption = 'TELEFONE1'
      FocusControl = dbedtCONT_BAIRRO
    end
    object Label3: TLabel
      Left = 494
      Top = 221
      Width = 72
      Height = 13
      Caption = 'TELEFONE2'
      FocusControl = dbedtCONT_BAIRRO
    end
    object Label17: TLabel
      Left = 624
      Top = 221
      Width = 64
      Height = 13
      Caption = 'CELULAR1'
      FocusControl = dbedtCONT_BAIRRO
    end
    object Label19: TLabel
      Left = 768
      Top = 221
      Width = 64
      Height = 13
      Caption = 'CELULAR2'
      FocusControl = dbedtCONT_BAIRRO
    end
    object dbgrd_Contatos: TDBGrid
      Left = 20
      Top = 48
      Width = 304
      Height = 353
      Cursor = crHandPoint
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgTitles, dgRowLines, dgAlwaysShowSelection]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = dbgrd_ContatosCellClick
    end
    object dbedtCONT_DATACAD: TDBEdit
      Left = 342
      Top = 379
      Width = 105
      Height = 19
      Ctl3D = False
      DataSource = dm_DadosSegundo.ds_Contatos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object dbedtCONT_NOME1: TDBEdit
      Left = 344
      Top = 43
      Width = 505
      Height = 19
      Ctl3D = False
      DataSource = dm_DadosSegundo.ds_Contatos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object dbedtCONT_ENDERECO: TDBEdit
      Left = 344
      Top = 113
      Width = 321
      Height = 19
      Ctl3D = False
      DataSource = dm_DadosSegundo.ds_Contatos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object dbedtCONT_CEP: TDBEdit
      Left = 686
      Top = 175
      Width = 162
      Height = 19
      Ctl3D = False
      DataSource = dm_DadosSegundo.ds_Contatos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object dbedtCONT_BAIRRO: TDBEdit
      Left = 344
      Top = 174
      Width = 321
      Height = 19
      Ctl3D = False
      DataSource = dm_DadosSegundo.ds_Contatos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object dbedtCONT_EMAIL: TDBEdit
      Left = 344
      Top = 302
      Width = 501
      Height = 19
      Ctl3D = False
      DataSource = dm_DadosSegundo.ds_Contatos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object dbedtCONT_ID: TDBEdit
      Left = 685
      Top = 114
      Width = 162
      Height = 19
      Ctl3D = False
      DataSource = dm_DadosSegundo.ds_Contatos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object dbedtCONT_TELEFONE1: TDBEdit
      Left = 342
      Top = 238
      Width = 76
      Height = 19
      Ctl3D = False
      DataSource = dm_DadosSegundo.ds_Contatos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object dbedtCONT_TELEFONE2: TDBEdit
      Left = 494
      Top = 238
      Width = 76
      Height = 19
      Ctl3D = False
      DataSource = dm_DadosSegundo.ds_Contatos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
    object dbedtCONT_CELULAR1: TDBEdit
      Left = 624
      Top = 238
      Width = 76
      Height = 19
      Ctl3D = False
      DataSource = dm_DadosSegundo.ds_Contatos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
    object dbedtCONT_CELULAR2: TDBEdit
      Left = 768
      Top = 238
      Width = 76
      Height = 19
      Ctl3D = False
      DataSource = dm_DadosSegundo.ds_Contatos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 11
    end
    object GroupBox9: TGroupBox
      Left = 21
      Top = 8
      Width = 302
      Height = 37
      TabOrder = 12
      object edtFiltro: TEdit
        Left = 6
        Top = 11
        Width = 290
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
        OnChange = edtFiltroChange
        OnClick = edtFiltroClick
        OnKeyDown = edtFiltroKeyDown
      end
    end
    object txtMsg: TStaticText
      Left = 19
      Top = 405
      Width = 828
      Height = 21
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Color = clWindow
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 13
    end
    object edt_seguimento: TDBEdit
      Left = 462
      Top = 379
      Width = 385
      Height = 19
      Ctl3D = False
      DataSource = dm_DadosSegundo.ds_Contatos
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
      OnEnter = edt_seguimentoEnter
    end
  end
  object pnl_alteracao: TPanel
    Left = 0
    Top = 65
    Width = 874
    Height = 437
    BevelInner = bvLowered
    BevelWidth = 2
    BorderWidth = 2
    BorderStyle = bsSingle
    Color = clInactiveBorder
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object grp3: TGroupBox
      Left = 46
      Top = 353
      Width = 778
      Height = 63
      TabOrder = 0
      object btnConfirmaAlteracao: TSpeedButton
        Left = 27
        Top = 16
        Width = 185
        Height = 41
        Cursor = crHandPoint
        Hint = 'Clique Aqui para Confirmar '
        Caption = 'Confirmar Altera'#231#227'o'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
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
        OnClick = btnConfirmaAlteracaoClick
      end
      object btnRetornarDaAlteracao: TSpeedButton
        Left = 569
        Top = 16
        Width = 185
        Height = 41
        Cursor = crHandPoint
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
        OnClick = btnRetornarDaAlteracaoClick
      end
      object btnCancelarAlteracao: TSpeedButton
        Left = 295
        Top = 16
        Width = 185
        Height = 41
        Cursor = crHandPoint
        Hint = 'Clique Aqui para Cancelar a Opera'#231#227'o'
        Caption = 'Cancelar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          08000000000000010000120B0000120B000000010000020000000000FF000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001010000000000000000000000000001010101
          0000000101010000000000000000010101000101010101000000000000000001
          0101010101000000000000000000000001010100000000000000000000000001
          0101010100000000000000000000010101000101010000000000000000000101
          0000010101010000000000000000010100000001010100000000000000000001
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        OnClick = btnCancelarAlteracaoClick
      end
    end
    object grp2: TGroupBox
      Left = 47
      Top = 17
      Width = 777
      Height = 325
      Caption = 'ALTERA'#199#213'ES'
      TabOrder = 1
      object lbl10: TLabel
        Left = 24
        Top = 34
        Width = 37
        Height = 13
        Caption = 'NOME'
        FocusControl = dbedtCONT_NOME
      end
      object lbl20: TLabel
        Left = 24
        Top = 99
        Width = 69
        Height = 13
        Caption = 'ENDERECO'
        FocusControl = dbedtCONT_ENDERECO1
      end
      object lbl21: TLabel
        Left = 402
        Top = 99
        Width = 48
        Height = 13
        Caption = 'BAIRRO'
        FocusControl = dbedtCONT_COMPLEMENTO1
      end
      object lbl23: TLabel
        Left = 542
        Top = 268
        Width = 127
        Height = 13
        Caption = 'DATA DO CADASTRO'
      end
      object lbl24: TLabel
        Left = 352
        Top = 268
        Width = 50
        Height = 13
        Caption = 'STATUS'
      end
      object lbl25: TLabel
        Left = 26
        Top = 162
        Width = 38
        Height = 13
        Caption = 'EMAIL'
        FocusControl = dbedtCONT_EMAIL1
      end
      object lbl26: TLabel
        Left = 301
        Top = 99
        Width = 25
        Height = 13
        Caption = 'CEP'
      end
      object lbl34: TLabel
        Left = 26
        Top = 268
        Width = 70
        Height = 13
        Caption = 'SEGMENTO'
      end
      object Label26: TLabel
        Left = 245
        Top = 211
        Width = 76
        Height = 13
        Caption = 'TELEFONE 2'
      end
      object Label29: TLabel
        Left = 448
        Top = 211
        Width = 68
        Height = 13
        Caption = 'CELULAR 1'
      end
      object Label31: TLabel
        Left = 652
        Top = 211
        Width = 68
        Height = 13
        Caption = 'CELULAR 2'
      end
      object Label34: TLabel
        Left = 26
        Top = 211
        Width = 69
        Height = 13
        Caption = 'TELEFONE '
      end
      object dbedtCONT_NOME: TDBEdit
        Left = 24
        Top = 50
        Width = 737
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'CONT_NOME'
        DataSource = dm_DadosSegundo.ds_Contatos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnChange = dbedtCONT_NOMEChange
        OnExit = dbedtCONT_NOMEExit
      end
      object dbedtCONT_ENDERECO1: TDBEdit
        Left = 24
        Top = 115
        Width = 265
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'CONT_ENDERECO'
        DataSource = dm_DadosSegundo.ds_Contatos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnChange = dbedtCONT_ENDERECO1Change
      end
      object dbedtCONT_COMPLEMENTO1: TDBEdit
        Left = 402
        Top = 115
        Width = 356
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'CONT_BAIRRO'
        DataSource = dm_DadosSegundo.ds_Contatos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        OnChange = msk_cep2Change
      end
      object dbedtCONT_EMAIL1: TDBEdit
        Left = 24
        Top = 178
        Width = 737
        Height = 19
        Hint = 'Digite tudo em letras min'#250'sculas'
        CharCase = ecLowerCase
        Ctl3D = False
        DataField = 'CONT_EMAIL'
        DataSource = dm_DadosSegundo.ds_Contatos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
      end
      object dbedtCONT_DATACAD2: TDBEdit
        Left = 542
        Top = 291
        Width = 220
        Height = 19
        Hint = 'Este campo n'#227'o pode ser alterado'
        CharCase = ecLowerCase
        Ctl3D = False
        DataField = 'CONT_DATACAD'
        DataSource = dm_DadosSegundo.ds_Contatos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 10
      end
      object msk_cep2: TMaskEdit
        Left = 300
        Top = 114
        Width = 85
        Height = 19
        Ctl3D = False
        EditMask = '#####-###;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 9
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        Text = '     -   '
        OnChange = msk_cep2Change
        OnKeyPress = msk_cep2KeyPress
      end
      object combo_Altera_Status: TComboBox
        Left = 352
        Top = 291
        Width = 169
        Height = 21
        Hint = 'A=Ativo    I=Inativo'
        CharCase = ecUpperCase
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        Text = 'A'
        OnChange = combo_Altera_StatusChange
        Items.Strings = (
          'A'
          'I')
      end
      object db_CONT_ID: TDBEdit
        Left = 624
        Top = 17
        Width = 137
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'CONT_ID'
        DataSource = dm_DadosSegundo.ds_Contatos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        Visible = False
        OnChange = msk_cep2Change
        OnKeyPress = msk_cep2KeyPress
      end
      object msk_tel2: TMaskEdit
        Left = 246
        Top = 232
        Width = 107
        Height = 19
        Ctl3D = False
        EditMask = '9999-9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 9
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        Text = '    -    '
        OnChange = msk_tel2Change
        OnKeyPress = msk_cepKeyPress
      end
      object msk_tel4: TMaskEdit
        Left = 653
        Top = 232
        Width = 108
        Height = 19
        Ctl3D = False
        EditMask = '\99999-9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 8
        Text = '9    -    '
        OnChange = msk_tel4Change
        OnKeyPress = msk_cepKeyPress
      end
      object msk_tel: TMaskEdit
        Left = 27
        Top = 232
        Width = 110
        Height = 19
        Ctl3D = False
        EditMask = '9999-9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 9
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        Text = '    -    '
        OnChange = msk_telChange
        OnKeyPress = msk_cepKeyPress
      end
      object msk_tel3: TMaskEdit
        Left = 453
        Top = 232
        Width = 108
        Height = 19
        Ctl3D = False
        EditMask = '\99999-9999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 7
        Text = '9    -    '
        OnChange = msk_tel3Change
        OnKeyPress = msk_cepKeyPress
      end
      object dbSegID: TDBEdit
        Left = 192
        Top = 265
        Width = 137
        Height = 19
        CharCase = ecUpperCase
        Ctl3D = False
        DataField = 'CONT_SEGID'
        DataSource = dm_DadosSegundo.ds_Contatos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        Visible = False
        OnChange = msk_cep2Change
        OnKeyPress = msk_cep2KeyPress
      end
      object lblSegmento: TStaticText
        Left = 27
        Top = 292
        Width = 304
        Height = 19
        Cursor = crHandPoint
        AutoSize = False
        BorderStyle = sbsSingle
        Color = clHighlightText
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 13
        OnClick = lblSegmentoClick
      end
    end
  end
  object pan_botoes: TPanel
    Left = 0
    Top = 502
    Width = 874
    Height = 67
    Align = alBottom
    BevelInner = bvLowered
    BevelWidth = 2
    BorderWidth = 2
    BorderStyle = bsSingle
    Color = clMaroon
    TabOrder = 1
    object btnCadastros: TSpeedButton
      Left = 8
      Top = 14
      Width = 137
      Height = 35
      Cursor = crHandPoint
      Hint = 'Incluir Novos Funcion'#225'rios'
      Caption = 'Cadastrar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000120B0000120B00000001000004000000D3D3D3004DA6
        A6004D4D4D000000FF0000000000000000000000000000000000000000000000
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
        0000000000000000000000000000000000000000000000000000030303030303
        0303030303030303030303030202020202020202020202020203030201010202
        0202020200000201020303020101020202020202000002010203030201010202
        0202020200000201020303020101020202020202020202010203030201010101
        0101010101010101020303020101020202020202020201010203030201020000
        0000000000000201020303020102000000000000000002010203030201020000
        0000000000000201020303020102000000000000000002010203030201020000
        0000000000000202020303020102000000000000000002000203030202020202
        0202020202020202020303030303030303030303030303030303}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = btnCadastrosClick
    end
    object btnAlterar: TSpeedButton
      Left = 187
      Top = 14
      Width = 133
      Height = 35
      Cursor = crHandPoint
      Hint = 'Alterar Dados dos Funcion'#225'rios'
      Caption = 'Alterar'
      Enabled = False
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
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
    object btnInativar: TSpeedButton
      Left = 366
      Top = 14
      Width = 137
      Height = 35
      Cursor = crHandPoint
      Hint = 'Inativar Funcion'#225'rios'
      Caption = 'Inativar'
      Enabled = False
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000120B0000120B000000010000020000000000FF000000
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
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001010000000000000000000000000001010101
        0000000101010000000000000000010101000101010101000000000000000001
        0101010101000000000000000000000001010100000000000000000000000001
        0101010100000000000000000000010101000101010000000000000000000101
        0000010101010000000000000000010100000001010100000000000000000001
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = btnInativarClick
    end
    object btnSair: TSpeedButton
      Left = 724
      Top = 14
      Width = 137
      Height = 35
      Cursor = crHandPoint
      Hint = 'Retornar a Tela Principal'
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
    object btnimprimir: TSpeedButton
      Left = 545
      Top = 14
      Width = 137
      Height = 35
      Cursor = crHandPoint
      Hint = 'Imprimir Funcion'#225'rios'
      Caption = 'Relat'#243'rios'
      Enabled = False
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        08000000000000010000120B0000120B0000000100000600000000000000CCCC
        CC00FFFFFF008484840000FFFF000000FF000000000000000000000000000000
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
        0000000000000000000000000000000000000000000000000000050505050505
        0505050505050505050505050000000000000000000000050505050001010101
        0101010101000100050500000000000000000000000000010005000101010101
        0104040401010000000500010101010101030303010100010005000000000000
        0000000000000001010000010101010101010101010001000100050000000000
        0000000000010001000005050002020202020202020001000100050505000200
        0000000002000000000505050500020202020202020200050505050505050002
        0000000000020005050505050505000202020202020202000505050505050500
        0000000000000000050505050505050505050505050505050505}
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = btnimprimirClick
    end
    object lstEscolheTipoRel: TListBox
      Left = 720
      Top = 11
      Width = 137
      Height = 38
      Cursor = crHandPoint
      Color = clMaroon
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 16
      Items.Strings = (
        'RELAT'#211'RIO   DE  TODOS  OS  CONTATOS'
        'RELAT'#211'RIO DO CONTATO SELECIONADO')
      ParentFont = False
      TabOrder = 0
      Visible = False
      OnClick = lstEscolheTipoRelClick
    end
  end
  object pan_titulo: TPanel
    Left = 0
    Top = 0
    Width = 874
    Height = 65
    Align = alTop
    BevelInner = bvLowered
    BevelWidth = 2
    BorderWidth = 2
    BorderStyle = bsSingle
    Caption = 'Controle de Contatos - Visualizando...'
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
      Left = 763
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
      Left = 60
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
    end
    object lbl49: TLabel
      Left = 10
      Top = 36
      Width = 50
      Height = 14
      Caption = 'Logado : '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end