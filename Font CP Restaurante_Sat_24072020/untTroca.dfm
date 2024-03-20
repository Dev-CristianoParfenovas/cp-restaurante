object frmTrocaMercadoria: TfrmTrocaMercadoria
  Left = 51
  Top = 1
  Width = 602
  Height = 565
  BorderIcons = [biSystemMenu]
  Caption = 'Troca de Mercadoria'
  Color = clBtnFace
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
  object lbl_TipoPagto: TLabel
    Left = 180
    Top = 285
    Width = 93
    Height = 13
    Caption = 'Tipo de Pagamento'
  end
  object lbl_ProdD: TLabel
    Left = 8
    Top = 43
    Width = 146
    Height = 20
    Caption = 'Produto Devolvido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object lbl_ProdT: TLabel
    Left = 10
    Top = 199
    Width = 138
    Height = 20
    Caption = 'Produto Retirado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object lbl_Inf: TLabel
    Left = 390
    Top = 301
    Width = 96
    Height = 16
    Caption = 'F1 - Para Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl_Obs: TLabel
    Left = 9
    Top = 332
    Width = 27
    Height = 13
    Caption = 'Obs:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 1
    Top = 194
    Width = 592
    Height = 3
  end
  object lbl_F7: TLabel
    Left = 390
    Top = 326
    Width = 182
    Height = 16
    Caption = 'F7 - Grava o Recebimento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl_NomeFuncComissao: TLabel
    Left = 156
    Top = 16
    Width = 319
    Height = 23
    Alignment = taCenter
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl_edtCodBarraTroca: TLabeledEdit
    Left = 8
    Top = 81
    Width = 89
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 52
    EditLabel.Height = 13
    EditLabel.Caption = 'C'#243'd.Barras'
    MaxLength = 13
    TabOrder = 0
    OnChange = lbl_edtCodBarraTrocaChange
    OnKeyPress = lbl_edtCodBarraTrocaKeyPress
  end
  object lbl_edtNomeProdTroca: TLabeledEdit
    Left = 178
    Top = 81
    Width = 200
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 48
    EditLabel.Height = 13
    EditLabel.Caption = 'Descri'#231#227'o'
    TabOrder = 1
  end
  object lbl_edtVlrVendaTroca: TLabeledEdit
    Left = 384
    Top = 81
    Width = 66
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 64
    EditLabel.Height = 13
    EditLabel.Caption = 'Vlr. de Venda'
    TabOrder = 2
  end
  object lbl_edtCodBarras: TLabeledEdit
    Left = 8
    Top = 245
    Width = 89
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 52
    EditLabel.Height = 13
    EditLabel.Caption = 'C'#243'd.Barras'
    TabOrder = 3
    OnChange = lbl_edtCodBarrasChange
    OnExit = lbl_edtCodBarrasExit
    OnKeyPress = lbl_edtCodBarrasKeyPress
  end
  object lbl_edtNomeProd: TLabeledEdit
    Left = 177
    Top = 245
    Width = 203
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 48
    EditLabel.Height = 13
    EditLabel.Caption = 'Descri'#231#227'o'
    TabOrder = 4
  end
  object lbl_edtVlrVenda: TLabeledEdit
    Left = 383
    Top = 245
    Width = 57
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 49
    EditLabel.Height = 13
    EditLabel.Caption = 'Vlr. Venda'
    TabOrder = 5
  end
  object lbl_edtVlrDiferenca: TLabeledEdit
    Left = 92
    Top = 301
    Width = 77
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 46
    EditLabel.Height = 13
    EditLabel.Caption = 'Diferen'#231'a'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object cboTipoPagto: TComboBox
    Left = 180
    Top = 301
    Width = 201
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    ItemHeight = 13
    TabOrder = 7
    OnClick = cboTipoPagtoClick
  end
  object lbl_edtQtde: TLabeledEdit
    Left = 458
    Top = 81
    Width = 32
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 26
    EditLabel.Height = 13
    EditLabel.Caption = 'Qtde.'
    TabOrder = 8
    Text = '1'
    OnExit = lbl_edtQtdeExit
    OnKeyPress = lbl_edtQtdeKeyPress
  end
  object dbgEstoque: TDBGrid
    Left = 9
    Top = 109
    Width = 531
    Height = 77
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
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
  end
  object lbl_edtCodProdTroca: TLabeledEdit
    Left = 546
    Top = 81
    Width = 32
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 22
    EditLabel.Height = 13
    EditLabel.Caption = 'C'#243'd.'
    TabOrder = 10
  end
  object lbl_edtCodProd: TLabeledEdit
    Left = 548
    Top = 245
    Width = 32
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 22
    EditLabel.Height = 13
    EditLabel.Caption = 'C'#243'd.'
    TabOrder = 11
  end
  object memoObs: TMemo
    Left = 9
    Top = 348
    Width = 531
    Height = 50
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Lines.Strings = (
      '')
    MaxLength = 100
    ParentFont = False
    TabOrder = 12
  end
  object dbgProdTroca: TDBGrid
    Left = 9
    Top = 410
    Width = 531
    Height = 117
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
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
  end
  object ibeaSair: TBmsXPButton
    Left = 528
    Top = 3
    Width = 65
    Height = 21
    Caption = '&Sair'
    Layout = tlTop
    WordWrap = False
    ShowAccelChar = True
    TabOrder = 14
    OnClick = ibeaSairClick
  end
  object lbl_edtQtdeRetirada: TLabeledEdit
    Left = 443
    Top = 245
    Width = 32
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 26
    EditLabel.Height = 13
    EditLabel.Caption = 'Qtde.'
    TabOrder = 15
    Text = '1'
    OnExit = lbl_edtQtdeRetiradaExit
    OnKeyPress = lbl_edtQtdeRetiradaKeyPress
  end
  object lbl_edtTotalVenda: TLabeledEdit
    Left = 478
    Top = 245
    Width = 66
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 24
    EditLabel.Height = 13
    EditLabel.Caption = 'Total'
    TabOrder = 16
    OnExit = lbl_edtTotalVendaExit
    OnKeyPress = lbl_edtTotalVendaKeyPress
  end
  object lbl_edtTotalDevolvido: TLabeledEdit
    Left = 497
    Top = 81
    Width = 45
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 24
    EditLabel.Height = 13
    EditLabel.Caption = 'Total'
    TabOrder = 17
    OnExit = lbl_edtTotalDevolvidoExit
    OnKeyPress = lbl_edtTotalDevolvidoKeyPress
  end
  object lbl_edtFuncComissao: TLabeledEdit
    Left = 68
    Top = 18
    Width = 61
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 55
    EditLabel.Height = 13
    EditLabel.Caption = 'Funcion'#225'rio'
    TabOrder = 18
    OnExit = lbl_edtFuncComissaoExit
    OnKeyPress = lbl_edtFuncComissaoKeyPress
  end
  object lbl_edtNumCupom: TLabeledEdit
    Left = 10
    Top = 18
    Width = 49
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 48
    EditLabel.Height = 13
    EditLabel.Caption = 'Cupom N'#186
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 19
  end
  object lbl_edtTotalRetirado: TLabeledEdit
    Left = 8
    Top = 301
    Width = 72
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 67
    EditLabel.Height = 13
    EditLabel.Caption = 'Total Retirado'
    TabOrder = 20
    OnExit = lbl_edtTotalRetiradoExit
  end
  object lbl_edtRefTroca: TLabeledEdit
    Left = 101
    Top = 81
    Width = 73
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 20
    EditLabel.Height = 13
    EditLabel.Caption = 'Ref.'
    TabOrder = 21
    OnExit = lbl_edtRefTrocaExit
    OnKeyPress = lbl_edtRefTrocaKeyPress
  end
  object lbl_edtRef: TLabeledEdit
    Left = 100
    Top = 245
    Width = 73
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 20
    EditLabel.Height = 13
    EditLabel.Caption = 'Ref.'
    TabOrder = 22
    OnExit = lbl_edtRefExit
    OnKeyPress = lbl_edtRefKeyPress
  end
end
