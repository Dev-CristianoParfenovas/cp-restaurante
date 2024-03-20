object FR_MetodorConsultarStatusEspecifico_SAT_Daruma: TFR_MetodorConsultarStatusEspecifico_SAT_Daruma
  Left = 408
  Top = 217
  Width = 491
  Height = 219
  Caption = 'M'#233'todo rConsultarStatusEspecifico_SAT_Daruma'
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
    Left = 24
    Top = 24
    Width = 137
    Height = 13
    Caption = 'Status que deseja consultar: '
  end
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 89
    Height = 13
    Caption = 'Status Retornado: '
  end
  object MM_Retorno: TMemo
    Left = 16
    Top = 64
    Width = 449
    Height = 73
    TabOrder = 0
  end
  object EDT_Status: TEdit
    Left = 166
    Top = 19
    Width = 43
    Height = 21
    TabOrder = 1
    Text = '5'
  end
  object BT_Fechar: TButton
    Left = 389
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BT_FecharClick
  end
  object BT_Enviar: TButton
    Left = 309
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 3
    OnClick = BT_EnviarClick
  end
  object BT_Limpar: TButton
    Left = 228
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 4
    OnClick = BT_LimparClick
  end
end
