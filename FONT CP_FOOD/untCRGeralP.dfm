object frmCRGeralP: TfrmCRGeralP
  Left = 118
  Top = 125
  Width = 410
  Height = 141
  BorderIcons = [biSystemMenu]
  Caption = 'Contas a Receber Geral por Per'#237'odo'
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
  object lbl_De: TLabel
    Left = 16
    Top = 24
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
    Left = 120
    Top = 24
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
  object ibeaAbrirRelatorio: TBmsXPButton
    Left = 216
    Top = 40
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
    OnClick = ibeaAbrirRelatorioClick
  end
  object ibeaSair: TBmsXPButton
    Left = 312
    Top = 40
    Width = 80
    Height = 21
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
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
  object dtpDataIni: TDateTimePicker
    Left = 14
    Top = 40
    Width = 90
    Height = 21
    BevelInner = bvSpace
    BevelOuter = bvSpace
    BevelKind = bkFlat
    Date = 42458.874532152770000000
    Time = 42458.874532152770000000
    TabOrder = 2
  end
  object dtpDataF: TDateTimePicker
    Left = 118
    Top = 40
    Width = 90
    Height = 21
    BevelInner = bvSpace
    BevelOuter = bvSpace
    BevelKind = bkFlat
    Date = 42458.874532152770000000
    Time = 42458.874532152770000000
    TabOrder = 3
  end
end
