object frmVendasDetalhado: TfrmVendasDetalhado
  Left = 71
  Top = 206
  Width = 415
  Height = 152
  BorderIcons = [biSystemMenu]
  Caption = 'Relat'#243'rio de Vendas Detalhado'
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
    Left = 9
    Top = 40
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
    Left = 105
    Top = 40
    Width = 55
    Height = 13
    Caption = 'DataFinal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ibeaVisualizar: TBmsXPButton
    Left = 201
    Top = 56
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
    OnClick = ibeaVisualizarClick
  end
  object BmsXPButton2: TBmsXPButton
    Left = 351
    Top = 1
    Width = 53
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
    OnClick = BmsXPButton2Click
  end
  object ibeaImprimirCupom: TBmsXPButton
    Left = 285
    Top = 56
    Width = 115
    Height = 21
    Caption = '&Imprimir no Cupom'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Layout = tlTop
    WordWrap = False
    ShowAccelChar = True
    ParentFont = False
    TabOrder = 2
    OnClick = ibeaImprimirCupomClick
  end
  object dtpDataCaixaIni: TDateTimePicker
    Left = 9
    Top = 56
    Width = 91
    Height = 21
    BevelInner = bvSpace
    BevelOuter = bvSpace
    BevelKind = bkFlat
    Date = 42458.880614687500000000
    Time = 42458.880614687500000000
    TabOrder = 3
  end
  object dtpDataCaixa: TDateTimePicker
    Left = 103
    Top = 55
    Width = 91
    Height = 21
    BevelInner = bvSpace
    BevelOuter = bvSpace
    BevelKind = bkFlat
    Date = 42458.880614687500000000
    Time = 42458.880614687500000000
    TabOrder = 4
  end
end
