object frmSenhaAlteracaoProd: TfrmSenhaAlteracaoProd
  Left = 238
  Top = 145
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Altera'#231#227'o de Produtos'
  ClientHeight = 100
  ClientWidth = 263
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_edtSenha: TLabeledEdit
    Left = 8
    Top = 31
    Width = 160
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 37
    EditLabel.Height = 13
    EditLabel.Caption = 'Senha'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    EditLabel.Transparent = True
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Wingdings'
    Font.Style = [fsBold]
    LabelPosition = lpAbove
    LabelSpacing = 3
    ParentFont = False
    PasswordChar = 'l'
    TabOrder = 0
  end
  object ibeaOk: TBmsXPButton
    Left = 175
    Top = 29
    Width = 80
    Height = 25
    Caption = '&OK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Layout = tlTop
    WordWrap = False
    ShowAccelChar = True
    ParentFont = False
    TabOrder = 1
    OnClick = ibeaOkClick
  end
  object ibeaSair: TBmsXPButton
    Left = 176
    Top = 61
    Width = 80
    Height = 25
    Caption = 'Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Layout = tlTop
    WordWrap = False
    ShowAccelChar = True
    ParentFont = False
    TabOrder = 2
    OnClick = ibeaSairClick
  end
end
