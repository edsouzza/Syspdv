object _frmPagarCotacao: T_frmPagarCotacao
  Left = 279
  Top = 34
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 2
  Caption = 'Pagando Cota'#231#227'o'
  ClientHeight = 669
  ClientWidth = 991
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001001010000001000800680500001600000028000000100000002000
    0000010008000000000000000000000000000000000000000000000000000000
    000001010100FF0000000000FF00B4B4FF005959FF002121FF00FFFFFF008E8E
    FF00DDDDFF003B3BFF001010FF009999FF006666FF00E6E6FF00CCCCFF003333
    FF000808FF007F7FFF00A6A6FF00F7F7FF004B4BFF006666FF002929FF00BFBF
    FF001717FF007373FF00ABABFF004040FF000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000303030814090603030303030303000003
    0303100F070F10100B03030303000003031A0707070707071810030303000003
    0A07070F0808040707090603030000030C07071A0303110707070D0303000003
    171C1C11190518070709170303000003030303130E1407071405030303000003
    0311130707070908060B11110300000303050707090D030310041B1A03000003
    031507071803030B0C0707120300000303191307070C081807070F1103000003
    0303110D0F070707071306030300000303030303191015070708030303000003
    030303030303031207141A03030000000000000000000000000000000000FFFF
    0000800100008001000080010000800100008001000080010000800100008001
    0000800100008001000080010000800100008001000080010000FFFF0000}
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pan_cabecalho: TPanel
    Left = 0
    Top = 0
    Width = 991
    Height = 41
    Align = alTop
    BorderWidth = 2
    BorderStyle = bsSingle
    Caption = 'Pagamento de Cota'#231#227'o'
    Color = clMaroon
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
  end
  object pnl1: TPanel
    Left = 0
    Top = 41
    Width = 991
    Height = 628
    Color = clMoneyGreen
    TabOrder = 1
    object Panel1: TPanel
      Left = 248
      Top = 41
      Width = 513
      Height = 505
      BevelInner = bvRaised
      BevelWidth = 2
      Color = clMaroon
      TabOrder = 0
      object LabelPgto1: TLabel
        Left = 37
        Top = 187
        Width = 105
        Height = 19
        Caption = '1 - DINHEIRO '
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LabelPgto2: TLabel
        Left = 37
        Top = 225
        Width = 90
        Height = 19
        Caption = '2 - CART'#195'O'
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LabelPgto3: TLabel
        Left = 37
        Top = 263
        Width = 104
        Height = 19
        Caption = '3 - CHEQUE   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LabelPgto4: TLabel
        Left = 37
        Top = 299
        Width = 108
        Height = 19
        Caption = '4 - CONV'#202'NIO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object LabelPgto5: TLabel
        Left = 37
        Top = 336
        Width = 93
        Height = 19
        Caption = '5 - TICKET   '
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 37
        Top = 78
        Width = 93
        Height = 19
        Caption = 'SUB-TOTAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 37
        Top = 143
        Width = 117
        Height = 19
        Caption = 'TOTAL CUPOM'
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 37
        Top = 112
        Width = 92
        Height = 19
        Caption = 'DESCONTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 37
        Top = 381
        Width = 86
        Height = 19
        Caption = 'RECEBIDO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 37
        Top = 411
        Width = 102
        Height = 19
        Caption = 'TROCO           '
        Font.Charset = ANSI_CHARSET
        Font.Color = clYellow
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EditNum2: TEditNum
        Left = 161
        Top = 176
        Width = 318
        Height = 27
        Hint = 'Insira o valor em dinheiro recebido do cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Inteiro = 6
        ParentFont = False
        TabOrder = 1
        Text = '0,00'
        OnClick = EditNum2Click
        OnEnter = EditNum2Enter
        OnExit = EditNum2Exit
        OnKeyDown = EditNum2KeyDown
      end
      object EditNum3: TEditNum
        Left = 161
        Top = 213
        Width = 318
        Height = 27
        Hint = 'Insira o valor em dinheiro recebido do cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Inteiro = 6
        ParentFont = False
        TabOrder = 2
        Text = '0,00'
        OnClick = EditNum3Click
        OnEnter = EditNum3Enter
        OnExit = EditNum3Exit
        OnKeyDown = EditNum2KeyDown
      end
      object EditNum4: TEditNum
        Left = 161
        Top = 251
        Width = 318
        Height = 27
        Hint = 'Insira o valor em dinheiro recebido do cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Inteiro = 6
        ParentFont = False
        TabOrder = 3
        Text = '0,00'
        OnClick = EditNum4Click
        OnEnter = EditNum4Enter
        OnExit = EditNum4Exit
        OnKeyDown = EditNum2KeyDown
      end
      object EditNum5: TEditNum
        Left = 161
        Top = 289
        Width = 318
        Height = 27
        Hint = 'Insira o valor em dinheiro recebido do cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Inteiro = 6
        ParentFont = False
        TabOrder = 4
        Text = '0,00'
        OnClick = EditNum5Click
        OnEnter = EditNum5Enter
        OnExit = EditNum5Exit
        OnKeyDown = EditNum2KeyDown
      end
      object EditNum6: TEditNum
        Left = 161
        Top = 327
        Width = 318
        Height = 27
        Hint = 'Insira o valor em dinheiro recebido do cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Inteiro = 6
        ParentFont = False
        TabOrder = 5
        Text = '0,00'
        OnClick = EditNum6Click
        OnEnter = EditNum6Enter
        OnExit = EditNum6Exit
        OnKeyDown = EditNum2KeyDown
      end
      object edt_ValorDebito: TEditNum
        Left = 160
        Top = 66
        Width = 318
        Height = 27
        Hint = 'Subtotal (Total dos Itens da Compra)'
        Color = 14680063
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Inteiro = 6
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
        Text = '0,00'
      end
      object edtTotalpagar: TEditNum
        Left = 161
        Top = 134
        Width = 318
        Height = 27
        Hint = 'Valor a ser pago pelo cliente j'#225' com desconto se tiver'
        Color = 14680063
        Font.Charset = ANSI_CHARSET
        Font.Color = clGreen
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Inteiro = 6
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
        Text = '0,00'
      end
      object edt_ValorDesconto: TEditNum
        Left = 160
        Top = 99
        Width = 318
        Height = 27
        Hint = 'Valor do desconto '
        Color = 14680063
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Inteiro = 6
        ParentFont = False
        TabOrder = 0
        Text = '0,00'
        OnEnter = edt_ValorDescontoEnter
      end
      object edtValorpago: TEditNum
        Left = 161
        Top = 369
        Width = 318
        Height = 27
        Hint = 'Insira o valor em dinheiro recebido do cliente'
        Color = 14680063
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Inteiro = 6
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
        Text = '0,00'
        OnEnter = edtValorpagoEnter
      end
      object edtvalorTroco: TEditNum
        Left = 161
        Top = 404
        Width = 318
        Height = 27
        Hint = 'Troco do cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Inteiro = 6
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
        Text = '0,00'
        OnEnter = edtvalorTrocoEnter
      end
      object Panel2: TPanel
        Left = 6
        Top = 169
        Width = 503
        Height = 3
        BevelInner = bvRaised
        Color = clMaroon
        TabOrder = 10
      end
      object Panel3: TPanel
        Left = 6
        Top = 361
        Width = 503
        Height = 3
        BevelInner = bvRaised
        Color = clMaroon
        TabOrder = 11
      end
      object GroupBox2: TGroupBox
        Left = 6
        Top = 434
        Width = 500
        Height = 59
        Color = clMaroon
        ParentColor = False
        TabOrder = 12
        object btnPagarCotacao: TSpeedButton
          Left = 355
          Top = 15
          Width = 120
          Height = 36
          Caption = 'Pagar'
          Enabled = False
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000120B0000120B0000000100001B000000FF0000000000
            FF00B4B4FF005959FF002121FF00FFFFFF008E8EFF00DDDDFF003B3BFF001010
            FF009999FF006666FF00E6E6FF00CCCCFF003333FF000808FF007F7FFF00A6A6
            FF00F7F7FF004B4BFF006666FF002929FF00BFBFFF001717FF007373FF00ABAB
            FF004040FF000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000010101061207040101010101010100000101010E0D
            050D0E0E09010101010000010118050505050505160E0101010000010805050D
            0606020505070401010000010A05051801010F0505050B0101000001151A1A0F
            170316050507150101000001010101110C1205051203010101000001010F1105
            0505070604090F0F0100000101030505070B01010E0219180100000101130505
            160101090A0505100100000101171105050A061605050D0F0100000101010F0B
            0D050505051104010100000101010101170E1305050601010100000101010101
            0101011005121801010000000000000000000000000000000000}
          OnClick = btnPagarCotacaoClick
        end
        object btnCancelarPagtoCotacao: TSpeedButton
          Left = 31
          Top = 15
          Width = 120
          Height = 36
          Caption = 'Cancelar'
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
          OnClick = btn_CancelarPagtoClick
        end
      end
      object GroupBox1: TGroupBox
        Left = 6
        Top = 8
        Width = 500
        Height = 53
        Color = clMaroon
        ParentColor = False
        TabOrder = 13
        object Label4: TLabel
          Left = 33
          Top = 22
          Width = 114
          Height = 19
          Caption = 'CLIENTE           '
          Font.Charset = ANSI_CHARSET
          Font.Color = clYellow
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object txtNomeClienteCotacao: TStaticText
          Left = 156
          Top = 18
          Width = 318
          Height = 22
          AutoSize = False
          BorderStyle = sbsSingle
          Color = clBtnHighlight
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object pan_rodape: TPanel
      Left = 1
      Top = 586
      Width = 989
      Height = 41
      Align = alBottom
      BorderWidth = 2
      BorderStyle = bsSingle
      Caption = 'Pagamento de Cota'#231#227'o'
      Color = clMaroon
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
  end
end
