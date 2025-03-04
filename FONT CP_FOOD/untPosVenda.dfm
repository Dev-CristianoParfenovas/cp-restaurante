object frmPosVenda: TfrmPosVenda
  Left = 9
  Top = 29
  BorderIcons = [biMinimize]
  BorderStyle = bsSingle
  Caption = 'Vendas'
  ClientHeight = 534
  ClientWidth = 791
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
  object lbl_Prod: TLabel
    Left = 234
    Top = 24
    Width = 40
    Height = 13
    Caption = 'Produto:'
  end
  object dbgPosVenda: TDBGrid
    Left = 11
    Top = 140
    Width = 766
    Height = 269
    Cursor = crHandPoint
    BorderStyle = bsNone
    DataSource = dmModule.dtsEntrProdEstoque
    FixedColor = clInfoBk
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object lbl_edtCodCartao: TLabeledEdit
    Left = 11
    Top = 40
    Width = 94
    Height = 19
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 56
    EditLabel.Height = 13
    EditLabel.Caption = 'C'#243'd. Cart'#227'o'
    LabelPosition = lpAbove
    LabelSpacing = 3
    TabOrder = 1
  end
  object lbl_edtCodBarras: TLabeledEdit
    Left = 114
    Top = 40
    Width = 110
    Height = 19
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 52
    EditLabel.Height = 13
    EditLabel.Caption = 'C'#243'd.Barras'
    LabelPosition = lpAbove
    LabelSpacing = 3
    TabOrder = 2
    OnChange = lbl_edtCodBarrasChange
    OnKeyPress = lbl_edtCodBarrasKeyPress
  end
  object cboProd: TComboBox
    Left = 233
    Top = 39
    Width = 208
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ItemHeight = 13
    ParentFont = False
    TabOrder = 3
  end
  object ibeaSair: TIBEAntialiasButton
    Left = 467
    Top = 8
    Width = 61
    Height = 31
    Cursor = crHandPoint
    Caption = '&Sair'
    Glyph.Data = {
      F6060000424DF606000000000000360000002800000018000000180000000100
      180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B4E1E
      1FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B824B4B
      8C4B4B914B4B4E1E1FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B824B4B89
      4B4B9C4B4CB64B4CBD4B4C9F4B4C4E1E1FFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B824B
      4B9A4D4EAF4E4FC14E4FC04D4EBF4C4DBF4C4D9F4B4C4E1E1F994B4B824B4B82
      4B4B824B4B824B4B824B4B824B4B824B4B824B4BFF00FFFF00FFFF00FFFF00FF
      FF00FF824B4BC55455C95455C75354C65253C55152C45051C24F50A04C4D4E1E
      1FFE8B8CFC9293FB9A9CFAA3A4F8AAABF7B1B1F7B5B6F7B5B6824B4BFF00FFFF
      00FFFF00FFFF00FFFF00FF824B4BCE5859CC5758CB5657CA5556C95455C75354
      C65253A34E4F4E1E1F3F9E4C1EBC4C1EBC4C1EBC4C1EBC4C1EBC4C1EBC4CF7B5
      B6824B4BFF00FFFF00FFFF00FFFF00FFFF00FF824B4BD15B5CD05A5BCF595ACE
      5859CC5758CB5657CA5556A550504E1E1F3F9E4C1EBC4C1EBC4C1EBC4C1EBC4C
      1EBC4C1EBC4CF7B5B6824B4BFF00FFFF00FFFF00FFFF00FFFF00FF824B4BD55E
      5FD55E5FD45D5ED35C5DD15B5CD05A5BCF595AA651524E1E1F3F9E4C1EBC4C1E
      BC4C1EBC4C1EBC4C1EBC4C1EBC4CF7B5B6824B4BFF00FFFF00FFFF00FFFF00FF
      FF00FF824B4BDA6364D96263D86062D75F60D55E5FD45D5ED35C5DA953544E1E
      1F3F9E4C1EBC4C1EBC4C1EBC4C1EBC4C1EBC4C1EBC4CF7B5B6824B4BFF00FFFF
      00FFFF00FFFF00FFFF00FF824B4BDE6667DD6566DC6465DA6364D96263D86062
      D75F60AB55554E1E1F3F9E4C1EBC4C1EBC4C1EBC4C1EBC4C1EBC4C1EBC4CF7B5
      B6824B4BFF00FFFF00FFFF00FFFF00FFFF00FF824B4BE2696AE16869E06768DE
      6667E06D6EE69091DC6465AC56574E1E1F58A55B1EBC4C1EBC4C1EBC4C1EBC4C
      1EBC4C1EBC4CF7B5B6824B4BFF00FFFF00FFFF00FFFF00FFFF00FF824B4BE76D
      6EE66C6DE56B6CE36A6BEEA6A7FFFFFFEB9C9CAF58594E1E1FEECEAFB7EBAA5E
      D3775ED37745CA6745CA6745CA67F7B5B6824B4BFF00FFFF00FFFF00FFFF00FF
      FF00FF824B4BEB7072EA6F70E96E6FE76D6EF2A9AAFFFFFFEB9596B15A5A4E1E
      1FEECEAFFFFFD3FFFFD3FFFFD3FFFFD3D9F6BDD9F6BDF7B5B6824B4BFF00FFFF
      00FFFF00FFFF00FFFF00FF824B4BEF7475EE7374ED7273EB7072EA6F70EF9091
      E76D6EB25B5C4E1E1FEECEAFFFFFD3FFFFD3FFFFD3FFFFD3FFFFD3FFFFD3F7B5
      B6824B4BFF00FFFF00FFFF00FFFF00FFFF00FF824B4BF37778F37778F27677F0
      7576EF7475EE7374ED7273B55D5D4E1E1FEECEAFFFFFD3FFFFD3FFFFD3FFFFD3
      FFFFD3FFFFD3F7B5B6824B4BFF00FFFF00FFFF00FFFF00FFFF00FF824B4BF87B
      7DF77A7BF6797AF47879F37778F27677F07576B75F5F4E1E1FEECEAFFFFFD3FF
      FFD3FFFFD3FFFFD3FFFFD3FFFFD3F7B5B6824B4BFF00FFFF00FFFF00FFFF00FF
      FF00FF824B4BFC7F80FB7E7FFA7D7EF87B7DF77A7BF6797AF47879B860624E1E
      1FEECEAFFFFFD3FFFFD3FFFFD3FFFFD3FFFFD3FFFFD3F7B5B6824B4BFF00FFFF
      00FFFF00FFFF00FFFF00FF824B4BFF8182FF8182FE8081FC7F80FC7F80FB7E7F
      FA7D7EBB63634E1E1FEECEAFFFFFD3FFFFD3FFFFD3FFFFD3FFFFD3FFFFD3F7B5
      B6824B4BFF00FFFF00FFFF00FFFF00FFFF00FF824B4BFF8182FF8182FF8182FF
      8182FF8182FE8081FE8081BD65654E1E1FEECEAFFFFFD3FFFFD3FFFFD3FFFFD3
      FFFFD3FFFFD3F7B5B6824B4BFF00FFFF00FFFF00FFFF00FFFF00FF824B4BF77E
      7FFF8182FF8182FF8182FF8182FF8182FF8182BF66664E1E1FEECEAFFFFFD3FF
      FFD3FFFFD3FFFFD3FFFFD3FFFFD3F7B5B6824B4BFF00FFFF00FFFF00FFFF00FF
      FF00FF824B4B824B4BAF5E5FD56F70FF8182FF8182FF8182FF8182BF66664E1E
      1FEECEAFFFFFD3FFFFD3FFFFD3FFFFD3FFFFD3FFFFD3F7B5B6824B4BFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B824B4B915152B66263EE7A7B
      FF8182BF66664E1E1F914B4B824B4B824B4B824B4B824B4B824B4B824B4B824B
      4B824B4BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
      00FF824B4B824B4B9855559F58584E1E1FFF00FFFF00FFFF00FFFF00FFFF00FF
      FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
      FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824B4B4E1E1FFF00FFFF00FFFF
      00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    Properties.Disabled.Border = clBtnHighlight
    Properties.Disabled.Color = clBtnShadow
    Properties.Disabled.Font.Charset = DEFAULT_CHARSET
    Properties.Disabled.Font.Color = clCaptionText
    Properties.Disabled.Font.Height = -11
    Properties.Disabled.Font.Name = 'MS Sans Serif'
    Properties.Disabled.Font.Style = []
    Properties.FocusColor = clBtnShadow
    Properties.MouseAway.Border = clBtnShadow
    Properties.MouseAway.Color = clBtnFace
    Properties.MouseAway.Font.Charset = DEFAULT_CHARSET
    Properties.MouseAway.Font.Color = clBtnText
    Properties.MouseAway.Font.Height = -11
    Properties.MouseAway.Font.Name = 'MS Sans Serif'
    Properties.MouseAway.Font.Style = []
    Properties.MouseDown.Border = clBtnShadow
    Properties.MouseDown.Color = clBtnFace
    Properties.MouseDown.Font.Charset = DEFAULT_CHARSET
    Properties.MouseDown.Font.Color = clBtnText
    Properties.MouseDown.Font.Height = -11
    Properties.MouseDown.Font.Name = 'MS Sans Serif'
    Properties.MouseDown.Font.Style = []
    Properties.MouseUp.Border = clBtnShadow
    Properties.MouseUp.Color = clBtnHighlight
    Properties.MouseUp.Font.Charset = DEFAULT_CHARSET
    Properties.MouseUp.Font.Color = clBtnText
    Properties.MouseUp.Font.Height = -11
    Properties.MouseUp.Font.Name = 'MS Sans Serif'
    Properties.MouseUp.Font.Style = []
    TabStop = True
    TabOrder = 4
    OnClick = ibeaSairClick
  end
  object lbl_edtQtde: TLabeledEdit
    Left = 11
    Top = 104
    Width = 44
    Height = 19
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 26
    EditLabel.Height = 13
    EditLabel.Caption = 'Qtde:'
    LabelPosition = lpAbove
    LabelSpacing = 3
    TabOrder = 5
    OnExit = lbl_edtQtdeExit
  end
  object lbl_edtVlrUnit: TLabeledEdit
    Left = 63
    Top = 104
    Width = 87
    Height = 19
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 66
    EditLabel.Height = 13
    EditLabel.Caption = 'Valor Unit'#225'rio:'
    LabelPosition = lpAbove
    LabelSpacing = 3
    ReadOnly = True
    TabOrder = 6
  end
  object lbl_edtVlrTotal: TLabeledEdit
    Left = 159
    Top = 104
    Width = 87
    Height = 19
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    EditLabel.Width = 54
    EditLabel.Height = 13
    EditLabel.Caption = 'Valor Total:'
    LabelPosition = lpAbove
    LabelSpacing = 3
    ReadOnly = True
    TabOrder = 7
  end
  object ibeaIncluir: TIBEAntialiasButton
    Left = 263
    Top = 96
    Width = 61
    Height = 31
    Cursor = crHandPoint
    Caption = '&Incluir'
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
    Properties.Disabled.Border = clBtnHighlight
    Properties.Disabled.Color = clBtnShadow
    Properties.Disabled.Font.Charset = DEFAULT_CHARSET
    Properties.Disabled.Font.Color = clCaptionText
    Properties.Disabled.Font.Height = -11
    Properties.Disabled.Font.Name = 'MS Sans Serif'
    Properties.Disabled.Font.Style = []
    Properties.FocusColor = clBtnShadow
    Properties.MouseAway.Border = clBtnShadow
    Properties.MouseAway.Color = clBtnFace
    Properties.MouseAway.Font.Charset = DEFAULT_CHARSET
    Properties.MouseAway.Font.Color = clBtnText
    Properties.MouseAway.Font.Height = -11
    Properties.MouseAway.Font.Name = 'MS Sans Serif'
    Properties.MouseAway.Font.Style = []
    Properties.MouseDown.Border = clBtnShadow
    Properties.MouseDown.Color = clBtnFace
    Properties.MouseDown.Font.Charset = DEFAULT_CHARSET
    Properties.MouseDown.Font.Color = clBtnText
    Properties.MouseDown.Font.Height = -11
    Properties.MouseDown.Font.Name = 'MS Sans Serif'
    Properties.MouseDown.Font.Style = []
    Properties.MouseUp.Border = clBtnShadow
    Properties.MouseUp.Color = clBtnHighlight
    Properties.MouseUp.Font.Charset = DEFAULT_CHARSET
    Properties.MouseUp.Font.Color = clBtnText
    Properties.MouseUp.Font.Height = -11
    Properties.MouseUp.Font.Name = 'MS Sans Serif'
    Properties.MouseUp.Font.Style = []
    TabStop = True
    TabOrder = 8
    OnClick = ibeaIncluirClick
  end
  object ibeaExcluir: TIBEAntialiasButton
    Left = 336
    Top = 96
    Width = 61
    Height = 31
    Cursor = crHandPoint
    Caption = '&Excluir'
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
    Properties.Disabled.Border = clBtnHighlight
    Properties.Disabled.Color = clBtnShadow
    Properties.Disabled.Font.Charset = DEFAULT_CHARSET
    Properties.Disabled.Font.Color = clCaptionText
    Properties.Disabled.Font.Height = -11
    Properties.Disabled.Font.Name = 'MS Sans Serif'
    Properties.Disabled.Font.Style = []
    Properties.FocusColor = clBtnShadow
    Properties.MouseAway.Border = clBtnShadow
    Properties.MouseAway.Color = clBtnFace
    Properties.MouseAway.Font.Charset = DEFAULT_CHARSET
    Properties.MouseAway.Font.Color = clBtnText
    Properties.MouseAway.Font.Height = -11
    Properties.MouseAway.Font.Name = 'MS Sans Serif'
    Properties.MouseAway.Font.Style = []
    Properties.MouseDown.Border = clBtnShadow
    Properties.MouseDown.Color = clBtnFace
    Properties.MouseDown.Font.Charset = DEFAULT_CHARSET
    Properties.MouseDown.Font.Color = clBtnText
    Properties.MouseDown.Font.Height = -11
    Properties.MouseDown.Font.Name = 'MS Sans Serif'
    Properties.MouseDown.Font.Style = []
    Properties.MouseUp.Border = clBtnShadow
    Properties.MouseUp.Color = clBtnHighlight
    Properties.MouseUp.Font.Charset = DEFAULT_CHARSET
    Properties.MouseUp.Font.Color = clBtnText
    Properties.MouseUp.Font.Height = -11
    Properties.MouseUp.Font.Name = 'MS Sans Serif'
    Properties.MouseUp.Font.Style = []
    TabStop = True
    TabOrder = 9
  end
  object ibeaConsulta: TIBEAntialiasButton
    Left = 411
    Top = 96
    Width = 61
    Height = 31
    Cursor = crHandPoint
    Hint = 'Abre Consulta de Produtos'
    Caption = '&Consulta'
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
    ParentShowHint = False
    Properties.Disabled.Border = clBtnHighlight
    Properties.Disabled.Color = clBtnShadow
    Properties.Disabled.Font.Charset = DEFAULT_CHARSET
    Properties.Disabled.Font.Color = clCaptionText
    Properties.Disabled.Font.Height = -11
    Properties.Disabled.Font.Name = 'MS Sans Serif'
    Properties.Disabled.Font.Style = []
    Properties.FocusColor = clBtnShadow
    Properties.MouseAway.Border = clBtnShadow
    Properties.MouseAway.Color = clBtnFace
    Properties.MouseAway.Font.Charset = DEFAULT_CHARSET
    Properties.MouseAway.Font.Color = clBtnText
    Properties.MouseAway.Font.Height = -11
    Properties.MouseAway.Font.Name = 'MS Sans Serif'
    Properties.MouseAway.Font.Style = []
    Properties.MouseDown.Border = clBtnShadow
    Properties.MouseDown.Color = clBtnFace
    Properties.MouseDown.Font.Charset = DEFAULT_CHARSET
    Properties.MouseDown.Font.Color = clBtnText
    Properties.MouseDown.Font.Height = -11
    Properties.MouseDown.Font.Name = 'MS Sans Serif'
    Properties.MouseDown.Font.Style = []
    Properties.MouseUp.Border = clBtnShadow
    Properties.MouseUp.Color = clBtnHighlight
    Properties.MouseUp.Font.Charset = DEFAULT_CHARSET
    Properties.MouseUp.Font.Color = clBtnText
    Properties.MouseUp.Font.Height = -11
    Properties.MouseUp.Font.Name = 'MS Sans Serif'
    Properties.MouseUp.Font.Style = []
    ShowHint = True
    TabStop = True
    TabOrder = 10
    OnClick = ibeaConsultaClick
  end
end
