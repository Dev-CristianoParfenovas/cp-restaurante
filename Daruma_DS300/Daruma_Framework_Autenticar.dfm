object Framework_Autenticar: TFramework_Autenticar
  Left = 256
  Top = 220
  Width = 529
  Height = 160
  Caption = 'Metodo Daruma Dual Autenticar'
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
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 26
    Height = 13
    Caption = 'Local'
  end
  object Label2: TLabel
    Left = 112
    Top = 16
    Width = 215
    Height = 13
    Caption = '1(um somente no doc) 0 (no doc e na bobina)'
  end
  object Label3: TLabel
    Left = 8
    Top = 48
    Width = 111
    Height = 13
    Caption = 'Texto da Autenticacao:'
  end
  object Label4: TLabel
    Left = 8
    Top = 72
    Width = 236
    Height = 13
    Caption = 'Tempo de Espera para o Posicionamento do Doc:'
  end
  object Label5: TLabel
    Left = 280
    Top = 72
    Width = 48
    Height = 13
    Caption = 'Segundos'
  end
  object BT_Enviar: TButton
    Left = 328
    Top = 104
    Width = 89
    Height = 25
    Caption = 'Enviar'
    TabOrder = 0
    OnClick = BT_EnviarClick
  end
  object BT_Fechar: TButton
    Left = 424
    Top = 104
    Width = 89
    Height = 25
    Caption = 'Fechar'
    TabOrder = 1
    OnClick = BT_FecharClick
  end
  object TX_Vias: TEdit
    Left = 88
    Top = 16
    Width = 17
    Height = 21
    TabOrder = 2
    Text = '1'
  end
  object TX_Texto_Autenticacao: TEdit
    Left = 128
    Top = 40
    Width = 377
    Height = 21
    TabOrder = 3
    Text = '<sn><c>DARUMA AUTENTICA'#199#195'O</c> (D:<dt></dt> H:<hr></hr>)</sn>'
  end
  object TX_Tempo_Espera: TEdit
    Left = 248
    Top = 64
    Width = 25
    Height = 21
    TabOrder = 4
    Text = '10'
  end
end
