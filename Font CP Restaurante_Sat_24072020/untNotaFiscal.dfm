object frmNotaFiscal: TfrmNotaFiscal
  Left = -5
  Top = 32
  Width = 794
  Height = 566
  BorderIcons = []
  Caption = 'Nota Fiscal'
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
  object lbl_Emissao: TLabel
    Left = 99
    Top = 8
    Width = 47
    Height = 13
    Caption = 'Emiss'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl_edtNumeroNF: TLabeledEdit
    Left = 8
    Top = 24
    Width = 81
    Height = 21
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    Color = clInfoBk
    EditLabel.Width = 53
    EditLabel.Height = 13
    EditLabel.Caption = 'N'#186' da Nota'
    EditLabel.Color = clBtnFace
    EditLabel.ParentColor = False
    LabelPosition = lpAbove
    LabelSpacing = 3
    ReadOnly = True
    TabOrder = 0
  end
  object ibeaNovo: TIBEAntialiasButton
    Left = 191
    Top = 15
    Width = 71
    Height = 31
    Cursor = crHandPoint
    Caption = '&Novo'
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
    TabOrder = 1
    OnClick = ibeaNovoClick
  end
  object ibeaAlterar: TIBEAntialiasButton
    Left = 270
    Top = 14
    Width = 71
    Height = 32
    Cursor = crHandPoint
    Caption = '&Alterar'
    Glyph.Data = {
      36010000424D3601000000000000760000002800000011000000100000000100
      040000000000C0000000C40E0000C40E00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
      0000300000003333330FFFFFFFF03000000000300000FF0F00F070000000E00B
      FBFB0FFFFFF070000000E0BFBF000FFFF0F070000000E0FBFBFBF0F00FF07000
      0000E0BFBF00000B0FF070000000E0FBFBFBFBF0FFF070000000E0BF0000000F
      FFF070000000000BFB00B0FF00F0700000003330000B0FFFFFF0300000003333
      30B0FFFF00003000000033330B0FF00F0FF0300000003330B00FFFFF0F033000
      00003309030FFFFF003330000000333033000000033330000000}
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
    TabOrder = 2
  end
  object ibeaExcluir: TIBEAntialiasButton
    Left = 350
    Top = 15
    Width = 71
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
    TabOrder = 3
  end
  object ibeaSair: TIBEAntialiasButton
    Left = 729
    Top = 6
    Width = 54
    Height = 33
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
  object GroupBox1: TGroupBox
    Left = 1
    Top = 56
    Width = 782
    Height = 177
    Caption = 'Informa'#231#245'es do Cliente e Nota Fiscal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    object lbl_Cliente: TLabel
      Left = 221
      Top = 30
      Width = 122
      Height = 13
      Caption = 'Nome / Raz'#227'o Social'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_Natureza: TLabel
      Left = 10
      Top = 126
      Width = 84
      Height = 13
      Caption = 'Natureza/C'#243'd.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 654
      Top = 127
      Width = 30
      Height = 13
      Caption = 'Tipo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsUnderline]
      ParentFont = False
    end
    object lbl_CondPagto: TLabel
      Left = 206
      Top = 126
      Width = 71
      Height = 13
      Caption = 'Cond.Pagto.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_Transp: TLabel
      Left = 339
      Top = 126
      Width = 87
      Height = 13
      Caption = 'Transportadora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_Especie: TLabel
      Left = 537
      Top = 126
      Width = 46
      Height = 13
      Caption = 'Esp'#233'cie'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_CodNatureza: TLabel
      Left = 96
      Top = 126
      Width = 97
      Height = 13
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_edtCodCliente: TLabeledEdit
      Left = 8
      Top = 45
      Width = 68
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      EditLabel.Width = 66
      EditLabel.Height = 13
      EditLabel.Caption = 'C'#243'd.Cliente'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LabelPosition = lpAbove
      LabelSpacing = 3
      ParentFont = False
      TabOrder = 0
    end
    object lbl_edtCnpjCpf: TLabeledEdit
      Left = 516
      Top = 45
      Width = 112
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      EditLabel.Width = 69
      EditLabel.Height = 13
      EditLabel.Caption = 'CNPJ / CPF'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LabelPosition = lpAbove
      LabelSpacing = 3
      ParentFont = False
      TabOrder = 1
    end
    object lbl_edtIE: TLabeledEdit
      Left = 634
      Top = 45
      Width = 143
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      EditLabel.Width = 13
      EditLabel.Height = 13
      EditLabel.Caption = 'IE'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LabelPosition = lpAbove
      LabelSpacing = 3
      ParentFont = False
      TabOrder = 2
    end
    object lbl_edtEnd: TLabeledEdit
      Left = 8
      Top = 88
      Width = 266
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      EditLabel.Width = 55
      EditLabel.Height = 13
      EditLabel.Caption = 'Endere'#231'o'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LabelPosition = lpAbove
      LabelSpacing = 3
      ParentFont = False
      TabOrder = 3
    end
    object lbl_edtNumero: TLabeledEdit
      Left = 279
      Top = 88
      Width = 54
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      EditLabel.Width = 44
      EditLabel.Height = 13
      EditLabel.Caption = 'N'#250'mero'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LabelPosition = lpAbove
      LabelSpacing = 3
      ParentFont = False
      TabOrder = 4
    end
    object lbl_edtUF: TLabeledEdit
      Left = 603
      Top = 88
      Width = 39
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      EditLabel.Width = 17
      EditLabel.Height = 13
      EditLabel.Caption = 'UF'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LabelPosition = lpAbove
      LabelSpacing = 3
      ParentFont = False
      TabOrder = 5
    end
    object lbl_edtBairro: TLabeledEdit
      Left = 404
      Top = 88
      Width = 194
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      EditLabel.Width = 34
      EditLabel.Height = 13
      EditLabel.Caption = 'Bairro'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LabelPosition = lpAbove
      LabelSpacing = 3
      ParentFont = False
      TabOrder = 6
    end
    object lbl_edtCep: TLabeledEdit
      Left = 339
      Top = 88
      Width = 59
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      EditLabel.Width = 23
      EditLabel.Height = 13
      EditLabel.Caption = 'Cep'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LabelPosition = lpAbove
      LabelSpacing = 3
      ParentFont = False
      TabOrder = 7
    end
    object cboCliente: TComboBox
      Left = 219
      Top = 45
      Width = 291
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkFlat
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 8
    end
    object lbl_edtDDD: TLabeledEdit
      Left = 81
      Top = 45
      Width = 40
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      EditLabel.Width = 28
      EditLabel.Height = 13
      EditLabel.Caption = 'DDD'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LabelPosition = lpAbove
      LabelSpacing = 3
      ParentFont = False
      TabOrder = 9
    end
    object lbl_edtTelefone: TLabeledEdit
      Left = 127
      Top = 45
      Width = 87
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      EditLabel.Width = 51
      EditLabel.Height = 13
      EditLabel.Caption = 'Telefone'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LabelPosition = lpAbove
      LabelSpacing = 3
      ParentFont = False
      TabOrder = 10
    end
    object cboNatureza: TComboBox
      Left = 9
      Top = 142
      Width = 192
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkFlat
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 11
      OnClick = cboNaturezaClick
    end
    object ckSaida: TCheckBox
      Left = 653
      Top = 143
      Width = 60
      Height = 17
      Caption = '&Sa'#237'da'
      TabOrder = 12
    end
    object ckEntrada: TCheckBox
      Left = 709
      Top = 143
      Width = 60
      Height = 17
      Caption = '&Entrada'
      TabOrder = 13
    end
    object cboCondPagto: TComboBox
      Left = 205
      Top = 142
      Width = 128
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkFlat
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 14
    end
    object cboTransportadora: TComboBox
      Left = 337
      Top = 142
      Width = 142
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkFlat
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 15
    end
    object ibeaBuscaCli: TIBEAntialiasButton
      Left = 662
      Top = 79
      Width = 43
      Height = 39
      Hint = 'Consulta Clientes'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF004242730008085A0008087B001818
        7B0018187B0018187B0018187B0010107B0000005200BDBDBD00FF00FF007384
        730042634200426B42004A6B4A004A6B4A00182963002121AD002121E7003131
        FF003939FF003939FF003131FF002929FF0008007B00EFEFEF00FF00FF0042A5
        4A0018B5180021F7180039FF310042FF390039DE420029299C004242CE004242
        EF004242F7004242F7004242F7003131E70042426300FF00FF00FF00FF0094CE
        9C0029A5290039DE390039FF390042FF420042FF3900296373005A5AC6005A5A
        D6005A5ADE005A5ADE005A5AD60021188C00BDBDBD00FF00FF00FF00FF00F7FF
        F70031A539005AC65A005ADE5A005ADE5A005ADE5A004ABD52003139A5007B7B
        D6007B7BD6007B7BD6004242B50063637B00FF00FF00FF00FF00FF00FF00FF00
        FF0094CE9C0052BD52007BD67B007BD67B0073D673002184210029294200424A
        BD00848CE700525ACE0018183900BDBDBD00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00397B42005ACE630073DE8400319439001829290094ADD600B5D6
        F700C6DEFF00C6DEFF00B5CEE70039424A00B5B5B500FF00FF00FF00FF00FF00
        FF006B7384009CB5DE00BDD6FF00C6DEFF00C6DEFF0094BDE700A5CEF700B5D6
        FF00BDDEFF00BDDEFF00BDDEFF00B5D6F70029313100FF00FF00FF00FF00B5BD
        C60094B5E700ADCEF700B5D6FF00BDDEFF00ADCEF70094BDEF00A5CEFF00ADCE
        FF00ADD6FF00ADD6FF00ADD6FF00ADD6FF0063738C00BDBDBD00FF00FF00ADC6
        E70094BDF700A5CEFF00ADD6FF00ADD6FF005A7BBD007BADDE009CC6FF009CCE
        FF006B94CE004263A500395A9400526B9C004A63840094949400FF00FF009C6B
        6B00949CBD009CC6FF009CB5E7008C636B0029317300184AAD00739CDE006394
        D600184AA500184294001839730018315A000010290094949400FF00FF00A55A
        5A00A55A4A00A5949C00AD737300A5524A0073426300426BC6005284D6005284
        DE00527BCE005273B500526BA5005263840010183100DEDEDE00FF00FF00D6BD
        BD00BD7B6B00D69C8C00CE948C00C6948C00BD8484007B7BA5008CADE7009CB5
        EF009CB5E7009CADD60094A5C60031426300A5A5A500FF00FF00FF00FF00FF00
        FF00DEBDBD00CE9C9400E7BDBD00DEC6BD00CEA5A5008C5A5A00848CAD008CA5
        D6005A7BC6008494BD0073849C00D6D6D600FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00F7F7F700E7CECE00E7CECE00D6C6C600EFEFEF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
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
      TabOrder = 16
      OnClick = ibeaBuscaCliClick
    end
    object ibeaAbreRelatorio: TIBEAntialiasButton
      Left = 713
      Top = 79
      Width = 43
      Height = 39
      Hint = 'Busca Clientes'
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFEFEFEF7F8F6F8F9F7FEFEFEFC
        FCFCFEFEFEFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFFEDE8E5C3BFBA97948C949189BDB8B5B6
        B1B0C1BDBCEFEAEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFF
        FFFEFFFFFEFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFF9FBFBEEF0F0E2E2
        E2EBEBEBFCFCFCFFFFFFEFEAE9CEC5C1A4978FBAAD9FF7EDDBE1D7C682766A55
        4741635654827878C1BCBDECEAEAFFFFFFFFFFFFFFFEFFFFFEFFFFFFFFFFFFFF
        FFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF3F3F3CCCCCCA6A6A68E8E
        8E9E9C9BD4CFCCD4CBC7B1A49CA19185E7D6C3FBF3D6F3FFD7F2FFDAE7F2D1B3
        B6A06E66596A5E58796E6A9C9494F3F1F1FFFFFFFFFEFFFFFEFFFFFFFFFFFFFF
        FFFEFFFFFEFFFEFEFEFFFFFFF9F9F9ECECECBABBB99B9C9AA9AAA8B2B0AF9E9C
        9B8C858276645D947C70DEC0AFFFE6CCF8E3C3DDE9B568AC593D943C6EB46DBC
        E7B4E1ECCCAEA49284726786736ECAC5C4F9F9F9FFFFFFFFFFFFFFFFFFFEFEFE
        FFFEFFFFFFFFFDFDFDEEEEEEC1C1C1929292AEAFADDADBD9E6E4E3C7C5C4A6A2
        A1938783967B71E9C8B9F1D1BEE3CEB9D5D1BE90B58F48A65F50C36C6DCF7B7E
        C57CB6DAA4F8FEDBD6C7B4A18D8290867FD7D4D0FFFEFEFFFFFFFFFFFFFFFFFF
        F7F7F7E3E3E3B0AEAE9D9B9ABCBCBCE7E7E7F8F8F8F4F4F4E7E5E5CECCCBB2AE
        ADA79993A58475A07D6FB29F97A1A6A75F83953C7D8C3A958C47AC8665C67C5E
        B45C66A859A9CF93FCFFDFFFFAE8D3C5B9BBB2A9FFFCFBFFFFFFFFFFFFF4F4F4
        BCBCBC8F8F8FBBB9B9E3E1E1F8F8F8F4F4F4F1F1F1EFEFEFE6E4E4D4D2D2BBB7
        B6AB9D978D6C5D8E6E61635A573E4F5C6092B664A8CD5CA1B5589C915F9F645E
        994971A65CB5D99DF6FBDBFAF0DFD7CBBFE4DBD2FFFFFEFFFFFFFCFDFBABACAA
        C6C6C6F5F5F5FBF9F9F6F4F4F3F1F1F1EFEFEBECEAEAEBE9E5E3E3DCDADAC4C2
        C1BEB3AF9C7F76876D665C57583D4D5A4266846089A984A3B2A2B2ABD4D2B0E1
        D9AAEFEAC3F0EBCCCBC3B2D8CFC6FFFFFBFFFFFCFFFFFFFFFFFFF9FAF8B8B9B7
        FDFDFDF6F6F6F5F2F4F2EFF1F0EEEEEDEBEBE9EAE8E6E7E5E5E3E3E1DFDFCCCA
        C9C4BDBAC7B4ADB09D98746F71555C654856685963747C7A80A99993E4C3B0FF
        DEC6DCC0AFC3B0A3F7ECE4FFFFFCFFFEFDFFFFFFFFFFFFFFFFFFF9FAF8C3C4C2
        F2F4F4EEF0F0EEEEEEEAEAEAEBE9E9E7E5E5E4E2E1E2E0DFE2E0E0E6E4E4D5D3
        D2D0CCCBCBC4C1C7BEBBBAB5B49E969682706F806A658E726B9D7E75A88A7FA5
        8D818F827AE2DCD7FFFFFCFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFF8F9F7C1C2C0
        F0F0F0EDEDEDEAEAEAE6E6E6E7E5E5E4E2E2E3E1E0DEDCDBE3E1E1E6E4E4D4D2
        D1D2D0CFCFCDCDCDC9C8C5C0BDC8BCB6C2A8A1A88A7F9A7A6F816259634B4594
        83807F7A77D2D0CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F9F7BFC0BE
        EBEBEBEAE8E8E6E4E3E5E3E2E1DFDFDFDDDDDEDAD9DEDAD9EAE8E8E3E1E1D6D4
        D3D7D5D4D6D4D3D3D1D0D1CDCCCCC7C4CBC0BCC9BAB7B1A09D8C7877756664A1
        9593807C7BCFD0CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F9F7BDBEBC
        E9E7E7E6E4E4E3E1E0E0DEDDDDDBDBDBD9D9D8D6D5E6E4E3EBE9E9E1DFDFD2CE
        CD7D7978848281CFCDCCD5D3D2D1CFCECECAC9C8C4C3C4BCBDBDB2B4AAA0A0B0
        A8A87F7D7CCFD0CEFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFF8F8F8B9B9B9
        E4E2E1E2DEDDDDDBDADCDAD9D8D6D5D5D3D2E5E3E2F2F0EFECEAEAE8E3E48B86
        85322D2C1D1918282324949291CBC9C8D4D2D1D1CFCECECAC9C8C4C3C1BDBCBD
        B9B8817F7ED1CFCEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBB2B2B2
        E1DFDEDEDAD9D9D7D6D7D5D4D4D2D1E3E1E1F6F5F7F7F3F8F2EAEBDDD1D16D60
        5E5B4F4D4139392E2829201C1B454140B8B6B5D9D7D6D3D1D0CFCDCCC9C7C6C6
        C4C3817F7ED2D0CFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFA1A1A1
        D5D3D2DCDAD9DAD8D7DDDBDAF1F2EEFEFDFFE9E5F1C3B6C4EED7DCA485868A6E
        6E7E69686B5B5C594D4D3F37372B26251D19185A5655BAB8B7D4D2D1D2D0CFD3
        D1D0838383D9D9D9FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7D7D7
        9C9A99D8D6D5EDE9E8F2F1EDECECE6EBE6E7FFF1FED7BACAB98D94AC7A7EA174
        77967173876A6D7963656454554F4545372F2F211C1B3531307A7877D7D5D4D7
        D5D4868686E4E4E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEDEDE
        9997969D9A96BCB7B4D3CFCAD4D1C9B8ACA6D7B4B8C08992C7848BC98389BE7E
        83B17A7DA27578946F71856B6B7664636052534E4444332E2D181413C2C0BFCD
        CBCA9C9C9CF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1DFDE
        B4B1ADE3DDD8D3C9C2B7ACA4968C82917E76A57C7AB97E82C88288CF858BCC84
        8AC48186B67A80AA777B9A72748E6E6F7F67696F5D5E5349494F4A49DBD7D6B1
        AFAEC4C4C4FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F5F4
        BEB7B4E5D9D3DBC7BCFFEBDFD5C0B1AE968A93736E9F7576B27B7EC07D84C983
        89CD858BCC848AC48186B67B7FA9787A9A72748B6F6F7F6F70C5BDBDD4CFD09F
        9D9DF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
        DCD5D2C6B6AFE5CDC1FFEBDCFAE0D0F0D7C7CAB0A4A0807A9C706FAA7676B87D
        81C38085CC848ACF858BC88288BD8084A8797C937374BBABACEDE8E7ABA6A7C2
        C0C0FFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFE
        FFFFFCDDD0C8EBD5C9FFEFDFFFE7D7FEE6D4FBE1D0F6DCCCC1A398A17F799C73
        71A87779BA7C82C48087CC848AC7858AB8898CD1B4B7FFF3F3C1BFBEB6B4B4FA
        FAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFE
        FFFFFCDDD2CAEEDACFFFF1E2FFEFE2FDEADBFCE6D4FCE4D0F7DECEE3C9BDAE8E
        8897716FA07475AD7A7EB97F84B9868AF1CCD0FFF9FBC5C0BFACADABF8F8F8FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFFFFFFFF
        FFFFFCDFD6CDF2E0D5FFF4E7FFF8EEFFF4EAFEEEE1FDEADBFDE6D6FCE3D3FEE1
        D3E0C3BAA18A889F8A8CC5AFB1E6D1D3D9CBCCAFA7A7CAC8C8FCFCFCFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF
        FFFFFEE0D6CFF6E6DAF9E8DBFFFEF4FFFCF2FFF5ECFFF0E4FEEBDEFFE8D8FFE7
        D7EFD9CDCEC3BFC7C3C2C0BCBBC1BDBCC3C1C0E7E5E4FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF1EBE6F2E2D6EEDCCBF6E2D1FFF2E2FFFCF3FFFAF2FFF3EBFFF1E5FFEE
        DFF3E1D6D0CAC5FEFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFCF9EFE5EADACDF5E2D3EEDBCCF5E7DBFFF8EEFFFDF3FFF8EFFFF5
        E8F3E5D9CECAC5FAFBF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFEFFFFFCFFFFFBF7EFE8E6DAD0F0E0D0F0DCCBF9E6D7FFFAEAFFFE
        F1F6ECE2CECBC7FAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFBEADCD0F5E5D5F2DFD0F2E2D2FFEF
        E2FBF1E7D2CFCBFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFCFFFFF8E5DAD2DFD1C5E7D7
        CAC1B5A9F3EEEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFBF5EBE1DBCB
        BEFAEFE1FFFEFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
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
      TabOrder = 17
    end
    object lbl_edtFrete: TLabeledEdit
      Left = 484
      Top = 142
      Width = 47
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      EditLabel.Width = 30
      EditLabel.Height = 13
      EditLabel.Caption = 'Frete'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LabelPosition = lpAbove
      LabelSpacing = 3
      ParentFont = False
      TabOrder = 18
    end
    object cboEspecie: TComboBox
      Left = 535
      Top = 142
      Width = 112
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkFlat
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 19
    end
  end
  object GroupBox2: TGroupBox
    Left = 1
    Top = 240
    Width = 782
    Height = 81
    Caption = 'Lan'#231'amento de Produtos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    object lbl_Prod: TLabel
      Left = 153
      Top = 30
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
    object lbl_edtCodBarras: TLabeledEdit
      Left = 8
      Top = 45
      Width = 89
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      EditLabel.Width = 81
      EditLabel.Height = 13
      EditLabel.Caption = 'C'#243'd.de Barras'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LabelPosition = lpAbove
      LabelSpacing = 3
      ParentFont = False
      TabOrder = 0
    end
    object lbl_edtQtde: TLabeledEdit
      Left = 390
      Top = 45
      Width = 42
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      EditLabel.Width = 32
      EditLabel.Height = 13
      EditLabel.Caption = 'Qtde.'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LabelPosition = lpAbove
      LabelSpacing = 3
      ParentFont = False
      TabOrder = 1
    end
    object lbl_edtVlrUnitario: TLabeledEdit
      Left = 438
      Top = 45
      Width = 73
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      EditLabel.Width = 64
      EditLabel.Height = 13
      EditLabel.Caption = 'Vlr.Unit'#225'rio'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LabelPosition = lpAbove
      LabelSpacing = 3
      ParentFont = False
      TabOrder = 2
    end
    object cboProd: TComboBox
      Left = 151
      Top = 45
      Width = 234
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkFlat
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ItemHeight = 13
      ParentFont = False
      TabOrder = 3
    end
    object lbl_edtCodProd: TLabeledEdit
      Left = 102
      Top = 45
      Width = 42
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      EditLabel.Width = 40
      EditLabel.Height = 13
      EditLabel.Caption = 'C'#243'digo'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LabelPosition = lpAbove
      LabelSpacing = 3
      ParentFont = False
      TabOrder = 4
    end
    object lbl_edtDesc: TLabeledEdit
      Left = 517
      Top = 45
      Width = 57
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      EditLabel.Width = 55
      EditLabel.Height = 13
      EditLabel.Caption = 'Desconto'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LabelPosition = lpAbove
      LabelSpacing = 3
      ParentFont = False
      TabOrder = 5
    end
    object lbl_edtAcrescimo: TLabeledEdit
      Left = 580
      Top = 45
      Width = 57
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      EditLabel.Width = 59
      EditLabel.Height = 13
      EditLabel.Caption = 'Acr'#233'scimo'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      LabelPosition = lpAbove
      LabelSpacing = 3
      ParentFont = False
      TabOrder = 6
    end
    object lbl_edtTotal: TLabeledEdit
      Left = 646
      Top = 45
      Width = 62
      Height = 21
      BevelInner = bvSpace
      BevelKind = bkFlat
      BorderStyle = bsNone
      Color = clInfoBk
      EditLabel.Width = 49
      EditLabel.Height = 13
      EditLabel.Caption = 'Vlr.Total'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = [fsBold]
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      LabelPosition = lpAbove
      LabelSpacing = 3
      ParentFont = False
      TabOrder = 7
    end
    object ibeaIncluir: TIBEAntialiasButton
      Left = 721
      Top = 26
      Width = 43
      Height = 39
      Hint = 'Incluir Produto'
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
      TabOrder = 8
      OnClick = ibeaIncluirClick
    end
  end
  object dbgNotaFiscal: TDBGrid
    Left = 4
    Top = 329
    Width = 776
    Height = 168
    Cursor = crHandPoint
    BorderStyle = bsNone
    FixedColor = clInfoBk
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit]
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object dtpDataEmissao: TDateTimePicker
    Left = 97
    Top = 24
    Width = 84
    Height = 21
    CalAlignment = dtaLeft
    Date = 39310.0173641898
    Time = 39310.0173641898
    DateFormat = dfShort
    DateMode = dmComboBox
    Kind = dtkDate
    ParseInput = False
    TabOrder = 8
  end
  object lbl_edtTotalGeral: TLabeledEdit
    Left = 654
    Top = 504
    Width = 112
    Height = 25
    BevelInner = bvSpace
    BevelKind = bkFlat
    BorderStyle = bsNone
    Color = clInfoBk
    EditLabel.Width = 99
    EditLabel.Height = 20
    EditLabel.Caption = 'Total da Nota:'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -16
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    LabelPosition = lpLeft
    LabelSpacing = 3
    ParentFont = False
    ReadOnly = True
    TabOrder = 9
  end
end
