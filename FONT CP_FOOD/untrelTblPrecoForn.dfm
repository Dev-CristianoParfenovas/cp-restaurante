object frmTblPrecoForn: TfrmTblPrecoForn
  Left = 253
  Top = 223
  Width = 368
  Height = 192
  Caption = 'frmTblPrecoForn'
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
  object lbl_Forn: TLabel
    Left = 28
    Top = 57
    Width = 78
    Height = 13
    Caption = 'Fornecedores'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ibeaSair: TBmsXPButton
    Left = 280
    Top = 0
    Width = 80
    Height = 21
    Caption = 'Sair'
    Layout = tlTop
    WordWrap = False
    ShowAccelChar = True
    TabOrder = 0
    OnClick = ibeaSairClick
  end
  object ibeaAbrir: TBmsXPButton
    Left = 228
    Top = 73
    Width = 80
    Height = 21
    Caption = 'Abrir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Layout = tlTop
    WordWrap = False
    ShowAccelChar = True
    ParentFont = False
    TabOrder = 1
    OnClick = ibeaAbrirClick
  end
  object cboFornecedores: TComboBox
    Left = 28
    Top = 72
    Width = 194
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    ItemHeight = 13
    TabOrder = 2
  end
end
