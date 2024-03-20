object FR_aCFeVender_SAT_Daruma: TFR_aCFeVender_SAT_Daruma
  Left = 310
  Top = 257
  Width = 718
  Height = 328
  Caption = 'M'#233'todo aCFeVender_SAT_Daruma'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 185
    Height = 13
    Caption = 'Digite o Par'#226'metro para venda de Item:'
  end
  object Label2: TLabel
    Left = 16
    Top = 80
    Width = 48
    Height = 13
    Caption = 'Exemplos:'
  end
  object BT_Enviar: TButton
    Left = 528
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 0
    OnClick = BT_EnviarClick
  end
  object BT_Fechar: TButton
    Left = 616
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 1
    OnClick = BT_FecharClick
  end
  object BT_Limpar: TButton
    Left = 448
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 2
    OnClick = BT_LimparClick
  end
  object EDT_Parametro: TEdit
    Left = 16
    Top = 40
    Width = 673
    Height = 21
    TabOrder = 3
  end
  object MM_Exemplos: TMemo
    Left = 16
    Top = 96
    Width = 673
    Height = 153
    BorderStyle = bsNone
    Color = clInactiveCaption
    TabOrder = 4
  end
end
