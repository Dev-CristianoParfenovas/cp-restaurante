object frmFluxoFunc: TfrmFluxoFunc
  Left = 311
  Top = 157
  BorderIcons = [biHelp]
  Caption = 'Fluxo de Caixa por Funcion'#225'rio'
  ClientHeight = 258
  ClientWidth = 327
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
  object imgFundo: TImage
    Left = 0
    Top = 0
    Width = 335
    Height = 261
  end
  object lbl_De: TLabel
    Left = 80
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
    Transparent = True
  end
  object lbl_Ate: TLabel
    Left = 176
    Top = 16
    Width = 20
    Height = 13
    Caption = 'At'#233
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object lbl_edtFunc: TLabel
    Left = 64
    Top = 96
    Width = 67
    Height = 13
    Caption = 'Funcion'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object cboFunc: TComboBox
    Left = 64
    Top = 112
    Width = 225
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    TabOrder = 2
  end
  object dtpDataIni: TDateTimePicker
    Left = 77
    Top = 31
    Width = 89
    Height = 21
    BevelInner = bvSpace
    BevelOuter = bvSpace
    BevelKind = bkFlat
    Date = 42458.000000000000000000
    Time = 0.885412499999802100
    TabOrder = 0
  end
  object dtpDataF: TDateTimePicker
    Left = 174
    Top = 31
    Width = 89
    Height = 21
    BevelInner = bvSpace
    BevelOuter = bvSpace
    BevelKind = bkFlat
    Date = 42458.000000000000000000
    Time = 0.885412499999802100
    TabOrder = 1
  end
end
