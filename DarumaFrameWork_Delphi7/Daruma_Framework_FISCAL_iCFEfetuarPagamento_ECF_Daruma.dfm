object FR_FISCAL_iCFEfetuarPagamento_ECF_Daruma: TFR_FISCAL_iCFEfetuarPagamento_ECF_Daruma
  Left = 192
  Top = 122
  Width = 565
  Height = 208
  Caption = 'M'#233'todo iCFEfetuarPagamento_ECF_Daruma'
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
    Left = 52
    Top = 32
    Width = 63
    Height = 13
    Caption = 'Forma Pagto:'
  end
  object Label2: TLabel
    Left = 85
    Top = 72
    Width = 27
    Height = 13
    Caption = 'Valor:'
  end
  object Label3: TLabel
    Left = 16
    Top = 105
    Width = 102
    Height = 13
    Caption = 'Informa'#231#227'o Adicional:'
  end
  object Edt_Forma_Pagamento: TEdit
    Left = 124
    Top = 32
    Width = 125
    Height = 21
    TabOrder = 0
    Text = 'Dinheiro'
  end
  object Edt_Valor: TEdit
    Left = 124
    Top = 64
    Width = 125
    Height = 21
    TabOrder = 1
    Text = '0,10'
  end
  object BT_ENVIAR: TButton
    Left = 373
    Top = 134
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 2
    OnClick = BT_ENVIARClick
  end
  object BT_FECHAR: TButton
    Left = 461
    Top = 134
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = BT_FECHARClick
  end
  object Edt_Info_Adicional: TEdit
    Left = 124
    Top = 96
    Width = 413
    Height = 21
    MaxLength = 84
    TabOrder = 4
    Text = 
      'Obrigado Volte Sempre!DFW Efetua Forma pagamento com mensagem ad' +
      'icional.'
  end
end
