object FR_tCFeCancelarParametrizado_SAT_Daruma: TFR_tCFeCancelarParametrizado_SAT_Daruma
  Left = 493
  Top = 355
  Width = 555
  Height = 183
  Caption = 'M'#233'todo tCFeCancelarParametrizado_SAT_Daruma'
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
    Width = 135
    Height = 13
    Caption = 'CPF/ CNPJ do Contribuinte: '
  end
  object Label2: TLabel
    Left = 16
    Top = 63
    Width = 90
    Height = 13
    Caption = 'Chave de Acesso: '
  end
  object BT_Enviar: TButton
    Left = 368
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 0
    OnClick = BT_EnviarClick
  end
  object BT_Fechar: TButton
    Left = 456
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 1
    OnClick = BT_FecharClick
  end
  object EDT_CpfCnpj: TEdit
    Left = 16
    Top = 32
    Width = 217
    Height = 21
    TabOrder = 2
  end
  object EDT_Chave: TEdit
    Left = 16
    Top = 79
    Width = 513
    Height = 21
    TabOrder = 3
  end
end
