object _frmEscolhaClienteParaOrcamento: T_frmEscolhaClienteParaOrcamento
  Left = 746
  Top = 269
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  BorderWidth = 2
  ClientHeight = 395
  ClientWidth = 564
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001001010000001000800680500001600000028000000100000002000
    0000010008000000000000000000000000000000000000000000000000000000
    00000101010000000000999999000000FF006666660047474700E4E4E4000010
    8700BEBEBE00292929008C8C8C005A5A5A00212121003660AF0099999900FFFF
    FF00191919004F6DB70066666600CECCC500ADADAD00525C9100848484003C3C
    3C00121212007F8DA800D7D7D700F2F2F200102B9500B0B2B600ADABA7005252
    5200C5C5C5006483C100080808007F7F7F00D4DDEE0033333300DDDDDD007373
    7300CCCCCC0000109000424242004B639E00B3B0AB008C848400B6B6B600C3C6
    CD00D5D1C8000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000020
    101022082510101017071010100000201010251D12301010070B071029000020
    1010100E2A1A2D10101C0B202400002010101F162C1E091F1010150300000020
    1009281431172815091F0B0000000005211B2B0B172F210B0B17000000000000
    0B050C1701192F1B110C00000000000000280B0A190B0A151511000000000000
    000C110A151B1F111E0D2000000000000B010D15292121181123230000000000
    000D0B1B29202320200A010B0000000000172827061117192020110B00000000
    00030C18010A0C1719200D03000000000000030C23010D0C2401180000000000
    000000032819010D0D2600000000000000000000000C05112000000000008001
    000080010000800100008003000080070000800F0000C00F0000E00F0000E007
    0000C0070000E0030000E0030000E0030000F0070000F80F0000FE1F0000}
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl_cabecalho: TPanel
    Left = 0
    Top = 0
    Width = 564
    Height = 41
    Align = alTop
    BorderWidth = 2
    BorderStyle = bsSingle
    Caption = 'Escolha o Cliente'
    Color = clMaroon
    Ctl3D = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
  end
  object pnl_rodape: TPanel
    Left = 0
    Top = 360
    Width = 564
    Height = 35
    Cursor = crHandPoint
    Align = alBottom
    BorderWidth = 2
    BorderStyle = bsSingle
    Caption = 'Clique aqui para cadastrar novo cliente'
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
    OnClick = pnl_rodapeClick
    OnMouseMove = pnl_rodapeMouseMove
    object lblHoraAtual: TLabel
      Left = 488
      Top = 9
      Width = 70
      Height = 13
      Alignment = taRightJustify
      Caption = 'lblHoraAtual'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDataDoDia: TLabel
      Left = 4
      Top = 9
      Width = 76
      Height = 13
      Caption = 'lblDataDoDia'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 41
    Width = 564
    Height = 320
    Color = clGradientActiveCaption
    TabOrder = 2
    object grid_clientesOrcamento: TDBGrid
      Left = 0
      Top = 44
      Width = 563
      Height = 277
      Cursor = crHandPoint
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgRowLines, dgAlwaysShowSelection]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = grid_clientesOrcamentoCellClick
      Columns = <
        item
          Expanded = False
          Visible = True
        end>
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 0
      Width = 564
      Height = 44
      Caption = 'Filtro pelo Nome'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      object edt_NomeCliente: TEdit
        Left = 12
        Top = 15
        Width = 539
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
        OnChange = edt_NomeClienteChange
        OnKeyDown = edt_NomeClienteKeyDown
      end
    end
  end
end
