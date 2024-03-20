object frmServicosCPagar: TfrmServicosCPagar
  Left = 135
  Top = 172
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Servi'#231'os do Contas a Pagar'
  ClientHeight = 360
  ClientWidth = 512
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
  object ckServicos: TBmsXPCheckBox
    Left = 32
    Top = 16
    Width = 73
    Height = 13
    WordWrap = False
    ShowAccelChar = True
    Layout = tlTop
    AutoSize = False
    Alignment = taLeftJustify
    Shadow.Color = clWindow
    Shadow.Style = ssTopLeft
    Shadow.OffSet = 0
    Caption = 'Servi'#231'os'
    TabOrder = 0
    onCheck = ckServicosCheck
  end
  object ckCustoDiario: TBmsXPCheckBox
    Left = 112
    Top = 16
    Width = 81
    Height = 13
    WordWrap = False
    ShowAccelChar = True
    Layout = tlTop
    AutoSize = False
    Alignment = taLeftJustify
    Shadow.Color = clWindow
    Shadow.Style = ssTopLeft
    Shadow.OffSet = 0
    Caption = 'Custo Di'#225'rio'
    TabOrder = 1
    onCheck = ckCustoDiarioCheck
  end
  object ibeaIncluir: TBmsXPButton
    Left = 248
    Top = 56
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
  object ibeaSair: TBmsXPButton
    Left = 425
    Top = 5
    Width = 80
    Height = 21
    Caption = '&Sair'
    Layout = tlTop
    WordWrap = False
    ShowAccelChar = True
    TabOrder = 3
    OnClick = ibeaSairClick
  end
  object ibeaAlterar: TBmsXPButton
    Left = 336
    Top = 56
    Width = 80
    Height = 21
    Caption = '&Alterar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clTeal
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Layout = tlTop
    WordWrap = False
    ShowAccelChar = True
    ParentFont = False
    TabOrder = 4
    OnClick = ibeaAlterarClick
  end
  object ibeaExcluir: TBmsXPButton
    Left = 424
    Top = 56
    Width = 80
    Height = 21
    Caption = '&Excluir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Layout = tlTop
    WordWrap = False
    ShowAccelChar = True
    ParentFont = False
    TabOrder = 5
    OnClick = ibeaExcluirClick
  end
  object lbl_edtNome: TLabeledEdit
    Left = 32
    Top = 56
    Width = 209
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 157
    EditLabel.Height = 13
    EditLabel.Caption = 'Nome do Servi'#231'o ou Custo Di'#225'rio'
    TabOrder = 6
  end
  object dbgServicosaPagar: TDBGrid
    Left = 5
    Top = 111
    Width = 501
    Height = 244
    Cursor = crHandPoint
    BorderStyle = bsNone
    FixedColor = clInfoBk
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
    ParentFont = False
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnCellClick = dbgServicosaPagarCellClick
  end
end
