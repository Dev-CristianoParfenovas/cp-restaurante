object FR_MetodoaCFTotalizar_SAT_Daruma: TFR_MetodoaCFTotalizar_SAT_Daruma
  Left = 510
  Top = 293
  Width = 443
  Height = 210
  Caption = 'M'#233'todo aCFTotalizar_SAT_Daruma'
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
    Left = 40
    Top = 48
    Width = 148
    Height = 13
    Caption = 'Tipo do Desconto/ Acrescimo: '
  end
  object Label2: TLabel
    Left = 40
    Top = 80
    Width = 151
    Height = 13
    Caption = 'Valor do Desconto/ Acrescimo: '
  end
  object BT_Fechar: TButton
    Left = 344
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 0
    OnClick = BT_FecharClick
  end
  object BT_Enviar: TButton
    Left = 264
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = BT_EnviarClick
  end
  object CB_Tipo: TComboBox
    Left = 192
    Top = 40
    Width = 73
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Text = 'D$'
    Items.Strings = (
      'D$'
      'D%'
      'A$'
      'A%')
  end
  object EDT_Valor: TEdit
    Left = 192
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 3
    Text = '0,00'
  end
end
