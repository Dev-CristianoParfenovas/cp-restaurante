object FR_MetodorInfoEstendida_SAT_Daruma: TFR_MetodorInfoEstendida_SAT_Daruma
  Left = 490
  Top = 318
  Width = 518
  Height = 233
  Caption = 'M'#233'todo rInfoEstendida_SAT_Daruma'
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
    Width = 35
    Height = 13
    Caption = #205'ndice: '
  end
  object Label2: TLabel
    Left = 16
    Top = 64
    Width = 108
    Height = 13
    Caption = 'Informa'#231#227'o Recebida: '
  end
  object EDT_Indice: TEdit
    Left = 16
    Top = 32
    Width = 49
    Height = 21
    TabOrder = 0
  end
  object BT_Enviar: TButton
    Left = 336
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = BT_EnviarClick
  end
  object BT_Fechar: TButton
    Left = 418
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BT_FecharClick
  end
  object MM_Info: TMemo
    Left = 16
    Top = 80
    Width = 481
    Height = 73
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object BT_Limpar: TButton
    Left = 16
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 4
    OnClick = BT_LimparClick
  end
end
