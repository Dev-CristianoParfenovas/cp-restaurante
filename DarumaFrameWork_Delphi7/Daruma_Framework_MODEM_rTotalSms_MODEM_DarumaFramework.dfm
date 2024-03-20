object FR_MODEM_rTotalSms: TFR_MODEM_rTotalSms
  Left = 434
  Top = 419
  Width = 396
  Height = 201
  Caption = 'M'#233'todo rTotalSms_MODEM_DarumaFramework'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 121
    Height = 13
    Caption = 'Entre com o tipo de Sms: '
  end
  object Label2: TLabel
    Left = 16
    Top = 48
    Width = 74
    Height = 13
    Caption = 'Total recebido: '
  end
  object Label3: TLabel
    Left = 16
    Top = 88
    Width = 95
    Height = 13
    Caption = 'Retorno do M'#233'todo:'
  end
  object GroupBox1: TGroupBox
    Left = 192
    Top = 8
    Width = 176
    Height = 89
    Caption = 'Total SMS - tipos: '
    TabOrder = 0
  end
  object Memo1: TMemo
    Left = 211
    Top = 24
    Width = 145
    Height = 65
    BorderStyle = bsNone
    Color = clBtnFace
    Lines.Strings = (
      '0 - Todas as mensagens'
      ''
      '1 - Mensagens Lidas'
      ''
      '2 - Mensagens N'#227'o Lidas')
    ReadOnly = True
    TabOrder = 1
  end
  object TB_Tipo: TEdit
    Left = 16
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object TB_Total: TEdit
    Left = 16
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object BT_Enviar: TButton
    Left = 16
    Top = 132
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 4
    OnClick = BT_EnviarClick
  end
  object BT_Fechar: TButton
    Left = 292
    Top = 132
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 5
    OnClick = BT_FecharClick
  end
  object BT_Limpar: TButton
    Left = 109
    Top = 132
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 6
    OnClick = BT_LimparClick
  end
  object TB_Retorno: TEdit
    Left = 16
    Top = 104
    Width = 353
    Height = 21
    TabOrder = 7
  end
end
