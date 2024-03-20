object FR_FISCAL_eCarregarBitmapPromocional_ECF_Daruma: TFR_FISCAL_eCarregarBitmapPromocional_ECF_Daruma
  Left = 535
  Top = 291
  Width = 319
  Height = 185
  Caption = 'eCarregarBitmapPromocional_ECF_Daruma'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 107
    Height = 13
    Caption = 'Path do arquivo .bmp: '
  end
  object Label2: TLabel
    Left = 16
    Top = 56
    Width = 35
    Height = 13
    Caption = 'Indice: '
  end
  object Edt_LocalLogo: TEdit
    Left = 128
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'c:\Logo.bmp'
  end
  object Edt_Indice: TEdit
    Left = 64
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '1'
  end
  object BT_Procura_ArqAssinado: TButton
    Left = 263
    Top = 17
    Width = 25
    Height = 19
    Hint = 'Localiza Arq a ser assinado'
    Caption = '...'
    Font.Charset = HEBREW_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Narkisim'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BT_Procura_ArqAssinadoClick
  end
  object BT_ENVIAR: TButton
    Left = 79
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 3
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 166
    Top = 96
    Width = 81
    Height = 25
    Caption = 'Fechar'
    TabOrder = 4
    OnClick = BT_FECHARClick
  end
  object DLG_SelecionaDiretorio: TOpenDialog
    Left = 48
    Top = 95
  end
end
