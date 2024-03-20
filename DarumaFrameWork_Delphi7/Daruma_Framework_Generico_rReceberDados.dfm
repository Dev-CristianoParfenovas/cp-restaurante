object FR_rReceberDados_Daruma: TFR_rReceberDados_Daruma
  Left = 494
  Top = 264
  Width = 319
  Height = 284
  Caption = 'rReceberDados_Daruma'
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
    Left = 8
    Top = 16
    Width = 78
    Height = 13
    Caption = 'Bytes Recebido:'
  end
  object Memo_BytesRecebidos: TMemo
    Left = 40
    Top = 32
    Width = 217
    Height = 145
    TabOrder = 0
  end
  object BTN_Enviar: TButton
    Left = 40
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = BTN_EnviarClick
  end
  object BTN_Fechar: TButton
    Left = 184
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BTN_FecharClick
  end
end
