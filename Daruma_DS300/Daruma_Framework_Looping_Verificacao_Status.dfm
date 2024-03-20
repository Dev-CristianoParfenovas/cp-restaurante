object Framework_LoopingVerificacaoStatus: TFramework_LoopingVerificacaoStatus
  Left = 243
  Top = 376
  Width = 353
  Height = 113
  Caption = 'Looping Verificacao Status'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 24
    Width = 84
    Height = 13
    Caption = 'Status Impressora'
  end
  object TX_Status: TEdit
    Left = 104
    Top = 24
    Width = 233
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
    Top = 56
  end
end
