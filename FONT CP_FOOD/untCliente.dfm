object frmCliente: TfrmCliente
  Left = 199
  Top = 43
  BorderStyle = bsSingle
  Caption = 'Busca de Clientes'
  ClientHeight = 566
  ClientWidth = 781
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 502
    Top = 6
    Width = 272
    Height = 519
    Brush.Color = clWindow
    Shape = stRoundRect
  end
  object lbl_Cupom: TLabel
    Left = 506
    Top = 120
    Width = 61
    Height = 13
    Caption = 'N'#186' Cupom:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object lbl_CodVenda: TLabel
    Left = 569
    Top = 120
    Width = 54
    Height = 13
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object lbl_Funcionario: TLabel
    Left = 506
    Top = 89
    Width = 57
    Height = 13
    Caption = 'Operador:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object lbl_Func: TLabel
    Left = 569
    Top = 90
    Width = 168
    Height = 13
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object lbl_edtIDFuncionario: TLabel
    Left = 739
    Top = 90
    Width = 30
    Height = 13
    AutoSize = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 12
    Top = 2
    Width = 32
    Height = 13
    Caption = 'Data:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl_Entregador: TLabel
    Left = 237
    Top = 3
    Width = 67
    Height = 13
    Caption = 'Entregador:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pnlDataHora: TPanel
    Left = 48
    Top = 504
    Width = 185
    Height = 41
    Caption = 'pnlDataHora'
    TabOrder = 16
  end
  object ibeaSair: TBmsXPButton
    Left = 430
    Top = 16
    Width = 43
    Height = 21
    Caption = 'Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Layout = tlTop
    WordWrap = False
    ShowAccelChar = True
    ParentFont = False
    TabOrder = 0
    OnClick = ibeaSairClick
  end
  object listboxCupom: TListBox
    Left = 509
    Top = 161
    Width = 260
    Height = 342
    BevelInner = bvSpace
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 1
  end
  object ListBoxDadosEmpresa: TListBox
    Left = 511
    Top = 22
    Width = 254
    Height = 63
    BevelInner = bvSpace
    BevelKind = bkFlat
    BevelOuter = bvSpace
    BorderStyle = bsNone
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 2
  end
  object StatusLine: TStatusBar
    Left = 0
    Top = 546
    Width = 781
    Height = 20
    BiDiMode = bdLeftToRight
    Panels = <
      item
        Width = 50
      end
      item
        Alignment = taCenter
        Width = 377
      end
      item
        Alignment = taCenter
        Text = 'SUPORTE: (11)  7643-6630 / 3536-9088'
        Width = 90
      end>
    ParentBiDiMode = False
    SizeGrip = False
  end
  object lbl_edtIDProdCX: TLabeledEdit
    Left = 353
    Top = 84
    Width = 121
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BevelOuter = bvSpace
    BorderStyle = bsNone
    EditLabel.Width = 78
    EditLabel.Height = 13
    EditLabel.Caption = 'lbl_edtIDProdCX'
    EditLabel.Transparent = True
    TabOrder = 3
    Visible = False
  end
  object lbl_edtCodCli: TLabeledEdit
    Left = 154
    Top = 88
    Width = 40
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BevelOuter = bvSpace
    BorderStyle = bsNone
    EditLabel.Width = 78
    EditLabel.Height = 13
    EditLabel.Caption = 'lbl_edtIDProdCX'
    EditLabel.Transparent = True
    TabOrder = 4
    Visible = False
  end
  object pcPedidos: TPageControl
    Left = 6
    Top = 136
    Width = 489
    Height = 407
    ActivePage = tbsLancamento
    TabOrder = 5
    OnChange = pcPedidosChange
    object tbsLancamento: TTabSheet
      Caption = 'Lan'#231'amento'
      object lbl_Prods: TLabel
        Left = 185
        Top = 8
        Width = 51
        Height = 13
        Caption = 'Produtos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_TipoPreco: TLabel
        Left = 242
        Top = 8
        Width = 151
        Height = 13
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_LimpaCampoProd: TLabel
        Left = 109
        Top = 164
        Width = 165
        Height = 13
        Caption = 'Limpa os Campos do Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 110
        Top = 202
        Width = 210
        Height = 13
        Caption = 'Limpa todos os campos do formul'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_F1: TLabel
        Left = 5
        Top = 228
        Width = 254
        Height = 13
        Caption = 'F1 - Limpa o Cupom junto com os campos de produto.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbl_F2: TLabel
        Left = 267
        Top = 228
        Width = 47
        Height = 13
        Caption = 'F2 - Qtde.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbl_F3: TLabel
        Left = 320
        Top = 228
        Width = 62
        Height = 13
        Caption = 'F3 - Receber'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 388
        Top = 228
        Width = 86
        Height = 13
        Caption = 'CTRL_S - Sangria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbl_F5: TLabel
        Left = 5
        Top = 245
        Width = 135
        Height = 13
        Caption = 'F5 - Manuten'#231#227'o de Cupons'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbl_F8: TLabel
        Left = 148
        Top = 245
        Width = 62
        Height = 13
        Caption = 'F8 - Pre'#231'o(B)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbl_F9: TLabel
        Left = 217
        Top = 245
        Width = 62
        Height = 13
        Caption = 'F9 - Pre'#231'o(C)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 284
        Top = 245
        Width = 163
        Height = 13
        Caption = 'CTRL_F - Fexa Caixa de Operador'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lbl_edtTotalPedido: TLabeledEdit
        Left = 180
        Top = 105
        Width = 93
        Height = 24
        BevelInner = bvLowered
        BevelKind = bkFlat
        BevelOuter = bvSpace
        BorderStyle = bsNone
        Color = clBlack
        EditLabel.Width = 95
        EditLabel.Height = 13
        EditLabel.Caption = 'Total do Pedido:'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clBlue
        EditLabel.Font.Height = -11
        EditLabel.Font.Name = 'MS Sans Serif'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object ibeaReceber: TBmsXPButton
        Left = 280
        Top = 107
        Width = 75
        Height = 21
        Caption = '&Receber'
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
        OnClick = ibeaReceberClick
      end
      object ibeaExcluirItem: TBmsXPButton
        Left = 363
        Top = 107
        Width = 75
        Height = 21
        Hint = 'Permite Excluir um item'
        Caption = '&Excluir Item'
        ShowHint = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Layout = tlTop
        WordWrap = False
        ShowAccelChar = True
        ParentFont = False
        ParentShowHint = False
        TabOrder = 2
        OnClick = ibeaExcluirItemClick
      end
      object ckVlrUnitario: TBmsXPCheckBox
        Left = 5
        Top = 136
        Width = 147
        Height = 13
        WordWrap = False
        ShowAccelChar = True
        Layout = tlTop
        AutoSize = False
        Alignment = taLeftJustify
        Shadow.Color = clWindow
        Shadow.Style = ssTopLeft
        Shadow.OffSet = 0
        Caption = 'CTRL_B - Vlr.Unit'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        onCheck = ckVlrUnitarioCheck
      end
      object ibeaLimpaProd: TBmsXPButton
        Left = 5
        Top = 164
        Width = 97
        Height = 21
        Caption = 'Limpar Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Layout = tlCenter
        WordWrap = False
        ShowAccelChar = True
        ParentFont = False
        TabOrder = 4
        OnClick = ibeaLimpaProdClick
      end
      object ibeaLimpar: TBmsXPButton
        Left = 5
        Top = 200
        Width = 97
        Height = 21
        Caption = 'Limpar Geral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Layout = tlCenter
        WordWrap = False
        ShowAccelChar = True
        ParentFont = False
        TabOrder = 5
        OnClick = ibeaLimparClick
      end
      object BmsXPButton2: TBmsXPButton
        Left = 363
        Top = 148
        Width = 75
        Height = 21
        Hint = 'Abre o cadastro de clientes'
        Caption = '&Clientes'
        ShowHint = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Layout = tlTop
        WordWrap = False
        ShowAccelChar = True
        ParentFont = False
        ParentShowHint = False
        TabOrder = 6
        OnClick = BmsXPButton2Click
      end
      object dbgPedido: TDBGrid
        Left = 1
        Top = 266
        Width = 476
        Height = 110
        Cursor = crHandPoint
        FixedColor = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnCellClick = dbgPedidoCellClick
        OnDrawColumnCell = dbgPedidoDrawColumnCell
      end
      object lbl_edtCodProd: TLabeledEdit
        Left = 3
        Top = 24
        Width = 78
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkFlat
        BorderStyle = bsNone
        EditLabel.Width = 57
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'd./Ref.'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -11
        EditLabel.Font.Name = 'MS Sans Serif'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        TabOrder = 8
        OnEnter = lbl_edtCodProdEnter
        OnExit = lbl_edtCodProdExit
        OnKeyPress = lbl_edtCodProdKeyPress
      end
      object lbl_edtCodBarras: TLabeledEdit
        Left = 86
        Top = 24
        Width = 87
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkFlat
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
        TabOrder = 9
        OnChange = lbl_edtCodBarrasChange
        OnEnter = lbl_edtCodBarrasEnter
        OnExit = lbl_edtCodBarrasExit
        OnKeyPress = lbl_edtCodBarrasKeyPress
      end
      object cboProdutos: TComboBox
        Left = 185
        Top = 24
        Width = 289
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkFlat
        ItemHeight = 13
        TabOrder = 10
        OnChange = cboProdutosChange
        OnClick = cboProdutosClick
        OnEnter = cboProdutosEnter
        OnExit = cboProdutosExit
      end
      object lbl_edtObs: TLabeledEdit
        Left = 3
        Top = 65
        Width = 465
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkFlat
        BorderStyle = bsNone
        EditLabel.Width = 67
        EditLabel.Height = 13
        EditLabel.Caption = 'Oberva'#231#227'o:'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -11
        EditLabel.Font.Name = 'MS Sans Serif'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        TabOrder = 11
        OnEnter = lbl_edtObsEnter
        OnExit = lbl_edtObsExit
        OnKeyPress = lbl_edtObsKeyPress
      end
      object lbl_edtQtde: TLabeledEdit
        Left = 3
        Top = 106
        Width = 41
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkFlat
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
        TabOrder = 12
        OnEnter = lbl_edtQtdeEnter
        OnExit = lbl_edtQtdeExit
        OnKeyPress = lbl_edtQtdeKeyPress
      end
      object lbl_edtVlrUnit: TLabeledEdit
        Left = 48
        Top = 106
        Width = 60
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkFlat
        BorderStyle = bsNone
        EditLabel.Width = 47
        EditLabel.Height = 13
        EditLabel.Caption = 'Vlr.Unit.'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -11
        EditLabel.Font.Name = 'MS Sans Serif'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        TabOrder = 13
        OnEnter = lbl_edtVlrUnitEnter
        OnExit = lbl_edtVlrUnitExit
        OnKeyPress = lbl_edtVlrUnitKeyPress
      end
      object lbl_edtVlrTotal: TLabeledEdit
        Left = 113
        Top = 106
        Width = 60
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkFlat
        BorderStyle = bsNone
        EditLabel.Width = 49
        EditLabel.Height = 13
        EditLabel.Caption = 'Vlr.Total'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -11
        EditLabel.Font.Name = 'MS Sans Serif'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        TabOrder = 14
        OnEnter = lbl_edtVlrTotalEnter
        OnExit = lbl_edtVlrTotalExit
        OnKeyPress = lbl_edtVlrTotalKeyPress
      end
    end
    object tbsPendentes: TTabSheet
      Caption = 'Pendentes'
      ImageIndex = 1
      object lbl_PDetalhado: TLabel
        Left = 3
        Top = 8
        Width = 110
        Height = 13
        Caption = 'Pedidos Pendentes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 3
        Top = 193
        Width = 117
        Height = 13
        Caption = 'Pendente Detalhado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_CupomDetalhado: TLabel
        Left = 5
        Top = 164
        Width = 32
        Height = 13
        AutoSize = False
        Caption = '.'
      end
      object Label6: TLabel
        Left = 227
        Top = 169
        Width = 81
        Height = 13
        Caption = 'Tipo de Pagto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object dbgPendentes: TDBGrid
        Left = 1
        Top = 23
        Width = 479
        Height = 137
        Cursor = crHandPoint
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
        OnCellClick = dbgPendentesCellClick
      end
      object dbgPedidoDetalhado: TDBGrid
        Left = 1
        Top = 209
        Width = 479
        Height = 164
        Cursor = crHandPoint
        FixedColor = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
      end
      object lbl_edtTotalDetalhado: TLabeledEdit
        Left = 127
        Top = 185
        Width = 90
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkFlat
        BorderStyle = bsNone
        EditLabel.Width = 34
        EditLabel.Height = 13
        EditLabel.Caption = 'Total:'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -11
        EditLabel.Font.Name = 'MS Sans Serif'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnEnter = lbl_edtTotalDetalhadoEnter
        OnExit = lbl_edtTotalDetalhadoExit
      end
      object btReceberBaixar: TBmsXPButton
        Left = 363
        Top = 184
        Width = 100
        Height = 21
        Caption = '&Receber/Baixar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Layout = tlTop
        WordWrap = False
        ShowAccelChar = True
        ParentFont = False
        TabOrder = 3
        OnClick = btReceberBaixarClick
      end
      object cboTipoPagto: TComboBox
        Left = 227
        Top = 185
        Width = 129
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkFlat
        ItemHeight = 13
        TabOrder = 4
        OnEnter = cboTipoPagtoEnter
        OnExit = cboTipoPagtoExit
      end
    end
  end
  object cboEntregador: TComboBox
    Left = 238
    Top = 17
    Width = 145
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    ItemHeight = 13
    TabOrder = 6
    OnEnter = cboEntregadorEnter
    OnExit = cboEntregadorExit
  end
  object dtpDataLancto: TDateTimePicker
    Left = 14
    Top = 17
    Width = 87
    Height = 21
    BevelInner = bvSpace
    BevelOuter = bvSpace
    BevelKind = bkFlat
    Date = 42459.845942916670000000
    Time = 42459.845942916670000000
    TabOrder = 7
  end
  object lbl_edtTelefone: TLabeledEdit
    Left = 106
    Top = 17
    Width = 59
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 33
    EditLabel.Height = 13
    EditLabel.Caption = 'Fone:'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    TabOrder = 8
    OnEnter = lbl_edtTelefoneEnter
    OnExit = lbl_edtTelefoneExit
    OnKeyPress = lbl_edtTelefoneKeyPress
  end
  object lbl_edtCelular: TLabeledEdit
    Left = 171
    Top = 17
    Width = 62
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 44
    EditLabel.Height = 13
    EditLabel.Caption = 'Celular:'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    TabOrder = 9
    OnEnter = lbl_edtCelularEnter
    OnExit = lbl_edtCelularExit
    OnKeyPress = lbl_edtCelularKeyPress
  end
  object lbl_edtNome: TLabeledEdit
    Left = 8
    Top = 65
    Width = 467
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 37
    EditLabel.Height = 13
    EditLabel.Caption = 'Nome:'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    TabOrder = 10
    OnEnter = lbl_edtNomeEnter
    OnExit = lbl_edtNomeExit
    OnKeyPress = lbl_edtNomeKeyPress
  end
  object lbl_edtEndereco: TLabeledEdit
    Left = 8
    Top = 112
    Width = 198
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 59
    EditLabel.Height = 13
    EditLabel.Caption = 'Endere'#231'o:'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    TabOrder = 11
    OnEnter = lbl_edtEnderecoEnter
    OnExit = lbl_edtEnderecoExit
    OnKeyPress = lbl_edtEnderecoKeyPress
  end
  object lbl_edtNum: TLabeledEdit
    Left = 210
    Top = 112
    Width = 49
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 15
    EditLabel.Height = 13
    EditLabel.Caption = 'N'#186
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    TabOrder = 12
    OnEnter = lbl_edtNumEnter
    OnExit = lbl_edtNumExit
    OnKeyPress = lbl_edtNumKeyPress
  end
  object lbl_edtCompl: TLabeledEdit
    Left = 263
    Top = 112
    Width = 49
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 39
    EditLabel.Height = 13
    EditLabel.Caption = 'Compl.'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    TabOrder = 13
    OnEnter = lbl_edtComplEnter
    OnExit = lbl_edtComplExit
    OnKeyPress = lbl_edtComplKeyPress
  end
  object lbl_edtBairro: TLabeledEdit
    Left = 317
    Top = 112
    Width = 154
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 34
    EditLabel.Height = 13
    EditLabel.Caption = 'Bairro'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    TabOrder = 14
    OnEnter = lbl_edtBairroEnter
    OnExit = lbl_edtBairroExit
    OnKeyPress = lbl_edtBairroKeyPress
  end
  object TimerPrincipal: TTimer
    OnTimer = TimerPrincipalTimer
    Left = 256
    Top = 520
  end
  object MainMenu1: TMainMenu
    Left = 384
    Top = 7
    object Venda1: TMenuItem
      Caption = '&Geral'
      ShortCut = 16471
      Visible = False
      object MudarPreco1: TMenuItem
        Caption = '&Mudar Preco'
        ShortCut = 16450
        OnClick = MudarPreco1Click
      end
      object FecharCaixa1: TMenuItem
        Caption = 'Fechar Caixa'
        ShortCut = 16454
        OnClick = FecharCaixa1Click
      end
      object FluxoCaixa1: TMenuItem
        Caption = '&Fluxo Caixa'
        ShortCut = 16451
        OnClick = FluxoCaixa1Click
      end
      object ImprimirCupomDetalhado1: TMenuItem
        Caption = '&Imprimir Cupom Detalhado'
        ShortCut = 16470
        OnClick = ImprimirCupomDetalhado1Click
      end
      object CancelaCupomInteiro1: TMenuItem
        Caption = '&Cancela Cupom Inteiro'
        ShortCut = 16501
        OnClick = CancelaCupomInteiro1Click
      end
      object CancelaltimoCupom1: TMenuItem
        Caption = '&Cancela '#218'ltimo Cupom'
        ShortCut = 16460
        OnClick = CancelaltimoCupom1Click
      end
      object Sangria1: TMenuItem
        Caption = '&Sangria'
        ShortCut = 16467
        OnClick = Sangria1Click
      end
      object BuscaCep1: TMenuItem
        Caption = '&BuscaCep'
        ShortCut = 16453
        OnClick = BuscaCep1Click
      end
      object EncerraVenda1: TMenuItem
        Caption = 'EncerraVenda'
        ShortCut = 113
        OnClick = EncerraVenda1Click
      end
    end
  end
end
