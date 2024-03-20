object FR_FISCAL_iImprimirCodigoBarras_ECF_Daruma: TFR_FISCAL_iImprimirCodigoBarras_ECF_Daruma
  Left = 366
  Top = 241
  Width = 595
  Height = 375
  Caption = 'M'#233'todo iImprimirCodigoBarras_ECF_Daruma'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 222
    Top = 73
    Width = 139
    Height = 13
    Caption = 'String C'#243'digo de Barras:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 223
    Top = 139
    Width = 69
    Height = 13
    Caption = 'Texto Livre:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 221
    Top = 25
    Width = 100
    Height = 13
    Caption = 'Largura da Barra:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 381
    Top = 25
    Width = 90
    Height = 13
    Caption = 'Altura da Barra:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Rdg_CodigoBarras: TRadioGroup
    Left = 6
    Top = 10
    Width = 201
    Height = 263
    Caption = 'Tipo C'#243'digo de Barras:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemIndex = 0
    Items.Strings = (
      '1  - EAN-13'
      '2  - EAN-8'
      '3  - STANDARD 2 OF 5'
      '4  - INTERLEAVED 2 OF 5 '
      '5  - CODE128'
      '6  - CODE39'
      '7  - CODE93 '
      '8  - UPC-A'
      '9  - CODABAR'
      '10 - MSI'
      '11 - CODE11')
    ParentFont = False
    TabOrder = 0
  end
  object Edt_CodigoBarras: TEdit
    Left = 223
    Top = 89
    Width = 322
    Height = 21
    MaxLength = 12
    TabOrder = 1
    Text = '789000000001'
  end
  object MM_TextoLivre: TMemo
    Left = 223
    Top = 157
    Width = 320
    Height = 89
    Lines.Strings = (
      'TEXTO LIVRE'
      '')
    TabOrder = 2
  end
  object CBX_CodVertical: TCheckBox
    Left = 7
    Top = 304
    Width = 177
    Height = 17
    Caption = 'Imprime C'#243'digo na Vertical'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object CBX_TextoAbaixoBarras: TCheckBox
    Left = 7
    Top = 282
    Width = 203
    Height = 17
    Caption = 'Imprime texto abaixo das barras'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object BT_ENVIAR: TButton
    Left = 368
    Top = 288
    Width = 74
    Height = 27
    Caption = 'Enviar'
    TabOrder = 5
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 454
    Top = 290
    Width = 81
    Height = 25
    Caption = 'Fechar'
    TabOrder = 6
    OnClick = BT_FECHARClick
  end
  object Btn_Limpar: TButton
    Left = 224
    Top = 251
    Width = 75
    Height = 21
    Caption = 'Limpar'
    TabOrder = 7
    OnClick = Btn_LimparClick
  end
  object CBX_Largura: TComboBox
    Left = 320
    Top = 16
    Width = 49
    Height = 21
    ItemHeight = 13
    TabOrder = 8
    Text = '2'
    Items.Strings = (
      '2'
      '3'
      '4'
      '5')
  end
  object CBX_Altura: TComboBox
    Left = 472
    Top = 16
    Width = 72
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    Text = '50'
    Items.Strings = (
      '50'
      '51'
      '52'
      '53'
      '54'
      '55'
      '56'
      '57'
      '58'
      '59'
      '60'
      '61'
      '62'
      '63'
      '64'
      '65'
      '66'
      '67'
      '68'
      '69'
      '70'
      '71'
      '72'
      '73'
      '74'
      '75'
      '76'
      '77'
      '78'
      '79'
      '80'
      '81'
      '82'
      '83'
      '84'
      '85'
      '86'
      '87'
      '88'
      '89'
      '90'
      '91'
      '92'
      '93'
      '94'
      '95'
      '96'
      '97'
      '98'
      '99'
      '100'
      '101'
      '102'
      '103'
      '104'
      '105'
      '106'
      '107'
      '108'
      '109'
      '110'
      '111'
      '112'
      '113'
      '114'
      '115'
      '116'
      '117'
      '118'
      '119'
      '120'
      '121'
      '122'
      '123'
      '124'
      '125'
      '126'
      '127'
      '128'
      '129'
      '130'
      '131'
      '132'
      '133'
      '134'
      '135'
      '136'
      '137'
      '138'
      '139'
      '140'
      '141'
      '142'
      '143'
      '144'
      '145'
      '146'
      '147'
      '148'
      '149'
      '150'
      '151'
      '152'
      '153'
      '154'
      '155'
      '156'
      '157'
      '158'
      '159'
      '160'
      '161'
      '162'
      '163'
      '164'
      '165'
      '166'
      '167'
      '168'
      '169'
      '170'
      '171'
      '172'
      '173'
      '174'
      '175'
      '176'
      '177'
      '178'
      '179'
      '180'
      '181'
      '182'
      '183'
      '184'
      '185'
      '186'
      '187'
      '188'
      '189'
      '190'
      '191'
      '192'
      '193'
      '194'
      '195'
      '196'
      '197'
      '198'
      '199'
      '200')
  end
end
