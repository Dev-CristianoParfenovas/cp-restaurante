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
  object dtpDataIni: TmxFlatDateTimePicker
    Left = 25
    Top = 48
    Width = 85
    Height = 21
    CalAlignment = dtaLeft
    Date = 39182.643778669
    Time = 39182.643778669
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 0
    Activate = False
    BorderColor = clGradientActiveCaption
    Flat = True
    ShowBorder = True
    Version = '1.26'
  end
  object dtpDataF: TmxFlatDateTimePicker
    Left = 121
    Top = 48
    Width = 85
    Height = 21
    CalAlignment = dtaLeft
    Date = 39182.6437981481
    Time = 39182.6437981481
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 1
    Activate = False
    BorderColor = clGradientActiveCaption
    Flat = True
    ShowBorder = True
    Version = '1.26'
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
    TabOrder = 2
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
    TabOrder = 3
    OnClick = ibeaSairClick
  end
end
