object FR_MetodoaCFAbrir_SAT_Daruma: TFR_MetodoaCFAbrir_SAT_Daruma
  Left = 431
  Top = 217
  Width = 438
  Height = 206
  Caption = 'M'#233'todo aCFAbrir_SAT_DAruma'
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
    Left = 59
    Top = 44
    Width = 26
    Height = 13
    Caption = 'CPF: '
  end
  object Label2: TLabel
    Left = 50
    Top = 77
    Width = 34
    Height = 13
    Caption = 'Nome: '
  end
  object Label3: TLabel
    Left = 33
    Top = 110
    Width = 52
    Height = 13
    Caption = 'Endere'#231'o: '
  end
  object Label4: TLabel
    Left = 16
    Top = 16
    Width = 156
    Height = 13
    Caption = 'Informe os dados do consumidor:'
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
  object EDT_CPF: TEdit
    Left = 91
    Top = 40
    Width = 313
    Height = 21
    TabOrder = 1
  end
  object EDT_Nome: TEdit
    Left = 91
    Top = 72
    Width = 313
    Height = 21
    TabOrder = 2
  end
  object EDT_Endereco: TEdit
    Left = 91
    Top = 104
    Width = 313
    Height = 21
    TabOrder = 3
  end
  object BT_Enviar: TButton
    Left = 240
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 4
    OnClick = BT_EnviarClick
  end
  object BT_Limpar: TButton
    Left = 152
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 5
    OnClick = BT_LimparClick
  end
end
