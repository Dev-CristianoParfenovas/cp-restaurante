object FR_MetodoaCFEfetuarPagamento_SAT_Daruma: TFR_MetodoaCFEfetuarPagamento_SAT_Daruma
  Left = 379
  Top = 187
  Width = 489
  Height = 225
  Caption = 'M'#233'todo aCFEfetuarPagamento_SAT_Daruma'
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
    Left = 112
    Top = 44
    Width = 107
    Height = 13
    Caption = 'Forma de Pagamento: '
  end
  object Label2: TLabel
    Left = 117
    Top = 76
    Width = 102
    Height = 13
    Caption = 'Valor do Pagamento: '
  end
  object Label3: TLabel
    Left = 89
    Top = 112
    Width = 130
    Height = 13
    Caption = 'C'#243'digo da Credenciadora: *'
  end
  object Label4: TLabel
    Left = 8
    Top = 160
    Width = 294
    Height = 13
    Caption = '(* O C'#243'digo da Credenciadora de cart'#227'o de d'#233'bito '#233' opcional.)'
  end
  object BT_Fechar: TButton
    Left = 392
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 0
    OnClick = BT_FecharClick
  end
  object BT_Enviar: TButton
    Left = 312
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = BT_EnviarClick
  end
  object EDT_Valor: TEdit
    Left = 224
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object EDT_CodCred: TEdit
    Left = 224
    Top = 104
    Width = 73
    Height = 21
    TabOrder = 3
  end
  object CB_FormaPgto: TComboBox
    Left = 224
    Top = 40
    Width = 122
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 4
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
end
