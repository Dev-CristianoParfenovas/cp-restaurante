object frmCRPeriodo: TfrmCRPeriodo
  Left = 186
  Top = 110
  Width = 453
  Height = 158
  BorderIcons = [biSystemMenu]
  Caption = 'Contas a REceber por per'#237'odo'
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
  object Label1: TLabel
    Left = 27
    Top = 41
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
  object Label2: TLabel
    Left = 131
    Top = 41
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
  object ibeaVisualizar: TBmsXPButton
    Left = 248
    Top = 56
    Width = 80
    Height = 21
    Caption = '&Visualizar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Layout = tlTop
    WordWrap = False
    ShowAccelChar = True
    ParentFont = False
    TabOrder = 0
    OnClick = ibeaVisualizarClick
  end
  object ibeaSair: TBmsXPButton
    Left = 344
    Top = 56
    Width = 80
    Height = 21
    Caption = '&Sair'
    Layout = tlTop
    WordWrap = False
    ShowAccelChar = True
    TabOrder = 1
    OnClick = ibeaSairClick
  end
  object ckAberto: TBmsXPCheckBox
    Left = 32
    Top = 16
    Width = 81
    Height = 13
    WordWrap = False
    ShowAccelChar = True
    Layout = tlTop
    AutoSize = False
    Alignment = taLeftJustify
    Shadow.Color = clWindow
    Shadow.Style = ssTopLeft
    Shadow.OffSet = 0
    Caption = 'Em aberto'
    TabOrder = 2
    onCheck = ckAbertoCheck
  end
  object ckBaixado: TBmsXPCheckBox
    Left = 120
    Top = 16
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
    Caption = 'Baixado'
    TabOrder = 3
    onCheck = ckBaixadoCheck
  end
  object dtpDataIni: TDateTimePicker
    Left = 24
    Top = 56
    Width = 90
    Height = 21
    BevelInner = bvSpace
    BevelOuter = bvSpace
    BevelKind = bkFlat
    Date = 42458.876121770830000000
    Time = 42458.876121770830000000
    TabOrder = 4
  end
  object dtpDataF: TDateTimePicker
    Left = 128
    Top = 56
    Width = 90
    Height = 21
    BevelInner = bvSpace
    BevelOuter = bvSpace
    BevelKind = bkFlat
    Date = 42458.876121770830000000
    Time = 42458.876121770830000000
    TabOrder = 5
  end
end
