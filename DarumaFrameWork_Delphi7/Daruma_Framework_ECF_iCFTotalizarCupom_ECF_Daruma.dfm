object FR_FISCAL_iCFTotalizarCupom: TFR_FISCAL_iCFTotalizarCupom
  Left = 520
  Top = 320
  Width = 325
  Height = 193
  Caption = 'iCFTotalizarCupom_ECF_Daruma'
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
  object Label2: TLabel
    Left = 40
    Top = 53
    Width = 114
    Height = 13
    Caption = 'Valor do Acresc./Desc.:'
  end
  object Label3: TLabel
    Left = 28
    Top = 21
    Width = 127
    Height = 13
    Caption = 'Tipo Desconto/Acr'#233'scimo:'
  end
  object Edt_ValorDescAcresc: TEdit
    Left = 156
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '1,00'
  end
  object CMB_TipoAcrescDesc: TComboBox
    Left = 160
    Top = 17
    Width = 49
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Items.Strings = (
      'D%'
      'D$'
      'A%'
      'A$')
  end
  object BT_ENVIAR: TButton
    Left = 71
    Top = 110
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 2
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 154
    Top = 110
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = BT_FECHARClick
  end
end
