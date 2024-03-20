object FR_FISCAL_iCFEncerrar_ECF_Daruma: TFR_FISCAL_iCFEncerrar_ECF_Daruma
  Left = 275
  Top = 185
  Width = 337
  Height = 301
  Caption = 'M'#233'todo iCFEncerrar_ECF_Daruma'
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
    Left = 32
    Top = 40
    Width = 106
    Height = 13
    Caption = 'Tipo Cupom Adicional:'
  end
  object Label2: TLabel
    Left = 32
    Top = 88
    Width = 116
    Height = 13
    Caption = 'Mensagem Promocional:'
  end
  object cmb_TipoCupomAdic: TComboBox
    Left = 32
    Top = 56
    Width = 257
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 0
    Text = '0 - N'#227'o Imprime Cupom Adicional'
    Items.Strings = (
      '0 - N'#227'o Imprime Cupom Adicional'
      '1 - Imprime Cupom Adicional Simplificado'
      '2 - Imprime Cupom Adicional Detalhado'
      '3 - Imprime Cupom Adicional DLL')
  end
  object BT_ENVIAR: TButton
    Left = 109
    Top = 214
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 213
    Top = 214
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BT_FECHARClick
  end
  object Edt_Mensagem_Promocional: TMemo
    Left = 32
    Top = 104
    Width = 257
    Height = 89
    Lines.Strings = (
      'Obrigado volte sempre!')
    TabOrder = 3
  end
end
