object FR_FISCAL_rRSARetornaChavePublica_ECF_Daruma: TFR_FISCAL_rRSARetornaChavePublica_ECF_Daruma
  Left = 256
  Top = 155
  Width = 487
  Height = 322
  Caption = 'rRSAChavePublica_ECF_Daruma'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 9
    Top = 11
    Width = 449
    Height = 238
    Caption = 'Chave Publica'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
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
    object Label2: TLabel
      Left = 8
      Top = 72
      Width = 123
      Height = 13
      Caption = 'Chave Publica retornada: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 160
      Width = 89
      Height = 13
      Caption = 'Expoente Publico: '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Edt_CaminhoArqMD5: TEdit
      Left = 8
      Top = 40
      Width = 401
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object BT_ArqMD5: TButton
      Left = 415
      Top = 41
      Width = 25
      Height = 19
      Hint = 'Localiza arquivos calcular MD5'
      Caption = '...'
      Font.Charset = HEBREW_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Narkisim'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BT_ArqMD5Click
    end
    object MM_ChavePublica: TMemo
      Left = 8
      Top = 88
      Width = 433
      Height = 57
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Lines.Strings = (
        'MM_ChavePublica')
      ParentFont = False
      TabOrder = 2
    end
    object MM_EspoentePublico: TMemo
      Left = 8
      Top = 176
      Width = 433
      Height = 57
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Lines.Strings = (
        'MM_EspoentePublico')
      ParentFont = False
      TabOrder = 3
    end
  end
  object BT_ENVIAR: TButton
    Left = 288
    Top = 254
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 375
    Top = 254
    Width = 81
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = BT_FECHARClick
  end
  object DLG_SelecionaDiretorio: TOpenDialog
    Left = 257
    Top = 251
  end
end
