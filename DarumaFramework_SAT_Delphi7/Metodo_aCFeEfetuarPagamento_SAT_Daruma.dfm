object FR_aCFeEfetuarPagamento_SAT_Daruma: TFR_aCFeEfetuarPagamento_SAT_Daruma
  Left = 318
  Top = 269
  Width = 717
  Height = 324
  Caption = 'M'#233'todo aCFeEfetuarPagamento_SAT_Daruma'
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
    Width = 222
    Height = 13
    Caption = 'Digite o Par'#226'metro para Pagamento do Cupom:'
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
    Left = 440
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
    Lines.Strings = (
      '- <MP><cMP>02</cMP><vMP>100000.00</vMP></MP>'
      '- <MP><cMP>01</cMP><vMP>100000</vMP></MP>')
    TabOrder = 4
  end
end
