object FR_rLerSmsConfirmacao_MODEM_DarumaFramework: TFR_rLerSmsConfirmacao_MODEM_DarumaFramework
  Left = 423
  Top = 305
  Width = 454
  Height = 210
  Caption = 'M'#233'todo rLerSmsConfirmacao_MODEM_DarumaFramework'
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
    Left = 37
    Top = 8
    Width = 152
    Height = 13
    Caption = 'Informe o '#237'ndice da mensagem: '
  end
  object Label2: TLabel
    Left = 37
    Top = 56
    Width = 176
    Height = 13
    Caption = 'Mensagem de Confirma'#231#227'o recedida:'
  end
  object BT_Enviar: TButton
    Left = 245
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 0
    OnClick = BT_EnviarClick
  end
  object BT_Fechar: TButton
    Left = 341
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 1
    OnClick = BT_FecharClick
  end
  object EDT_IndiceMsg: TEdit
    Left = 37
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object MM_Msg: TMemo
    Left = 37
    Top = 72
    Width = 185
    Height = 89
    TabOrder = 3
  end
  object BT_Limpar: TButton
    Left = 245
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 4
    OnClick = BT_LimparClick
  end
end
