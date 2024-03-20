object Framework_Exemplo_DUAL_02: TFramework_Exemplo_DUAL_02
  Left = 427
  Top = 214
  Width = 336
  Height = 352
  Caption = 'Daruma Framework Exemplo DUAL 02'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object LB_Endereco_Empresa: TLabel
    Left = 8
    Top = 40
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
  end
  object LB_Fone_Empresa: TLabel
    Left = 8
    Top = 72
    Width = 52
    Height = 13
    Caption = 'Fone/Fax: '
  end
  object LB_Nome_Cliente: TLabel
    Left = 8
    Top = 104
    Width = 66
    Height = 13
    Caption = 'Nome Cliente:'
  end
  object LB_Cadastro: TLabel
    Left = 8
    Top = 136
    Width = 42
    Height = 13
    Caption = 'Cadastro'
  end
  object LB_Data_Devolucao: TLabel
    Left = 112
    Top = 136
    Width = 105
    Height = 13
    Caption = 'Data para Devolu'#231#227'o:'
  end
  object LB_Filme: TLabel
    Left = 8
    Top = 168
    Width = 24
    Height = 13
    Caption = 'Filme'
  end
  object LB_Categoria: TLabel
    Left = 8
    Top = 192
    Width = 51
    Height = 13
    Caption = 'Categoria: '
  end
  object LB_Valor: TLabel
    Left = 8
    Top = 216
    Width = 24
    Height = 13
    Caption = 'Valor'
  end
  object LB_Mensagem_Promocional: TLabel
    Left = 8
    Top = 240
    Width = 113
    Height = 13
    Caption = 'Mensagem Promocional'
  end
  object TX_Empresa: TEdit
    Left = 8
    Top = 8
    Width = 313
    Height = 21
    TabOrder = 2
    Text = 'Lucas Video'
  end
  object TX_Endereco_Empresa: TEdit
    Left = 64
    Top = 40
    Width = 257
    Height = 21
    TabOrder = 3
    Text = 'A. Constantino Lopes, 550 - Centro - Ctba.'
  end
  object TX_Fone_Empresa: TEdit
    Left = 64
    Top = 72
    Width = 257
    Height = 21
    TabOrder = 4
    Text = '232-1662'
  end
  object TX_Cliente: TEdit
    Left = 88
    Top = 104
    Width = 233
    Height = 21
    TabOrder = 5
    Text = 'Guilherme de Souza'
  end
  object TX_Cadastro: TEdit
    Left = 64
    Top = 136
    Width = 41
    Height = 21
    TabOrder = 6
    Text = '00021'
  end
  object TX_Data_Devolucao: TEdit
    Left = 256
    Top = 136
    Width = 65
    Height = 21
    TabOrder = 7
    Text = '17/01/2005'
  end
  object TX_Filme: TEdit
    Left = 48
    Top = 168
    Width = 273
    Height = 21
    TabOrder = 8
    Text = 'Piratas do caribe'
  end
  object TX_Categoria: TEdit
    Left = 72
    Top = 192
    Width = 249
    Height = 21
    TabOrder = 9
    Text = 'Lan'#231'amento'
  end
  object TX_Valor: TEdit
    Left = 48
    Top = 216
    Width = 273
    Height = 21
    TabOrder = 10
    Text = '4,50'
  end
  object TX_Mensagem_Promocional: TEdit
    Left = 16
    Top = 264
    Width = 305
    Height = 21
    TabOrder = 11
    Text = 'A cada 2 lan'#231'amentos brinde 1 cat'#225'logo'
  end
  object BT_Fechar: TButton
    Left = 232
    Top = 296
    Width = 91
    Height = 25
    Caption = 'Fecha'
    TabOrder = 1
    OnClick = BT_FecharClick
  end
  object BT_Enviar: TButton
    Left = 136
    Top = 296
    Width = 89
    Height = 25
    Caption = 'Enviar'
    TabOrder = 0
    OnClick = BT_EnviarClick
  end
end
