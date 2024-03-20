object FR_EmissaoCupomTeste: TFR_EmissaoCupomTeste
  Left = 452
  Top = 288
  Width = 369
  Height = 168
  Caption = 'Emiss'#227'o de Cupom para Teste'
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
    Top = 48
    Width = 105
    Height = 13
    Caption = 'N'#250'mero de Cupom(s): '
  end
  object Label2: TLabel
    Left = 184
    Top = 48
    Width = 110
    Height = 13
    Caption = 'Quantidade de Item(s): '
  end
  object Label3: TLabel
    Left = 16
    Top = 8
    Width = 307
    Height = 13
    Caption = 
      '(Escolha as quantidades desejadas. Os itens e valores s'#227'o fixos,' +
      ')'
  end
  object EDT_Cupom: TEdit
    Left = 129
    Top = 47
    Width = 40
    Height = 21
    TabOrder = 0
    Text = '1'
  end
  object EDT_Item: TEdit
    Left = 294
    Top = 47
    Width = 43
    Height = 21
    TabOrder = 1
    Text = '3'
  end
  object BT_Enviar: TButton
    Left = 184
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 2
    OnClick = BT_EnviarClick
  end
  object BT_Fechar: TButton
    Left = 264
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = BT_FecharClick
  end
  object Button1: TButton
    Left = 16
    Top = 88
    Width = 89
    Height = 25
    Caption = 'Cancelar Venda'
    TabOrder = 4
    OnClick = Button1Click
  end
end
