object frmFluxoRestauranteP: TfrmFluxoRestauranteP
  Left = 173
  Top = 182
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Fluxo Restaurante'
  ClientHeight = 172
  ClientWidth = 363
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_edtDe: TLabel
    Left = 11
    Top = 16
    Width = 17
    Height = 13
    Caption = 'De:'
  end
  object lbl_Ate: TLabel
    Left = 112
    Top = 16
    Width = 19
    Height = 13
    Caption = 'At'#233':'
  end
  object lbl_Func: TLabel
    Left = 12
    Top = 77
    Width = 127
    Height = 13
    Caption = 'Funcion'#225'rio/Vendedor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 210
    Top = 32
    Width = 65
    Height = 30
    Caption = '&Visualizar'
    OnClick = btVisualizarClick
  end
  object sbSair: TSpeedButton
    Left = 298
    Top = 1
    Width = 61
    Height = 24
    Caption = '&Sair'
    OnClick = btSairClick
  end
  object dtpDataIni: TDateTimePicker
    Left = 8
    Top = 32
    Width = 92
    Height = 22
    BevelInner = bvSpace
    BevelOuter = bvSpace
    BevelKind = bkFlat
    Date = 42458.000000000000000000
    Time = 0.886698668989993200
    TabOrder = 2
  end
  object dtpDataF: TDateTimePicker
    Left = 112
    Top = 32
    Width = 92
    Height = 22
    BevelInner = bvSpace
    BevelOuter = bvSpace
    BevelKind = bkFlat
    Date = 42458.000000000000000000
    Time = 0.886698668989993200
    TabOrder = 0
  end
  object cboFunc: TComboBox
    Left = 10
    Top = 93
    Width = 172
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    TabOrder = 1
  end
end
