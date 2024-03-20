object FR_FS2100_iChequeImprimir: TFR_FS2100_iChequeImprimir
  Left = 192
  Top = 124
  Width = 437
  Height = 300
  Caption = 'M'#233'todo iChequeImprimir_FS2100_Daruma'
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
    Top = 28
    Width = 77
    Height = 13
    Caption = 'N'#250'mero Banco: '
  end
  object Label2: TLabel
    Left = 16
    Top = 56
    Width = 39
    Height = 13
    Caption = 'Cidade: '
  end
  object Label3: TLabel
    Left = 16
    Top = 87
    Width = 97
    Height = 13
    Caption = 'Data (DDMMAAAA):'
  end
  object Label4: TLabel
    Left = 16
    Top = 116
    Width = 90
    Height = 13
    Caption = 'Nome Favorecido: '
  end
  object Label5: TLabel
    Left = 16
    Top = 146
    Width = 59
    Height = 13
    Caption = 'Texto Livre: '
  end
  object Label6: TLabel
    Left = 16
    Top = 175
    Width = 30
    Height = 13
    Caption = 'Valor: '
  end
  object EDT_NUMERO_BANCO: TEdit
    Left = 128
    Top = 28
    Width = 62
    Height = 21
    TabOrder = 0
    Text = '001'
  end
  object EDT_CIDADE: TEdit
    Left = 128
    Top = 56
    Width = 169
    Height = 21
    TabOrder = 1
    Text = 'S'#227'o Jos'#233' dos Campos'
  end
  object EDT_DATA: TEdit
    Left = 128
    Top = 84
    Width = 118
    Height = 21
    TabOrder = 2
    Text = '01052012'
  end
  object EDT_NOME_FAVORECIDO: TEdit
    Left = 128
    Top = 116
    Width = 281
    Height = 21
    TabOrder = 3
    Text = 'Jos'#233' da Silva'
  end
  object EDT_TEXTO: TEdit
    Left = 128
    Top = 146
    Width = 281
    Height = 21
    TabOrder = 4
    Text = 'Texto livre impresso na frente do cheque.'
  end
  object EDT_VALOR: TEdit
    Left = 128
    Top = 175
    Width = 116
    Height = 21
    TabOrder = 5
    Text = '123,45'
  end
  object Button1: TButton
    Left = 233
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 6
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 337
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 7
    OnClick = Button2Click
  end
end
