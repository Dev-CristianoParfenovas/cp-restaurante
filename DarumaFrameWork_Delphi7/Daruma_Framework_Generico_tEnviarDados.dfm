object FR_tEnviarDados_Daruma: TFR_tEnviarDados_Daruma
  Left = 512
  Top = 219
  Width = 322
  Height = 310
  Caption = 'tEnviarDados_Daruma'
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
    Left = 32
    Top = 32
    Width = 74
    Height = 13
    Caption = 'Bytes a Enviar: '
  end
  object Label2: TLabel
    Left = 8
    Top = 168
    Width = 97
    Height = 13
    Caption = 'Tamanho dos Bytes:'
  end
  object Memo_Bytes: TMemo
    Left = 120
    Top = 24
    Width = 153
    Height = 121
    Lines.Strings = (
      '')
    TabOrder = 0
  end
  object EDT_TamBytes: TEdit
    Left = 120
    Top = 160
    Width = 153
    Height = 21
    TabOrder = 1
  end
  object Btn_Enviar: TButton
    Left = 32
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 2
    OnClick = Btn_EnviarClick
  end
  object Btn_Fechar: TButton
    Left = 200
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = Btn_FecharClick
  end
end
