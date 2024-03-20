object FR_MetodoaCFEstornarPagamento_SAT_Daruma: TFR_MetodoaCFEstornarPagamento_SAT_Daruma
  Left = 411
  Top = 271
  Width = 499
  Height = 206
  Caption = 'M'#233'todo aCFEstornarPagamento_SAT_Daruma'
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
    Left = 64
    Top = 68
    Width = 158
    Height = 13
    Caption = 'Forma de Pagamento Estornado: '
  end
  object Label2: TLabel
    Left = 86
    Top = 36
    Width = 136
    Height = 13
    Caption = 'Nova Forma de Pagamento: '
  end
  object Label3: TLabel
    Left = 120
    Top = 100
    Width = 102
    Height = 13
    Caption = 'Valor do Pagamento: '
  end
  object BT_Fechar: TButton
    Left = 400
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 0
    OnClick = BT_FecharClick
  end
  object BT_Enviar: TButton
    Left = 312
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = BT_EnviarClick
  end
  object EDT_Valor: TEdit
    Left = 224
    Top = 96
    Width = 145
    Height = 21
    TabOrder = 2
    Text = '0,00'
  end
  object CB_FPgto: TComboBox
    Left = 224
    Top = 64
    Width = 145
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 3
    Text = 'Dinheiro '
    Items.Strings = (
      'Dinheiro '
      'Cheque '
      'Cart'#227'o de Cr'#233'dito '
      'Cart'#227'o de D'#233'bito '
      'Cr'#233'dito Loja '
      'Vale Alimenta'#231#227'o '
      'Vale Refei'#231#227'o '
      'Vale Presente '
      'Vale Combust'#237'vel '
      'Outros ')
  end
  object CB_NovoPgto: TComboBox
    Left = 224
    Top = 32
    Width = 145
    Height = 21
    ItemHeight = 13
    ItemIndex = 1
    TabOrder = 4
    Text = 'Cheque '
    Items.Strings = (
      'Dinheiro '
      'Cheque '
      'Cart'#227'o de Cr'#233'dito '
      'Cart'#227'o de D'#233'bito '
      'Cr'#233'dito Loja '
      'Vale Alimenta'#231#227'o '
      'Vale Refei'#231#227'o '
      'Vale Presente '
      'Vale Combust'#237'vel '
      'Outros ')
  end
end
