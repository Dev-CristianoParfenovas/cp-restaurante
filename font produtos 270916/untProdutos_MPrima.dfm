object frmProd_MPrima: TfrmProd_MPrima
  Left = 65
  Top = 132
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Produtos/Mat'#233'ria Prima'
  ClientHeight = 562
  ClientWidth = 792
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
  object pcProdutos: TBmsXPPageControl
    Left = 0
    Top = 0
    Width = 792
    Height = 560
    ActivePage = tbsProduto
    HotTrack = True
    TabOrder = 0
    OnChange = pcProdutosChange
    object tbsProduto: TTabSheet
      Caption = 'Produto'
      object dbgProdutos: TDBGrid
        Left = 1
        Top = 388
        Width = 779
        Height = 141
        Cursor = crHandPoint
        BorderStyle = bsNone
        Color = clWhite
        DataSource = dmModule.dtsProdutos
        FixedColor = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = dbgProdutosCellClick
        OnDrawColumnCell = dbgProdutosDrawColumnCell
      end
      object pcCadProdutos: TBmsXPPageControl
        Left = 1
        Top = 42
        Width = 782
        Height = 283
        ActivePage = tbsProd
        HotTrack = True
        TabOrder = 2
        OnChange = pcCadProdutosChange
        object tbsProd: TTabSheet
          Caption = 'Dados do Produto'
          object lbl_Modalidade: TLabel
            Left = 250
            Top = 52
            Width = 89
            Height = 13
            Caption = 'Unid. de Venda'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_VctoLote: TLabel
            Left = 546
            Top = 52
            Width = 56
            Height = 13
            Caption = 'Vcto.Lote'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_Grupo: TLabel
            Left = 2
            Top = 52
            Width = 35
            Height = 13
            Caption = 'Grupo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_Subgrupo: TLabel
            Left = 129
            Top = 52
            Width = 57
            Height = 13
            Caption = 'SubGrupo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_Lote2: TLabel
            Left = 661
            Top = 52
            Width = 67
            Height = 13
            Caption = 'Vcto.Lote 2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_edtMarca: TLabeledEdit
            Left = 410
            Top = 67
            Width = 117
            Height = 21
            BevelInner = bvSpace
            BevelKind = bkFlat
            BorderStyle = bsNone
            EditLabel.Width = 36
            EditLabel.Height = 13
            EditLabel.Caption = 'Marca'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clWindowText
            EditLabel.Font.Height = -11
            EditLabel.Font.Name = 'MS Sans Serif'
            EditLabel.Font.Style = [fsBold]
            EditLabel.ParentFont = False
            TabOrder = 18
            OnEnter = lbl_edtMarcaEnter
            OnExit = lbl_edtMarcaExit
            OnKeyPress = lbl_edtMarcaKeyPress
          end
          object lbl_edtQtde: TLabeledEdit
            Left = 362
            Top = 67
            Width = 39
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
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 16
            Text = '0'
            OnEnter = lbl_edtQtdeEnter
            OnExit = lbl_edtQtdeExit
            OnKeyPress = lbl_edtQtdeKeyPress
          end
          object dtpVctoLote: TDateTimePicker
            Left = 543
            Top = 67
            Width = 113
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvSpace
            BevelKind = bkFlat
            Date = 41548.986582384260000000
            Time = 41548.986582384260000000
            TabOrder = 0
          end
          object dtpVctoLote2: TDateTimePicker
            Left = 659
            Top = 67
            Width = 113
            Height = 21
            BevelInner = bvSpace
            BevelOuter = bvSpace
            BevelKind = bkFlat
            Date = 41548.986582384260000000
            Time = 41548.986582384260000000
            TabOrder = 1
          end
          object lbl_edtVlrPacoteFardo: TLabeledEdit
            Left = 589
            Top = 19
            Width = 97
            Height = 21
            BevelInner = bvSpace
            BevelKind = bkFlat
            BorderStyle = bsNone
            EditLabel.Width = 96
            EditLabel.Height = 13
            EditLabel.Caption = 'Vlr.Pacote Fardo'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clWindowText
            EditLabel.Font.Height = -11
            EditLabel.Font.Name = 'MS Sans Serif'
            EditLabel.Font.Style = [fsBold]
            EditLabel.ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            Text = '0,00'
            OnEnter = lbl_edtVlrPacoteFardoEnter
            OnExit = lbl_edtVlrPacoteFardoExit
            OnKeyPress = lbl_edtVlrPacoteFardoKeyPress
          end
          object lbl_edtQtdePacoteFardo: TLabeledEdit
            Left = 693
            Top = 19
            Width = 78
            Height = 21
            BevelInner = bvSpace
            BevelKind = bkFlat
            BorderStyle = bsNone
            EditLabel.Width = 72
            EditLabel.Height = 13
            EditLabel.Caption = 'Qtde.Pacote'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clWindowText
            EditLabel.Font.Height = -11
            EditLabel.Font.Name = 'MS Sans Serif'
            EditLabel.Font.Style = [fsBold]
            EditLabel.ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
            Text = '0,00'
            OnEnter = lbl_edtQtdePacoteFardoEnter
            OnExit = lbl_edtVlrPacoteFardoExit
            OnKeyPress = lbl_edtVlrPacoteFardoKeyPress
          end
          object lbl_edtCusto: TLabeledEdit
            Left = 1
            Top = 19
            Width = 70
            Height = 21
            BevelInner = bvSpace
            BevelKind = bkFlat
            BorderStyle = bsNone
            EditLabel.Width = 49
            EditLabel.Height = 13
            EditLabel.Caption = 'R$Custo'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clNavy
            EditLabel.Font.Height = -11
            EditLabel.Font.Name = 'MS Sans Serif'
            EditLabel.Font.Style = [fsBold]
            EditLabel.ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            Text = '0,00'
            OnChange = lbl_edtCustoChange
            OnEnter = lbl_edtCustoEnter
            OnExit = lbl_edtCustoExit
            OnKeyPress = lbl_edtCustoKeyPress
          end
          object lbl_edtLucro: TLabeledEdit
            Left = 76
            Top = 19
            Width = 51
            Height = 21
            BevelInner = bvSpace
            BevelKind = bkFlat
            BorderStyle = bsNone
            EditLabel.Width = 30
            EditLabel.Height = 13
            EditLabel.Caption = '   (%)'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clWindowText
            EditLabel.Font.Height = -11
            EditLabel.Font.Name = 'MS Sans Serif'
            EditLabel.Font.Style = [fsBold]
            EditLabel.ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            OnEnter = lbl_edtLucroEnter
            OnExit = lbl_edtLucroExit
            OnKeyPress = lbl_edtLucroKeyPress
          end
          object lbl_edtVendaa: TLabeledEdit
            Left = 133
            Top = 19
            Width = 70
            Height = 21
            BevelInner = bvSpace
            BevelKind = bkFlat
            BorderStyle = bsNone
            EditLabel.Width = 69
            EditLabel.Height = 13
            EditLabel.Caption = 'R$Venda(A)'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clNavy
            EditLabel.Font.Height = -11
            EditLabel.Font.Name = 'MS Sans Serif'
            EditLabel.Font.Style = [fsBold]
            EditLabel.ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            Text = '0,00'
            OnChange = lbl_edtVendaaChange
            OnEnter = lbl_edtVendaaEnter
            OnExit = lbl_edtVendaaExit
            OnKeyPress = lbl_edtVendaaKeyPress
          end
          object lbl_edtVendab: TLabeledEdit
            Left = 209
            Top = 19
            Width = 70
            Height = 21
            BevelInner = bvSpace
            BevelKind = bkFlat
            BorderStyle = bsNone
            EditLabel.Width = 69
            EditLabel.Height = 13
            EditLabel.Caption = 'R$Venda(B)'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clNavy
            EditLabel.Font.Height = -11
            EditLabel.Font.Name = 'MS Sans Serif'
            EditLabel.Font.Style = [fsBold]
            EditLabel.ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
            Text = '0,00'
            OnChange = lbl_edtVendabChange
            OnEnter = lbl_edtVendabEnter
            OnExit = lbl_edtVendabExit
            OnKeyPress = lbl_edtVendabKeyPress
          end
          object lbl_edtQtdeB: TLabeledEdit
            Left = 286
            Top = 19
            Width = 43
            Height = 21
            BevelInner = bvSpace
            BevelKind = bkFlat
            BorderStyle = bsNone
            EditLabel.Width = 44
            EditLabel.Height = 13
            EditLabel.Caption = 'Qtde(B)'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clNavy
            EditLabel.Font.Height = -11
            EditLabel.Font.Name = 'MS Sans Serif'
            EditLabel.Font.Style = [fsBold]
            EditLabel.ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
            Text = '0'
            OnEnter = lbl_edtQtdeBEnter
            OnExit = lbl_edtQtdeBExit
            OnKeyPress = lbl_edtQtdeBKeyPress
          end
          object lbl_edtVendac: TLabeledEdit
            Left = 336
            Top = 19
            Width = 70
            Height = 21
            BevelInner = bvSpace
            BevelKind = bkFlat
            BorderStyle = bsNone
            EditLabel.Width = 69
            EditLabel.Height = 13
            EditLabel.Caption = 'R$Venda(C)'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clNavy
            EditLabel.Font.Height = -11
            EditLabel.Font.Name = 'MS Sans Serif'
            EditLabel.Font.Style = [fsBold]
            EditLabel.ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 7
            Text = '0,00'
            OnChange = lbl_edtVendacChange
            OnEnter = lbl_edtVendacEnter
            OnExit = lbl_edtVendacExit
            OnKeyPress = lbl_edtVendacKeyPress
          end
          object lbl_edtQtdeC: TLabeledEdit
            Left = 413
            Top = 19
            Width = 43
            Height = 21
            BevelInner = bvSpace
            BevelKind = bkFlat
            BorderStyle = bsNone
            EditLabel.Width = 44
            EditLabel.Height = 13
            EditLabel.Caption = 'Qtde(C)'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clNavy
            EditLabel.Font.Height = -11
            EditLabel.Font.Name = 'MS Sans Serif'
            EditLabel.Font.Style = [fsBold]
            EditLabel.ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 8
            Text = '0,00'
            OnEnter = lbl_edtQtdeCEnter
            OnExit = lbl_edtQtdeCExit
            OnKeyPress = lbl_edtQtdeCKeyPress
          end
          object lbl_edtVendad: TLabeledEdit
            Left = 467
            Top = 19
            Width = 70
            Height = 21
            BevelInner = bvSpace
            BevelKind = bkFlat
            BorderStyle = bsNone
            EditLabel.Width = 70
            EditLabel.Height = 13
            EditLabel.Caption = 'R$Venda(D)'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clNavy
            EditLabel.Font.Height = -11
            EditLabel.Font.Name = 'MS Sans Serif'
            EditLabel.Font.Style = [fsBold]
            EditLabel.ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clPurple
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 9
            Text = '0,00'
            OnEnter = lbl_edtVendadEnter
            OnExit = lbl_edtVendadExit
            OnKeyPress = lbl_edtVendadKeyPress
          end
          object lbl_edtLucroVenda: TLabeledEdit
            Left = 543
            Top = 19
            Width = 40
            Height = 21
            BevelInner = bvSpace
            BevelKind = bkFlat
            BorderStyle = bsNone
            EditLabel.Width = 30
            EditLabel.Height = 13
            EditLabel.Caption = '   (%)'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clWindowText
            EditLabel.Font.Height = -11
            EditLabel.Font.Name = 'MS Sans Serif'
            EditLabel.Font.Style = [fsBold]
            EditLabel.ParentFont = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clTeal
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 10
            OnEnter = lbl_edtLucroVendaEnter
            OnExit = lbl_edtLucroVendaExit
            OnKeyPress = lbl_edtLucroVendaKeyPress
          end
          object ckVctoLote: TCheckBox
            Left = 605
            Top = 52
            Width = 39
            Height = 14
            Caption = 'Sim'
            TabOrder = 13
          end
          object ckVctoLote2: TCheckBox
            Left = 731
            Top = 52
            Width = 39
            Height = 14
            Caption = 'Sim'
            TabOrder = 14
          end
          object pcProdET: TBmsXPPageControl
            Left = 250
            Top = 91
            Width = 524
            Height = 156
            ActivePage = tbsTrib
            HotTrack = True
            TabOrder = 15
            object tbsEstoque: TTabSheet
              Caption = 'Informa'#231#245'es de Estoque'
              object Label3: TLabel
                Left = 3
                Top = 1
                Width = 47
                Height = 13
                Caption = 'Estoque'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
              end
              object lbl_InfoPrat: TLabel
                Left = 226
                Top = 1
                Width = 140
                Height = 13
                Caption = 'Informa'#231#227'o da Prateleira'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
              end
              object Label2: TLabel
                Left = 408
                Top = 1
                Width = 86
                Height = 13
                Caption = 'Inf. do Produto'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold, fsUnderline]
                ParentFont = False
              end
              object Shape1: TShape
                Left = 220
                Top = 2
                Width = 1
                Height = 122
              end
              object Shape2: TShape
                Left = 385
                Top = 2
                Width = 1
                Height = 122
              end
              object lbl_edtEstoqgeral: TLabeledEdit
                Left = 2
                Top = 34
                Width = 64
                Height = 21
                BevelInner = bvSpace
                BevelKind = bkFlat
                BorderStyle = bsNone
                EditLabel.Width = 62
                EditLabel.Height = 13
                EditLabel.Caption = 'Qtde.Geral'
                EditLabel.Font.Charset = DEFAULT_CHARSET
                EditLabel.Font.Color = clNavy
                EditLabel.Font.Height = -11
                EditLabel.Font.Name = 'MS Sans Serif'
                EditLabel.Font.Style = [fsBold]
                EditLabel.ParentFont = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                ReadOnly = True
                TabOrder = 9
              end
              object lbl_edtEstMin: TLabeledEdit
                Left = 71
                Top = 34
                Width = 70
                Height = 21
                BevelInner = bvSpace
                BevelKind = bkFlat
                BorderStyle = bsNone
                EditLabel.Width = 73
                EditLabel.Height = 13
                EditLabel.Caption = 'Qtde.M'#237'nima'
                EditLabel.Font.Charset = DEFAULT_CHARSET
                EditLabel.Font.Color = clNavy
                EditLabel.Font.Height = -11
                EditLabel.Font.Name = 'MS Sans Serif'
                EditLabel.Font.Style = [fsBold]
                EditLabel.ParentFont = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                ReadOnly = True
                TabOrder = 8
              end
              object lbl_edtVlrestoq: TLabeledEdit
                Left = 146
                Top = 34
                Width = 64
                Height = 21
                BevelInner = bvSpace
                BevelKind = bkFlat
                BorderStyle = bsNone
                EditLabel.Width = 63
                EditLabel.Height = 13
                EditLabel.Caption = 'R$Estoque'
                EditLabel.Font.Charset = DEFAULT_CHARSET
                EditLabel.Font.Color = clNavy
                EditLabel.Font.Height = -11
                EditLabel.Font.Name = 'MS Sans Serif'
                EditLabel.Font.Style = [fsBold]
                EditLabel.ParentFont = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                ReadOnly = True
                TabOrder = 7
              end
              object ckDiminuirEstoque: TCheckBox
                Left = 2
                Top = 59
                Width = 97
                Height = 17
                Caption = 'Alterar Estoque'
                TabOrder = 10
                OnClick = ckDiminuirEstoqueCheck
              end
              object ckAcrescentarEstoq: TCheckBox
                Left = 98
                Top = 59
                Width = 119
                Height = 17
                Caption = 'Acrescentar Estoque'
                TabOrder = 11
                OnClick = ckAcrescentarEstoqCheck
              end
              object lbl_edtQtdeEstoque: TLabeledEdit
                Left = 2
                Top = 91
                Width = 64
                Height = 21
                BevelInner = bvSpace
                BevelKind = bkFlat
                BorderStyle = bsNone
                EditLabel.Width = 28
                EditLabel.Height = 13
                EditLabel.Caption = 'Qtde'
                EditLabel.Font.Charset = DEFAULT_CHARSET
                EditLabel.Font.Color = clNavy
                EditLabel.Font.Height = -11
                EditLabel.Font.Name = 'MS Sans Serif'
                EditLabel.Font.Style = [fsBold]
                EditLabel.ParentFont = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 4
                OnChange = lbl_edtQtdeEstoqueChange
                OnEnter = lbl_edtQtdeEstoqueEnter
                OnExit = lbl_edtQtdeEstoqueExit
                OnKeyPress = lbl_edtQtdeEstoqueKeyPress
              end
              object lbl_edtEstoqueM: TLabeledEdit
                Left = 71
                Top = 91
                Width = 70
                Height = 21
                BevelInner = bvSpace
                BevelKind = bkFlat
                BorderStyle = bsNone
                EditLabel.Width = 56
                EditLabel.Height = 13
                EditLabel.Caption = 'Qtde.Min.'
                EditLabel.Font.Charset = DEFAULT_CHARSET
                EditLabel.Font.Color = clNavy
                EditLabel.Font.Height = -11
                EditLabel.Font.Name = 'MS Sans Serif'
                EditLabel.Font.Style = [fsBold]
                EditLabel.ParentFont = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
                OnChange = lbl_edtEstoqueMChange
                OnEnter = lbl_edtEstoqueMEnter
                OnExit = lbl_edtEstoqueMExit
                OnKeyPress = lbl_edtEstoqueMKeyPress
              end
              object lbl_edtVlrEstoque: TLabeledEdit
                Left = 146
                Top = 91
                Width = 64
                Height = 21
                BevelInner = bvSpace
                BevelKind = bkFlat
                BorderStyle = bsNone
                EditLabel.Width = 63
                EditLabel.Height = 13
                EditLabel.Caption = 'R$Estoque'
                EditLabel.Font.Charset = DEFAULT_CHARSET
                EditLabel.Font.Color = clNavy
                EditLabel.Font.Height = -11
                EditLabel.Font.Name = 'MS Sans Serif'
                EditLabel.Font.Style = [fsBold]
                EditLabel.ParentFont = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                OnChange = lbl_edtVlrEstoqueChange
                OnEnter = lbl_edtVlrEstoqueEnter
                OnExit = lbl_edtVlrEstoqueExit
                OnKeyPress = lbl_edtEstoqueMKeyPress
              end
              object lbl_edtInfoQP: TLabeledEdit
                Left = 229
                Top = 34
                Width = 61
                Height = 21
                BevelInner = bvSpace
                BevelKind = bkFlat
                BorderStyle = bsNone
                EditLabel.Width = 59
                EditLabel.Height = 13
                EditLabel.Caption = 'Qtde.Prat.'
                EditLabel.Font.Charset = DEFAULT_CHARSET
                EditLabel.Font.Color = clNavy
                EditLabel.Font.Height = -11
                EditLabel.Font.Name = 'MS Sans Serif'
                EditLabel.Font.Style = [fsBold]
                EditLabel.ParentFont = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                ReadOnly = True
                TabOrder = 6
                OnExit = lbl_edtInfoQPExit
              end
              object lbl_edtInfoMP: TLabeledEdit
                Left = 298
                Top = 34
                Width = 71
                Height = 21
                BevelInner = bvSpace
                BevelKind = bkFlat
                BorderStyle = bsNone
                EditLabel.Width = 73
                EditLabel.Height = 13
                EditLabel.Caption = 'M'#237'nimo Prat.'
                EditLabel.Font.Charset = DEFAULT_CHARSET
                EditLabel.Font.Color = clNavy
                EditLabel.Font.Height = -11
                EditLabel.Font.Name = 'MS Sans Serif'
                EditLabel.Font.Style = [fsBold]
                EditLabel.ParentFont = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                ReadOnly = True
                TabOrder = 5
                OnExit = lbl_edtInfoMPExit
              end
              object ckAcrescPrateleira: TCheckBox
                Left = 227
                Top = 59
                Width = 143
                Height = 17
                Caption = 'Acrescentar/Alterar Qtde.'
                TabOrder = 12
              end
              object lbl_edtQtdePrat: TLabeledEdit
                Left = 229
                Top = 91
                Width = 61
                Height = 21
                BevelInner = bvSpace
                BevelKind = bkFlat
                BorderStyle = bsNone
                EditLabel.Width = 32
                EditLabel.Height = 13
                EditLabel.Caption = 'Qtde.'
                EditLabel.Font.Charset = DEFAULT_CHARSET
                EditLabel.Font.Color = clNavy
                EditLabel.Font.Height = -11
                EditLabel.Font.Name = 'MS Sans Serif'
                EditLabel.Font.Style = [fsBold]
                EditLabel.ParentFont = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                OnEnter = lbl_edtQtdePratEnter
                OnExit = lbl_edtQtdePratExit
                OnKeyPress = lbl_edtQtdePratKeyPress
              end
              object lbl_edtMinimoPrat: TLabeledEdit
                Left = 298
                Top = 91
                Width = 71
                Height = 21
                BevelInner = bvSpace
                BevelKind = bkFlat
                BorderStyle = bsNone
                EditLabel.Width = 52
                EditLabel.Height = 13
                EditLabel.Caption = 'Min.Prat.'
                EditLabel.Font.Charset = DEFAULT_CHARSET
                EditLabel.Font.Color = clNavy
                EditLabel.Font.Height = -11
                EditLabel.Font.Name = 'MS Sans Serif'
                EditLabel.Font.Style = [fsBold]
                EditLabel.ParentFont = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                OnEnter = lbl_edtMinimoPratEnter
                OnExit = lbl_edtQtdePratExit
                OnKeyPress = lbl_edtQtdePratKeyPress
              end
              object lbl_edtDataEntrada: TLabeledEdit
                Left = 400
                Top = 34
                Width = 113
                Height = 22
                BevelInner = bvSpace
                BevelKind = bkFlat
                BorderStyle = bsNone
                Color = clInfoBk
                EditLabel.Width = 115
                EditLabel.Height = 13
                EditLabel.Caption = 'Data '#218'ltima Entrada'
                EditLabel.Font.Charset = DEFAULT_CHARSET
                EditLabel.Font.Color = clNavy
                EditLabel.Font.Height = -11
                EditLabel.Font.Name = 'MS Sans Serif'
                EditLabel.Font.Style = [fsBold]
                EditLabel.ParentFont = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                ReadOnly = True
                TabOrder = 13
                OnExit = lbl_edtInfoMPExit
              end
              object lbl_edtQtdeEntrada: TLabeledEdit
                Left = 400
                Top = 83
                Width = 113
                Height = 22
                BevelInner = bvSpace
                BevelKind = bkFlat
                BorderStyle = bsNone
                Color = clInfoBk
                EditLabel.Width = 116
                EditLabel.Height = 13
                EditLabel.Caption = 'Qtde.da '#218'ltima Entr.'
                EditLabel.Font.Charset = DEFAULT_CHARSET
                EditLabel.Font.Color = clNavy
                EditLabel.Font.Height = -11
                EditLabel.Font.Name = 'MS Sans Serif'
                EditLabel.Font.Style = [fsBold]
                EditLabel.ParentFont = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                ReadOnly = True
                TabOrder = 14
                OnExit = lbl_edtInfoMPExit
              end
            end
            object tbsTrib: TTabSheet
              Caption = 'Tributa'#231#227'o'
              ImageIndex = 1
              object lbl_CSOSN: TLabel
                Left = 5
                Top = 42
                Width = 43
                Height = 13
                Caption = 'CSOSN'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lbl_ST: TLabel
                Left = 196
                Top = 80
                Width = 17
                Height = 13
                Caption = 'ST'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lbl_CST: TLabel
                Left = 5
                Top = 7
                Width = 25
                Height = 13
                Caption = 'CST'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label4: TLabel
                Left = 5
                Top = 80
                Width = 33
                Height = 13
                Caption = 'CFOP'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object lbl_edtClassFiscal: TLabeledEdit
                Left = 323
                Top = 16
                Width = 86
                Height = 21
                BevelInner = bvSpace
                BevelKind = bkFlat
                BorderStyle = bsNone
                EditLabel.Width = 51
                EditLabel.Height = 13
                EditLabel.Caption = 'NCM/SH'
                EditLabel.Font.Charset = DEFAULT_CHARSET
                EditLabel.Font.Color = clWindowText
                EditLabel.Font.Height = -11
                EditLabel.Font.Name = 'MS Sans Serif'
                EditLabel.Font.Style = [fsBold]
                EditLabel.ParentFont = False
                TabOrder = 0
                OnEnter = lbl_edtClassFiscalEnter
                OnExit = lbl_edtClassFiscalExit
              end
              object rbNacional: TRadioButton
                Left = 416
                Top = 11
                Width = 73
                Height = 17
                Caption = 'Nacional'
                TabOrder = 1
              end
              object rbImportado: TRadioButton
                Left = 416
                Top = 28
                Width = 71
                Height = 17
                Caption = 'Importado'
                TabOrder = 2
              end
              object lbl_edtCOFINS: TLabeledEdit
                Left = 457
                Top = 95
                Width = 58
                Height = 21
                BevelInner = bvSpace
                BevelKind = bkFlat
                BorderStyle = bsNone
                EditLabel.Width = 46
                EditLabel.Height = 13
                EditLabel.Caption = 'COFINS'
                EditLabel.Font.Charset = DEFAULT_CHARSET
                EditLabel.Font.Color = clWindowText
                EditLabel.Font.Height = -11
                EditLabel.Font.Name = 'MS Sans Serif'
                EditLabel.Font.Style = [fsBold]
                EditLabel.ParentFont = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clTeal
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 3
                OnEnter = lbl_edtCOFINSEnter
                OnExit = lbl_edtCOFINSExit
              end
              object lbl_edtPIS: TLabeledEdit
                Left = 393
                Top = 95
                Width = 58
                Height = 21
                BevelInner = bvSpace
                BevelKind = bkFlat
                BorderStyle = bsNone
                EditLabel.Width = 21
                EditLabel.Height = 13
                EditLabel.Caption = 'PIS'
                EditLabel.Font.Charset = DEFAULT_CHARSET
                EditLabel.Font.Color = clWindowText
                EditLabel.Font.Height = -11
                EditLabel.Font.Name = 'MS Sans Serif'
                EditLabel.Font.Style = [fsBold]
                EditLabel.ParentFont = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clTeal
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 4
                OnEnter = lbl_edtPISEnter
                OnExit = lbl_edtPISExit
              end
              object lbl_edtAliquota: TLabeledEdit
                Left = 325
                Top = 56
                Width = 56
                Height = 21
                BevelInner = bvSpace
                BevelKind = bkFlat
                BorderStyle = bsNone
                EditLabel.Width = 47
                EditLabel.Height = 13
                EditLabel.Caption = 'Aliquota'
                EditLabel.Font.Charset = DEFAULT_CHARSET
                EditLabel.Font.Color = clWindowText
                EditLabel.Font.Height = -11
                EditLabel.Font.Name = 'MS Sans Serif'
                EditLabel.Font.Style = [fsBold]
                EditLabel.ParentFont = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clTeal
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 5
                OnEnter = lbl_edtAliquotaEnter
                OnExit = lbl_edtAliquotaExit
                OnKeyPress = lbl_edtAliquotaKeyPress
              end
              object lbl_edtICMS: TLabeledEdit
                Left = 261
                Top = 95
                Width = 58
                Height = 21
                BevelInner = bvSpace
                BevelKind = bkFlat
                BorderStyle = bsNone
                EditLabel.Width = 31
                EditLabel.Height = 13
                EditLabel.Caption = 'ICMS'
                EditLabel.Font.Charset = DEFAULT_CHARSET
                EditLabel.Font.Color = clWindowText
                EditLabel.Font.Height = -11
                EditLabel.Font.Name = 'MS Sans Serif'
                EditLabel.Font.Style = [fsBold]
                EditLabel.ParentFont = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clTeal
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 6
                OnEnter = lbl_edtICMSEnter
                OnExit = lbl_edtICMSExit
                OnKeyPress = lbl_edtAliquotaKeyPress
              end
              object lbl_edtIPI: TLabeledEdit
                Left = 329
                Top = 95
                Width = 58
                Height = 21
                BevelInner = bvSpace
                BevelKind = bkFlat
                BorderStyle = bsNone
                EditLabel.Width = 17
                EditLabel.Height = 13
                EditLabel.Caption = 'IPI'
                EditLabel.Font.Charset = DEFAULT_CHARSET
                EditLabel.Font.Color = clWindowText
                EditLabel.Font.Height = -11
                EditLabel.Font.Name = 'MS Sans Serif'
                EditLabel.Font.Style = [fsBold]
                EditLabel.ParentFont = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clTeal
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 7
                OnEnter = lbl_edtIPIEnter
                OnExit = lbl_edtIPIExit
              end
              object lbl_edtNumLote: TLabeledEdit
                Left = 391
                Top = 56
                Width = 58
                Height = 21
                BevelInner = bvSpace
                BevelKind = bkFlat
                BorderStyle = bsNone
                EditLabel.Width = 26
                EditLabel.Height = 13
                EditLabel.Caption = 'Lote'
                EditLabel.Font.Charset = DEFAULT_CHARSET
                EditLabel.Font.Color = clWindowText
                EditLabel.Font.Height = -11
                EditLabel.Font.Name = 'MS Sans Serif'
                EditLabel.Font.Style = [fsBold]
                EditLabel.ParentFont = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clTeal
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 8
                OnEnter = lbl_edtNumLoteEnter
                OnExit = lbl_edtNumLoteExit
                OnKeyPress = lbl_edtAliquotaKeyPress
              end
              object cboCST: TAdvOfficeComboBox
                Left = 1
                Top = 19
                Width = 304
                Height = 19
                Button.Color = 16572875
                Button.ColorTo = 14722429
                Button.ColorHot = 14483455
                Button.ColorHotTo = 6013175
                Button.ColorDown = 557032
                Button.ColorDownTo = 8182519
                Button.Width = 12
                DropDownCount = 8
                BorderColor = clNone
                BorderHotColor = clBlack
                SelectionColor = 14722429
                SelectionTextColor = clWhite
                Version = '1.5.0.1'
                OnExit = cboCSTExit
                OnEnter = cboCSTEnter
                ItemIndex = -1
                ItemHeight = 14
                TabOrder = 9
              end
              object cboCSOSN: TAdvOfficeComboBox
                Left = 1
                Top = 53
                Width = 305
                Height = 19
                Button.Color = 16572875
                Button.ColorTo = 14722429
                Button.ColorHot = 14483455
                Button.ColorHotTo = 6013175
                Button.ColorDown = 557032
                Button.ColorDownTo = 8182519
                Button.Width = 12
                DropDownCount = 8
                BorderColor = clNone
                BorderHotColor = clBlack
                SelectionColor = 14722429
                SelectionTextColor = clWhite
                Version = '1.5.0.1'
                OnExit = cboCSOSNExit
                OnEnter = cboCSOSNEnter
                ItemIndex = -1
                ItemHeight = 14
                TabOrder = 10
              end
              object cboST: TAdvOfficeComboBox
                Left = 198
                Top = 96
                Width = 56
                Height = 19
                Button.Color = 16572875
                Button.ColorTo = 14722429
                Button.ColorHot = 14483455
                Button.ColorHotTo = 6013175
                Button.ColorDown = 557032
                Button.ColorDownTo = 8182519
                Button.Width = 12
                DropDownCount = 8
                BorderColor = clNone
                BorderHotColor = clBlack
                SelectionColor = 14722429
                SelectionTextColor = clWhite
                Version = '1.5.0.1'
                OnExit = cboSTExit
                OnEnter = cboSTEnter
                ItemIndex = -1
                ItemHeight = 14
                TabOrder = 11
              end
              object cboCFOP: TAdvOfficeComboBox
                Left = 1
                Top = 96
                Width = 182
                Height = 19
                Button.Color = 16572875
                Button.ColorTo = 14722429
                Button.ColorHot = 14483455
                Button.ColorHotTo = 6013175
                Button.ColorDown = 557032
                Button.ColorDownTo = 8182519
                Button.Width = 12
                DropDownCount = 8
                BorderColor = clNone
                BorderHotColor = clBlack
                SelectionColor = 14722429
                SelectionTextColor = clWhite
                Version = '1.5.0.1'
                OnExit = cboCFOPExit
                OnEnter = cboCFOPEnter
                ItemIndex = -1
                ItemHeight = 14
                TabOrder = 12
              end
            end
            object TabSheet2: TTabSheet
              Caption = 'C'#225'lculo M'#233'dio'
              ImageIndex = 2
              object lbl_edtCustoFormula: TLabeledEdit
                Left = 13
                Top = 41
                Width = 64
                Height = 21
                BevelInner = bvSpace
                BevelKind = bkFlat
                BorderStyle = bsNone
                Color = clInfoBk
                EditLabel.Width = 67
                EditLabel.Height = 13
                EditLabel.Caption = 'Custo Novo'
                EditLabel.Font.Charset = DEFAULT_CHARSET
                EditLabel.Font.Color = clWindowText
                EditLabel.Font.Height = -11
                EditLabel.Font.Name = 'MS Sans Serif'
                EditLabel.Font.Style = [fsBold]
                EditLabel.ParentFont = False
                TabOrder = 0
                Text = '0,00'
                OnExit = lbl_edtCustoFormulaExit
                OnKeyPress = lbl_edtCustoFormulaKeyPress
              end
              object lbl_edtResultado: TLabeledEdit
                Left = 13
                Top = 81
                Width = 64
                Height = 21
                BevelInner = bvSpace
                BevelKind = bkFlat
                BorderStyle = bsNone
                Color = clInfoBk
                EditLabel.Width = 57
                EditLabel.Height = 13
                EditLabel.Caption = '(R$)Custo'
                EditLabel.Font.Charset = DEFAULT_CHARSET
                EditLabel.Font.Color = clWindowText
                EditLabel.Font.Height = -11
                EditLabel.Font.Name = 'MS Sans Serif'
                EditLabel.Font.Style = [fsBold]
                EditLabel.ParentFont = False
                TabOrder = 1
                Text = '0,00'
                OnExit = lbl_edtResultadoExit
                OnKeyPress = lbl_edtResultadoKeyPress
              end
              object lbl_edtQtdeFormula: TLabeledEdit
                Left = 103
                Top = 41
                Width = 64
                Height = 21
                BevelInner = bvSpace
                BevelKind = bkFlat
                BorderStyle = bsNone
                Color = clInfoBk
                EditLabel.Width = 62
                EditLabel.Height = 13
                EditLabel.Caption = 'Qtde.Nova'
                EditLabel.Font.Charset = DEFAULT_CHARSET
                EditLabel.Font.Color = clWindowText
                EditLabel.Font.Height = -11
                EditLabel.Font.Name = 'MS Sans Serif'
                EditLabel.Font.Style = [fsBold]
                EditLabel.ParentFont = False
                TabOrder = 2
                Text = '0,00'
                OnExit = lbl_edtQtdeFormulaExit
                OnKeyPress = lbl_edtQtdeFormulaKeyPress
              end
              object lbl_edtVendaFormula: TLabeledEdit
                Left = 103
                Top = 81
                Width = 64
                Height = 21
                BevelInner = bvSpace
                BevelKind = bkFlat
                BorderStyle = bsNone
                Color = clInfoBk
                EditLabel.Width = 61
                EditLabel.Height = 13
                EditLabel.Caption = '(R$)Venda'
                EditLabel.Font.Charset = DEFAULT_CHARSET
                EditLabel.Font.Color = clWindowText
                EditLabel.Font.Height = -11
                EditLabel.Font.Name = 'MS Sans Serif'
                EditLabel.Font.Style = [fsBold]
                EditLabel.ParentFont = False
                TabOrder = 3
                Text = '0,00'
                OnKeyPress = lbl_edtVendaFormulaKeyPress
              end
              object btFormula: TButton
                Left = 172
                Top = 38
                Width = 82
                Height = 24
                Caption = 'Aplicar F'#243'rmula'
                TabOrder = 4
                OnClick = btFormulaClick
              end
              object btLimparFormula: TButton
                Left = 172
                Top = 78
                Width = 82
                Height = 24
                Caption = 'Limpar'
                TabOrder = 5
                OnClick = btLimparFormulaClick
              end
            end
          end
          object FlipView1: TFlipView
            Left = 0
            Top = 93
            Width = 247
            Height = 164
            AdaptiveColors = True
            Caption = 'Local de Estoque'
            CollapseGlyph.Data = {
              7A010000424D7A01000000000000360000002800000009000000090000000100
              2000000000004401000000000000000000000000000000000000604830406048
              30FF604830FF604830FF604830FF604830FF604830FF604830FF60483040C0A8
              90FFFFF0E0FFE0D0C0FFE0C8B0FFE0C0B0FFD0B8A0FFD0B8A0FFD0B8A0FF6048
              30FFC0A890FFFFF8F0FFFFF0E0FFF0E0E0FFF0D8D0FFF0D8C0FFF0D0C0FFD0B8
              A0FF604830FFC0A890FFFFF8FFFFFFF8F0FFFFF0E0FFF0E0E0FFF0D8D0FFF0D0
              C0FFD0B8A0FF604830FFC0A8A0FFFFFFFFFF604830FF604830FF604830FF6048
              30FF604830FFE0C0B0FF604830FFC0A8A0FFFFFFFFFFFFFFFFFFFFF8FFFFFFF0
              F0FFFFF0E0FFF0E8E0FFE0C0B0FF604830FFC0B0A0FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF8FFFFFFF0F0FFFFF0E0FFE0D0C0FF604830FFC0B0A0FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFF8FFFFFFF0F0FFF0F0E0FF604830FFC0B0A040C0B0
              A0FFC0B0A0FFC0A8A0FFC0A8A0FFC0A8A0FFC0A890FFC0A090FF60483040}
            ExpandGlyph.Data = {
              7A010000424D7A01000000000000360000002800000009000000090000000100
              2000000000004401000000000000000000000000000000000000604830406048
              30FF604830FF604830FF604830FF604830FF604830FF604830FF60483040C0A8
              90FFFFF0E0FFE0D0C0FFE0C8B0FFE0C0B0FFD0B8A0FFD0B8A0FFD0B8A0FF6048
              30FFC0A890FFFFF8F0FFFFF0E0FFF0E0E0FF604830FFF0D8C0FFF0D0C0FFD0B8
              A0FF604830FFC0A890FFFFF8FFFFFFF8F0FFFFF0E0FF604830FFF0D8D0FFF0D0
              C0FFD0B8A0FF604830FFC0A8A0FFFFFFFFFF604830FF604830FF604830FF6048
              30FF604830FFE0C0B0FF604830FFC0A8A0FFFFFFFFFFFFFFFFFFFFF8FFFF6048
              30FFFFF0E0FFF0E8E0FFE0C0B0FF604830FFC0B0A0FFFFFFFFFFFFFFFFFFFFFF
              FFFF604830FFFFF0F0FFFFF0E0FFE0D0C0FF604830FFC0B0A0FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFF8FFFFFFF0F0FFF0F0E0FF604830FFC0B0A040C0B0
              A0FFC0B0A0FFC0A8A0FFC0A8A0FFC0A8A0FFC0A890FFC0A090FF60483040}
            FlipKind = fkHeaderAndButton
            HeaderColor = clBtnFace
            HeaderHeight = 18
            HeaderStyle = hsSolid
            HideGlyphs = False
            Margins.Bottom = 4
            Margins.Left = 9
            Margins.Right = 8
            Margins.Top = 5
            ParentColor = False
            TransparentButtons = False
            object shapeCodBarras: TShape
              Left = 12
              Top = 44
              Width = 211
              Height = 39
              Brush.Color = clGradientActiveCaption
              Pen.Color = clGradientActiveCaption
            end
            object imgCodigoBarras: TImage
              Left = 16
              Top = 47
              Width = 204
              Height = 32
              Center = True
            end
            object lbl_LocalEstoq: TLabel
              Left = 58
              Top = 87
              Width = 100
              Height = 13
              Caption = 'Local de Estoque'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label1: TLabel
              Left = 74
              Top = 26
              Width = 63
              Height = 13
              Caption = 'C'#243'd.Barras'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object ListLocalEstocagem: TCheckListBox
              Left = 16
              Top = 100
              Width = 203
              Height = 56
              BevelInner = bvSpace
              BevelKind = bkFlat
              BorderStyle = bsNone
              ItemHeight = 13
              TabOrder = 0
            end
          end
          object cboGrupo: TAdvOfficeComboBox
            Left = 3
            Top = 67
            Width = 120
            Height = 19
            Button.Color = 16572875
            Button.ColorTo = 14722429
            Button.ColorHot = 14483455
            Button.ColorHotTo = 6013175
            Button.ColorDown = 557032
            Button.ColorDownTo = 8182519
            Button.Width = 12
            DropDownCount = 8
            BorderColor = clNone
            BorderHotColor = clBlack
            SelectionColor = 14722429
            SelectionTextColor = clWhite
            Version = '1.5.0.1'
            OnExit = cboGrupoExit
            OnEnter = cboGrupoEnter
            OnChange = cboGrupoChange
            ItemIndex = -1
            ItemHeight = 14
            TabOrder = 19
          end
          object cboSubGrupo: TAdvOfficeComboBox
            Left = 130
            Top = 67
            Width = 117
            Height = 19
            Button.Color = 16572875
            Button.ColorTo = 14722429
            Button.ColorHot = 14483455
            Button.ColorHotTo = 6013175
            Button.ColorDown = 557032
            Button.ColorDownTo = 8182519
            Button.Width = 12
            DropDownCount = 8
            BorderColor = clNone
            BorderHotColor = clBlack
            SelectionColor = 14722429
            SelectionTextColor = clWhite
            Version = '1.5.0.1'
            OnExit = cboSubgrupoExit
            OnEnter = cboSubgrupoEnter
            ItemIndex = -1
            ItemHeight = 14
            TabOrder = 20
          end
          object cboModalidade: TAdvOfficeComboBox
            Left = 252
            Top = 68
            Width = 105
            Height = 19
            Button.Color = 16572875
            Button.ColorTo = 14722429
            Button.ColorHot = 14483455
            Button.ColorHotTo = 6013175
            Button.ColorDown = 557032
            Button.ColorDownTo = 8182519
            Button.Width = 12
            DropDownCount = 8
            BorderColor = clNone
            BorderHotColor = clBlack
            SelectionColor = 14722429
            SelectionTextColor = clWhite
            Version = '1.5.0.1'
            OnExit = cboModalidadeExit
            OnEnter = cboModalidadeEnter
            OnKeyPress = cboModalidadeKeyPress
            ItemIndex = -1
            ItemHeight = 14
            TabOrder = 21
          end
        end
        object tbsFornecedores: TTabSheet
          Caption = 'Fornecedores'
          ImageIndex = 2
          object lbl_Fornecedores: TLabel
            Left = 7
            Top = 10
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
            Left = 7
            Top = 55
            Width = 76
            Height = 13
            Caption = 'Fornecedor 2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_Fornecedores3: TLabel
            Left = 7
            Top = 100
            Width = 76
            Height = 13
            Caption = 'Fornecedor 3'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_Fornecedores4: TLabel
            Left = 7
            Top = 152
            Width = 76
            Height = 13
            Caption = 'Fornecedor 4'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_Fornecedores5: TLabel
            Left = 270
            Top = 10
            Width = 76
            Height = 13
            Caption = 'Fornecedor 5'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_Fornecedores6: TLabel
            Left = 270
            Top = 54
            Width = 76
            Height = 13
            Caption = 'Fornecedor 6'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_Fornecedores7: TLabel
            Left = 270
            Top = 100
            Width = 76
            Height = 13
            Caption = 'Fornecedor 7'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_Fornecedores8: TLabel
            Left = 270
            Top = 151
            Width = 76
            Height = 13
            Caption = 'Fornecedor 8'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_edtVlrCompraF1: TLabeledEdit
            Left = 169
            Top = 25
            Width = 90
            Height = 21
            BevelInner = bvSpace
            BevelKind = bkFlat
            BorderStyle = bsNone
            EditLabel.Width = 62
            EditLabel.Height = 13
            EditLabel.Caption = 'Vlr.Compra'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clWindowText
            EditLabel.Font.Height = -11
            EditLabel.Font.Name = 'MS Sans Serif'
            EditLabel.Font.Style = [fsBold]
            EditLabel.ParentFont = False
            TabOrder = 0
            Text = '0,00'
            OnEnter = lbl_edtVlrCompraF1Enter
            OnExit = lbl_edtVlrCompraF1Exit
          end
          object lbl_edtVlrCompraF2: TLabeledEdit
            Left = 169
            Top = 70
            Width = 90
            Height = 21
            BevelInner = bvSpace
            BevelKind = bkFlat
            BorderStyle = bsNone
            EditLabel.Width = 62
            EditLabel.Height = 13
            EditLabel.Caption = 'Vlr.Compra'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clWindowText
            EditLabel.Font.Height = -11
            EditLabel.Font.Name = 'MS Sans Serif'
            EditLabel.Font.Style = [fsBold]
            EditLabel.ParentFont = False
            TabOrder = 1
            Text = '0,00'
            OnEnter = lbl_edtVlrCompraF2Enter
            OnExit = lbl_edtVlrCompraF2Exit
          end
          object lbl_edtVlrCompraF3: TLabeledEdit
            Left = 170
            Top = 116
            Width = 90
            Height = 21
            BevelInner = bvSpace
            BevelKind = bkFlat
            BorderStyle = bsNone
            EditLabel.Width = 62
            EditLabel.Height = 13
            EditLabel.Caption = 'Vlr.Compra'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clWindowText
            EditLabel.Font.Height = -11
            EditLabel.Font.Name = 'MS Sans Serif'
            EditLabel.Font.Style = [fsBold]
            EditLabel.ParentFont = False
            TabOrder = 2
            Text = '0,00'
            OnEnter = lbl_edtVlrCompraF3Enter
            OnExit = lbl_edtVlrCompraF3Exit
          end
          object lbl_edtVlrCompraF4: TLabeledEdit
            Left = 170
            Top = 167
            Width = 90
            Height = 21
            BevelInner = bvSpace
            BevelKind = bkFlat
            BorderStyle = bsNone
            EditLabel.Width = 62
            EditLabel.Height = 13
            EditLabel.Caption = 'Vlr.Compra'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clWindowText
            EditLabel.Font.Height = -11
            EditLabel.Font.Name = 'MS Sans Serif'
            EditLabel.Font.Style = [fsBold]
            EditLabel.ParentFont = False
            TabOrder = 3
            Text = '0,00'
            OnEnter = lbl_edtVlrCompraF4Enter
            OnExit = lbl_edtVlrCompraF4Exit
          end
          object lbl_edtVlrCompraF5: TLabeledEdit
            Left = 433
            Top = 25
            Width = 90
            Height = 21
            BevelInner = bvSpace
            BevelKind = bkFlat
            BorderStyle = bsNone
            EditLabel.Width = 62
            EditLabel.Height = 13
            EditLabel.Caption = 'Vlr.Compra'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clWindowText
            EditLabel.Font.Height = -11
            EditLabel.Font.Name = 'MS Sans Serif'
            EditLabel.Font.Style = [fsBold]
            EditLabel.ParentFont = False
            TabOrder = 4
            Text = '0,00'
            OnEnter = lbl_edtVlrCompraF5Enter
            OnExit = lbl_edtVlrCompraF5Exit
          end
          object lbl_edtVlrCompraF6: TLabeledEdit
            Left = 433
            Top = 69
            Width = 90
            Height = 21
            BevelInner = bvSpace
            BevelKind = bkFlat
            BorderStyle = bsNone
            EditLabel.Width = 62
            EditLabel.Height = 13
            EditLabel.Caption = 'Vlr.Compra'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clWindowText
            EditLabel.Font.Height = -11
            EditLabel.Font.Name = 'MS Sans Serif'
            EditLabel.Font.Style = [fsBold]
            EditLabel.ParentFont = False
            TabOrder = 5
            Text = '0,00'
            OnEnter = lbl_edtVlrCompraF6Enter
            OnExit = lbl_edtVlrCompraF6Exit
          end
          object lbl_edtVlrCompraF7: TLabeledEdit
            Left = 433
            Top = 115
            Width = 90
            Height = 21
            BevelInner = bvSpace
            BevelKind = bkFlat
            BorderStyle = bsNone
            EditLabel.Width = 62
            EditLabel.Height = 13
            EditLabel.Caption = 'Vlr.Compra'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clWindowText
            EditLabel.Font.Height = -11
            EditLabel.Font.Name = 'MS Sans Serif'
            EditLabel.Font.Style = [fsBold]
            EditLabel.ParentFont = False
            TabOrder = 6
            Text = '0,00'
            OnEnter = lbl_edtVlrCompraF7Enter
            OnExit = lbl_edtVlrCompraF7Exit
          end
          object lbl_edtVlrCompraF8: TLabeledEdit
            Left = 433
            Top = 167
            Width = 90
            Height = 21
            BevelInner = bvSpace
            BevelKind = bkFlat
            BorderStyle = bsNone
            EditLabel.Width = 62
            EditLabel.Height = 13
            EditLabel.Caption = 'Vlr.Compra'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clWindowText
            EditLabel.Font.Height = -11
            EditLabel.Font.Name = 'MS Sans Serif'
            EditLabel.Font.Style = [fsBold]
            EditLabel.ParentFont = False
            TabOrder = 7
            Text = '0,00'
            OnEnter = lbl_edtVlrCompraF8Enter
            OnExit = lbl_edtVlrCompraF8Exit
          end
          object cboFornecedores: TAdvOfficeComboBox
            Left = 7
            Top = 25
            Width = 155
            Height = 19
            Button.Color = 16572875
            Button.ColorTo = 14722429
            Button.ColorHot = 14483455
            Button.ColorHotTo = 6013175
            Button.ColorDown = 557032
            Button.ColorDownTo = 8182519
            Button.Width = 12
            DropDownCount = 8
            BorderColor = clNone
            BorderHotColor = clBlack
            SelectionColor = 14722429
            SelectionTextColor = clWhite
            Version = '1.5.0.1'
            OnExit = cboFornecedoresExit
            OnEnter = cboFornecedoresEnter
            ItemIndex = -1
            ItemHeight = 14
            TabOrder = 8
          end
          object cboFornecedores2: TAdvOfficeComboBox
            Left = 7
            Top = 69
            Width = 155
            Height = 19
            Button.Color = 16572875
            Button.ColorTo = 14722429
            Button.ColorHot = 14483455
            Button.ColorHotTo = 6013175
            Button.ColorDown = 557032
            Button.ColorDownTo = 8182519
            Button.Width = 12
            DropDownCount = 8
            BorderColor = clNone
            BorderHotColor = clBlack
            SelectionColor = 14722429
            SelectionTextColor = clWhite
            Version = '1.5.0.1'
            OnExit = cboFornecedores2Exit
            OnEnter = cboFornecedores2Enter
            ItemIndex = -1
            ItemHeight = 14
            TabOrder = 9
          end
          object cboFornecedores3: TAdvOfficeComboBox
            Left = 7
            Top = 115
            Width = 155
            Height = 19
            Button.Color = 16572875
            Button.ColorTo = 14722429
            Button.ColorHot = 14483455
            Button.ColorHotTo = 6013175
            Button.ColorDown = 557032
            Button.ColorDownTo = 8182519
            Button.Width = 12
            DropDownCount = 8
            BorderColor = clNone
            BorderHotColor = clBlack
            SelectionColor = 14722429
            SelectionTextColor = clWhite
            Version = '1.5.0.1'
            OnExit = cboFornecedores3Exit
            OnEnter = cboFornecedores3Enter
            ItemIndex = -1
            ItemHeight = 14
            TabOrder = 10
          end
          object cboFornecedores4: TAdvOfficeComboBox
            Left = 7
            Top = 167
            Width = 155
            Height = 19
            Button.Color = 16572875
            Button.ColorTo = 14722429
            Button.ColorHot = 14483455
            Button.ColorHotTo = 6013175
            Button.ColorDown = 557032
            Button.ColorDownTo = 8182519
            Button.Width = 12
            DropDownCount = 8
            BorderColor = clNone
            BorderHotColor = clBlack
            SelectionColor = 14722429
            SelectionTextColor = clWhite
            Version = '1.5.0.1'
            OnExit = cboFornecedores4Exit
            OnEnter = cboFornecedores4Enter
            ItemIndex = -1
            ItemHeight = 14
            TabOrder = 11
          end
          object cboFornecedores5: TAdvOfficeComboBox
            Left = 271
            Top = 25
            Width = 155
            Height = 19
            Button.Color = 16572875
            Button.ColorTo = 14722429
            Button.ColorHot = 14483455
            Button.ColorHotTo = 6013175
            Button.ColorDown = 557032
            Button.ColorDownTo = 8182519
            Button.Width = 12
            DropDownCount = 8
            BorderColor = clNone
            BorderHotColor = clBlack
            SelectionColor = 14722429
            SelectionTextColor = clWhite
            Version = '1.5.0.1'
            OnExit = cboFornecedores5Exit
            OnEnter = cboFornecedores5Enter
            ItemIndex = -1
            ItemHeight = 14
            TabOrder = 12
          end
          object cboFornecedores6: TAdvOfficeComboBox
            Left = 271
            Top = 69
            Width = 155
            Height = 19
            Button.Color = 16572875
            Button.ColorTo = 14722429
            Button.ColorHot = 14483455
            Button.ColorHotTo = 6013175
            Button.ColorDown = 557032
            Button.ColorDownTo = 8182519
            Button.Width = 12
            DropDownCount = 8
            BorderColor = clNone
            BorderHotColor = clBlack
            SelectionColor = 14722429
            SelectionTextColor = clWhite
            Version = '1.5.0.1'
            OnExit = cboFornecedores6Exit
            OnEnter = cboFornecedores6Enter
            ItemIndex = -1
            ItemHeight = 14
            TabOrder = 13
          end
          object cboFornecedores7: TAdvOfficeComboBox
            Left = 271
            Top = 115
            Width = 155
            Height = 19
            Button.Color = 16572875
            Button.ColorTo = 14722429
            Button.ColorHot = 14483455
            Button.ColorHotTo = 6013175
            Button.ColorDown = 557032
            Button.ColorDownTo = 8182519
            Button.Width = 12
            DropDownCount = 8
            BorderColor = clNone
            BorderHotColor = clBlack
            SelectionColor = 14722429
            SelectionTextColor = clWhite
            Version = '1.5.0.1'
            OnExit = cboFornecedores7Exit
            OnEnter = cboFornecedores7Enter
            ItemIndex = -1
            ItemHeight = 14
            TabOrder = 14
          end
          object cboFornecedores8: TAdvOfficeComboBox
            Left = 271
            Top = 167
            Width = 155
            Height = 19
            Button.Color = 16572875
            Button.ColorTo = 14722429
            Button.ColorHot = 14483455
            Button.ColorHotTo = 6013175
            Button.ColorDown = 557032
            Button.ColorDownTo = 8182519
            Button.Width = 12
            DropDownCount = 8
            BorderColor = clNone
            BorderHotColor = clBlack
            SelectionColor = 14722429
            SelectionTextColor = clWhite
            Version = '1.5.0.1'
            OnExit = cboFornecedores8Exit
            OnEnter = cboFornecedores8Enter
            ItemIndex = -1
            ItemHeight = 14
            TabOrder = 15
          end
        end
        object tbsProdEquivalente: TTabSheet
          Caption = 'Produtos Equivalentes'
          ImageIndex = 3
          object Label35: TLabel
            Left = 0
            Top = 0
            Width = 205
            Height = 13
            Caption = 'Precione F7 para Incluir um Produto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
          end
          object dbgProdutosEquivalentes: TDBGrid
            Left = 2
            Top = 93
            Width = 550
            Height = 141
            Cursor = crHandPoint
            BorderStyle = bsNone
            Color = clWhite
            FixedColor = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            OnCellClick = dbgProdutosEquivalentesCellClick
          end
          object lbl_edtIDProdEquivalente: TLabeledEdit
            Left = 209
            Top = 10
            Width = 69
            Height = 21
            BevelInner = bvSpace
            BevelKind = bkFlat
            BorderStyle = bsNone
            EditLabel.Width = 5
            EditLabel.Height = 13
            EditLabel.Caption = '.'
            EditLabel.Font.Charset = DEFAULT_CHARSET
            EditLabel.Font.Color = clWindowText
            EditLabel.Font.Height = -11
            EditLabel.Font.Name = 'MS Sans Serif'
            EditLabel.Font.Style = [fsBold]
            EditLabel.ParentFont = False
            ReadOnly = True
            TabOrder = 1
            Visible = False
          end
          object lbl_edtNomeProdEquivalente: TLabeledEdit
            Left = 2
            Top = 36
            Width = 229
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
            TabOrder = 2
            OnEnter = lbl_edtNomeProdEquivalenteEnter
            OnExit = lbl_edtNomeProdEquivalenteExit
          end
          object btIncluirEquivalente: TAdvGlowButton
            Left = 239
            Top = 33
            Width = 68
            Height = 24
            Caption = '| &Incluir'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 49
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Picture.Data = {
              424D380300000000000036000000280000001000000010000000010018000000
              000000000000120B0000120B00000000000000000000FF00FFFF00FF05710AFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FF05710A05700AFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF06740C08780FFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FF0B7C13158922FF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF10831B2CA94505
              710AFF00FFFF00FFFF00FFFF00FFFF00FF056F09FF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FF10821C44C86A148520FF00FFFF00FFFF00FFFF00FFFF00
              FF056F09056F09FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF09751043C4673C
              BD5E036D07FF00FFFF00FFFF00FFFF00FF056F09119C1F056F09FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FF29A13F5DE98F31B04C056F09046F08046E07056D
              07056F0914AD240C9518056F09FF00FFFF00FFFF00FFFF00FFFF00FF07710B41
              C26459E78940C76329AD4225AD3C28B0401DA73014A9240EA51B0E9A1B056F09
              FF00FFFF00FFFF00FFFF00FFFF00FF08730D3BBB5B50DD7C47D86F3BCC5D2FC0
              4B25B63C1AAD2C10A51E0FA81D129920056F09FF00FFFF00FFFF00FFFF00FFFF
              00FF05710A1B902C35B85339C45933C2512BBC451FB13416AD27169726056F09
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF06720C0976100978
              11056F0927BD41149121056F09FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FF056F09148F22056F09FF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FF056F09056F09FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FF056F09FF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000}
            TabOrder = 3
            OnClick = btIncluirEquivalenteClick
            Appearance.BorderColor = 14727579
            Appearance.BorderColorHot = 10079963
            Appearance.BorderColorDown = 4548219
            Appearance.BorderColorChecked = clBlack
            Appearance.Color = 15653832
            Appearance.ColorTo = 16178633
            Appearance.ColorChecked = 7915518
            Appearance.ColorCheckedTo = 11918331
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 7778289
            Appearance.ColorDownTo = 4296947
            Appearance.ColorHot = 15465983
            Appearance.ColorHotTo = 11332863
            Appearance.ColorMirror = 15586496
            Appearance.ColorMirrorTo = 16245200
            Appearance.ColorMirrorHot = 5888767
            Appearance.ColorMirrorHotTo = 10807807
            Appearance.ColorMirrorDown = 946929
            Appearance.ColorMirrorDownTo = 5021693
            Appearance.ColorMirrorChecked = 10480637
            Appearance.ColorMirrorCheckedTo = 5682430
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Appearance.GradientHot = ggVertical
            Appearance.GradientMirrorHot = ggVertical
            Appearance.GradientDown = ggVertical
            Appearance.GradientMirrorDown = ggVertical
            Appearance.GradientChecked = ggVertical
          end
          object btExcluirEquivalente: TAdvGlowButton
            Left = 317
            Top = 35
            Width = 68
            Height = 24
            Caption = '| &Excluir'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ImageIndex = 49
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Picture.Data = {
              424D380300000000000036000000280000001000000010000000010018000000
              000000000000120B0000120B00000000000000000000FF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFFF00FFFF00FFF1B77DF1B77DF1B77DF1B77DF1B77D
              FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF1B7
              7DFFEBC9FED8B6F7C799F2B97FF1B77CF2BA81FF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFF1B77DFFF8D8FEE9C7FDD6B3F7C699F2B980F1B77D
              F1B77CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF1B77DFFFC
              D8FEE9C7FDD7B4F7C79AF2B980F1B77CF1B77DFF00FFFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFFF00FFF7D6A6FFFFDEFFEDCBFEDBB9F8C99DF2B982F1B77C
              F1B77DF1B77DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFF1B77DFEF5D4FFFB
              DAFBDDB5F8CA9EF5C290F2B87FF1B67BF1B77DF1B77DFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFF1BA81EDBD82E0974BE39950EAAA67EFBC80F2C690F3C48C
              F1BA80F1B77CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE0954BC75C00D57A
              24E69B53EEB87BF4D09CF9E3B7F7E0B3F2C992EFB67AFF00FFFF00FFFF00FFFF
              00FFFF00FFFF00FFE39B54D07018D77F2CE79E59006600006600FDF2CCFCECC5
              F4CB97EFB77CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE69C
              5600660033AF5053E081006600F1B77DFF00FFFF00FFFF00FFFF00FFFF00FFFF
              00FFA97C78B0837AFF00FFFF00FF006600168B233DBE5F3AC95B199D29006600
              FF00FFFF00FFBF9992B38984D4B19BD1AD96B08378C6915FA77775FF00FF0066
              000066001F8B2A19A32B006600006600FF00FFFF00FFB58F8EE6C395B3764CB0
              8581D0A992BE8F73A77874FF00FFFF00FFFF00FF077D0E006600FF00FFFF00FF
              FF00FFFF00FFA37474A67670C07928DCB590B5887DB5846BFF00FFFF00FFFF00
              FFFF00FF077D0E006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB27954B5
              8A7FD2BBBDAC8281FF00FFFF00FF006600006600006600FF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FFA57774A97F80AC8282FF00FFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000}
            TabOrder = 4
            OnClick = btExcluirEquivalenteClick
            Appearance.BorderColor = 14727579
            Appearance.BorderColorHot = 10079963
            Appearance.BorderColorDown = 4548219
            Appearance.BorderColorChecked = clBlack
            Appearance.Color = 15653832
            Appearance.ColorTo = 16178633
            Appearance.ColorChecked = 7915518
            Appearance.ColorCheckedTo = 11918331
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 7778289
            Appearance.ColorDownTo = 4296947
            Appearance.ColorHot = 15465983
            Appearance.ColorHotTo = 11332863
            Appearance.ColorMirror = 15586496
            Appearance.ColorMirrorTo = 16245200
            Appearance.ColorMirrorHot = 5888767
            Appearance.ColorMirrorHotTo = 10807807
            Appearance.ColorMirrorDown = 946929
            Appearance.ColorMirrorDownTo = 5021693
            Appearance.ColorMirrorChecked = 10480637
            Appearance.ColorMirrorCheckedTo = 5682430
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            Appearance.GradientHot = ggVertical
            Appearance.GradientMirrorHot = ggVertical
            Appearance.GradientDown = ggVertical
            Appearance.GradientMirrorDown = ggVertical
            Appearance.GradientChecked = ggVertical
          end
        end
      end
      object lbl_edtCodigo: TLabeledEdit
        Left = 1
        Top = 18
        Width = 69
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkFlat
        BorderStyle = bsNone
        EditLabel.Width = 67
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'd.Interno'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -11
        EditLabel.Font.Name = 'MS Sans Serif'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        ReadOnly = True
        TabOrder = 1
      end
      object lbl_edtRef: TLabeledEdit
        Left = 77
        Top = 18
        Width = 128
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkFlat
        BorderStyle = bsNone
        EditLabel.Width = 70
        EditLabel.Height = 13
        EditLabel.Caption = 'Ref./C'#243'digo'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -11
        EditLabel.Font.Name = 'MS Sans Serif'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        TabOrder = 3
        OnEnter = lbl_edtRefEnter
        OnExit = lbl_edtRefExit
        OnKeyPress = lbl_edtRefKeyPress
      end
      object lbl_edtCodBarra: TLabeledEdit
        Left = 211
        Top = 18
        Width = 98
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkFlat
        BorderStyle = bsNone
        EditLabel.Width = 98
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo de Barras'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -11
        EditLabel.Font.Name = 'MS Sans Serif'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        TabOrder = 4
        OnChange = lbl_edtCodBarraChange
        OnEnter = lbl_edtCodBarraEnter
        OnExit = lbl_edtCodBarraExit
        OnKeyPress = lbl_edtCodBarraKeyPress
      end
      object lbl_edtNomeProduto: TLabeledEdit
        Left = 314
        Top = 18
        Width = 376
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
        TabOrder = 5
        OnEnter = lbl_edtNomeProdutoEnter
        OnExit = lbl_edtNomeProdutoExit
        OnKeyPress = lbl_edtNomeProdutoKeyPress
      end
      object ibeaNovo: TAdvGlowButton
        Left = 1
        Top = 355
        Width = 68
        Height = 24
        Caption = '| &Novo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 49
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          424D380300000000000036000000280000001000000010000000010018000000
          000000000000120B0000120B00000000000000000000FF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08780E0878
          0EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FF08780E76F9A70DA31B08780EFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08780E76F9A70EAA
          1D08780EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FF08780E76F9A70EA81C08780EFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08780E76F9A710AA
          1F08780EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08780E08
          780E08780E08780E08780E76F9A719B02C08780E08780E08780E08780E08780E
          FF00FFFF00FFFF00FF08780E76F9A755E38349DA7242D36837C8562AB94322B3
          371CB23016AF270FA81D0EA91B0DA21B08780EFF00FFFF00FF08780E76F9A776
          F9A776F9A776F9A776F9A776F9A72CBB4876F9A776F9A776F9A776F9A776F9A7
          08780EFF00FFFF00FFFF00FF08780E08780E08780E08780E08780E76F9A73CCB
          5D08780E08780E08780E08780E08780EFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FF08780E76F9A749D97208780EFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08780E76F9A755E2
          8208780EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FF08780E76F9A763F09708780EFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF08780E76F9A776F9
          A708780EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FF08780E08780EFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000}
        TabOrder = 6
        OnClick = ibeaNovoClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = clBlack
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
      object ibeaAlterar: TAdvGlowButton
        Left = 73
        Top = 355
        Width = 68
        Height = 24
        Caption = '| &Alterar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 49
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          424D380300000000000036000000280000001000000010000000010018000000
          000000000000120B0000120B00000000000000000000FF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FF006600006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0066001EB2311FB133006600FF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00
          660031C24F22B7381AB02D21B437006600FF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF00660047D36D3BCB5E25A83B0066001BA92E1DB1
          32006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0066004FD67953
          DE7F31B54D006600FF00FF006600179D271EAE31006600FF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FF00660041C563006600FF00FFFF00FFFF00FFFF00
          FF00660019AA2B006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF00
          6600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600149D21006600FF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FF006600006600FF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF006600
          006600FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000}
        TabOrder = 7
        OnClick = ibeaAlterarClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = clBlack
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
      object ibeaExcluir: TAdvGlowButton
        Left = 147
        Top = 355
        Width = 68
        Height = 24
        Caption = '| &Excluir'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 49
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          424D380300000000000036000000280000001000000010000000010018000000
          000000000000120B0000120B00000000000000000000FF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FF05710AFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FF05710A05710AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FF05710A05710A05710A05710A05710A05710A20B33505710AFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF05710A76F9A776F9A776F9A76BF0
          9751DA7533C24D19AC2A05710AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FF05710A05710A05710A05710A05710A05710A47D36805710AFF00FFFF00FF
          FF00FFFF00FFFF00FF1C78D51C78D51C78D51C78D51C5996FF00FFFF00FFFF00
          FF05710A05710AE4F0FC1C78D51C78D51C78D51C78D51C78D582C6F957BCFF4E
          B5FF4DB4FF1C5996FF00FFFF00FFFF00FF05710AFF00FFE4F0FC2A95FF369BFF
          379CFF1C78D51C78D57DC3F756BCFF4EB4FE4DB3FF1C5996FF00FFFF00FFFF00
          FFFF00FFFF00FFE4F0FC2893FF3499FF359AFF1C78D51C78D580C6F95BC1FF53
          BAFF52B8FF1C5996FF00FFFF00FFFF00FFFF00FFFF00FFE4F0FC1F8EFF2B95FF
          2C96FF1C78D51C78D580C6F95BC1FF53BAFF52B8FF1C5996FF00FFFF00FFFF00
          FFFF00FFFF00FFE4F0FCE4F0FCE4F0FCE4F0FCE4F0FC1C78D5629DCF3589CF35
          89CF3589CF1C59961C59961C59961C59961C59961C5996FF00FFFF00FFFF00FF
          FF00FFFF00FF1C78D586CCF965CBFF5DC3FF5CC4FF3589CF53BAFF53BAFF4EB4
          FF4DB4FF1C78D5FF00FFFF00FFFF00FFFF00FFFF00FF1C78D584C9F765CAFF5E
          C3FE5EC4FF3589CF53BAFF54BAFF4FB4FE4FB4FF1C78D5FF00FFFF00FFFF00FF
          FF00FFFF00FF1C78D585CBF864CBFF5EC6FF5EC7FF3589CF53BAFF55BDFF50B7
          FF50B7FF1C78D5FF00FFFF00FFFF00FFFF00FFFF00FF1C78D59ECFF592D7FD88
          D2FC8CD5FD629DCF85CEFD85CEFD80C9FC84CBFD1C78D5FF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FF1C78D51C78D51C78D51C78D51C78D51C78D51C78D51C78
          D51C78D5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000}
        TabOrder = 8
        OnClick = ibeaExcluirClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = clBlack
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
      object ibeaSair: TAdvGlowButton
        Left = 713
        Top = 355
        Width = 68
        Height = 24
        Caption = '| &Sair'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 49
        FocusType = ftHot
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          424D380300000000000036000000280000001000000010000000010018000000
          000000000000120B0000120B00000000000000000000FF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FF9A6666693334FF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A6666B96666BB68686933
          34FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A
          6666C66A6BD06A6BD26869C368696933349A66669A66669A66669A66669A6666
          9A6666FF00FFFF00FFFF00FF9A6666DE7374D77071D56F70D56D6EC76A6D6933
          34FEA2A3FCAFB0FABCBDF9C5C6F9C5C69A6666FF00FFFF00FFFF00FF9A6666E0
          7778DB7576DA7475DA7273CC6E7169333439C56525CF6329CC6319CB5BF9C5C6
          9A6666FF00FFFF00FFFF00FF9A6666E57D7EE07A7BDF797ADF7778D072756933
          3442C46830CD6733CB6724CB60F9C5C69A6666FF00FFFF00FFFF00FF9A6666EA
          8283E57F80E37D7EE68081D374766933343DC26429CB632FCA6420CA5EF9C5C6
          9A6666FF00FFFF00FFFF00FF9A6666F08788E98182EC9697FBDDDED8888A6933
          34B8E1AC6BDC895DD58046D473F9C5C69A6666FF00FFFF00FFFF00FF9A6666F5
          8C8DEE8687F0999AFDDCDDDA888A693334FFF5D8FFFFE0FFFFDEECFDD4F9C5C6
          9A6666FF00FFFF00FFFF00FF9A6666FA9192F48E8FF28B8CF48C8DDC7F806933
          34FDF3D4FFFFDFFFFFDDFFFFE0F9C5C69A6666FF00FFFF00FFFF00FF9A6666FE
          9798F99394F89293F99092E08585693334FDF3D4FFFFDFFFFFDDFFFFDFF9C5C6
          9A6666FF00FFFF00FFFF00FF9A6666FF9B9CFD9798FC9697FE9798E388896933
          34FDF3D4FFFFDFFFFFDDFFFFDFF9C5C69A6666FF00FFFF00FFFF00FF9A6666FF
          9FA0FF9A9BFF999AFF9A9BE78C8D693334FDF3D4FFFFDFFFFFDDFFFFDFF9C5C6
          9A6666FF00FFFF00FFFF00FF9A66669A6666E98E8FFE999AFF9D9EEB8F906933
          34FBF0D2FDFCDCFDFCDAFDFCDCF9C5C69A6666FF00FFFF00FFFF00FFFF00FFFF
          00FF9A6666B07172D78687DA88886933349A66669A66669A66669A66669A6666
          9A6666FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9A66669A66666933
          34FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0000}
        TabOrder = 9
        OnClick = ibeaSairClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = clBlack
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
      object ckProdTrib: TCheckBox
        Left = 565
        Top = 0
        Width = 113
        Height = 17
        Caption = 'Produto Tributado'
        TabOrder = 10
      end
      object lbl_edtCodP: TLabeledEdit
        Left = 287
        Top = 355
        Width = 97
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkFlat
        BorderStyle = bsNone
        EditLabel.Width = 63
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'd.Barras'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clNavy
        EditLabel.Font.Height = -11
        EditLabel.Font.Name = 'MS Sans Serif'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
        OnEnter = lbl_edtCodPEnter
        OnExit = lbl_edtCodPExit
        OnKeyPress = lbl_edtCodPKeyPress
      end
      object lbl_edtNumRef: TLabeledEdit
        Left = 389
        Top = 355
        Width = 108
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkFlat
        BorderStyle = bsNone
        EditLabel.Width = 25
        EditLabel.Height = 13
        EditLabel.Caption = 'Ref.'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clNavy
        EditLabel.Font.Height = -11
        EditLabel.Font.Name = 'MS Sans Serif'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        OnChange = lbl_edtNumRefChange
        OnEnter = lbl_edtNumRefEnter
        OnExit = lbl_edtNumRefExit
        OnKeyPress = lbl_edtNumRefKeyPress
      end
      object lbl_edtNome: TLabeledEdit
        Left = 502
        Top = 355
        Width = 157
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkFlat
        BorderStyle = bsNone
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clNavy
        EditLabel.Font.Height = -11
        EditLabel.Font.Name = 'MS Sans Serif'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
        OnChange = lbl_edtNomeChange
        OnEnter = lbl_edtNomeEnter
        OnExit = lbl_edtNomeExit
      end
      object sb_ord_nome: TAdvGlowButton
        Left = 571
        Top = 327
        Width = 75
        Height = 24
        Caption = 'Ordem Alfab'#233'tica'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 49
        FocusType = ftHot
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          424D380300000000000036000000280000001000000010000000010018000000
          000000000000120B0000120B00000000000000000000FF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFA0726EA0726EA0726FA0726EA0726EA0726EA0726EA0726EA072
          6EA0726EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA0726EEDDFD1E9DACBE9
          D8C8E8D7C5E8D7C4E8D6C5E8D7C6EDDFCCA0726EFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFBF8A85FAF2E5F5ECE0F3EADDF3E8D9F1E6D6F1E5D4F1E6D4F8ED
          D9A0726EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC48F87F9F3EAF9DFC3FA
          D7B5F9D7B6F8D7B4F8D6B1F6DABCF6ECD9A0726EFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFCA9588F9F6EFF8E9D8F8E4D0F7E3CEF6E2CBF6E0C8F2DFC9F4EA
          D7A0726EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD19D89FBF8F2F8DFC5F6
          D5B3F8D7B6FAD7B5F2D0ADDEC7ACDCD5C7A0726EFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFD6A38BFCF9F5E8DED3D3C6BADED0C2E8D9CACFC0B1A79C91A7A2
          98967A73FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDCA98CFCFCFB9FA6B7AF
          967FB09780BEA3895572995B7CA460617677625DFF00FFFF00FFFF00FF5B5757
          464242464242E0AE8DFEFEFE5572995572999A98975572997CC4E75572994255
          83514C62FF00FF8F8F905454545B57573B3A3C5B5555E3B18EFFFFFF557299CB
          EFF65572997CC4E75572997CC4E75572993E598C374D848F8F9091959B5B5757
          524D4E5B5555EDBD92FFFFFFFCFCFD557299CBEFF65572997CC4E75572997CC4
          E75EADEA4D99E48F8F90F1F1F15B5757686463635E5EEDBD92FAF2EDFAF2EDF8
          F0EC557299A5E9F45572997CC4E76EBEEF5EACE94D99E48F8F90F1F1F15B5757
          757272767474EDBD92E0B398E1B599E1B599DCB19855729997C2D9C4EBF66EC0
          F15EAEEB3B5D9B8F8F90F1F1F15B57578C8C8C8C8C8CFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FF6A96C05A8DC7556DA4FF00FF8F8F908F8F905B5757
          8C8C8C7A7979FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FF5B57575B57575B57570000}
        Transparent = True
        TabOrder = 14
        OnClick = sb_ord_nomeClick
        Appearance.BorderColor = 14727579
        Appearance.BorderColorHot = 10079963
        Appearance.BorderColorDown = 4548219
        Appearance.BorderColorChecked = clBlack
        Appearance.Color = 15653832
        Appearance.ColorTo = 16178633
        Appearance.ColorChecked = 7915518
        Appearance.ColorCheckedTo = 11918331
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 7778289
        Appearance.ColorDownTo = 4296947
        Appearance.ColorHot = 15465983
        Appearance.ColorHotTo = 11332863
        Appearance.ColorMirror = 15586496
        Appearance.ColorMirrorTo = 16245200
        Appearance.ColorMirrorHot = 5888767
        Appearance.ColorMirrorHotTo = 10807807
        Appearance.ColorMirrorDown = 946929
        Appearance.ColorMirrorDownTo = 5021693
        Appearance.ColorMirrorChecked = 10480637
        Appearance.ColorMirrorCheckedTo = 5682430
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Appearance.GradientHot = ggVertical
        Appearance.GradientMirrorHot = ggVertical
        Appearance.GradientDown = ggVertical
        Appearance.GradientMirrorDown = ggVertical
        Appearance.GradientChecked = ggVertical
      end
      object grbTipoOleo: TGroupBox
        Left = 694
        Top = 0
        Width = 89
        Height = 55
        Caption = 'Tipo de '#211'leo'
        TabOrder = 15
        object rbMineral: TRadioButton
          Left = 8
          Top = 16
          Width = 63
          Height = 17
          Caption = 'Mineral'
          TabOrder = 0
        end
        object rbSintetico: TRadioButton
          Left = 8
          Top = 32
          Width = 63
          Height = 17
          Caption = 'Sint'#233'tico'
          TabOrder = 1
        end
      end
      object ckProdAtivo: TCheckBox
        Left = 448
        Top = 0
        Width = 113
        Height = 17
        Caption = 'Produto Ativo'
        TabOrder = 16
      end
    end
    object tbsFornecedoresProdutos: TTabSheet
      Caption = 'Produtos por Fornecedor'
      ImageIndex = 3
      object lbl_edtFornProd: TLabel
        Left = 3
        Top = 50
        Width = 82
        Height = 13
        Caption = 'Fornecedores '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnRProdEstoque: TBitBtn
        Left = 368
        Top = 55
        Width = 42
        Height = 35
        Hint = 'Relatorio de Produtos por Fornecedor'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = btnRProdEstoqueClick
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          08000000000040020000320B0000320B000000010000000100008C5A5A009C6B
          6300A57B7300B5847300E79C4200EFAD5A00E7AD7300E7B57B00F7C67B000052
          AD000063CE00FF00FF00BD848400BD8C8400BDBDBD00CE9C8400DEAD8400E7B5
          8C00EFBD9400FFD6A500FFD6AD00F7DEBD00DED6CE00D6D6D600EFDECE00F7DE
          C600FFDEC600EFDED600FFE7CE00EFE7D600EFE7DE00F7E7D600F7EFD600F7E7
          DE00F7EFDE00C6FFFF00EFE7E700F7EFE700F7EFEF00FFF7EF00FFF7F700FFFF
          F700FFFFFF000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000B0B0B0B0B0B
          0B0B0202020202020202020202020202000B0B0B0B0B0B0B0B0B0218221F1F1F
          1F1F1F1F1F1F2018000B0B0B0B0B0B0B0B0B0218221D1D1D1D18181818181D18
          000B0B0B0B0B0B0B0B0B021B251E1E1D1D1D1D1818181D18000B0B0B0B0B0B0B
          0B0B031B251914141414141414151D18000B0B0B0B0B0B0B0B0B031B251C1515
          1515151515191D18000B0B02020202020202031E272221211F1F1F1F1D1D1F18
          010B0B0218221F1F1F1F0D1E271513131313131313152118010B0B0218232323
          23230D1E28252221211F1F1F1F1F2118010B0B021B23232323230F2429221F1F
          1F1F1F1C191F221B020B0B031B2309090A0A0F252A1A1313131313131319251D
          020B0B031B232323232310262A2827272625252525252516020B0B031E232323
          232310262A2A2A28282828272824170E030B0B0D1E2309090A0A11262A2A2A29
          2828282503030303030B0B0D1E232323232311262A2A2A2A2A292A1E03060504
          0C0B0B0F24232323232312272A2A2A2A2A2A2A240308050C0B0B0B0F25230909
          0A0A12272A2A2A2A2A2A2A2403070C0B0B0B0B10262323232326121010101010
          10101010030C0B0B0B0B0B102623232323232323272824170E030B0B0B0B0B0B
          0B0B0B1126232323232323232503030303030B0B0B0B0B0B0B0B0B1126232323
          232323231E030605040C0B0B0B0B0B0B0B0B0B12272323232323232324030805
          0C0B0B0B0B0B0B0B0B0B0B12272A2A2A2A2A2A2A2403070C0B0B0B0B0B0B0B0B
          0B0B0B12101010101010101010030C0B0B0B0B0B0B0B0B0B0B0B}
      end
      object pcFornecedores: TBmsXPPageControl
        Left = 0
        Top = 95
        Width = 783
        Height = 437
        ActivePage = tbs1Forn
        HotTrack = True
        TabOrder = 1
        object tbs1Forn: TTabSheet
          Caption = 'Fornecedor 1'
          object dbgFornecedorProd: TDBGrid
            Left = 3
            Top = 13
            Width = 770
            Height = 389
            Cursor = crHandPoint
            BorderStyle = bsNone
            Color = clInfoBk
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
          end
        end
      end
      object lbl_edtVlrCompra: TLabeledEdit
        Left = 252
        Top = 67
        Width = 108
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkFlat
        BorderStyle = bsNone
        EditLabel.Width = 59
        EditLabel.Height = 13
        EditLabel.Caption = 'R$Compra'
        EditLabel.Font.Charset = DEFAULT_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -11
        EditLabel.Font.Name = 'MS Sans Serif'
        EditLabel.Font.Style = [fsBold]
        EditLabel.ParentFont = False
        TabOrder = 2
        Text = '0,00'
        OnEnter = lbl_edtVlrCompraEnter
        OnExit = lbl_edtVlrCompraExit
        OnKeyPress = lbl_edtMarcaKeyPress
      end
      object cboFornecedoresProdutos: TAdvOfficeComboBox
        Left = 3
        Top = 67
        Width = 245
        Height = 19
        Button.Color = 16572875
        Button.ColorTo = 14722429
        Button.ColorHot = 14483455
        Button.ColorHotTo = 6013175
        Button.ColorDown = 557032
        Button.ColorDownTo = 8182519
        Button.Width = 12
        DropDownCount = 8
        BorderColor = clNone
        BorderHotColor = clBlack
        SelectionColor = 14722429
        SelectionTextColor = clWhite
        Version = '1.5.0.1'
        OnExit = cboFornecedoresProdutosExit
        OnEnter = cboFornecedoresProdutosEnter
        OnChange = cboFornecedoresProdutosChange
        ItemIndex = -1
        ItemHeight = 14
        TabOrder = 3
      end
    end
    object tbsConfig: TTabSheet
      Caption = 'Configura'#231#245'es'
      ImageIndex = 4
    end
  end
  object opDialogImagem: TOpenDialog
    Filter = 
      'Todas Imagens (*.bmp,*.jpg)|*.jpg;*.bmp|Imagens JPEG (*.jpg)|*.j' +
      'pg|Imagens Bitmap (*.bmp)|*.bmp'
    Left = 208
    Top = 344
  end
  object popMnuImagem: TPopupMenu
    Left = 240
    Top = 328
    object Scanner1: TMenuItem
      Caption = 'Scanner'
      object mnuAdquirirIMG: TMenuItem
        Caption = '&Adquirir'
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object mnuSelecionarOrigem: TMenuItem
        Caption = '&Selecionar Origem'
      end
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object popmnuProcurar: TMenuItem
      Caption = '&Procurar'
      ImageIndex = 0
    end
  end
  object GeraCodigoBarra: TBarcode
    Height = 35
    Top = 399
    Left = 762
    Modul = 2
    Ratio = 1.000000000000000000
    Typ = bcCodeEAN13
    ShowText = bcoCode
  end
  object GeraCBMP: TBarcode
    Height = 35
    Top = 168
    Left = 632
    Modul = 2
    Ratio = 1.000000000000000000
    Typ = bcCodeEAN13
    ShowText = bcoCode
  end
  object popupEtiquetas: TPopupMenu
    Left = 304
    Top = 344
    object Pimaco60871: TMenuItem
      Caption = 'Pimaco 6087'
      OnClick = Pimaco60871Click
    end
    object Pimaco60891: TMenuItem
      Caption = 'Pimaco 6089'
      OnClick = Pimaco60891Click
    end
    object Sair1: TMenuItem
      Caption = '&Sair'
    end
  end
end
