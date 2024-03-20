object FR_MetodoaCFeCancelarItem_SAT_Daruma: TFR_MetodoaCFeCancelarItem_SAT_Daruma
  Left = 525
  Top = 197
  Width = 440
  Height = 208
  Caption = 'M'#233'todo aCFeCancelarItem_SAT_Daruma'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 72
    Top = 64
    Width = 160
    Height = 13
    Caption = 'N'#250'mero do Item a ser cancelado: '
  end
  object BT_Fechar: TButton
    Left = 328
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 0
    OnClick = BT_FecharClick
  end
  object EDT_NumItem: TEdit
    Left = 233
    Top = 60
    Width = 96
    Height = 21
    TabOrder = 1
  end
  object BT_Enviar: TButton
    Left = 248
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 2
    OnClick = BT_EnviarClick
  end
end
