object FR_MetodoaCFVender_SAT_Daruma: TFR_MetodoaCFVender_SAT_Daruma
  Left = 408
  Top = 185
  Width = 449
  Height = 310
  Caption = 'M'#233'todo aCFVender_SAT_Daruma'
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
    Left = 96
    Top = 19
    Width = 46
    Height = 13
    Caption = 'Al'#237'quota: '
  end
  object Label2: TLabel
    Left = 81
    Top = 43
    Width = 61
    Height = 13
    Caption = 'Quantidade: '
  end
  object Label3: TLabel
    Left = 69
    Top = 67
    Width = 73
    Height = 13
    Caption = 'Pre'#231'o Unit'#225'rio: '
  end
  object Label4: TLabel
    Left = 9
    Top = 91
    Width = 133
    Height = 13
    Caption = 'Tipo Desconto/ Acr'#233'scimo: '
  end
  object Label5: TLabel
    Left = 6
    Top = 115
    Width = 136
    Height = 13
    Caption = 'Valor Desconto/ Acr'#233'scimo: '
  end
  object Label6: TLabel
    Left = 65
    Top = 139
    Width = 77
    Height = 13
    Caption = 'Codigo do Item: '
  end
  object Label7: TLabel
    Left = 43
    Top = 163
    Width = 99
    Height = 13
    Caption = 'Unidade de Medida: '
  end
  object Label8: TLabel
    Left = 50
    Top = 187
    Width = 92
    Height = 13
    Caption = 'Descri'#231#227'o do Item: '
  end
  object BT_Fechar: TButton
    Left = 344
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 0
    OnClick = BT_FecharClick
  end
  object EDT_Aliquota: TEdit
    Left = 144
    Top = 16
    Width = 57
    Height = 21
    TabOrder = 1
    Text = '12,00'
  end
  object EDT_Quantidade: TEdit
    Left = 144
    Top = 40
    Width = 129
    Height = 21
    TabOrder = 2
    Text = '1'
  end
  object EDT_PUnitario: TEdit
    Left = 144
    Top = 64
    Width = 129
    Height = 21
    TabOrder = 3
    Text = '0,50'
  end
  object EDT_TipoDescAcres: TEdit
    Left = 144
    Top = 88
    Width = 73
    Height = 21
    TabOrder = 4
    Text = 'D$'
  end
  object EDT_ValorDescAcres: TEdit
    Left = 144
    Top = 112
    Width = 129
    Height = 21
    TabOrder = 5
    Text = '0,00'
  end
  object EDT_CodigoItem: TEdit
    Left = 144
    Top = 136
    Width = 121
    Height = 21
    TabOrder = 6
    Text = '12345678901234'
  end
  object EDT_UnidadeMedida: TEdit
    Left = 144
    Top = 160
    Width = 89
    Height = 21
    TabOrder = 7
    Text = 'UND'
  end
  object EDT_DescricaoItem: TEdit
    Left = 144
    Top = 184
    Width = 241
    Height = 21
    TabOrder = 8
    Text = 'Bolacha'
  end
  object BT_Enviar: TButton
    Left = 256
    Top = 232
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 9
    OnClick = BT_EnviarClick
  end
end
