object frmRelCRCartao: TfrmRelCRCartao
  Left = 124
  Top = 110
  Width = 471
  Height = 174
  BorderIcons = [biSystemMenu]
  Caption = 'Contas a Receber por Cart'#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_Cartao: TLabel
    Left = 272
    Top = 16
    Width = 85
    Height = 13
    Caption = 'Tipo de Cart'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl_De: TLabel
    Left = 8
    Top = 16
    Width = 21
    Height = 13
    Caption = 'De:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl_Ate: TLabel
    Left = 112
    Top = 16
    Width = 24
    Height = 13
    Caption = 'At'#233':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ibeaRelatorio: TBmsXPButton
    Left = 136
    Top = 93
    Width = 80
    Height = 21
    Caption = '&Visualizar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Layout = tlTop
    WordWrap = False
    ShowAccelChar = True
    ParentFont = False
    TabOrder = 0
    OnClick = ibeaRelatorioClick
  end
  object ibeaSair: TBmsXPButton
    Left = 232
    Top = 93
    Width = 80
    Height = 21
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Layout = tlTop
    WordWrap = False
    ShowAccelChar = True
    ParentFont = False
    TabOrder = 1
    OnClick = ibeaSairClick
  end
  object ckGeral: TBmsXPCheckBox
    Left = 205
    Top = 33
    Width = 65
    Height = 13
    WordWrap = False
    ShowAccelChar = True
    Layout = tlTop
    AutoSize = False
    Alignment = taLeftJustify
    Shadow.Color = clWindow
    Shadow.Style = ssTopLeft
    Shadow.OffSet = 0
    Caption = '&Geral'
    TabOrder = 2
  end
  object BmsXPButton1: TBmsXPButton
    Left = 8
    Top = 93
    Width = 80
    Height = 21
    Hint = 'Este bot'#227'o exclui todos os cart'#245'es do per'#237'odo acima'
    Caption = 'Excluir'
    ShowHint = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Layout = tlTop
    WordWrap = False
    ShowAccelChar = True
    ParentFont = False
    ParentShowHint = False
    TabOrder = 3
    OnClick = BmsXPButton1Click
  end
  object cboCartao: TComboBox
    Left = 272
    Top = 31
    Width = 178
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    ItemHeight = 13
    TabOrder = 4
  end
  object dtpDataIni: TDateTimePicker
    Left = 9
    Top = 32
    Width = 86
    Height = 21
    Date = 42459.883200590280000000
    Time = 42459.883200590280000000
    TabOrder = 5
  end
  object dtpDataF: TDateTimePicker
    Left = 109
    Top = 32
    Width = 86
    Height = 21
    Date = 42459.883200590280000000
    Time = 42459.883200590280000000
    TabOrder = 6
  end
end
