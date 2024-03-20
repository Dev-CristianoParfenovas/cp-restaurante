object frmChaveAcesso: TfrmChaveAcesso
  Left = 259
  Top = 294
  BorderIcons = [biSystemMenu]
  Caption = 'Libera'#231#227'o de Acesso'
  ClientHeight = 102
  ClientWidth = 322
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_edtChaveAcesso: TLabeledEdit
    Left = 8
    Top = 40
    Width = 232
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 123
    EditLabel.Height = 13
    EditLabel.Caption = 'Digite a Chave de Acesso'
    MaxLength = 38
    TabOrder = 0
    OnKeyPress = lbl_edtChaveAcessoKeyPress
  end
  object lbl_edtSerie: TLabeledEdit
    Left = 245
    Top = 40
    Width = 62
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 24
    EditLabel.Height = 13
    EditLabel.Caption = 'S'#233'rie'
    MaxLength = 11
    TabOrder = 1
    OnExit = lbl_edtSerieExit
    OnKeyPress = lbl_edtSerieKeyPress
  end
  object dtpDataEmissao: TDateTimePicker
    Left = 81
    Top = 72
    Width = 84
    Height = 21
    Date = 39310.000000000000000000
    Time = 0.017364189799991440
    TabOrder = 3
    Visible = False
  end
  object lbl_edtSair: TLabeledEdit
    Left = 173
    Top = 82
    Width = 62
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 24
    EditLabel.Height = 13
    EditLabel.Caption = 'S'#233'rie'
    MaxLength = 11
    TabOrder = 2
    Visible = False
    OnKeyPress = lbl_edtSairKeyPress
  end
end
