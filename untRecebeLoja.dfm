object frmRecebeLoja: TfrmRecebeLoja
  Left = 108
  Top = 114
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Recebimento'
  ClientHeight = 227
  ClientWidth = 569
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 4
    Top = 3
    Width = 131
    Height = 20
    Caption = 'Tipo Pagamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object lbl_Data: TLabel
    Left = 261
    Top = 134
    Width = 43
    Height = 20
    Caption = 'Vcto.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Bevel1: TBevel
    Left = -126
    Top = 197
    Width = 695
    Height = 3
  end
  object lbl_CondPagto: TLabel
    Left = 7
    Top = 134
    Width = 119
    Height = 13
    Caption = 'Condi'#231#245'es de Pagto.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 5
    Top = 67
    Width = 153
    Height = 20
    Caption = 'Tipo Pagamento(2)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = True
  end
  object lbl_Informacao: TLabel
    Left = 102
    Top = 204
    Width = 353
    Height = 20
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    Layout = tlCenter
  end
  object lbl_edtValor: TLabeledEdit
    Left = 189
    Top = 29
    Width = 147
    Height = 35
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 89
    EditLabel.Height = 20
    EditLabel.Caption = 'Valor Pago'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clBlack
    EditLabel.Font.Height = -16
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    EditLabel.Transparent = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -21
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Text = '0,00'
    OnExit = lbl_edtValorExit
    OnKeyPress = lbl_edtValorKeyPress
  end
  object cboTipoPagto: TComboBox
    Left = 5
    Top = 28
    Width = 180
    Height = 24
    BevelInner = bvSpace
    BevelKind = bkFlat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnKeyPress = cboTipoPagtoKeyPress
    OnKeyUp = cboTipoPagtoKeyUp
  end
  object lbl_edtTotalVenda: TLabeledEdit
    Left = 349
    Top = 93
    Width = 147
    Height = 35
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 123
    EditLabel.Height = 20
    EditLabel.Caption = 'Total da Venda'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clBlack
    EditLabel.Font.Height = -16
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    EditLabel.Transparent = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -21
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnExit = lbl_edtTotalVendaExit
    OnKeyPress = lbl_edtTotalVendaKeyPress
  end
  object lbl_edtTroco: TLabeledEdit
    Left = 348
    Top = 155
    Width = 147
    Height = 35
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 46
    EditLabel.Height = 20
    EditLabel.Caption = 'Troco'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clBlack
    EditLabel.Font.Height = -16
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    EditLabel.Transparent = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -21
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnExit = lbl_edtTrocoExit
    OnKeyPress = lbl_edtTrocoKeyPress
  end
  object lbl_edtSair: TLabeledEdit
    Left = 494
    Top = 149
    Width = 1
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 3
    EditLabel.Height = 13
    EditLabel.Caption = '.'
    EditLabel.Transparent = True
    TabOrder = 4
    OnExit = lbl_edtSairExit
    OnKeyPress = lbl_edtSairKeyPress
  end
  object lbl_edtDesconto: TLabeledEdit
    Left = 344
    Top = 30
    Width = 109
    Height = 35
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 78
    EditLabel.Height = 20
    EditLabel.Caption = 'Desconto'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clBlack
    EditLabel.Font.Height = -16
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    EditLabel.Transparent = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -21
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnExit = lbl_edtDescontoExit
    OnKeyPress = lbl_edtDescontoKeyPress
  end
  object lbl_edtNumCheque: TLabeledEdit
    Left = 150
    Top = 157
    Width = 106
    Height = 25
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 87
    EditLabel.Height = 20
    EditLabel.Caption = 'N'#186' Cheque'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clBlack
    EditLabel.Font.Height = -16
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    EditLabel.Transparent = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clNavy
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnKeyPress = lbl_edtNumChequeKeyPress
  end
  object lbl_edtAcrescimo: TLabeledEdit
    Left = 455
    Top = 30
    Width = 109
    Height = 35
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 39
    EditLabel.Height = 20
    EditLabel.Caption = 'Taxa'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clBlack
    EditLabel.Font.Height = -16
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    EditLabel.Transparent = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -21
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnExit = lbl_edtAcrescimoExit
    OnKeyPress = lbl_edtAcrescimoKeyPress
  end
  object cboTPagto: TComboBox
    Left = 5
    Top = 92
    Width = 180
    Height = 24
    BevelInner = bvSpace
    BevelKind = bkFlat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnKeyPress = cboTPagtoKeyPress
  end
  object lbl_edtValorPago: TLabeledEdit
    Left = 188
    Top = 93
    Width = 147
    Height = 35
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 89
    EditLabel.Height = 20
    EditLabel.Caption = 'Valor Pago'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clBlack
    EditLabel.Font.Height = -16
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = [fsBold]
    EditLabel.ParentFont = False
    EditLabel.Transparent = True
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -21
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    Text = '0,00'
    OnExit = lbl_edtValorPagoExit
    OnKeyPress = lbl_edtValorPagoKeyPress
  end
  object dtpDataCheque: TDateTimePicker
    Left = 260
    Top = 157
    Width = 86
    Height = 21
    Date = 42459.000000000000000000
    Time = 0.953548171302827500
    TabOrder = 10
  end
  object cboCondPagto: TComboBox
    Left = 8
    Top = 150
    Width = 134
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    TabOrder = 11
    Visible = False
  end
end
