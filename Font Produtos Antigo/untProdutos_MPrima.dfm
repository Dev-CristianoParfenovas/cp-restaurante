object frmProd_MPrima: TfrmProd_MPrima
  Left = -5
  Top = 19
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Produtos/Mat'#233'ria Prima'
  ClientHeight = 539
  ClientWidth = 797
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcProdutos: TBmsXPPageControl
    Left = 0
    Top = 0
    Width = 792
    Height = 534
    ActivePage = tbsProduto
    HotTrack = True
    TabOrder = 0
    OnChange = pcProdutosChange
    object tbsProduto: TTabSheet
      Caption = 'Produto'
      object Label1: TLabel
        Left = 3
        Top = 2
        Width = 67
        Height = 13
        Caption = 'C'#243'd.Interno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_Ref: TLabel
        Left = 78
        Top = 2
        Width = 25
        Height = 13
        Caption = 'Ref.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_CodBarras: TLabel
        Left = 149
        Top = 2
        Width = 98
        Height = 13
        Caption = 'C'#243'digo de Barras'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_DescrProd: TLabel
        Left = 254
        Top = 2
        Width = 124
        Height = 13
        Caption = 'Descri'#231#227'o do Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object shapeCodBarras: TShape
        Left = 2
        Top = 53
        Width = 211
        Height = 61
        Brush.Color = clGradientActiveCaption
        Pen.Color = clGradientActiveCaption
      end
      object imgCodigoBarras: TImage
        Left = 6
        Top = 56
        Width = 204
        Height = 55
        Center = True
      end
      object lbl_Lote: TLabel
        Left = 361
        Top = 50
        Width = 26
        Height = 13
        Caption = 'Lote'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_VctoLote: TLabel
        Left = 422
        Top = 50
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
      object lbl_Fornecedores: TLabel
        Left = 220
        Top = 50
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
      object lbl_LocalEstoq: TLabel
        Left = 10
        Top = 119
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
      object shapeFoto: TShape
        Left = 129
        Top = 135
        Width = 71
        Height = 66
        Pen.Color = clGradientActiveCaption
      end
      object imgProduto: TImage
        Left = 133
        Top = 139
        Width = 63
        Height = 58
      end
      object lbl_FotoProd: TLabel
        Left = 147
        Top = 119
        Width = 26
        Height = 13
        Caption = 'Foto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape7: TShape
        Left = 129
        Top = 206
        Width = 71
        Height = 22
        Pen.Color = clGradientActiveCaption
      end
      object Shape6: TShape
        Left = 129
        Top = 233
        Width = 71
        Height = 22
        Pen.Color = clGradientActiveCaption
      end
      object lblAmpliarImagem: TLabel
        Left = 151
        Top = 211
        Width = 43
        Height = 13
        Cursor = crHandPoint
        Hint = 'Ampliar imagem'
        Alignment = taCenter
        AutoSize = False
        Caption = 'Ampliar'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        OnClick = lblAmpliarImagemClick
      end
      object imgAmpliar: TImage
        Left = 136
        Top = 209
        Width = 16
        Height = 18
        Cursor = crHandPoint
        Hint = 'Ampliar imagem'
        Enabled = False
        ParentShowHint = False
        Picture.Data = {
          07544269746D617036030000424D360300000000000036000000280000001000
          000010000000010018000000000000030000120B0000120B0000000000000000
          0000FF00FF4A667CBE9596FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6B9CC31E89E84B7AA3C89693FF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FF4BB4FE51B5FF2089E94B7AA2C69592FF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF51B7FE51B3FF1D87E64E7A
          A0CA9792FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FF51B7FE4EB2FF1F89E64E7BA2B99497FF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF52B8FE4BB1
          FF2787D95F6A76FF00FFA87875C4A398D5B6A7D0A59FFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FF55BDFFB5D6EDA3908EB39788EDE4C6FFFFD7
          FFFFD6FFFED7EAD8C2CEAEA3FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFCCB7B7D9B8A5FEF0C2FFFFD5B5C4E46887EEDDE4E2FFFFEEF6F0EBB48D89FF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFC6978FF6E0B5FFE1A7FFFFCA839CEB
          002BFCCED8F5FFFFFAFFFFFFDFD0BEFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFDBBAA8FFE9ACA99AB37E97E6456AF30435FB6584FB7F98FDDAE3EEF2EFD0C7
          9C96FF00FFFF00FFFF00FFFF00FFFF00FFE4C7AFFFEBA45661CE002CFF0235FC
          0335FB0134FB002AFDB0C1E8FAF8D7C6AC9AFF00FFFF00FFFF00FFFF00FFFF00
          FFDEBEAAFFECB4CFA995C3AEAD647BE10336FD9AAFEAC4D1E3EFF2DEF6F2D2C8
          A298FF00FFFF00FFFF00FFFF00FFFF00FFCA9F97FDEFC2FFECC0FFE39D7B82CB
          002FFFCAD0DAFFFFD1FFFFDAE5D9BBFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFDDC4AEFFFFFFFFF9E8CFB6A9A790A8E3C3A3FCE6B6FDF6C8BE9D8FFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD3BFBAF6F0DEFFF6BD
          FFEDABFEE9B5F4DEB7D0AD9DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFCAAD96CFAE9BDDBFA9DCB8A8FF00FFFF00FFFF00FFFF
          00FF}
        ShowHint = True
        Transparent = True
      end
      object lblProcurarImagem: TLabel
        Left = 151
        Top = 238
        Width = 43
        Height = 13
        Cursor = crHandPoint
        Hint = 'Adquirir imagem'
        Alignment = taCenter
        AutoSize = False
        Caption = 'Procurar'
        Enabled = False
        ParentShowHint = False
        ShowHint = True
        OnClick = lblProcurarImagemClick
      end
      object imgProcurarImagem: TImage
        Left = 136
        Top = 236
        Width = 16
        Height = 18
        Cursor = crHandPoint
        Hint = 'Adquirir imagem'
        Enabled = False
        ParentShowHint = False
        Picture.Data = {
          07544269746D617036030000424D360300000000000036000000280000001000
          000010000000010018000000000000030000120B0000120B0000000000000000
          0000FF00FFFF00FFA46769A46769A46769A46769A46769A46769A46769A46769
          A46769A46769A46769A46769A46769FF00FFFF00FFFF00FFA46769FEE9C7F4DA
          B5F3D5AAF2D0A0EFCB96EFC68BEDC182EBC17FEBC180EBC180F2C782A46769FF
          00FFFF00FFFF00FFA46769FCEACEF3DABCF2D5B1F0D0A7EECB9EEDC793EDC28B
          E9BD81E9BD7FE9BD7FEFC481A46769FF00FFFF00FFFF00FFA0675BFEEFDAFEBA
          72FFAD54FFA641FF9C30FF951FFF8E11FF8808FF8402FE8302EFC481A46769FF
          00FFFF00FFFF00FFA0675BFFF4E5FEC081FFB66BFFAF59FFA544FF9E33FF9722
          FF9013FF8809FF8403EFC480A46769FF00FFFF00FFFF00FFA7756BFFFBF0FEC2
          83FFBB74FFB66CFFB05CFFA74CFFA038FF9927FF9017FF8B0DEFC583A46769FF
          00FFFF00FFFF00FFA7756BFFFFFCB5C2A3C0BB8FE0BB83FFB76CFFB159FFAA47
          FFA135FF9A22FF9218F2C98CA46769FF00FFFF00FFFF00FFBC8268FFFFFF19C9
          FE0AC0F818C0ED3CC0D768BDBC8EBA9D96B58EC9AA63F7A03BF3CE97A46769FF
          00FFFF00FFFF00FFBC8268FFFFFF14C6CF00BCC700BCCE00BDC600BDCE00B8D7
          00B7D009BAC034B69AF6D3A0A46769FF00FFFF00FFFF00FFD1926DFFFFFF4883
          4F296D34306C3A2A7530286F343F7448457F4522723123703DEBCFA4A46769FF
          00FFFF00FFFF00FFD1926DFFFFFFD3B49CB89A899A877D6E626C93807BE5C099
          FAD1A4D5AF93B89A89B6AA93A46769FF00FFFF00FFFF00FFDA9D75FFFFFFFFE9
          BCFFE5B2F8DDAFD8C1A0F0D5AAFFE5B0EDD8C9A56B5FA56B5FA56B5FA46769FF
          00FFFF00FFFF00FFDA9D75FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBFFFEF7
          DAC1BAA56B5FE19E55E68F31B56D4DFF00FFFF00FFFF00FFE7AB79FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCC7C5A56B5FF8B55CBF7A5CFF00FFFF
          00FFFF00FFFF00FFE7AB79FBF4F0FBF4EFFAF3EFFAF3EFF8F2EFF7F2EFF7F2EF
          D8C2C0A56B5FC1836CFF00FFFF00FFFF00FFFF00FFFF00FFE7AB79D1926DD192
          6DD1926DD1926DD1926DD1926DD1926DD1926DA56B5FFF00FFFF00FFFF00FFFF
          00FF}
        ShowHint = True
        Transparent = True
      end
      object Label2: TLabel
        Left = 219
        Top = 100
        Width = 49
        Height = 13
        Caption = 'R$Custo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_Vendaa: TLabel
        Left = 349
        Top = 100
        Width = 69
        Height = 13
        Caption = 'R$Venda(A)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_Vendab: TLabel
        Left = 425
        Top = 100
        Width = 69
        Height = 13
        Caption = 'R$Venda(B)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_Vendac: TLabel
        Left = 501
        Top = 100
        Width = 69
        Height = 13
        Caption = 'R$Venda(C)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_Lucro: TLabel
        Left = 309
        Top = 100
        Width = 18
        Height = 13
        Caption = '(%)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_LucroVenda: TLabel
        Left = 681
        Top = 101
        Width = 18
        Height = 13
        Caption = '(%)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 251
        Top = 144
        Width = 132
        Height = 13
        Caption = 'Informa'#231#227'o do Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object lbl_QtdeGeralEstoq: TLabel
        Left = 208
        Top = 175
        Width = 62
        Height = 13
        Caption = 'Qtde.Geral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_QtdeMinima: TLabel
        Left = 285
        Top = 175
        Width = 59
        Height = 13
        Caption = 'Qt.M'#237'nima'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_VlrEstoq: TLabel
        Left = 361
        Top = 175
        Width = 63
        Height = 13
        Caption = 'R$Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_EntradaEstoq: TLabel
        Left = 610
        Top = 145
        Width = 113
        Height = 13
        Caption = 'Entrada no Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object lbl_QtdeEntrEstoq: TLabel
        Left = 578
        Top = 175
        Width = 28
        Height = 13
        Caption = 'Qtde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_MinimoEntrEstoq: TLabel
        Left = 646
        Top = 175
        Width = 42
        Height = 13
        Caption = 'M'#237'nimo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_VlrEntrEstoq: TLabel
        Left = 715
        Top = 175
        Width = 63
        Height = 13
        Caption = 'R$Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_Modalidade: TLabel
        Left = 577
        Top = 2
        Width = 106
        Height = 13
        Caption = 'Unidade de Venda'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_Qtde: TLabel
        Left = 697
        Top = 2
        Width = 32
        Height = 13
        Caption = 'Qtde.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_Grupo: TLabel
        Left = 539
        Top = 49
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
        Left = 666
        Top = 49
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
      object lbl_Vendad: TLabel
        Left = 583
        Top = 100
        Width = 70
        Height = 13
        Caption = 'R$Venda(D)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clPurple
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_edtCodigo: TmxFlatEdit
        Left = 1
        Top = 18
        Width = 69
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object lbl_edtRef: TmxFlatEdit
        Left = 76
        Top = 18
        Width = 66
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        MaxLength = 10
        TabOrder = 1
        OnExit = lbl_edtRefExit
        OnKeyPress = lbl_edtRefKeyPress
      end
      object lbl_edtCodBarra: TmxFlatEdit
        Left = 148
        Top = 18
        Width = 98
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        MaxLength = 13
        TabOrder = 2
        OnChange = lbl_edtCodBarraChange
        OnExit = lbl_edtCodBarraExit
        OnKeyPress = lbl_edtCodBarraKeyPress
      end
      object lbl_edtNomeProduto: TmxFlatEdit
        Left = 252
        Top = 18
        Width = 317
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnExit = lbl_edtNomeProdutoExit
        OnKeyPress = lbl_edtNomeProdutoKeyPress
      end
      object lbl_edtNumLote: TmxFlatEdit
        Left = 359
        Top = 65
        Width = 58
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        MaxLength = 10
        TabOrder = 6
      end
      object dtpVctoLote: TmxFlatDateTimePicker
        Left = 421
        Top = 65
        Width = 101
        Height = 21
        Date = 39069.824871469900000000
        Time = 39069.824871469900000000
        TabOrder = 7
        OnChange = dtpVctoLoteChange
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
      end
      object cboFornecedores: TmxFlatComboBox
        Left = 218
        Top = 65
        Width = 137
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        ItemHeight = 13
        TabOrder = 8
        OnKeyPress = cboFornecedoresKeyPress
      end
      object dbgProdutos: TDBGrid
        Left = 1
        Top = 326
        Width = 779
        Height = 178
        Cursor = crHandPoint
        BorderStyle = bsNone
        Color = clInfoBk
        DataSource = dmModule.dtsProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
        ParentFont = False
        TabOrder = 21
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = dbgProdutosCellClick
        OnDrawColumnCell = dbgProdutosDrawColumnCell
      end
      object ListLocalEstocagem: TmxFlatCheckListBox
        Left = 1
        Top = 135
        Width = 121
        Height = 118
        Flat = True
        HeaderBackgroundColor = clWhite
        ItemHeight = 13
        TabOrder = 22
        Activate = False
        BorderColor = clGradientActiveCaption
        ShowBorder = True
        Version = '1.26'
      end
      object lbl_edtCusto: TmxFlatEdit
        Left = 220
        Top = 114
        Width = 70
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        TabOrder = 9
        Text = '0,00'
        OnChange = lbl_edtCustoChange
        OnExit = lbl_edtCustoExit
        OnKeyPress = lbl_edtCustoKeyPress
      end
      object lbl_edtVendaa: TmxFlatEdit
        Left = 350
        Top = 114
        Width = 70
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        TabOrder = 11
        Text = '0,00'
        OnChange = lbl_edtVendaaChange
        OnExit = lbl_edtVendaaExit
        OnKeyPress = lbl_edtVendaaKeyPress
      end
      object lbl_edtVendab: TmxFlatEdit
        Left = 426
        Top = 114
        Width = 70
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        TabOrder = 12
        Text = '0,00'
        OnChange = lbl_edtVendabChange
        OnExit = lbl_edtVendabExit
        OnKeyPress = lbl_edtVendabKeyPress
      end
      object lbl_edtVendac: TmxFlatEdit
        Left = 502
        Top = 114
        Width = 70
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        TabOrder = 13
        Text = '0,00'
        OnChange = lbl_edtVendacChange
        OnExit = lbl_edtVendacExit
        OnKeyPress = lbl_edtVendacKeyPress
      end
      object lbl_edtLucro: TmxFlatEdit
        Left = 296
        Top = 114
        Width = 48
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        TabOrder = 10
        OnExit = lbl_edtLucroExit
        OnKeyPress = lbl_edtLucroKeyPress
      end
      object lbl_edtLucroVenda: TmxFlatEdit
        Left = 667
        Top = 114
        Width = 48
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        TabOrder = 14
        OnExit = lbl_edtLucroVendaExit
      end
      object lbl_edtEstoqgeral: TmxFlatEdit
        Left = 208
        Top = 189
        Width = 70
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        ReadOnly = True
        TabOrder = 18
      end
      object lbl_edtEstMin: TmxFlatEdit
        Left = 284
        Top = 189
        Width = 70
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        ReadOnly = True
        TabOrder = 19
      end
      object lbl_edtVlrestoq: TmxFlatEdit
        Left = 360
        Top = 189
        Width = 70
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        ReadOnly = True
        TabOrder = 20
      end
      object lbl_edtQtdeEstoque: TmxFlatEdit
        Left = 560
        Top = 189
        Width = 70
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        TabOrder = 15
        OnChange = lbl_edtQtdeEstoqueChange
        OnExit = lbl_edtQtdeEstoqueExit
        OnKeyPress = lbl_edtQtdeEstoqueKeyPress
      end
      object lbl_edtEstoqueM: TmxFlatEdit
        Left = 636
        Top = 189
        Width = 70
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        TabOrder = 16
        OnChange = lbl_edtEstoqueMChange
        OnKeyPress = lbl_edtEstoqueMKeyPress
      end
      object lbl_edtVlrEstoque: TmxFlatEdit
        Left = 712
        Top = 189
        Width = 70
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        TabOrder = 17
        OnChange = lbl_edtVlrEstoqueChange
      end
      object grpBoxPesquisa: TmxFlatGroupBox
        Left = 208
        Top = 217
        Width = 574
        Height = 57
        Activate = False
        BorderColor = clNavy
        Flat = True
        ShowBorder = True
        Version = '1.26'
        TabOrder = 23
        object lbl_CodPesquisa: TLabel
          Left = 3
          Top = 30
          Width = 40
          Height = 13
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl_edtRefPesquisa: TLabel
          Left = 137
          Top = 30
          Width = 25
          Height = 13
          Caption = 'Ref.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 243
          Top = 31
          Width = 33
          Height = 13
          Caption = 'Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object sb_ord_nome: TmxFlatSpeedButton
          Left = 442
          Top = 27
          Width = 115
          Height = 22
          Caption = 'Ordenar por Nomes'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = sb_ord_nomeClick
          Activate = False
          BorderColor = clBlack
          ShowBorder = True
          Version = '1.26'
        end
        object lbl_edtCodP: TmxFlatEdit
          Left = 47
          Top = 28
          Width = 86
          Height = 21
          Activate = False
          BorderColor = clGradientActiveCaption
          Flat = True
          ShowBorder = True
          Version = '1.26'
          TabOrder = 0
          OnExit = lbl_edtCodPExit
          OnKeyPress = lbl_edtCodPKeyPress
        end
        object lbl_edtNumRef: TmxFlatEdit
          Left = 168
          Top = 28
          Width = 70
          Height = 21
          Activate = False
          BorderColor = clGradientActiveCaption
          Flat = True
          ShowBorder = True
          Version = '1.26'
          TabOrder = 1
          OnChange = lbl_edtNumRefChange
          OnKeyPress = lbl_edtNumRefKeyPress
        end
        object lbl_edtNome: TmxFlatEdit
          Left = 282
          Top = 28
          Width = 155
          Height = 21
          Activate = False
          BorderColor = clGradientActiveCaption
          Flat = True
          ShowBorder = True
          Version = '1.26'
          TabOrder = 2
          OnChange = lbl_edtNomeChange
        end
      end
      object cboModalidade: TmxFlatComboBox
        Left = 575
        Top = 18
        Width = 107
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        ItemHeight = 13
        TabOrder = 4
        OnKeyPress = cboModalidadeKeyPress
      end
      object ibeaNovo: TBmsXPButton
        Left = 3
        Top = 294
        Width = 80
        Height = 29
        Caption = '&Novo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Layout = tlCenter
        WordWrap = False
        ShowAccelChar = True
        ParentFont = False
        TabOrder = 24
        OnClick = ibeaNovoClick
      end
      object ibeaAlterar: TBmsXPButton
        Left = 91
        Top = 294
        Width = 80
        Height = 29
        Caption = '&Alterar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Layout = tlCenter
        WordWrap = False
        ShowAccelChar = True
        ParentFont = False
        TabOrder = 25
        OnClick = ibeaAlterarClick
      end
      object ibeaExcluir: TBmsXPButton
        Left = 180
        Top = 294
        Width = 80
        Height = 29
        Caption = '&Excluir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Layout = tlCenter
        WordWrap = False
        ShowAccelChar = True
        ParentFont = False
        TabOrder = 26
        OnClick = ibeaExcluirClick
      end
      object ibeaSair: TBmsXPButton
        Left = 690
        Top = 294
        Width = 80
        Height = 29
        Caption = '&Sair'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Layout = tlCenter
        WordWrap = False
        ShowAccelChar = True
        ParentFont = False
        TabOrder = 27
        OnClick = ibeaSairClick
      end
      object lbl_edtQtde: TmxFlatEdit
        Left = 697
        Top = 17
        Width = 70
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        TabOrder = 5
        Text = '0'
        OnKeyPress = lbl_edtQtdeKeyPress
      end
      object cboGrupo: TmxFlatComboBox
        Left = 536
        Top = 65
        Width = 124
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        ItemHeight = 13
        TabOrder = 28
        OnChange = cboGrupoChange
      end
      object cboSubgrupo: TmxFlatComboBox
        Left = 664
        Top = 65
        Width = 115
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        ItemHeight = 13
        TabOrder = 29
      end
      object ckVctoLote: TBmsXPCheckBox
        Left = 484
        Top = 50
        Width = 41
        Height = 13
        WordWrap = False
        ShowAccelChar = True
        Layout = tlTop
        AutoSize = False
        Alignment = taLeftJustify
        Shadow.Color = clWindow
        Shadow.Style = ssTopLeft
        Shadow.OffSet = 0
        Caption = 'Sim'
        TabOrder = 30
      end
      object ckAcrescentarEstoq: TBmsXPCheckBox
        Left = 435
        Top = 185
        Width = 123
        Height = 13
        WordWrap = False
        ShowAccelChar = True
        Layout = tlTop
        AutoSize = False
        Alignment = taLeftJustify
        Shadow.Color = clWindow
        Shadow.Style = ssTopLeft
        Shadow.OffSet = 0
        Caption = 'Acrescentar Estoque'
        TabOrder = 31
        onCheck = ckAcrescentarEstoqCheck
      end
      object ckDiminuirEstoque: TBmsXPCheckBox
        Left = 435
        Top = 201
        Width = 100
        Height = 13
        WordWrap = False
        ShowAccelChar = True
        Layout = tlTop
        AutoSize = False
        Alignment = taLeftJustify
        Shadow.Color = clWindow
        Shadow.Style = ssTopLeft
        Shadow.OffSet = 0
        Caption = 'Alterar Estoque'
        TabOrder = 32
        onCheck = ckDiminuirEstoqueCheck
      end
      object lbl_edtVendad: TmxFlatEdit
        Left = 582
        Top = 114
        Width = 70
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        TabOrder = 33
        Text = '0,00'
        OnExit = lbl_edtVendadExit
        OnKeyPress = lbl_edtVendadKeyPress
      end
    end
    object tbsMatPrima: TTabSheet
      Caption = 'Mat'#233'ria Prima'
      ImageIndex = 1
      object Label5: TLabel
        Left = 3
        Top = 2
        Width = 67
        Height = 13
        Caption = 'C'#243'd.Interno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 78
        Top = 2
        Width = 25
        Height = 13
        Caption = 'Ref.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 149
        Top = 2
        Width = 98
        Height = 13
        Caption = 'C'#243'digo de Barras'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 254
        Top = 2
        Width = 124
        Height = 13
        Caption = 'Descri'#231#227'o do Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 292
        Top = 49
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
      object Shape1: TShape
        Left = 434
        Top = 64
        Width = 211
        Height = 61
        Brush.Color = clGradientActiveCaption
        Pen.Color = clGradientActiveCaption
      end
      object Label10: TLabel
        Left = 4
        Top = 50
        Width = 26
        Height = 13
        Caption = 'Lote'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 79
        Top = 50
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
      object Label12: TLabel
        Left = 171
        Top = 50
        Width = 61
        Height = 13
        Caption = 'Fabricante'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 3
        Top = 100
        Width = 49
        Height = 13
        Caption = 'R$Custo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 93
        Top = 100
        Width = 18
        Height = 13
        Caption = '(%)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 133
        Top = 100
        Width = 69
        Height = 13
        Caption = 'R$Venda(A)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 209
        Top = 100
        Width = 69
        Height = 13
        Caption = 'R$Venda(B)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 285
        Top = 100
        Width = 69
        Height = 13
        Caption = 'R$Venda(C)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 377
        Top = 101
        Width = 18
        Height = 13
        Caption = '(%)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 45
        Top = 157
        Width = 132
        Height = 13
        Caption = 'Informa'#231#227'o do Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 291
        Top = 158
        Width = 113
        Height = 13
        Caption = 'Entrada no Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 2
        Top = 188
        Width = 62
        Height = 13
        Caption = 'Qtde.Geral'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 79
        Top = 188
        Width = 59
        Height = 13
        Caption = 'Qt.M'#237'nima'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label23: TLabel
        Left = 155
        Top = 188
        Width = 63
        Height = 13
        Caption = 'R$Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label24: TLabel
        Left = 259
        Top = 188
        Width = 28
        Height = 13
        Caption = 'Qtde'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label25: TLabel
        Left = 327
        Top = 188
        Width = 42
        Height = 13
        Caption = 'M'#237'nimo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label26: TLabel
        Left = 396
        Top = 188
        Width = 63
        Height = 13
        Caption = 'R$Estoque'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object imgCodBarrasMP: TImage
        Left = 438
        Top = 67
        Width = 204
        Height = 55
        Center = True
      end
      object Label27: TLabel
        Left = 666
        Top = 49
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
      object Label28: TLabel
        Left = 490
        Top = 49
        Width = 98
        Height = 13
        Caption = 'C'#243'digo de Barras'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object mxFlatBevel1: TmxFlatBevel
        Left = 4
        Top = 239
        Width = 776
        Height = 2
        BorderColor = clBtnShadow
        Flat = True
        ShowBorder = True
        Version = '1.26'
      end
      object lbl_edtCodigoMP: TmxFlatEdit
        Left = 1
        Top = 18
        Width = 69
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object lbl_edtRefMP: TmxFlatEdit
        Left = 76
        Top = 18
        Width = 66
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        TabOrder = 1
      end
      object lbl_edtCodBarrasMP: TmxFlatEdit
        Left = 148
        Top = 18
        Width = 98
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        MaxLength = 13
        TabOrder = 2
        OnChange = lbl_edtCodBarrasMPChange
        OnKeyPress = lbl_edtCodBarrasMPKeyPress
      end
      object lbl_edtNomeProdMP: TmxFlatEdit
        Left = 252
        Top = 18
        Width = 388
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object cboFornecedorMP: TmxFlatComboBox
        Left = 293
        Top = 65
        Width = 137
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        ItemHeight = 13
        TabOrder = 4
      end
      object lbl_edtLoteMP: TmxFlatEdit
        Left = 2
        Top = 65
        Width = 70
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        TabOrder = 5
      end
      object dtpVctoLoteMP: TmxFlatDateTimePicker
        Left = 78
        Top = 65
        Width = 85
        Height = 21
        Date = 39069.824871469900000000
        Time = 39069.824871469900000000
        TabOrder = 6
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
      end
      object lbl_edtFabrMP: TmxFlatEdit
        Left = 169
        Top = 65
        Width = 118
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        TabOrder = 7
      end
      object lbl_edtCustoMP: TmxFlatEdit
        Left = 4
        Top = 114
        Width = 70
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        TabOrder = 8
        Text = '0,00'
        OnExit = lbl_edtCustoMPExit
      end
      object lbl_edtLucroMP: TmxFlatEdit
        Left = 80
        Top = 114
        Width = 48
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        TabOrder = 9
        OnExit = lbl_edtLucroMPExit
      end
      object lbl_edtVendaaMP: TmxFlatEdit
        Left = 134
        Top = 114
        Width = 70
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        TabOrder = 10
        Text = '0,00'
        OnExit = lbl_edtVendaaMPExit
      end
      object lbl_edtVendabMP: TmxFlatEdit
        Left = 210
        Top = 114
        Width = 70
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        TabOrder = 11
        Text = '0,00'
        OnExit = lbl_edtVendabMPExit
      end
      object lbl_edtVendacMP: TmxFlatEdit
        Left = 286
        Top = 114
        Width = 70
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        TabOrder = 12
        Text = '0,00'
        OnExit = lbl_edtVendacMPExit
      end
      object lbl_edtLucroVendaMP: TmxFlatEdit
        Left = 362
        Top = 114
        Width = 48
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        TabOrder = 13
        OnExit = lbl_edtLucroVendaMPExit
      end
      object lbl_edtQtdeGeralMP: TmxFlatEdit
        Left = 2
        Top = 202
        Width = 70
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        TabOrder = 14
      end
      object lbl_edtQtdeMinimaMP: TmxFlatEdit
        Left = 78
        Top = 202
        Width = 70
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        TabOrder = 15
      end
      object lbl_edtVlrEstoqueMP: TmxFlatEdit
        Left = 154
        Top = 202
        Width = 70
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        TabOrder = 16
      end
      object lbl_edtQtdeEntrEstMP: TmxFlatEdit
        Left = 241
        Top = 202
        Width = 70
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        TabOrder = 17
        OnExit = lbl_edtQtdeEstoqueExit
      end
      object lbl_edtMinimoEstMP: TmxFlatEdit
        Left = 317
        Top = 202
        Width = 70
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        TabOrder = 18
      end
      object lbl_edtVlrEntrEstMP: TmxFlatEdit
        Left = 393
        Top = 202
        Width = 70
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        TabOrder = 19
      end
      object dbgProdutosMP: TDBGrid
        Left = -8
        Top = 306
        Width = 792
        Height = 197
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
        TabOrder = 20
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = dbgProdutosMPCellClick
      end
      object ibeaNovoMP: TBmsXPButton
        Left = 491
        Top = 196
        Width = 80
        Height = 29
        Caption = '&Novo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Layout = tlCenter
        WordWrap = False
        ShowAccelChar = True
        ParentFont = False
        TabOrder = 21
        OnClick = ibeaNovoMPClick
      end
      object ibeaAlterarMP: TBmsXPButton
        Left = 579
        Top = 196
        Width = 80
        Height = 29
        Caption = '&Alterar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Layout = tlCenter
        WordWrap = False
        ShowAccelChar = True
        ParentFont = False
        TabOrder = 22
        OnClick = ibeaAlterarMPClick
      end
      object ibeaExcluirMP: TBmsXPButton
        Left = 668
        Top = 196
        Width = 80
        Height = 29
        Caption = '&Excluir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Layout = tlCenter
        WordWrap = False
        ShowAccelChar = True
        ParentFont = False
        TabOrder = 23
        OnClick = ibeaExcluirMPClick
      end
      object ibeaSairMP: TBmsXPButton
        Left = 703
        Top = 3
        Width = 80
        Height = 29
        Caption = '&Sair'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Layout = tlCenter
        WordWrap = False
        ShowAccelChar = True
        ParentFont = False
        TabOrder = 24
        OnClick = ibeaSairMPClick
      end
      object ListLocalEstoqMP: TmxFlatCheckListBox
        Left = 657
        Top = 64
        Width = 121
        Height = 73
        Flat = True
        HeaderBackgroundColor = clWhite
        ItemHeight = 13
        TabOrder = 25
        Activate = False
        BorderColor = clGradientActiveCaption
        ShowBorder = True
        Version = '1.26'
      end
      object mxFlatGroupBox1: TmxFlatGroupBox
        Left = 87
        Top = 243
        Width = 568
        Height = 57
        Activate = False
        BorderColor = clNavy
        Flat = True
        ShowBorder = True
        Version = '1.26'
        TabOrder = 26
        object Label29: TLabel
          Left = 3
          Top = 30
          Width = 40
          Height = 13
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label30: TLabel
          Left = 137
          Top = 30
          Width = 25
          Height = 13
          Caption = 'Ref.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label31: TLabel
          Left = 243
          Top = 31
          Width = 33
          Height = 13
          Caption = 'Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object mxFlatSpeedButton1: TmxFlatSpeedButton
          Left = 442
          Top = 27
          Width = 115
          Height = 22
          Caption = 'Ordenar por Nomes'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Activate = False
          BorderColor = clBlack
          ShowBorder = True
          Version = '1.26'
        end
        object mxFlatEdit1: TmxFlatEdit
          Left = 47
          Top = 28
          Width = 86
          Height = 21
          Activate = False
          BorderColor = clGradientActiveCaption
          Flat = True
          ShowBorder = True
          Version = '1.26'
          TabOrder = 0
        end
        object mxFlatEdit2: TmxFlatEdit
          Left = 168
          Top = 28
          Width = 70
          Height = 21
          Activate = False
          BorderColor = clGradientActiveCaption
          Flat = True
          ShowBorder = True
          Version = '1.26'
          TabOrder = 1
        end
        object mxFlatEdit3: TmxFlatEdit
          Left = 282
          Top = 28
          Width = 155
          Height = 21
          Activate = False
          BorderColor = clGradientActiveCaption
          Flat = True
          ShowBorder = True
          Version = '1.26'
          TabOrder = 2
        end
      end
    end
    object tbsKitComp: TTabSheet
      Caption = 'Kit/Composi'#231#227'o de Produtos'
      ImageIndex = 2
      object Label32: TLabel
        Left = 107
        Top = 2
        Width = 25
        Height = 13
        Caption = 'Ref.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_NomeKit: TLabel
        Left = 192
        Top = 2
        Width = 70
        Height = 13
        Caption = 'Nome do Kit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_ProdComp: TLabel
        Left = 460
        Top = 2
        Width = 152
        Height = 13
        Caption = 'Produtos para Composi'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object shapeNomeProdKit: TShape
        Left = 215
        Top = 68
        Width = 375
        Height = 31
        Brush.Color = clGradientActiveCaption
        Pen.Color = clGradientActiveCaption
      end
      object shapeCodBarrasKit: TShape
        Left = 0
        Top = 68
        Width = 211
        Height = 61
        Brush.Color = clGradientActiveCaption
        Pen.Color = clGradientActiveCaption
      end
      object imgCodBarrasKit: TImage
        Left = 4
        Top = 71
        Width = 204
        Height = 55
        Center = True
      end
      object lbl_ProdutoMP: TLabel
        Left = 220
        Top = 72
        Width = 366
        Height = 24
        AutoSize = False
        Caption = '     '
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label33: TLabel
        Left = 602
        Top = 53
        Width = 49
        Height = 13
        Caption = 'R$Custo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label34: TLabel
        Left = 687
        Top = 54
        Width = 69
        Height = 13
        Caption = 'R$Venda(A)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_Descricao: TLabel
        Left = 346
        Top = 52
        Width = 58
        Height = 13
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_TotalCustoKit: TLabel
        Left = 356
        Top = 122
        Width = 82
        Height = 13
        Caption = 'R$Custo Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label36: TLabel
        Left = 477
        Top = 123
        Width = 86
        Height = 13
        Caption = 'R$Venda Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_CodBarrasKita: TLabel
        Left = 3
        Top = 2
        Width = 98
        Height = 13
        Caption = 'C'#243'digo de Barras'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_CodBKit: TLabel
        Left = 36
        Top = 53
        Width = 125
        Height = 13
        Caption = 'C'#243'digo de Barras - Kit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_edtRefKit: TmxFlatEdit
        Left = 105
        Top = 18
        Width = 80
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        TabOrder = 0
      end
      object lbl_edtNomeKit: TmxFlatEdit
        Left = 191
        Top = 18
        Width = 261
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        TabOrder = 1
      end
      object cboProdKit: TmxFlatComboBox
        Left = 458
        Top = 18
        Width = 231
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        ItemHeight = 13
        TabOrder = 2
        OnChange = cboProdKitChange
      end
      object ibaSairKit: TBmsXPButton
        Left = 701
        Top = 3
        Width = 80
        Height = 29
        Caption = '&Sair'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Layout = tlCenter
        WordWrap = False
        ShowAccelChar = True
        ParentFont = False
        TabOrder = 3
        OnClick = ibaSairKitClick
      end
      object dbgKit: TDBGrid
        Left = -8
        Top = 180
        Width = 792
        Height = 315
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
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clBlack
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = dbgProdutosMPCellClick
      end
      object ibeaIncluirKit: TBmsXPButton
        Left = 266
        Top = 140
        Width = 77
        Height = 29
        Caption = '&Incluir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Layout = tlCenter
        WordWrap = False
        ShowAccelChar = True
        ParentFont = False
        TabOrder = 5
        OnClick = ibeaIncluirKitClick
      end
      object BmsXPButton2: TBmsXPButton
        Left = 89
        Top = 140
        Width = 80
        Height = 29
        Caption = '&Alterar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Layout = tlCenter
        WordWrap = False
        ShowAccelChar = True
        ParentFont = False
        TabOrder = 6
        OnClick = ibeaAlterarMPClick
      end
      object BmsXPButton3: TBmsXPButton
        Left = 178
        Top = 140
        Width = 80
        Height = 29
        Caption = '&Excluir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Layout = tlCenter
        WordWrap = False
        ShowAccelChar = True
        ParentFont = False
        TabOrder = 7
        OnClick = ibeaExcluirMPClick
      end
      object lbl_edtCustoKit: TmxFlatEdit
        Left = 600
        Top = 68
        Width = 80
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        TabOrder = 8
        Text = '0,00'
      end
      object lbl_edtVendaKit: TmxFlatEdit
        Left = 686
        Top = 68
        Width = 80
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        TabOrder = 9
        Text = '0,00'
      end
      object lbl_edtVlrCustoTotal: TmxFlatEdit
        Left = 354
        Top = 137
        Width = 116
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        Text = '0,00'
      end
      object lbl_edtVlrKitTotal: TmxFlatEdit
        Left = 476
        Top = 137
        Width = 116
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -24
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
        Text = '0,00'
      end
      object lbl_edtCodBarrasKit: TmxFlatEdit
        Left = 1
        Top = 18
        Width = 98
        Height = 21
        Activate = False
        BorderColor = clGradientActiveCaption
        Flat = True
        ShowBorder = True
        Version = '1.26'
        MaxLength = 13
        TabOrder = 12
        OnChange = lbl_edtCodBarrasMPChange
        OnKeyPress = lbl_edtCodBarrasMPKeyPress
      end
      object ibeaFinalizar: TBmsXPButton
        Left = 599
        Top = 140
        Width = 80
        Height = 29
        Caption = '&Finalizar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        Layout = tlCenter
        WordWrap = False
        ShowAccelChar = True
        ParentFont = False
        TabOrder = 13
        OnClick = ibeaFinalizarClick
      end
    end
  end
  object opDialogImagem: TOpenDialog
    Filter = 
      'Todas Imagens (*.bmp,*.jpg)|*.jpg;*.bmp|Imagens JPEG (*.jpg)|*.j' +
      'pg|Imagens Bitmap (*.bmp)|*.bmp'
    Top = 320
  end
  object popMnuImagem: TPopupMenu
    Top = 296
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
    Left = 184
    Top = 280
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
