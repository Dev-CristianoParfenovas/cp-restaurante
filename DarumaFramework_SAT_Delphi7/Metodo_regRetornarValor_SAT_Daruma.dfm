object FR_MetodoregRetornarValor_SAT_Daruma: TFR_MetodoregRetornarValor_SAT_Daruma
  Left = 440
  Top = 186
  Width = 562
  Height = 186
  Caption = 'M'#233'todo regRetornarValor_SAT_Daruma'
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
    Left = 74
    Top = 48
    Width = 34
    Height = 13
    Caption = 'Chave:'
  end
  object Label2: TLabel
    Left = 32
    Top = 80
    Width = 76
    Height = 13
    Caption = 'Valor da Chave:'
  end
  object BT_Fechar: TButton
    Left = 464
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 0
    OnClick = BT_FecharClick
  end
  object BT_Enviar: TButton
    Left = 384
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = BT_EnviarClick
  end
  object EDT_Chave: TEdit
    Left = 112
    Top = 42
    Width = 425
    Height = 21
    TabOrder = 2
    Text = 'EMIT\CNPJ'
  end
  object EDT_ValorChave: TEdit
    Left = 112
    Top = 73
    Width = 425
    Height = 21
    TabOrder = 3
  end
end
