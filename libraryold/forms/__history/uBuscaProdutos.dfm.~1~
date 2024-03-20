object frmBuscaProdutos: TfrmBuscaProdutos
  Left = 94
  Top = 185
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Busca de Produtos'
  ClientHeight = 424
  ClientWidth = 728
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sb_ord_nome: TSpeedButton
    Left = 73
    Top = 10
    Width = 129
    Height = 22
    Cursor = crHandPoint
    Hint = 'Ordenar por Nome'
    Caption = 'Ordenar por C'#243'digo'
    Flat = True
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
      3333333333333333333333333333333333333333FFF33FFFFF33333300033000
      00333337773377777333333330333300033333337FF33777F333333330733300
      0333333377FFF777F33333333700000073333333777777773333333333033000
      3333333337FF777F333333333307300033333333377F777F3333333333703007
      33333333377F7773333333333330000333333333337777F33333333333300003
      33333333337777F3333333333337007333333333337777333333333333330033
      3333333333377333333333333333033333333333333733333333333333333333
      3333333333333333333333333333333333333333333333333333}
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = sb_ord_nomeClick
  end
  object Bevel1: TBevel
    Left = 8
    Top = 336
    Width = 711
    Height = 3
  end
  object sbLimpar: TSpeedButton
    Left = 209
    Top = 10
    Width = 129
    Height = 22
    Cursor = crHandPoint
    Hint = 'Ordenar por Nome'
    Caption = 'Limpar Campos'
    Flat = True
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = True
    OnClick = sbLimparClick
  end
  object Image2: TImage
    Left = 545
    Top = 98
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
  object lbl_Info: TLabel
    Left = 565
    Top = 96
    Width = 149
    Height = 13
    Caption = 'Exibe detalhes do produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl_Forn: TLabel
    Left = 20
    Top = 47
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
  object lbl_F2: TLabel
    Left = 659
    Top = 31
    Width = 49
    Height = 13
    Caption = 'F2 - Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbgProd: TDBGrid
    Left = 16
    Top = 97
    Width = 529
    Height = 215
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
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = dbgProdCellClick
    OnDrawColumnCell = dbgProdDrawColumnCell
    OnKeyPress = dbgProdKeyPress
  end
  object ibeaSair: TBmsXPButton
    Left = 644
    Top = 5
    Width = 80
    Height = 21
    Caption = '&Sair'
    Layout = tlTop
    WordWrap = False
    ShowAccelChar = True
    TabOrder = 1
    OnClick = ibeaSairClick
  end
  object ibeaIncluir: TBmsXPButton
    Left = 645
    Top = 62
    Width = 80
    Height = 21
    Caption = '&Incluir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Layout = tlTop
    WordWrap = False
    ShowAccelChar = True
    ParentFont = False
    TabOrder = 2
    OnClick = ibeaIncluirClick
  end
  object ckPrecob: TBmsXPCheckBox
    Left = 558
    Top = 118
    Width = 66
    Height = 13
    WordWrap = False
    ShowAccelChar = True
    Layout = tlTop
    AutoSize = False
    Alignment = taLeftJustify
    Shadow.Color = clWindow
    Shadow.Style = ssTopLeft
    Shadow.OffSet = 0
    Caption = 'Pre'#231'o(B)'
    TabOrder = 3
    onCheck = ckPrecobCheck
  end
  object ckPrecoc: TBmsXPCheckBox
    Left = 558
    Top = 134
    Width = 66
    Height = 13
    WordWrap = False
    ShowAccelChar = True
    Layout = tlTop
    AutoSize = False
    Alignment = taLeftJustify
    Shadow.Color = clWindow
    Shadow.Style = ssTopLeft
    Shadow.OffSet = 0
    Caption = 'Pre'#231'o(C)'
    TabOrder = 4
    onCheck = ckPrecocCheck
  end
  object ckPrecoD: TBmsXPCheckBox
    Left = 558
    Top = 152
    Width = 66
    Height = 13
    WordWrap = False
    ShowAccelChar = True
    Layout = tlTop
    AutoSize = False
    Alignment = taLeftJustify
    Shadow.Color = clWindow
    Shadow.Style = ssTopLeft
    Shadow.OffSet = 0
    Caption = 'Pre'#231'o(D)'
    TabOrder = 5
  end
  object ckBuscaLetra: TBmsXPCheckBox
    Left = 462
    Top = 15
    Width = 121
    Height = 13
    WordWrap = False
    ShowAccelChar = True
    Layout = tlTop
    AutoSize = False
    Alignment = taLeftJustify
    Shadow.Color = clWindow
    Shadow.Style = ssTopLeft
    Shadow.OffSet = 0
    Caption = 'Busca Por Letra _F5'
    TabOrder = 6
    onCheck = ckBuscaLetraCheck
  end
  object ckBuscaNome: TBmsXPCheckBox
    Left = 462
    Top = 32
    Width = 121
    Height = 13
    WordWrap = False
    ShowAccelChar = True
    Layout = tlTop
    AutoSize = False
    Alignment = taLeftJustify
    Shadow.Color = clWindow
    Shadow.Style = ssTopLeft
    Shadow.OffSet = 0
    Caption = 'Busca Por Nome_F6'
    TabOrder = 7
    onCheck = ckBuscaNomeCheck
  end
  object cboFornecedores: TComboBox
    Left = 21
    Top = 63
    Width = 148
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    ItemHeight = 13
    TabOrder = 8
    OnClick = cboFornecedoresClick
  end
  object lbl_edtIDProd: TLabeledEdit
    Left = 360
    Top = 8
    Width = 89
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 3
    EditLabel.Height = 13
    EditLabel.Caption = '.'
    ReadOnly = True
    TabOrder = 9
    Visible = False
  end
  object lbl_edtCodBarrasAd: TLabeledEdit
    Left = 176
    Top = 63
    Width = 107
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 89
    EditLabel.Height = 13
    EditLabel.Caption = 'C'#243'd.Barras - F4'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    TabOrder = 10
    OnChange = lbl_edtCodBarrasAdChange
    OnKeyPress = lbl_edtCodBarrasAdKeyPress
  end
  object lbl_edtCodInterno: TLabeledEdit
    Left = 290
    Top = 63
    Width = 60
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 25
    EditLabel.Height = 13
    EditLabel.Caption = 'Ref.'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    TabOrder = 11
    OnExit = lbl_edtCodInternoExit
    OnKeyPress = lbl_edtCodInternoKeyPress
  end
  object lbl_edtNome: TLabeledEdit
    Left = 362
    Top = 63
    Width = 181
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 133
    EditLabel.Height = 13
    EditLabel.Caption = 'Primeira Letra ou Nome'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    TabOrder = 12
    OnChange = lbl_edtNomeChange
    OnKeyPress = lbl_edtNomeKeyPress
  end
  object lbl_edtProduto: TLabeledEdit
    Left = 21
    Top = 378
    Width = 300
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 124
    EditLabel.Height = 13
    EditLabel.Caption = 'Descri'#231#227'o do Produto'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    ReadOnly = True
    TabOrder = 13
  end
  object lbl_edtQtdeEstoque: TLabeledEdit
    Left = 327
    Top = 378
    Width = 90
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 78
    EditLabel.Height = 13
    EditLabel.Caption = 'Qtde.Estoque'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    ReadOnly = True
    TabOrder = 14
  end
  object lbl_edtPrecoVenda: TLabeledEdit
    Left = 422
    Top = 378
    Width = 90
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 78
    EditLabel.Height = 13
    EditLabel.Caption = 'Vlr. de Venda'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    ReadOnly = True
    TabOrder = 15
  end
  object lbl_edtFabricanteProd: TLabeledEdit
    Left = 518
    Top = 378
    Width = 90
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 61
    EditLabel.Height = 13
    EditLabel.Caption = 'Fabricante'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    ReadOnly = True
    TabOrder = 16
  end
end
