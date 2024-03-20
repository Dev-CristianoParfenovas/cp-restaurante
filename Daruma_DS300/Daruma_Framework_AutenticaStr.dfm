object Framework_AutenticaStr: TFramework_AutenticaStr
  Left = 406
  Top = 815
  Width = 304
  Height = 116
  Caption = 'Metodo Daruma_FI_AutenticacaoStr'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 66
    Height = 13
    Caption = 'Autenticacao:'
  end
  object Edit1: TEdit
    Left = 88
    Top = 16
    Width = 193
    Height = 21
    TabOrder = 0
    Text = 'Framework32'
  end
  object Enviar: TButton
    Left = 96
    Top = 48
    Width = 89
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = EnviarClick
  end
  object Fechar: TButton
    Left = 192
    Top = 48
    Width = 89
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = FecharClick
  end
end
