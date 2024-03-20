object FR_MetodotCFeAssociarAssinatura_SAT_Daruma: TFR_MetodotCFeAssociarAssinatura_SAT_Daruma
  Left = 301
  Top = 279
  Width = 794
  Height = 212
  Caption = 'M'#233'todo tCFeAssociarAssinatura_SAT_Daruma'
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
    Width = 116
    Height = 13
    Caption = 'Informa'#231#245'es Assinatura: '
  end
  object BT_Enviar: TButton
    Left = 608
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 0
    OnClick = BT_EnviarClick
  end
  object BT_Fechar: TButton
    Left = 688
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 1
    OnClick = BT_FecharClick
  end
  object MM_Associar: TMemo
    Left = 16
    Top = 32
    Width = 745
    Height = 89
    Lines.Strings = (
      
        '<cnpjEmit>11111111111111</cnpjEmit><cnpjIdent>11111111111111</cn' +
        'pjIdent><signAC>111111111111122222222222222111111111111112222222' +
        '22'
      
        '2222211111111111111222222222222221111111111111122222222222222111' +
        '11111111111222222222222221111111111111122222222222222111111'
      
        '1111111122222222222222111111111111112222222222222211111111111111' +
        '22222222222222111111111111112222222222222211111111111111222'
      '222222222221111111111111122222222222222111111111</signAC>'
      '  ')
    TabOrder = 2
  end
end
