object _frmOrdemServico: T_frmOrdemServico
  Left = 360
  Top = 118
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Controle de Ordem de Servi'#231'os'
  ClientHeight = 532
  ClientWidth = 870
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
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pan_mostratodasos: TPanel
    Left = 0
    Top = 65
    Width = 870
    Height = 402
    Align = alClient
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
    TabOrder = 6
    object GroupBox2: TGroupBox
      Left = 6
      Top = 6
      Width = 854
      Height = 386
      Align = alClient
      Color = clGradientInactiveCaption
      ParentColor = False
      TabOrder = 0
      object gridMostraOS: TDBGrid
        Left = 13
        Top = 13
        Width = 829
        Height = 365
        Hint = 'Escolha a O.S. a ser impressa'
        Color = clWhite
        Ctl3D = False
        Enabled = False
        Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnCellClick = gridMostraOSCellClick
        OnDrawColumnCell = gridMostraOSDrawColumnCell
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ID_OS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Caption = 'O.S.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIENTE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 530
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_ORCAMENTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taRightJustify
            Title.Caption = 'VALOR'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 120
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'STATUS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 70
            Visible = True
          end>
      end
      object GroupBox3: TGroupBox
        Left = 13
        Top = 378
        Width = 829
        Height = 63
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Visible = False
        object DBEdit1: TDBEdit
          Left = 14
          Top = 25
          Width = 97
          Height = 22
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 134
          Top = 25
          Width = 97
          Height = 22
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
        end
      end
      object pnl_Periodo: TPanel
        Left = 13
        Top = 387
        Width = 829
        Height = 59
        BevelOuter = bvLowered
        BorderStyle = bsSingle
        Color = clMaroon
        TabOrder = 2
        object lbl41: TLabel
          Left = 4
          Top = 26
          Width = 68
          Height = 16
          Caption = 'Data In'#237'cio'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl42: TLabel
          Left = 187
          Top = 26
          Width = 57
          Height = 16
          Caption = 'Data Fim'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btnPesquisar: TSpeedButton
          Left = 358
          Top = 10
          Width = 147
          Height = 35
          Hint = 'Pesquisar Per'#237'odo Selecionado'
          Caption = 'Pesquisar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Glyph.Data = {
            36050000424D3605000000000000360400002800000010000000100000000100
            08000000000000010000120B0000120B000000010000070000000000000000FF
            FF00FFFFFF007F7F7F007F000000BFBFBF00FFFFFF0000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000010101010000
            0000010101010000000001010101000200000101010100020000010101010002
            0000000100000002000001010101000000000000000200000000010404040000
            0200000500020000000001040202020000000005000000000001010402030300
            0200000000020000000101040202020200000000000000000101010402030302
            0002000303000200010101040202020200000002020000000101010402030302
            0303020303020401010101040202020202020202020204010101010404040404
            0404040404040401010101040504040504040504040504010101010404040404
            0404040404040401010101010101010101010101010101010101}
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = btnPesquisarClick
        end
        object btnFechar: TSpeedButton
          Left = 670
          Top = 10
          Width = 147
          Height = 35
          Caption = 'Fechar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
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
          OnClick = btnFecharClick
        end
        object btnImprimirListaDeOs: TSpeedButton
          Left = 514
          Top = 10
          Width = 147
          Height = 35
          Hint = 'Imprime a lista de O.S. do per'#237'odo selecionado'
          Caption = 'Imprimir Listagem'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
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
          OnClick = btnImprimirListaDeOsClick
        end
        object edt_DataInicio: TDateEdit
          Left = 78
          Top = 20
          Width = 100
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 0
          OnButtonClick = edt_DataInicioButtonClick
          OnChange = edt_DataInicioChange
          OnClick = edt_DataInicioClick
        end
        object edt_DataFim: TDateEdit
          Left = 250
          Top = 20
          Width = 100
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          NumGlyphs = 2
          ParentFont = False
          TabOrder = 1
        end
      end
    end
  end
  object pan_fecharpagaros: TPanel
    Left = 0
    Top = 65
    Width = 870
    Height = 402
    Align = alClient
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
    TabOrder = 5
    object grp12: TGroupBox
      Left = 6
      Top = 6
      Width = 854
      Height = 386
      Align = alClient
      Color = clMoneyGreen
      ParentColor = False
      TabOrder = 0
      object Grid_PagarOs: TDBGrid
        Left = 13
        Top = 10
        Width = 829
        Height = 370
        Hint = 'Escolha a O.S. que efetuar'#225' o pagamento'
        Ctl3D = False
        DataSource = dm_DadosSegundo.ds_OS
        Options = [dgTitles, dgColLines, dgRowLines, dgRowSelect]
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnCellClick = Grid_PagarOsCellClick
        Columns = <
          item
            Alignment = taLeftJustify
            Expanded = False
            FieldName = 'ID_OS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Caption = 'O.S.'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIENTE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 550
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VL_ORCAMENTO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taRightJustify
            Title.Caption = 'VALOR'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 140
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'STATUS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -11
            Title.Font.Name = 'MS Sans Serif'
            Title.Font.Style = [fsBold]
            Width = 70
            Visible = True
          end>
      end
      object db_IdCliente: TDBEdit
        Left = 14
        Top = 25
        Width = 97
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        Visible = False
      end
      object db_IDOS: TDBEdit
        Left = 134
        Top = 25
        Width = 97
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        Visible = False
      end
    end
  end
  object pangrid_alteracao: TPanel
    Left = 0
    Top = 65
    Width = 870
    Height = 402
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
    TabOrder = 4
    object grp2: TGroupBox
      Left = 47
      Top = 11
      Width = 777
      Height = 319
      Caption = 'ALTERA'#199#195'O'
      TabOrder = 1
      object lbl10: TLabel
        Left = 32
        Top = 23
        Width = 53
        Height = 13
        Caption = 'CLIENTE'
        FocusControl = dbALTERACLIENTEOS
      end
      object Label5: TLabel
        Left = 33
        Top = 71
        Width = 91
        Height = 13
        Caption = 'EQUIPAMENTO'
      end
      object Label6: TLabel
        Left = 33
        Top = 115
        Width = 117
        Height = 13
        Caption = 'NUMERO DE S'#201'RIE'
      end
      object Label7: TLabel
        Left = 408
        Top = 115
        Width = 44
        Height = 13
        Caption = 'MARCA'
      end
      object Label8: TLabel
        Left = 33
        Top = 164
        Width = 53
        Height = 13
        Caption = 'MODELO'
      end
      object Label11: TLabel
        Left = 408
        Top = 165
        Width = 80
        Height = 13
        Caption = 'ACESS'#211'RIOS'
      end
      object Label12: TLabel
        Left = 32
        Top = 208
        Width = 68
        Height = 13
        Caption = 'PROBLEMA'
      end
      object Label13: TLabel
        Left = 547
        Top = 67
        Width = 146
        Height = 13
        Caption = 'VALOR DO OR'#199'AMENTO'
      end
      object Label15: TLabel
        Left = 545
        Top = 22
        Width = 26
        Height = 13
        Caption = 'O.S.'
        FocusControl = dbALTERACLIENTEOS
      end
      object dbALTERACLIENTEOS: TDBEdit
        Left = 32
        Top = 39
        Width = 505
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CLIENTE'
        DataSource = dm_DadosSegundo.ds_OS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
      end
      object dbALTERAEQUIPTOOS: TDBEdit
        Left = 32
        Top = 85
        Width = 505
        Height = 21
        CharCase = ecUpperCase
        DataField = 'EQUIPAMENTO'
        DataSource = dm_DadosSegundo.ds_OS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnEnter = dbALTERAEQUIPTOOSEnter
      end
      object dbALTERAMARCAOS: TDBEdit
        Left = 407
        Top = 130
        Width = 346
        Height = 21
        CharCase = ecUpperCase
        DataField = 'MARCA'
        DataSource = dm_DadosSegundo.ds_OS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnEnter = dbALTERAMARCAOSEnter
      end
      object dbALTERANUMSERIEOS: TDBEdit
        Left = 32
        Top = 131
        Width = 346
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NUMSERIE'
        DataSource = dm_DadosSegundo.ds_OS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnEnter = dbALTERANUMSERIEOSEnter
      end
      object dbALTERAMODELOOS: TDBEdit
        Left = 32
        Top = 179
        Width = 346
        Height = 21
        CharCase = ecUpperCase
        DataField = 'MODELO'
        DataSource = dm_DadosSegundo.ds_OS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        OnEnter = dbALTERAMODELOOSEnter
      end
      object dbALTERAACESSORIOOS: TDBEdit
        Left = 407
        Top = 178
        Width = 346
        Height = 21
        CharCase = ecUpperCase
        DataField = 'ACESSORIOS'
        DataSource = dm_DadosSegundo.ds_OS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        OnEnter = dbALTERAACESSORIOOSEnter
      end
      object dbALTERAPROBLEMAOS: TDBMemo
        Left = 32
        Top = 224
        Width = 721
        Height = 87
        DataField = 'PROBLEMA'
        DataSource = dm_DadosSegundo.ds_OS
        TabOrder = 6
        OnEnter = dbALTERAPROBLEMAOSEnter
      end
      object dbALTERAIDOS: TDBEdit
        Left = 545
        Top = 35
        Width = 204
        Height = 24
        DataField = 'ID_OS'
        DataSource = dm_DadosSegundo.ds_OS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
      object dbALTERAVALORORCAMENTO: TDBEdit
        Left = 545
        Top = 83
        Width = 204
        Height = 24
        DataField = 'VL_ORCAMENTO'
        DataSource = dm_DadosSegundo.ds_OS
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object grp3: TGroupBox
      Left = 46
      Top = 329
      Width = 778
      Height = 61
      TabOrder = 0
      object btnConfirmaAlteracao: TSpeedButton
        Left = 35
        Top = 10
        Width = 185
        Height = 41
        Hint = 'Clique Aqui para Confirmar '
        Caption = 'Gravar Altera'#231#227'o'
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
      object btnSairAlteracao: TSpeedButton
        Left = 568
        Top = 10
        Width = 185
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
        OnClick = btnSairAlteracaoClick
      end
    end
  end
  object pangrid_inclusao: TPanel
    Left = 0
    Top = 65
    Width = 870
    Height = 402
    Align = alClient
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
    object grp1: TGroupBox
      Left = 47
      Top = 11
      Width = 777
      Height = 325
      Caption = 'INCLUS'#195'O'
      TabOrder = 1
      object lbl11: TLabel
        Left = 33
        Top = 72
        Width = 91
        Height = 13
        Caption = 'EQUIPAMENTO'
      end
      object NUM: TLabel
        Left = 31
        Top = 112
        Width = 117
        Height = 13
        Caption = 'NUMERO DE S'#201'RIE'
      end
      object lbl14: TLabel
        Left = 408
        Top = 115
        Width = 44
        Height = 13
        Caption = 'MARCA'
      end
      object lbl16: TLabel
        Left = 33
        Top = 153
        Width = 53
        Height = 13
        Caption = 'MODELO'
      end
      object Label2: TLabel
        Left = 411
        Top = 157
        Width = 80
        Height = 13
        Caption = 'ACESS'#211'RIOS'
      end
      object Label3: TLabel
        Left = 33
        Top = 194
        Width = 68
        Height = 13
        Caption = 'PROBLEMA'
      end
      object Label4: TLabel
        Left = 33
        Top = 25
        Width = 53
        Height = 13
        Caption = 'CLIENTE'
      end
      object edtEQUIPAMENTO: TEdit
        Left = 31
        Top = 87
        Width = 722
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object edtNUMSERIE: TEdit
        Left = 31
        Top = 126
        Width = 346
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object edtMARCA: TEdit
        Left = 407
        Top = 129
        Width = 346
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object edtACESSORIOS: TEdit
        Left = 409
        Top = 171
        Width = 346
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object edtMODELO: TEdit
        Left = 33
        Top = 168
        Width = 346
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object menPROBLEMA: TMemo
        Left = 32
        Top = 209
        Width = 721
        Height = 106
        Lines.Strings = (
          '')
        TabOrder = 5
        OnChange = menPROBLEMAChange
        OnEnter = menPROBLEMAEnter
      end
      object dbCLIENTE: TDBLookupComboBox
        Left = 32
        Top = 43
        Width = 457
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        KeyField = 'CLI_ID'
        ListField = 'CLI_NOME'
        ListSource = dm_Conexao.ds_DadosClientes
        ParentFont = False
        TabOrder = 6
        OnClick = dbCLIENTEClick
      end
      object dbIDCLIENTE: TDBEdit
        Left = 451
        Top = 14
        Width = 38
        Height = 21
        DataField = 'CLI_ID'
        DataSource = dm_Conexao.ds_DadosClientes
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        Visible = False
      end
      object panel_numos: TPanel
        Left = 496
        Top = 13
        Width = 257
        Height = 50
        BevelInner = bvRaised
        BevelOuter = bvSpace
        BevelWidth = 2
        Caption = 'Ordem de Servi'#231'o N'#186' '
        Color = clInactiveBorder
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
      end
    end
    object GroupBox1: TGroupBox
      Left = 46
      Top = 335
      Width = 778
      Height = 55
      TabOrder = 0
      object btnConfirmaInclusao: TSpeedButton
        Left = 35
        Top = 9
        Width = 185
        Height = 41
        Hint = 'Clique Aqui para Confirmar '
        Caption = 'Confirmar Inclus'#227'o'
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
      object btnSairInclusao: TSpeedButton
        Left = 566
        Top = 9
        Width = 185
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
        OnClick = btnSairInclusaoClick
      end
      object btnCancelarInclusao: TSpeedButton
        Left = 294
        Top = 9
        Width = 185
        Height = 41
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
  end
  object pangrid_visualizacao: TPanel
    Left = 0
    Top = 65
    Width = 870
    Height = 402
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
    TabOrder = 1
    object lbl1: TLabel
      Left = 346
      Top = 20
      Width = 37
      Height = 13
      Caption = 'NOME'
      FocusControl = dbNOMECLIENTE
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl7: TLabel
      Left = 346
      Top = 229
      Width = 63
      Height = 13
      Caption = 'DATA O.S.'
      FocusControl = dbDATACAD
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 346
      Top = 72
      Width = 69
      Height = 13
      Caption = 'ENDERE'#199'O'
      FocusControl = dbENDERECO
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 686
      Top = 71
      Width = 25
      Height = 13
      Caption = 'CEP'
      FocusControl = dbCEP
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 587
      Top = 227
      Width = 65
      Height = 13
      Caption = 'TELEFONE'
      FocusControl = dbCOMPLEMENTO
    end
    object lbl5: TLabel
      Left = 346
      Top = 179
      Width = 38
      Height = 13
      Caption = 'EMAIL'
      FocusControl = dbEMAIL
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl28: TLabel
      Left = 686
      Top = 19
      Width = 26
      Height = 13
      Caption = 'O.S.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblFone: TLabel
      Left = 346
      Top = 129
      Width = 210
      Height = 13
      Caption = 'COMPLEMENTOS E OBSERVA'#199#213'ES'
      FocusControl = dbCOMPLEMENTO
    end
    object Label9: TLabel
      Left = 553
      Top = 227
      Width = 28
      Height = 13
      Caption = 'DDD'
      FocusControl = dbCOMPLEMENTO
    end
    object Label23: TLabel
      Left = 748
      Top = 227
      Width = 57
      Height = 13
      Caption = 'CELULAR'
      FocusControl = dbCOMPLEMENTO
    end
    object Label24: TLabel
      Left = 714
      Top = 227
      Width = 28
      Height = 13
      Caption = 'DDD'
      FocusControl = dbCOMPLEMENTO
    end
    object Label10: TLabel
      Left = 346
      Top = 277
      Width = 68
      Height = 13
      Caption = 'PROBLEMA'
      FocusControl = dbEMAIL
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 686
      Top = 127
      Width = 124
      Height = 13
      Caption = 'VALOR OR'#199'AMENTO'
      FocusControl = dbCEP
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object grid_OS: TDBGrid
      Left = 44
      Top = 59
      Width = 269
      Height = 326
      Cursor = crHandPoint
      Ctl3D = False
      DataSource = dm_DadosSegundo.ds_OS
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
      Columns = <
        item
          Expanded = False
          FieldName = 'CLIENTE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 250
          Visible = True
        end>
    end
    object dbDATACAD: TDBEdit
      Left = 346
      Top = 246
      Width = 156
      Height = 21
      DataField = 'DATA_ABERTURA'
      DataSource = dm_DadosSegundo.ds_OS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object dbNOMECLIENTE: TDBEdit
      Left = 346
      Top = 40
      Width = 323
      Height = 21
      DataField = 'CLIENTE'
      DataSource = dm_DadosSegundo.ds_OS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object dbENDERECO: TDBEdit
      Left = 346
      Top = 92
      Width = 323
      Height = 21
      DataField = 'CLI_ENDERECO'
      DataSource = dm_DadosSegundo.ds_OS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object dbCEP: TDBEdit
      Left = 685
      Top = 92
      Width = 139
      Height = 21
      DataField = 'CLI_CEP'
      DataSource = dm_DadosSegundo.ds_OS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object dbCOMPLEMENTO: TDBEdit
      Left = 346
      Top = 146
      Width = 319
      Height = 21
      DataField = 'CLI_COMPLEMENTO'
      DataSource = dm_DadosSegundo.ds_OS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object dbEMAIL: TDBEdit
      Left = 346
      Top = 198
      Width = 479
      Height = 21
      DataField = 'CLI_EMAIL'
      DataSource = dm_DadosSegundo.ds_OS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object dbDDD: TDBEdit
      Left = 552
      Top = 246
      Width = 30
      Height = 21
      DataField = 'CLI_DDDFONE'
      DataSource = dm_DadosSegundo.ds_OS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 14
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object dbFONE: TDBEdit
      Left = 588
      Top = 246
      Width = 76
      Height = 21
      DataField = 'CLI_FONE'
      DataSource = dm_DadosSegundo.ds_OS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 14
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object dbCELULAR: TDBEdit
      Left = 748
      Top = 246
      Width = 76
      Height = 21
      DataField = 'CLI_FONE4'
      DataSource = dm_DadosSegundo.ds_OS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 14
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
    object dbDDDCEL: TDBEdit
      Left = 713
      Top = 246
      Width = 30
      Height = 21
      DataField = 'CLI_DDDFONE4'
      DataSource = dm_DadosSegundo.ds_OS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxLength = 14
      ParentFont = False
      ReadOnly = True
      TabOrder = 10
    end
    object GroupBox9: TGroupBox
      Left = 45
      Top = 13
      Width = 269
      Height = 37
      TabOrder = 11
      object edtNOME: TEdit
        Left = 8
        Top = 11
        Width = 250
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
        OnChange = edtNOMEChange
        OnKeyDown = edtNOMEKeyDown
      end
    end
    object dbPROBLEMA: TDBMemo
      Left = 346
      Top = 293
      Width = 481
      Height = 91
      DataField = 'PROBLEMA'
      DataSource = dm_DadosSegundo.ds_OS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 12
    end
    object dbVALORORCAMENTO: TDBEdit
      Left = 685
      Top = 145
      Width = 139
      Height = 24
      DataField = 'VL_ORCAMENTO'
      DataSource = dm_DadosSegundo.ds_OS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 13
    end
    object dbIDOS: TDBEdit
      Left = 685
      Top = 39
      Width = 139
      Height = 24
      DataField = 'ID_OS'
      DataSource = dm_DadosSegundo.ds_OS
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
    end
  end
  object pan_titulo: TPanel
    Left = 0
    Top = 0
    Width = 870
    Height = 65
    Align = alTop
    BevelInner = bvLowered
    BevelWidth = 2
    BorderWidth = 2
    BorderStyle = bsSingle
    Caption = 'Controle de Ordens de Servi'#231'os Abertas'
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
    object lbl45: TLabel
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
  object pan_botoes: TPanel
    Left = 0
    Top = 467
    Width = 870
    Height = 65
    Align = alBottom
    BevelInner = bvLowered
    BevelWidth = 2
    BorderWidth = 2
    BorderStyle = bsSingle
    Color = clMaroon
    TabOrder = 2
    object btnCadastros: TSpeedButton
      Left = 8
      Top = 12
      Width = 137
      Height = 35
      Hint = 'Abre uma nova O.S.'
      Caption = 'Abrir'
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
      Left = 180
      Top = 12
      Width = 137
      Height = 35
      Hint = 'Altera dados da O.S.'
      Caption = 'Alterar '
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
    object btnSair: TSpeedButton
      Left = 696
      Top = 12
      Width = 137
      Height = 35
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
      Left = 524
      Top = 12
      Width = 137
      Height = 35
      Hint = 'Imprimir O.S.'
      Caption = 'Imprimir O.S.'
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
    object btnPagarOS: TSpeedButton
      Left = 352
      Top = 12
      Width = 137
      Height = 35
      Hint = 'Pagar Ordem de Servi'#231'o'
      Caption = 'Pagar O.S.'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
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
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      OnClick = btnPagarOSClick
    end
  end
end
