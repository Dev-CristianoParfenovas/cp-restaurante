object FR_FISCAL_eDefinirModoRegistro_Daruma: TFR_FISCAL_eDefinirModoRegistro_Daruma
  Left = 192
  Top = 124
  Width = 383
  Height = 154
  Caption = 'M'#233'todo eDefinirModoRegistro_Daruma'
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
    Left = 52
    Top = 16
    Width = 66
    Height = 13
    Caption = 'Tipo Registro:'
  end
  object cmb_TipoRegistro: TComboBox
    Left = 52
    Top = 32
    Width = 249
    Height = 21
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 0
    Text = '0 - LocalMachine e XML'
    Items.Strings = (
      '0 - LocalMachine e XML'
      '1 - CurrentUser e XML'
      '2 - XML')
  end
  object BT_ENVIAR: TButton
    Left = 138
    Top = 67
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 223
    Top = 67
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BT_FECHARClick
  end
end
