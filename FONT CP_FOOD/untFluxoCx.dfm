object frmFluxoCx: TfrmFluxoCx
  Left = 4
  Top = 85
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Fluxo de Caixa'
  ClientHeight = 515
  ClientWidth = 768
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
  object imgFundoFluxoCx: TImage
    Left = -1
    Top = 0
    Width = 770
    Height = 519
  end
  object Label1: TLabel
    Left = 16
    Top = 79
    Width = 70
    Height = 13
    Caption = 'Data Inicial:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 110
    Top = 79
    Width = 59
    Height = 13
    Caption = 'DataFinal:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label5: TLabel
    Left = 15
    Top = 340
    Width = 70
    Height = 13
    Caption = 'Data Inicial:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label6: TLabel
    Left = 120
    Top = 340
    Width = 59
    Height = 13
    Caption = 'DataFinal:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object lbl_Igual: TLabel
    Left = 399
    Top = 356
    Width = 13
    Height = 24
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object lbl_Menos: TLabel
    Left = 300
    Top = 356
    Width = 8
    Height = 24
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 16
    Top = 131
    Width = 70
    Height = 13
    Caption = 'Data Inicial:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 110
    Top = 131
    Width = 59
    Height = 13
    Caption = 'DataFinal:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label7: TLabel
    Left = 17
    Top = 236
    Width = 70
    Height = 13
    Caption = 'Data Inicial:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label8: TLabel
    Left = 106
    Top = 236
    Width = 59
    Height = 13
    Caption = 'DataFinal:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label9: TLabel
    Left = 281
    Top = 249
    Width = 8
    Height = 24
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label10: TLabel
    Left = 374
    Top = 249
    Width = 13
    Height = 24
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label11: TLabel
    Left = 512
    Top = 356
    Width = 8
    Height = 24
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label12: TLabel
    Left = 620
    Top = 356
    Width = 13
    Height = 24
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Bevel1: TBevel
    Left = 4
    Top = 71
    Width = 665
    Height = 106
    Shape = bsFrame
    Style = bsRaised
  end
  object lbl_Estoque: TLabel
    Left = 14
    Top = 28
    Width = 51
    Height = 13
    Caption = 'Estoque:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label13: TLabel
    Left = 479
    Top = 249
    Width = 8
    Height = 24
    Caption = '-'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label14: TLabel
    Left = 569
    Top = 249
    Width = 13
    Height = 24
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object lbl_Sair: TLabel
    Left = 735
    Top = 63
    Width = 18
    Height = 13
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object lbl_Func: TLabel
    Left = 190
    Top = 28
    Width = 71
    Height = 13
    Caption = 'Funcion'#225'rio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Bevel2: TBevel
    Left = 472
    Top = 226
    Width = 201
    Height = 63
    Shape = bsFrame
    Style = bsRaised
  end
  object ibeaLimparCampo: TSpeedButton
    Left = 400
    Top = 32
    Width = 41
    Height = 33
    OnClick = ibeaLimparCampoClick
  end
  object ibeabSair: TSpeedButton
    Left = 720
    Top = 24
    Width = 41
    Height = 33
    OnClick = ibeabSairClick
  end
  object Label15: TLabel
    Left = 11
    Top = 4
    Width = 372
    Height = 13
    Caption = 
      'Abaixo permite a visualiza'#231#227'o separada dos produtos do estoque s' +
      'elecionado. '
  end
  object Label16: TLabel
    Left = 8
    Top = 208
    Width = 452
    Height = 13
    Caption = 
      'Abaixo permite visualizar os totais de custo e venda do produto ' +
      'gerando o lucro real do per'#237'odo.'
  end
  object Label17: TLabel
    Left = 16
    Top = 320
    Width = 528
    Height = 13
    Caption = 
      'Abaixo permite visualizar o total do caixa independente do estoq' +
      'ue juntamente com o troco e sangria do mesmo.'
  end
  object dbgLoja: TDBGrid
    Left = 13
    Top = 390
    Width = 740
    Height = 120
    Cursor = crHandPoint
    FixedColor = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
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
    TitleFont.Style = []
    OnDrawColumnCell = dbgLojaDrawColumnCell
  end
  object lbl_edtTotalLoja: TLabeledEdit
    Left = 212
    Top = 95
    Width = 122
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 119
    EditLabel.Height = 13
    EditLabel.Caption = 'Venda/Loja - A Vista'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWhite
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    EditLabel.Transparent = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object dtpDataIniLoja: TDateTimePicker
    Left = 16
    Top = 94
    Width = 83
    Height = 21
    Date = 38705.849328240700000000
    Time = 38705.849328240700000000
    TabOrder = 2
  end
  object dtpDataFimLoja: TDateTimePicker
    Left = 110
    Top = 94
    Width = 83
    Height = 21
    Date = 38705.849342500000000000
    Time = 38705.849342500000000000
    TabOrder = 3
    OnChange = dtpDataFimLojaChange
  end
  object dtpDataIniGeral: TDateTimePicker
    Left = 16
    Top = 358
    Width = 83
    Height = 21
    Date = 38705.849328240700000000
    Time = 38705.849328240700000000
    TabOrder = 4
  end
  object dtpDataFimGeral: TDateTimePicker
    Left = 118
    Top = 358
    Width = 83
    Height = 21
    Date = 38705.849342500000000000
    Time = 38705.849342500000000000
    TabOrder = 5
    OnChange = dtpDataFimGeralChange
  end
  object lbl_edtTotalCx: TLabeledEdit
    Left = 215
    Top = 359
    Width = 75
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 52
    EditLabel.Height = 13
    EditLabel.Caption = 'Total Cx:'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clNavy
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    EditLabel.Transparent = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
  end
  object lbl_edtTotalTroco: TLabeledEdit
    Left = 316
    Top = 359
    Width = 75
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 71
    EditLabel.Height = 13
    EditLabel.Caption = 'Total Troco:'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clMaroon
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    EditLabel.Transparent = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
  end
  object lbl_edtSubTotal: TLabeledEdit
    Left = 426
    Top = 359
    Width = 75
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 60
    EditLabel.Height = 13
    EditLabel.Caption = 'Sub Total:'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clNavy
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    EditLabel.Transparent = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
  end
  object lbl_edtVendaConvenio: TLabeledEdit
    Left = 212
    Top = 147
    Width = 122
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 113
    EditLabel.Height = 13
    EditLabel.Caption = 'Total em Convenios'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWhite
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    EditLabel.Transparent = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 9
  end
  object dtpDataIniConvenio: TDateTimePicker
    Left = 16
    Top = 146
    Width = 84
    Height = 21
    Date = 38749.566091018500000000
    Time = 38749.566091018500000000
    TabOrder = 10
  end
  object dtpDataFimConvenio: TDateTimePicker
    Left = 109
    Top = 146
    Width = 84
    Height = 21
    Date = 38749.566091018500000000
    Time = 38749.566091018500000000
    TabOrder = 11
    OnChange = dtpDataFimConvenioChange
  end
  object dtpDataIniProd: TDateTimePicker
    Left = 16
    Top = 251
    Width = 82
    Height = 21
    Date = 38749.761519016200000000
    Time = 38749.761519016200000000
    TabOrder = 12
  end
  object dtpDataFimProd: TDateTimePicker
    Left = 107
    Top = 251
    Width = 82
    Height = 21
    Date = 38749.761535937500000000
    Time = 38749.761535937500000000
    TabOrder = 13
    OnChange = dtpDataFimProdChange
  end
  object lbl_edtTotalCusto: TLabeledEdit
    Left = 200
    Top = 252
    Width = 75
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 70
    EditLabel.Height = 13
    EditLabel.Caption = 'Total Custo:'
    EditLabel.Color = clHighlight
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clNavy
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentColor = False
    EditLabel.ParentFont = False
    EditLabel.Transparent = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 14
  end
  object lbl_edtTotalVenda: TLabeledEdit
    Left = 293
    Top = 252
    Width = 75
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 74
    EditLabel.Height = 13
    EditLabel.Caption = 'Total Venda:'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clMaroon
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    EditLabel.Transparent = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 15
  end
  object lbl_edtTotalLucro: TLabeledEdit
    Left = 392
    Top = 251
    Width = 75
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 70
    EditLabel.Height = 13
    EditLabel.Caption = 'Total Lucro:'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clNavy
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    EditLabel.Transparent = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 16
  end
  object lbl_edtSangria: TLabeledEdit
    Left = 532
    Top = 359
    Width = 75
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 44
    EditLabel.Height = 13
    EditLabel.Caption = 'Sangria'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clMaroon
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    EditLabel.Transparent = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 17
  end
  object lbl_edtTotalPeriodo: TLabeledEdit
    Left = 650
    Top = 359
    Width = 75
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 34
    EditLabel.Height = 13
    EditLabel.Caption = 'Total:'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clNavy
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    EditLabel.Transparent = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 18
  end
  object cboEstoque: TComboBox
    Left = 14
    Top = 44
    Width = 145
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 19
  end
  object lbl_edtTotalAPagar: TLabeledEdit
    Left = 495
    Top = 251
    Width = 60
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 46
    EditLabel.Height = 13
    EditLabel.Caption = 'A Pagar'
    EditLabel.Color = clHighlight
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clMaroon
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentColor = False
    EditLabel.ParentFont = False
    EditLabel.Transparent = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 20
  end
  object lbl_edtTotalLiq: TLabeledEdit
    Left = 599
    Top = 251
    Width = 60
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 59
    EditLabel.Height = 13
    EditLabel.Caption = 'Total Liq.:'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clNavy
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    EditLabel.Transparent = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 21
  end
  object cboFuncionario: TComboBox
    Left = 187
    Top = 44
    Width = 145
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    ItemHeight = 13
    TabOrder = 22
  end
end
