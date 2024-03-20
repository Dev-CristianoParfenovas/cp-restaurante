object Framework_LoopingVerificacaoStatusDoc: TFramework_LoopingVerificacaoStatusDoc
  Left = 311
  Top = 407
  Width = 352
  Height = 112
  Caption = 'Looping de Verificacao de Status Doc'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 84
    Height = 13
    Caption = 'Status Impressora'
  end
  object TX_Status: TEdit
    Left = 112
    Top = 24
    Width = 225
    Height = 21
    TabOrder = 3
  end
  object BT_Enviar: TButton
    Left = 56
    Top = 56
    Width = 89
    Height = 25
    Caption = 'Start'
    TabOrder = 0
    OnClick = BT_EnviarClick
  end
  object BT_Stop: TButton
    Left = 152
    Top = 56
    Width = 89
    Height = 25
    Caption = 'Stop'
    TabOrder = 1
    OnClick = BT_StopClick
  end
  object BT_Fechar: TButton
    Left = 248
    Top = 56
    Width = 89
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BT_FecharClick
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 8
    Top = 48
  end
end
