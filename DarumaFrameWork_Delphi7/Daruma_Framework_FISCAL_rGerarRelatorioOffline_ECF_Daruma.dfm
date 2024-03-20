object FR_FISCAL_rGerarRelatorioOffline: TFR_FISCAL_rGerarRelatorioOffline
  Left = 192
  Top = 122
  Width = 329
  Height = 601
  Caption = 'M'#233'todo rGerarRelatorioOffline_ECF_Daruma'
  Color = clBtnFace
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 198
    Width = 297
    Height = 75
    Caption = 'Intervalo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label3: TLabel
      Left = 9
      Top = 28
      Width = 19
      Height = 13
      Caption = 'Por:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LBL_IntervaloInicial: TLabel
      Left = 88
      Top = 29
      Width = 30
      Height = 13
      Caption = 'Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object LBL_IntervaloFinal: TLabel
      Left = 190
      Top = 30
      Width = 25
      Height = 13
      Caption = 'Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
  end
  object CBX_Tipo: TComboBox
    Left = 17
    Top = 245
    Width = 72
    Height = 21
    ItemHeight = 13
    ItemIndex = 2
    TabOrder = 2
    Text = 'DATAM'
    OnClick = CBX_TipoClick
    Items.Strings = (
      'COO'
      'CRZ'
      'DATAM'
      '')
  end
  object DTP_DataInicial: TDateTimePicker
    Left = 94
    Top = 245
    Width = 96
    Height = 21
    Date = 40493.445491215280000000
    Time = 40493.445491215280000000
    TabOrder = 3
  end
  object DTP_DataFinal: TDateTimePicker
    Left = 198
    Top = 245
    Width = 94
    Height = 21
    Date = 40493.445543518520000000
    Time = 40493.445543518520000000
    TabOrder = 4
  end
  object BTN_GerarRelatorio: TButton
    Left = 128
    Top = 529
    Width = 80
    Height = 25
    Caption = 'Gerar Relat'#243'rio'
    TabOrder = 8
    OnClick = BTN_GerarRelatorioClick
  end
  object BT_FECHAR: TButton
    Left = 222
    Top = 528
    Width = 81
    Height = 25
    Caption = 'Fechar'
    TabOrder = 9
    OnClick = BT_FECHARClick
  end
  object EDT_Inicial: TEdit
    Left = 95
    Top = 244
    Width = 94
    Height = 21
    TabOrder = 5
    Visible = False
  end
  object EDT_Final: TEdit
    Left = 198
    Top = 245
    Width = 94
    Height = 21
    TabOrder = 6
    Visible = False
  end
  object GBX_Relatorio: TGroupBox
    Left = 8
    Top = 7
    Width = 297
    Height = 122
    Caption = 'Relat'#243'rio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    object CHK_NFP: TCheckBox
      Left = 16
      Top = 54
      Width = 69
      Height = 17
      Caption = 'NFP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object CHK_NFPTDM: TCheckBox
      Left = 99
      Top = 54
      Width = 73
      Height = 17
      Caption = 'NFPTDM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object CHK_MF: TCheckBox
      Left = 16
      Top = 32
      Width = 97
      Height = 17
      Caption = 'MF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object CHK_MFD: TCheckBox
      Left = 99
      Top = 32
      Width = 97
      Height = 17
      Caption = 'MFD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object CHK_TDM: TCheckBox
      Left = 208
      Top = 32
      Width = 77
      Height = 17
      Caption = 'TDM'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object CHK_Sintegra: TCheckBox
      Left = 208
      Top = 54
      Width = 77
      Height = 17
      Caption = 'Sintegra'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = CHK_SintegraClick
    end
    object CHK_SPED: TCheckBox
      Left = 16
      Top = 74
      Width = 57
      Height = 17
      Caption = 'SPED'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = CHK_SPEDClick
    end
    object CHK_VIVANOTA: TCheckBox
      Left = 99
      Top = 77
      Width = 97
      Height = 17
      Caption = 'VIVANOTA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
    end
    object CHK_LMFC: TCheckBox
      Left = 208
      Top = 75
      Width = 57
      Height = 17
      Caption = 'LMFC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
    end
    object CHK_LMFS: TCheckBox
      Left = 16
      Top = 99
      Width = 57
      Height = 17
      Caption = 'LMFS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object CHK_EAD: TCheckBox
      Left = 99
      Top = 99
      Width = 106
      Height = 17
      Caption = '[EAD]'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 360
    Width = 297
    Height = 159
    Caption = 'Gerar a partir de:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 57
      Height = 13
      Caption = 'Arquivo MF:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 64
      Width = 65
      Height = 13
      Caption = 'Arquivo MFD:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 102
      Width = 100
      Height = 13
      Caption = 'Arquivo Informa'#231#245'es:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object EDT_ArqMF: TEdit
      Left = 8
      Top = 40
      Width = 241
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object EDT_ArqMFD: TEdit
      Left = 8
      Top = 80
      Width = 241
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object EDT_ArqInf: TEdit
      Left = 8
      Top = 118
      Width = 240
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object BT_Procura_ArqMF: TButton
      Left = 251
      Top = 41
      Width = 25
      Height = 19
      Hint = 'Localize o Arquivo MF'
      Caption = '...'
      Font.Charset = HEBREW_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Narkisim'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = BT_Procura_ArqMFClick
    end
    object BT_Procura_ARQMfd: TButton
      Left = 251
      Top = 88
      Width = 25
      Height = 19
      Caption = '...'
      Font.Charset = HEBREW_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Narkisim'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BT_Procura_ARQMfdClick
    end
    object BT_Procura_ArqInf: TButton
      Left = 250
      Top = 118
      Width = 25
      Height = 19
      Caption = '...'
      Font.Charset = HEBREW_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Narkisim'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = BT_Procura_ArqInfClick
    end
  end
  object GBox_Sped: TGroupBox
    Left = 8
    Top = 136
    Width = 297
    Height = 57
    Caption = 'Entre com valores para PIS e COFINS:'
    TabOrder = 10
    Visible = False
    object Label5: TLabel
      Left = 16
      Top = 32
      Width = 23
      Height = 13
      Caption = 'PIS: '
    end
    object Label6: TLabel
      Left = 144
      Top = 32
      Width = 45
      Height = 13
      Caption = 'COFINS: '
    end
    object Label7: TLabel
      Left = 105
      Top = 31
      Width = 8
      Height = 13
      Caption = '%'
    end
    object Label8: TLabel
      Left = 258
      Top = 31
      Width = 8
      Height = 13
      Caption = '%'
    end
    object Edt_AlqPis: TEdit
      Left = 40
      Top = 28
      Width = 65
      Height = 21
      TabOrder = 0
    end
    object Edt_AlqCofins: TEdit
      Left = 192
      Top = 28
      Width = 65
      Height = 21
      TabOrder = 1
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 280
    Width = 297
    Height = 80
    Caption = 'Assinar relat'#243'rios: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    object Label9: TLabel
      Left = 8
      Top = 24
      Width = 235
      Height = 13
      Caption = 'Caminho da chave privada gerada pelo puttyGen:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edt_LocalChavePrivada: TEdit
      Left = 8
      Top = 40
      Width = 241
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 256
      Top = 40
      Width = 25
      Height = 17
      Caption = '...'
      TabOrder = 1
    end
  end
  object DLG_LocalizaArq: TOpenDialog
    Left = 16
    Top = 526
  end
end
