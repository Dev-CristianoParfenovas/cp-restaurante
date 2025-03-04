object frmUnidVenda: TfrmUnidVenda
  Left = 231
  Top = 213
  Width = 329
  Height = 243
  Caption = 'TIPO DE UNIDADE'
  Color = clWhite
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
  object lbl_Info: TLabel
    Left = 29
    Top = 11
    Width = 216
    Height = 13
    Caption = 'Permite incluir Tipo de Unid.de Venda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Image1: TImage
    Left = 10
    Top = 13
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
  object ibeaSair: TBmsXPButton
    Left = 266
    Top = 2
    Width = 52
    Height = 25
    Caption = 'Sair'
    Layout = tlCenter
    WordWrap = False
    ShowAccelChar = True
    TabOrder = 0
    OnClick = ibeaSairClick
  end
  object ibeaIncluir: TBmsXPButton
    Left = 112
    Top = 53
    Width = 58
    Height = 25
    Caption = 'Incluir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Layout = tlCenter
    WordWrap = False
    ShowAccelChar = True
    ParentFont = False
    TabOrder = 1
    OnClick = ibeaIncluirClick
  end
  object dbgUnidVenda: TDBGrid
    Left = 10
    Top = 87
    Width = 297
    Height = 117
    Cursor = crHandPoint
    Hint = 'Clique no Cliente para selecionar'
    DataSource = dmModule.dtsProdutos
    DragCursor = crHandPoint
    FixedColor = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = dbgUnidVendaCellClick
  end
  object ibeaExcluir: TBmsXPButton
    Left = 253
    Top = 53
    Width = 58
    Height = 25
    Caption = 'Excluir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Layout = tlCenter
    WordWrap = False
    ShowAccelChar = True
    ParentFont = False
    TabOrder = 3
  end
  object ibeaAlterar: TBmsXPButton
    Left = 183
    Top = 53
    Width = 58
    Height = 25
    Caption = 'Alterar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Layout = tlCenter
    WordWrap = False
    ShowAccelChar = True
    ParentFont = False
    TabOrder = 4
    OnClick = ibeaAlterarClick
  end
  object lbl_edtNomeUnidade: TLabeledEdit
    Left = 10
    Top = 54
    Width = 97
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 84
    EditLabel.Height = 13
    EditLabel.Caption = 'Tipo de Venda'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    TabOrder = 5
  end
end
