object FR_iCNFReceber_ECF_Daruma: TFR_iCNFReceber_ECF_Daruma
  Left = 462
  Top = 277
  Width = 317
  Height = 275
  Caption = 'iCNFReceber_ECF_Daruma'
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
    Top = 24
    Width = 105
    Height = 13
    Caption = 'Indice do Totalizador: '
  end
  object Label2: TLabel
    Left = 16
    Top = 64
    Width = 30
    Height = 13
    Caption = 'Valor: '
  end
  object Label3: TLabel
    Left = 16
    Top = 96
    Width = 136
    Height = 13
    Caption = 'Tipo Desconto / Acrescimo: '
  end
  object Label4: TLabel
    Left = 16
    Top = 144
    Width = 133
    Height = 13
    Caption = 'Valor Desconto/Acrescimo: '
  end
  object CMB_IndiceTotalizador: TComboBox
    Left = 152
    Top = 17
    Width = 73
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Items.Strings = (
      '03'
      '04'
      '05'
      '06'
      '07'
      '08'
      '09'
      '10'
      '11'
      '12'
      '13'
      '14'
      '15'
      '16'
      '17'
      '18'
      '19'
      '20')
  end
  object EDT_Valor: TEdit
    Left = 152
    Top = 56
    Width = 113
    Height = 21
    TabOrder = 1
    Text = '1,00'
  end
  object CMB_TipoAcrescDesc: TComboBox
    Left = 152
    Top = 93
    Width = 49
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 2
    Text = 'D%'
    Items.Strings = (
      'D%'
      'D$'
      'A%'
      'A$')
  end
  object EDT_ValorDescAcresc: TEdit
    Left = 152
    Top = 136
    Width = 113
    Height = 21
    TabOrder = 3
    Text = '0,00'
  end
  object BT_ENVIAR: TButton
    Left = 50
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 4
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 162
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 5
    OnClick = BT_FECHARClick
  end
end
