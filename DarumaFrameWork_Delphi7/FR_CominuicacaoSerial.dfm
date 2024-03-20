object FR_ComunicacaoSerial: TFR_ComunicacaoSerial
  Left = 250
  Top = 211
  Width = 870
  Height = 500
  Caption = 'FR_ComunicacaoSerial'
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
    Left = 592
    Top = 56
    Width = 113
    Height = 21
    Caption = 'Porta de comunica'#231#227'o: '
  end
  object Edit1: TEdit
    Left = 712
    Top = 48
    Width = 65
    Height = 21
    TabOrder = 1
    Text = 'COM1'
  end
  object Button1: TButton
    Left = 584
    Top = 104
    Width = 89
    Height = 25
    Caption = 'eAbrirSerial'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 64
    Top = 120
    Width = 89
    Height = 25
    Caption = 'eFecharSerial'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 208
    Top = 208
    Width = 89
    Height = 25
    Caption = 'tEnviarDados'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Edit4: TEdit
    Left = 168
    Top = 248
    Width = 193
    Height = 21
    TabOrder = 5
    Text = 'Edit4'
  end
  object Button4: TButton
    Left = 208
    Top = 272
    Width = 89
    Height = 25
    Caption = 'rReceberDados'
    TabOrder = 6
    OnClick = Button4Click
  end
  object Edit5: TEdit
    Left = 384
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 7
    Text = 'Edit5'
  end
  object EDT_Dados: TMemo
    Left = 160
    Top = 168
    Width = 201
    Height = 33
    Lines.Strings = (
      'Memo1')
    TabOrder = 8
  end
  object GroupBox1: TGroupBox
    Left = 208
    Top = 0
    Width = 233
    Height = 145
    Caption = 'eAbrirSerial'
    TabOrder = 0
  end
end
