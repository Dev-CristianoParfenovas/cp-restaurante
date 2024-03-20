object frmEstoqueRapido: TfrmEstoqueRapido
  Left = 274
  Top = 202
  BorderIcons = [biSystemMenu]
  Caption = 'Estoque R'#225'pido'
  ClientHeight = 231
  ClientWidth = 543
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object ibeaSair: TSpeedButton
    Left = 186
    Top = 29
    Width = 59
    Height = 25
    Caption = 'Sair'
    OnClick = ibeaSairClick
  end
  object dbgEstoque: TDBGrid
    Left = 4
    Top = 60
    Width = 543
    Height = 144
    Cursor = crHandPoint
    BorderStyle = bsNone
    DataSource = dmModule.dtsEntrProdEstoque
    FixedColor = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
  end
  object lbl_edtCodBarras: TLabeledEdit
    Left = 56
    Top = 32
    Width = 121
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BorderStyle = bsNone
    EditLabel.Width = 63
    EditLabel.Height = 13
    EditLabel.Caption = 'C'#243'd.Barras'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    TabOrder = 1
    OnChange = lbl_edtCodBarrasChange
    OnKeyPress = lbl_edtCodBarrasKeyPress
  end
  object lbl_edtQtde: TLabeledEdit
    Left = 2
    Top = 32
    Width = 50
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BevelOuter = bvRaised
    BorderStyle = bsNone
    EditLabel.Width = 32
    EditLabel.Height = 13
    EditLabel.Caption = 'Qtde.'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    TabOrder = 2
    OnKeyPress = lbl_edtQtdeKeyPress
  end
end
