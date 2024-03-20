object frmRelClienteLanctoF: TfrmRelClienteLanctoF
  Left = 132
  Top = 205
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Lan'#231'amentos Futuros por Cliente'
  ClientHeight = 215
  ClientWidth = 384
  Color = clWindow
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
  object Image9: TImage
    Left = 57
    Top = 170
    Width = 12
    Height = 9
    AutoSize = True
    Picture.Data = {
      07544269746D61707A010000424D7A0100000000000036000000280000000C00
      000009000000010018000000000044010000120B0000120B0000000000000000
      0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000
      0000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0
      C0000000C0C0C0000000C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
      C0C0C0C0C0C0}
    Transparent = True
  end
  object lbl_Informacao: TLabel
    Left = 80
    Top = 168
    Width = 252
    Height = 13
    Caption = 'Emite Relat'#243'rios por Funcion'#225'rio do Cliente e Per'#237'odo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lbl_PeriodoInicial: TLabel
    Left = 20
    Top = 98
    Width = 68
    Height = 13
    Caption = 'Per'#237'odo Inicial'
  end
  object lbl_PeriodoFinal: TLabel
    Left = 134
    Top = 99
    Width = 63
    Height = 13
    Caption = 'Per'#237'odo Final'
  end
  object lbl_Funcionario: TLabel
    Left = 95
    Top = 32
    Width = 55
    Height = 13
    Caption = 'Funcion'#225'rio'
  end
  object dtpPeriodoIni: TDateTimePicker
    Left = 18
    Top = 116
    Width = 84
    Height = 21
    Date = 38601.000000000000000000
    Time = 0.449450960601097900
    TabOrder = 2
  end
  object dtpPeriodoFinal: TDateTimePicker
    Left = 132
    Top = 116
    Width = 84
    Height = 21
    Date = 38601.000000000000000000
    Time = 0.449450960601097900
    TabOrder = 0
  end
  object cboFuncionario: TComboBox
    Left = 95
    Top = 48
    Width = 185
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
end
