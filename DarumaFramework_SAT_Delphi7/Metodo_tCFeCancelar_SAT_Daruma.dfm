object FR_tCFeCancelar_SAT_Daruma: TFR_tCFeCancelar_SAT_Daruma
  Left = 317
  Top = 277
  Width = 716
  Height = 322
  Caption = 'M'#233'todo tCFeCancelar_SAT_Daruma'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 207
    Height = 13
    Caption = 'Digite o Par'#226'metro para abertura de Cupom:'
  end
  object Label2: TLabel
    Left = 16
    Top = 80
    Width = 53
    Height = 13
    Caption = 'Sugest'#245'es:'
  end
  object BT_Enviar: TButton
    Left = 528
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 0
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
    Left = 448
    Top = 256
    Width = 75
    Height = 25
    Caption = 'Limpar'
    TabOrder = 2
  end
  object EDT_Parametro: TEdit
    Left = 16
    Top = 40
    Width = 673
    Height = 21
    TabOrder = 3
  end
  object MM_Sugestoes: TMemo
    Left = 16
    Top = 96
    Width = 673
    Height = 153
    BorderStyle = bsNone
    Color = clInactiveCaption
    Lines.Strings = (
      '   (M'#233'todo pode ser enviado sem parametros ou...)'
      '- <dest><CNPJ>45170289000125</CNPJ></dest>'
      
        '- <dest><CNPJ>45170289000125</CNPJ><xNome>Dauma Telecomunica'#231#245'es' +
        ' e Informatica SA</xNome></dest>')
    TabOrder = 4
  end
end
