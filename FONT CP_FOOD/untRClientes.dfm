object frmRClientes: TfrmRClientes
  Left = 82
  Top = 99
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Relat'#243'rio de Clientes'
  ClientHeight = 193
  ClientWidth = 248
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
  object ibeaSair: TBmsXPButton
    Left = 166
    Top = 2
    Width = 80
    Height = 21
    Caption = '&Sair'
    Layout = tlTop
    WordWrap = False
    ShowAccelChar = True
    TabOrder = 0
    OnClick = ibeaSairClick
  end
  object ibeaVisualizar: TBmsXPButton
    Left = 160
    Top = 112
    Width = 80
    Height = 21
    Caption = '&Visualizar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Layout = tlTop
    WordWrap = False
    ShowAccelChar = True
    ParentFont = False
    TabOrder = 1
    OnClick = ibeaVisualizarClick
  end
  object lbl_edtPorLetra: TLabeledEdit
    Left = 24
    Top = 112
    Width = 121
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 49
    EditLabel.Height = 13
    EditLabel.Caption = 'Por Letra()'
    TabOrder = 2
    OnChange = lbl_edtPorLetraChange
  end
  object ibeaLimpar: TBmsXPButton
    Left = 160
    Top = 144
    Width = 80
    Height = 21
    Caption = '&Limpar'
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
    OnClick = ibeaLimparClick
  end
  object ckGeral: TBmsXPCheckBox
    Left = 26
    Top = 61
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
    TabOrder = 4
  end
  object ckClientesBar: TBmsXPCheckBox
    Left = 105
    Top = 61
    Width = 96
    Height = 13
    WordWrap = False
    ShowAccelChar = True
    Layout = tlTop
    AutoSize = False
    Alignment = taLeftJustify
    Shadow.Color = clWindow
    Shadow.Style = ssTopLeft
    Shadow.OffSet = 0
    Caption = '&Clientes Bar'
    TabOrder = 5
  end
end
