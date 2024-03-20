object frmProdDataRegistro: TfrmProdDataRegistro
  Left = 186
  Top = 113
  Width = 414
  Height = 161
  BorderIcons = [biSystemMenu]
  Caption = 'Produtos por Data de Registro'
  Color = clWhite
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
  object lbl_DTIni: TLabel
    Left = 25
    Top = 32
    Width = 66
    Height = 13
    Caption = 'Data Inicial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl_DTF: TLabel
    Left = 122
    Top = 32
    Width = 59
    Height = 13
    Caption = 'Data Final'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ibeaVisualizar: TBmsXPButton
    Left = 217
    Top = 48
    Width = 80
    Height = 21
    Caption = '&Visualizar'
    Layout = tlTop
    WordWrap = False
    ShowAccelChar = True
    TabOrder = 0
    OnClick = ibeaVisualizarClick
  end
  object ibeaSair: TBmsXPButton
    Left = 305
    Top = 48
    Width = 80
    Height = 21
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Layout = tlTop
    WordWrap = False
    ShowAccelChar = True
    ParentFont = False
    TabOrder = 1
    OnClick = ibeaSairClick
  end
  object dtpDataIni: TDateTimePicker
    Left = 24
    Top = 48
    Width = 91
    Height = 21
    BevelInner = bvSpace
    BevelOuter = bvSpace
    BevelKind = bkFlat
    Date = 42459.885155335650000000
    Time = 42459.885155335650000000
    TabOrder = 2
  end
  object dtpDataF: TDateTimePicker
    Left = 121
    Top = 48
    Width = 91
    Height = 21
    BevelInner = bvSpace
    BevelOuter = bvSpace
    BevelKind = bkFlat
    Date = 42459.885155335650000000
    Time = 42459.885155335650000000
    TabOrder = 3
  end
end
