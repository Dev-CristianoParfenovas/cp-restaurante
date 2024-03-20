object FR_FISCAL_confCadastrarPadrao_ECF_Daruma: TFR_FISCAL_confCadastrarPadrao_ECF_Daruma
  Left = 254
  Top = 124
  Width = 472
  Height = 200
  Caption = 'M'#233'todo confCadastrarPadrao_ECF_Daruma'
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
    Left = 24
    Top = 32
    Width = 24
    Height = 13
    Caption = 'Tipo:'
  end
  object Label2: TLabel
    Left = 24
    Top = 80
    Width = 27
    Height = 13
    Caption = 'Valor:'
  end
  object CMB_ProgramarConfig: TComboBox
    Left = 24
    Top = 48
    Width = 113
    Height = 21
    ItemHeight = 13
    TabOrder = 0
    Text = 'ALIQUOTA'
    Items.Strings = (
      'ALIQUOTA'
      'TNF'
      'RG'
      'FPGTO'
      'PRODMONITORADO')
  end
  object Edt_Valor: TEdit
    Left = 24
    Top = 96
    Width = 417
    Height = 21
    TabOrder = 1
    Text = '08,00|07,00|S08,00|S07,00%'
  end
  object BT_ENVIAR: TButton
    Left = 276
    Top = 124
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 2
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 366
    Top = 124
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = BT_FECHARClick
  end
end
