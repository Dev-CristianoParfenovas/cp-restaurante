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
      object Label5: TLabel
        Left = 652
        Top = 326
        Width = 67
        Height = 13
        Caption = 'F5-C'#243'd.Barras'
      end
      object Label6: TLabel
        Left = 652
        Top = 339
        Width = 70
        Height = 13
        Caption = 'F6-C'#243'd.Interno'
      end
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
          object shapeCodBarras: TShape
            Left = 6
            Top = 120
            Width = 211
            Height = 39
            Brush.Color = clGradientActiveCaption
            Pen.Color = clGradientActiveCaption
          end
          object imgCodigoBarras: TImage
            Left = 10
            Top = 123
            Width = 204
            Height = 32
            Center = True
          end
          object Label1: TLabel
            Left = 76
            Top = 104
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
          object lbl_LocalEstoq: TLabel
            Left = 55
            Top = 168
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
            TabOrder = 17
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
                Top = 5
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
              object cboCST: TComboBox
                Left = 3
                Top = 19
                Width = 310
                Height = 21
                BevelInner = bvSpace
                BevelKind = bkFlat
                ItemHeight = 13
                TabOrder = 9
                OnEnter = cboCSTEnter
                OnExit = cboCSTExit
              end
              object cboCSOSN: TComboBox
                Left = 3
                Top = 57
                Width = 310
                Height = 21
                BevelInner = bvSpace
                BevelKind = bkFlat
                ItemHeight = 13
                TabOrder = 10
                OnEnter = cboCSOSNEnter
                OnExit = cboCSOSNExit
              end
              object cboCFOP: TComboBox
                Left = 3
                Top = 96
                Width = 180
                Height = 21
                BevelInner = bvSpace
                BevelKind = bkFlat
                ItemHeight = 13
                TabOrder = 11
                OnEnter = cboCFOPEnter
                OnExit = cboCFOPExit
              end
              object cboST: TComboBox
                Left = 188
                Top = 95
                Width = 69
                Height = 21
                BevelInner = bvSpace
                BevelKind = bkFlat
                ItemHeight = 13
                TabOrder = 12
                OnEnter = cboSTEnter
                OnExit = cboSTExit
              end
            end
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
          object cboGrupo: TComboBox
            Left = 2
            Top = 67
            Width = 119
            Height = 21
            BevelInner = bvSpace
            BevelKind = bkFlat
            ItemHeight = 13
            TabOrder = 18
            OnChange = cboGrupoChange
            OnEnter = cboGrupoEnter
            OnExit = cboGrupoExit
          end
          object cboSubGrupo: TComboBox
            Left = 126
            Top = 67
            Width = 118
            Height = 21
            BevelInner = bvSpace
            BevelKind = bkFlat
            ItemHeight = 13
            TabOrder = 19
            OnEnter = cboSubgrupoEnter
            OnExit = cboSubgrupoExit
          end
          object cboModalidade: TComboBox
            Left = 252
            Top = 67
            Width = 104
            Height = 21
            BevelInner = bvSpace
            BevelKind = bkFlat
            ItemHeight = 13
            TabOrder = 20
            OnEnter = cboModalidadeEnter
            OnExit = cboModalidadeExit
            OnKeyPress = cboModalidadeKeyPress
          end
          object ListLocalEstocagem: TCheckListBox
            Left = 10
            Top = 184
            Width = 203
            Height = 56
            BevelInner = bvSpace
            BevelKind = bkFlat
            BorderStyle = bsNone
            ItemHeight = 13
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
          object cboFornecedores: TComboBox
            Left = 7
            Top = 25
            Width = 155
            Height = 21
            BevelInner = bvSpace
            BevelKind = bkFlat
            ItemHeight = 13
            TabOrder = 8
            OnEnter = cboFornecedoresEnter
            OnExit = cboFornecedoresExit
          end
          object cboFornecedores2: TComboBox
            Left = 7
            Top = 69
            Width = 155
            Height = 21
            BevelInner = bvSpace
            BevelKind = bkFlat
            ItemHeight = 13
            TabOrder = 9
            OnEnter = cboFornecedores2Enter
            OnExit = cboFornecedores2Exit
          end
          object cboFornecedores3: TComboBox
            Left = 7
            Top = 115
            Width = 155
            Height = 21
            BevelInner = bvSpace
            BevelKind = bkFlat
            ItemHeight = 13
            TabOrder = 10
            OnEnter = cboFornecedores3Enter
            OnExit = cboFornecedores3Exit
          end
          object cboFornecedores4: TComboBox
            Left = 7
            Top = 167
            Width = 155
            Height = 21
            BevelInner = bvSpace
            BevelKind = bkFlat
            ItemHeight = 13
            TabOrder = 11
            OnEnter = cboFornecedores4Enter
            OnExit = cboFornecedores4Exit
          end
          object cboFornecedores5: TComboBox
            Left = 271
            Top = 25
            Width = 155
            Height = 21
            BevelInner = bvSpace
            BevelKind = bkFlat
            ItemHeight = 13
            TabOrder = 12
            OnEnter = cboFornecedores5Enter
            OnExit = cboFornecedores5Exit
          end
          object cboFornecedores6: TComboBox
            Left = 271
            Top = 69
            Width = 155
            Height = 21
            BevelInner = bvSpace
            BevelKind = bkFlat
            ItemHeight = 13
            TabOrder = 13
            OnEnter = cboFornecedores6Enter
            OnExit = cboFornecedores6Exit
          end
          object cboFornecedores7: TComboBox
            Left = 271
            Top = 115
            Width = 155
            Height = 21
            BevelInner = bvSpace
            BevelKind = bkFlat
            ItemHeight = 13
            TabOrder = 14
            OnEnter = cboFornecedores7Enter
            OnExit = cboFornecedores7Exit
          end
          object cboFornecedores8: TComboBox
            Left = 271
            Top = 167
            Width = 155
            Height = 21
            BevelInner = bvSpace
            BevelKind = bkFlat
            ItemHeight = 13
            TabOrder = 15
            OnEnter = cboFornecedores8Enter
            OnExit = cboFornecedores8Exit
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
          object btIncluirEquivalente: TSpeedButton
            Left = 248
            Top = 32
            Width = 41
            Height = 41
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFD8E8DB7AB8853194441585291585293194447AB885D8E8DBFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F87AB885007B16007B1600841800
              7B16007B16007B16007B16007B167AB885F8F8F8FFFFFFFFFFFFFFFFFFF8F8F8
              4BA55B008418008C19008C19008C19008C19008C19008418008418007B16007B
              164BA55BF8F8F8FFFFFFFFFFFF7AB88500841800941A00941A00941A00941A00
              941A00941A00941A008C19008418007B16007B167AB885FFFFFFD5E6D8008418
              00941A009E1D00A61E00A61E42BB57D2F0D71BA935009C1C00941A008C190084
              18007B16007B16D8E8DB75B68000941A00A61E00AD1F00AD1F75D486FFFFFFFF
              FFFFD2F0D70FAA2B009E1D00941A008C19008418007B1675B68031944400A61E
              00AD1F0CB82BAEE9B8FFFFFFFFFFFFFFFFFFFFFFFFBDEAC506A923009E1D0094
              1A008C190084182D923F128E2800B62100B621BAEEC3FFFFFFFFFFFFC9F3D1B7
              EEC1FFFFFFFFFFFFA5E3B000A61E009C1C00941A00841811842512912800BA21
              00C6241ECE3EDEF8E3ABEEB709CC2C09CC2CC9F3D1FFFFFFFFFFFF87D89600A6
              1E00941A008C191185262F9E4300C62400C62400CE2512D13400CE2500CE2500
              CE2515CD36DEF8E3FFFFFFFFFFFF69CB7B009C1C008C192D923F75B68000BA21
              00CE2500CE2500D62700D62700D62700CE2500CE252DD24BF0FBF2FFFFFFA2E0
              AD009C1C008C1975B680D8E8DB009E1D00CE2500D62700D62700D62700D62700
              D62700CE2500C62442D35C99E2A600AD1F009E1D008418D8E8DBFFFFFF7AB885
              00B62100D62700D62700DD2800D62700D62700CE2500C62400C62400B62100AD
              1F00941A7AB885FFFFFFFFFFFFF8F8F84BA55B00BA2100D62700D62700D62700
              CE2500CE2500C62400BA2100B621009C1C4BA55BF8F8F8FFFFFFFFFFFFFFFFFF
              F8F8F875B680009E1D00C62400D62700CE2500CE2500C62400B62104931D7AB8
              85F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8E8DB7AB8852F9E4313
              9A2B139A2B2F9E437AB885D8E8DBFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = btIncluirEquivalenteClick
          end
          object btExcluirEquivalente: TSpeedButton
            Left = 299
            Top = 32
            Width = 41
            Height = 41
            Glyph.Data = {
              4E010000424D4E01000000000000760000002800000013000000120000000100
              040000000000D8000000C40E0000C40E00001000000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333000003333883333333333333000003339118333339833333000003339
              1118333911833330000033391111839111183330000033339111181111183330
              0000333339111111118333300000333333911111183333300000333333311111
              8333333000003333333911118333333000003333339111118333333000003333
              3911181118333330000033339111839111833330000033339118333911183330
              0000333339133333911133300000333333333333391933300000333333333333
              333333300000333333333333333333300000}
            OnClick = btExcluirEquivalenteClick
          end
          object dbgProdutosEquivalentes: TDBGrid
            Left = 2
            Top = 76
            Width = 550
            Height = 161
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
      object ckProdTrib: TCheckBox
        Left = 464
        Top = 0
        Width = 113
        Height = 17
        Caption = 'Produto Tributado'
        TabOrder = 6
        OnClick = ckDiminuirEstoqueCheck
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
        TabOrder = 7
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
        TabOrder = 8
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
        TabOrder = 9
        OnChange = lbl_edtNomeChange
        OnEnter = lbl_edtNomeEnter
        OnExit = lbl_edtNomeExit
      end
      object grbTipoOleo: TGroupBox
        Left = 694
        Top = 0
        Width = 89
        Height = 55
        Caption = 'Tipo de '#211'leo'
        TabOrder = 10
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
      object ibeaNovo: TBitBtn
        Left = 3
        Top = 355
        Width = 68
        Height = 25
        Caption = '| &Novo'
        TabOrder = 11
        OnClick = ibeaNovoClick
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFD8E8DB7AB8853194441585291585293194447AB885D8E8DBFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F87AB885007B16007B1600841800
          7B16007B16007B16007B16007B167AB885F8F8F8FFFFFFFFFFFFFFFFFFF8F8F8
          4BA55B008418008C19008C19008C19008C19008C19008418008418007B16007B
          164BA55BF8F8F8FFFFFFFFFFFF7AB88500841800941A00941A00941A00941A00
          941A00941A00941A008C19008418007B16007B167AB885FFFFFFD5E6D8008418
          00941A009E1D00A61E00A61E42BB57D2F0D71BA935009C1C00941A008C190084
          18007B16007B16D8E8DB75B68000941A00A61E00AD1F00AD1F75D486FFFFFFFF
          FFFFD2F0D70FAA2B009E1D00941A008C19008418007B1675B68031944400A61E
          00AD1F0CB82BAEE9B8FFFFFFFFFFFFFFFFFFFFFFFFBDEAC506A923009E1D0094
          1A008C190084182D923F128E2800B62100B621BAEEC3FFFFFFFFFFFFC9F3D1B7
          EEC1FFFFFFFFFFFFA5E3B000A61E009C1C00941A00841811842512912800BA21
          00C6241ECE3EDEF8E3ABEEB709CC2C09CC2CC9F3D1FFFFFFFFFFFF87D89600A6
          1E00941A008C191185262F9E4300C62400C62400CE2512D13400CE2500CE2500
          CE2515CD36DEF8E3FFFFFFFFFFFF69CB7B009C1C008C192D923F75B68000BA21
          00CE2500CE2500D62700D62700D62700CE2500CE252DD24BF0FBF2FFFFFFA2E0
          AD009C1C008C1975B680D8E8DB009E1D00CE2500D62700D62700D62700D62700
          D62700CE2500C62442D35C99E2A600AD1F009E1D008418D8E8DBFFFFFF7AB885
          00B62100D62700D62700DD2800D62700D62700CE2500C62400C62400B62100AD
          1F00941A7AB885FFFFFFFFFFFFF8F8F84BA55B00BA2100D62700D62700D62700
          CE2500CE2500C62400BA2100B621009C1C4BA55BF8F8F8FFFFFFFFFFFFFFFFFF
          F8F8F875B680009E1D00C62400D62700CE2500CE2500C62400B62104931D7AB8
          85F8F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8E8DB7AB8852F9E4313
          9A2B139A2B2F9E437AB885D8E8DBFFFFFFFFFFFFFFFFFFFFFFFF}
      end
      object ibeaAlterar: TBitBtn
        Left = 76
        Top = 355
        Width = 68
        Height = 25
        Caption = '| &Alterar'
        TabOrder = 12
        OnClick = ibeaAlterarClick
        Glyph.Data = {
          36010000424D3601000000000000760000002800000011000000100000000100
          040000000000C0000000C40E0000C40E00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333300000003333330000000000300000003333330FFFFFFFF0300000003333
          330FFFFFFFF0300000003333330F00F000F0300000003330330FFFFFFFF03000
          00003339030F0800F0F0300000003339900FFFFFFFF0300000000999990F00F0
          00003000000009999990FFF0FF03300000000999999908F0F033300000000999
          9990FFF003333000000009999900000033333000000033399033333333333000
          0000333903333333333330000000333033333333333330000000}
      end
      object ibeaExcluir: TBitBtn
        Left = 148
        Top = 355
        Width = 68
        Height = 25
        Caption = '| &Excluir'
        TabOrder = 13
        OnClick = ibeaExcluirClick
        Glyph.Data = {
          4E010000424D4E01000000000000760000002800000013000000120000000100
          040000000000D8000000C40E0000C40E00001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333000003333883333333333333000003339118333339833333000003339
          1118333911833330000033391111839111183330000033339111181111183330
          0000333339111111118333300000333333911111183333300000333333311111
          8333333000003333333911118333333000003333339111118333333000003333
          3911181118333330000033339111839111833330000033339118333911183330
          0000333339133333911133300000333333333333391933300000333333333333
          333333300000333333333333333333300000}
      end
      object ibeaSair: TBitBtn
        Left = 710
        Top = 355
        Width = 68
        Height = 29
        Caption = '| &Sair'
        TabOrder = 14
        OnClick = ibeaSairClick
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          08000000000040020000120B0000120B00000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C00099A8AC00D8E9
          EC000020400000206000002080000020A0000020C0000020E000004000000040
          20000040400000406000004080000040A0000040C0000040E000006000000060
          20000060400000606000006080000060A0000060C0000060E000008000000080
          20000080400000806000008080000080A0000080C0000080E00000A0000000A0
          200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
          200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
          200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
          20004000400040006000400080004000A0004000C0004000E000402000004020
          20004020400040206000402080004020A0004020C0004020E000404000004040
          20004040400040406000404080004040A0004040C0004040E000406000004060
          20004060400040606000406080004060A0004060C0004060E000408000004080
          20004080400040806000408080004080A0004080C0004080E00040A0000040A0
          200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
          200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
          200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
          20008000400080006000800080008000A0008000C0008000E000802000008020
          20008020400080206000802080008020A0008020C0008020E000804000008040
          20008040400080406000804080008040A0008040C0008040E000806000008060
          20008060400080606000806080008060A0008060C0008060E000808000008080
          20008080400080806000808080008080A0008080C0008080E00080A0000080A0
          200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
          200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
          200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
          2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
          2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
          2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
          2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
          2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
          2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
          2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00984E0000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDFDFDFDFDFD
          FDFDFDFDFD9249FDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD9292929249FD
          FDFDFDFDFDFDFDFDFDFDFDFDFDFDFD92929292D2D29249FDFDFDFDFDFDFDFDFD
          FDFDFDFDFD929292D2D2D2D2D29249929292929292929292FDFDFDFDFD92DBDB
          DBDBDBDBD3D249E4EDEDEDED07070792FDFDFDFDFD92DBDBDBDBDBDBDBD2496A
          3232323232320792FDFDFDFDFD92DBDBDBDBDBDBDBDB496A3232323232320792
          FDFDFDFDFD92DBDBDBDBDBDBDBDB496A3232323232320792FDFDFDFDFD92DBDB
          DBDBDBDBDBDB496A3232323232320792FDFDFDFDFD92DBDBDBDBDBDBDBDB496A
          3232323232320792FDFDFDFDFD92DBDBDBDBDBEDDBDB496B3232323232320792
          FDFDFDFDFD92DBDBDBDBEDFFEDDB49F5F57C7C7373730792FDFDFDFDFD92E4DC
          DBDBEDFFEDDB49F5FFFFFFFF09090792FDFDFDFDFD92E4E4E4E4DCEDDBDB49F5
          FFFFFFFFFFFF0792FDFDFDFDFD92E4E4E4E4E4E4E4DB49F5FFFFFFFFFFFF0792
          FDFDFDFDFD92E4E4E4E4E4E4E4DB49F5FFFFFFFFFFFF0792FDFDFDFDFD92E4E4
          E4E4E4E4E4DB49F5FFFFFFFFFFFF0792FDFDFDFDFD92E4E4E4E4E4E4E4DB49F5
          FFFFFFFFFFFF0792FDFDFDFDFD92E4E4E4E4E4E4E4DB49F5FFFFFFFFFFFF0792
          FDFDFDFDFD92E4E4E4E4E4E4E4DB49F5FFFFFFFFFFFF0792FDFDFDFDFD9292DB
          DCE4E4E4E4DB49F5FFFFFFFFFFFF0792FDFDFDFDFDFDFD92929BDBE4E4DB4992
          9292929292929292FDFDFDFDFDFDFDFDFDFD92929B9B49FDFDFDFDFDFDFDFDFD
          FDFDFDFDFDFDFDFDFDFDFDFDFD9249FDFDFDFDFDFDFDFDFDFDFD}
      end
      object sb_ord_nome: TBitBtn
        Left = 552
        Top = 332
        Width = 93
        Height = 19
        Caption = '&Ordem Alfab'#233'tica'
        TabOrder = 15
        OnClick = sb_ord_nomeClick
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
      object cboFornecedoresProdutos: TComboBox
        Left = 3
        Top = 67
        Width = 245
        Height = 21
        BevelInner = bvSpace
        BevelKind = bkFlat
        ItemHeight = 13
        TabOrder = 3
        OnChange = cboFornecedoresProdutosChange
        OnEnter = cboFornecedoresProdutosEnter
        OnExit = cboFornecedoresProdutosExit
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
