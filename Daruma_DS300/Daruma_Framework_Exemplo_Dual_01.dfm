object Framework_Exemplo_DUAL_01: TFramework_Exemplo_DUAL_01
  Left = 320
  Top = 239
  Width = 480
  Height = 327
  Caption = 'Daruma Framework Exemplo DUAL 01'
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
    Left = 8
    Top = 16
    Width = 90
    Height = 13
    Caption = 'Nome da Empresa:'
  end
  object LB_Endereco_Empresa: TLabel
    Left = 8
    Top = 40
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
  end
  object LB_Fone_Empresa: TLabel
    Left = 8
    Top = 64
    Width = 32
    Height = 13
    Caption = 'Fones:'
  end
  object LB_Pedido_N: TLabel
    Left = 216
    Top = 64
    Width = 51
    Height = 13
    Caption = 'Pedido N'#186':'
  end
  object LB_Data: TLabel
    Left = 360
    Top = 64
    Width = 26
    Height = 13
    Caption = 'Data:'
  end
  object LB_Tema_Mensagem: TLabel
    Left = 8
    Top = 104
    Width = 100
    Height = 13
    Caption = 'Tema da Mensagem:'
  end
  object LB_Titulo_Mensagem: TLabel
    Left = 240
    Top = 104
    Width = 99
    Height = 13
    Caption = 'Titulo da Mensagem:'
  end
  object LB_Valor_Mensagem: TLabel
    Left = 8
    Top = 136
    Width = 114
    Height = 13
    Caption = 'Valor da Mensagem R$:'
  end
  object LB_Forma_Cobranca: TLabel
    Left = 216
    Top = 136
    Width = 96
    Height = 13
    Caption = 'Forma de Cobran'#231'a:'
  end
  object LB_Cliente: TLabel
    Left = 8
    Top = 168
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object LB_Fone_Res: TLabel
    Left = 8
    Top = 200
    Width = 49
    Height = 13
    Caption = 'Fone Res:'
  end
  object LB_Celular: TLabel
    Left = 160
    Top = 200
    Width = 35
    Height = 13
    Caption = 'Celular:'
  end
  object LB_Fone_Com: TLabel
    Left = 296
    Top = 200
    Width = 51
    Height = 13
    Caption = 'Fone Com:'
  end
  object Label14: TLabel
    Left = 8
    Top = 224
    Width = 116
    Height = 13
    Caption = 'Mensagem Promocional:'
  end
  object LB_Hora: TLabel
    Left = 8
    Top = 256
    Width = 26
    Height = 13
    Caption = 'Hora:'
  end
  object BT_Fechar: TButton
    Left = 376
    Top = 264
    Width = 89
    Height = 25
    Caption = 'Fechar'
    TabOrder = 1
    OnClick = BT_FecharClick
  end
  object BT_Enviar: TButton
    Left = 280
    Top = 264
    Width = 89
    Height = 25
    Caption = 'Enviar'
    TabOrder = 0
    OnClick = BT_EnviarClick
  end
  object TX_Nome_Empresa: TEdit
    Left = 104
    Top = 16
    Width = 361
    Height = 21
    TabOrder = 2
    Text = 'I LOVE TELEMENSAGENS'
  end
  object TX_Endereco_Empresa: TEdit
    Left = 64
    Top = 40
    Width = 401
    Height = 21
    TabOrder = 3
    Text = 'Rua : XV de Novembro'
  end
  object TX_Fone_Empresa: TEdit
    Left = 48
    Top = 64
    Width = 145
    Height = 21
    TabOrder = 4
    Text = '33343-0619 / 3386-9508'
  end
  object TX_Numero_Pedido: TEdit
    Left = 272
    Top = 64
    Width = 81
    Height = 21
    TabOrder = 5
    Text = '0541'
  end
  object TX_Data_Pedido: TEdit
    Left = 400
    Top = 64
    Width = 65
    Height = 21
    TabOrder = 6
    Text = '15/01/05'
  end
  object TX_Tema_Mensagem: TEdit
    Left = 120
    Top = 104
    Width = 97
    Height = 21
    TabOrder = 7
    Text = 'Romantica'
  end
  object TX_Titulo_Mensagem: TEdit
    Left = 344
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 8
    Text = 'Casados para Sempre'
  end
  object TX_Valor_Mensagem: TEdit
    Left = 128
    Top = 136
    Width = 73
    Height = 21
    TabOrder = 9
    Text = '5,00'
  end
  object TX_Forma_Cobranca: TEdit
    Left = 320
    Top = 136
    Width = 145
    Height = 21
    TabOrder = 10
    Text = 'Em Carteira'
  end
  object TX_Cliente: TEdit
    Left = 48
    Top = 160
    Width = 417
    Height = 21
    TabOrder = 11
    Text = 'Lucia de Sousa'
  end
  object TX_Fone_Res: TEdit
    Left = 64
    Top = 192
    Width = 81
    Height = 21
    TabOrder = 12
    Text = '233-1154'
  end
  object TX_Celular: TEdit
    Left = 200
    Top = 192
    Width = 81
    Height = 21
    TabOrder = 13
    Text = '9916-5540'
  end
  object TX_Fone_Com: TEdit
    Left = 352
    Top = 192
    Width = 113
    Height = 21
    TabOrder = 14
    Text = '224-8890 R-254'
  end
  object Tx_Mensagem_Promo: TEdit
    Left = 136
    Top = 224
    Width = 329
    Height = 21
    TabOrder = 15
    Text = 'Agradecemos a Prefer'#234'ncia!!!'
  end
  object Tx_Hora: TEdit
    Left = 40
    Top = 256
    Width = 57
    Height = 21
    TabOrder = 16
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 144
    Top = 264
  end
end
