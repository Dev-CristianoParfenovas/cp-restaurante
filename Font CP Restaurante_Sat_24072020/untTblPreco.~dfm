object frmTblPreco: TfrmTblPreco
  Left = 122
  Top = 164
  Width = 474
  Height = 251
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Tabela de Pre'#231'os'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 10
    Top = 2
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
  object lbl_edtFabricante: TLabel
    Left = 8
    Top = 88
    Width = 129
    Height = 13
    AutoSize = False
    Caption = '.'
  end
  object ibeaAtualizar: TBmsXPButton
    Left = 160
    Top = 88
    Width = 80
    Height = 21
    Hint = 'Atualiza todos os pre'#231'os do Fornecedor indicado'
    Caption = '&Atualizar Pre'#231'o'
    ShowHint = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Layout = tlTop
    WordWrap = False
    ShowAccelChar = True
    ParentFont = False
    ParentShowHint = False
    TabOrder = 0
    OnClick = ibeaAtualizarClick
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 181
    Width = 465
    Height = 17
    TabOrder = 1
    Visible = False
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 198
    Width = 466
    Height = 19
    Color = clWhite
    Panels = <
      item
        Style = psOwnerDraw
        Width = 150
      end>
    OnDrawPanel = StatusBar1DrawPanel
  end
  object ibeaCorrecao: TBmsXPButton
    Left = 256
    Top = 88
    Width = 80
    Height = 21
    Hint = 'Estorna todos os pre'#231'os do Fornecedor indicado'
    Caption = '&Corrigir Pre'#231'o'
    ShowHint = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Layout = tlTop
    WordWrap = False
    ShowAccelChar = True
    ParentFont = False
    ParentShowHint = False
    TabOrder = 3
    OnClick = ibeaCorrecaoClick
  end
  object ibeaSair: TBmsXPButton
    Left = 352
    Top = 88
    Width = 80
    Height = 21
    Hint = 'Fecha o formul'#225'rio'
    Caption = '&Sair'
    ShowHint = True
    Layout = tlTop
    WordWrap = False
    ShowAccelChar = True
    ParentShowHint = False
    TabOrder = 4
    OnClick = ibeaSairClick
  end
  object cboFornecedores: TComboBox
    Left = 8
    Top = 18
    Width = 145
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    ItemHeight = 13
    TabOrder = 5
    OnChange = cboFornecedoresChange
  end
  object GroupBox1: TGroupBox
    Left = 160
    Top = 13
    Width = 185
    Height = 57
    Caption = 'Atualizar Pre'#231'o de Venda em:'
    TabOrder = 6
    object ckPorcentagem: TBmsXPCheckBox
      Left = 7
      Top = 24
      Width = 89
      Height = 13
      WordWrap = False
      ShowAccelChar = True
      Layout = tlTop
      AutoSize = False
      Alignment = taLeftJustify
      Shadow.Color = clWindow
      Shadow.Style = ssTopLeft
      Shadow.OffSet = 0
      Caption = 'Porcentagem'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      onCheck = ckPorcentagemCheck
    end
    object ckValor: TBmsXPCheckBox
      Left = 104
      Top = 24
      Width = 49
      Height = 13
      WordWrap = False
      ShowAccelChar = True
      Layout = tlTop
      AutoSize = False
      Alignment = taLeftJustify
      Shadow.Color = clWindow
      Shadow.Style = ssTopLeft
      Shadow.OffSet = 0
      Caption = 'Valor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      onCheck = ckValorCheck
    end
  end
  object lbl_edtPorcentagem: TLabeledEdit
    Left = 360
    Top = 16
    Width = 77
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 73
    EditLabel.Height = 13
    EditLabel.Caption = 'Valor ou  (%)'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    TabOrder = 7
  end
end
