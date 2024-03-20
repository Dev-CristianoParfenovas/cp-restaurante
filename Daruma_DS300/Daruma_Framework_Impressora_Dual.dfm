object Framework_Impressora_Dual: TFramework_Impressora_Dual
  Left = 0
  Top = 108
  Width = 800
  Height = 458
  Caption = 'Daruma Framework Impressora DUAL (Mini Impressora)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object BT_Fechar: TButton
    Left = 709
    Top = 384
    Width = 89
    Height = 25
    Caption = 'Fechar'
    TabOrder = 0
    OnClick = BT_FecharClick
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 32
    object MN_Registry: TMenuItem
      Caption = '&Metodos para Registry'
      object MN_Daruma_Registry_DUAL_Enter: TMenuItem
        Caption = 'Metodo Daruma_Registry_DUAL_Enter'
        object MN_Habilitar_Daruma_Registry_Dual_Enter: TMenuItem
          Caption = '1 - Habilitar'
          OnClick = MN_Habilitar_Daruma_Registry_Dual_EnterClick
        end
        object MN_Desabilitar_Daruma_Registry_Dual_Enter: TMenuItem
          Caption = '0 - Desabilitar'
          OnClick = MN_Desabilitar_Daruma_Registry_Dual_EnterClick
        end
      end
      object MN_Daruma_Registry_DUAL_Modo_Espera: TMenuItem
        Caption = 'Metodo Daruma_Registry_DUAL_Espera'
        object MN_Habilitar_Daruma_Registry_Dual_Espera: TMenuItem
          Caption = '1 - Habilitar'
          OnClick = MN_Habilitar_Daruma_Registry_Dual_EsperaClick
        end
        object MN_Desabilitar_Daruma_Registry_Dual_Espera: TMenuItem
          Caption = '0 - Desabilitar'
          OnClick = MN_Desabilitar_Daruma_Registry_Dual_EsperaClick
        end
      end
      object MN_Daruma_Registry_DUAL_Modo_Escrita: TMenuItem
        Caption = 'Metodo Daruma_Registry_DUAL_Modo_Escrita'
        object MN_Habilitar_Daruma_Registry_Dual_Modo_Escrita: TMenuItem
          Caption = '1 - Habilitar'
          OnClick = MN_Habilitar_Daruma_Registry_Dual_Modo_EscritaClick
        end
        object MN_Desabilitar_Daruma_Registry_Dual_Modo_Escrita: TMenuItem
          Caption = '0 - Desabilitar'
          OnClick = MN_Desabilitar_Daruma_Registry_Dual_Modo_EscritaClick
        end
      end
      object MN_Daruma_Registry_DUAL_Porta: TMenuItem
        Caption = 'Metodo Daruma_Registry_DUAL_Porta'
        OnClick = MN_Daruma_Registry_DUAL_PortaClick
      end
      object MN_Daruma_Registry_DUAL_Modo_Tabulacao: TMenuItem
        Caption = 'Metodo Daruma_Registry_DUAL_Tabula'#231#227'o'
        OnClick = MN_Daruma_Registry_DUAL_Modo_TabulacaoClick
      end
    end
    object MetodosparaStatus1: TMenuItem
      Caption = 'Metodos para Status'
      object MNDarumaDUALVerificaStatus1: TMenuItem
        Caption = 'Metodo Daruma_DUAL_VerificaStatus'
        OnClick = MNDarumaDUALVerificaStatus1Click
      end
      object MetodoDarumaDUALVerificaDocumento1: TMenuItem
        Caption = 'Metodo Daruma_DUAL_VerificaDocumento'
        OnClick = MetodoDarumaDUALVerificaDocumento1Click
      end
    end
    object MetodosparaAutenticaoeImpresso1: TMenuItem
      Caption = 'Metodos para Autentica'#231#227'o e Impress'#227'o'
      object MN_Daruma_DUAL_ImprimirTexto: TMenuItem
        Caption = 'Metodo Daruma DUAL ImprimirTexto'
        OnClick = MN_Daruma_DUAL_ImprimirTextoClick
      end
      object DarumaDUALImprimirArquivo1: TMenuItem
        Caption = 'Metodo Daruma DUAL ImprimirArquivo'
        OnClick = DarumaDUALImprimirArquivo1Click
      end
      object MN_Daruma_DUAL_Autenticar: TMenuItem
        Caption = 'Metodo Daruma DUAL Autenticar'
        OnClick = MN_Daruma_DUAL_AutenticarClick
      end
      object MN_Daruma_DUAL_AcionaGaveta: TMenuItem
        Caption = 'Metodo Daruma DUAL AcionaGaveta'
        OnClick = MN_Daruma_DUAL_AcionaGavetaClick
      end
    end
    object MetodosparaTestes1: TMenuItem
      Caption = 'Metodos para Testes'
      object ImprimirTextocomTagsdeFormatao1: TMenuItem
        Caption = 'Imprimir Texto com Tags de Formata'#231#227'o'
        OnClick = ImprimirTextocomTagsdeFormatao1Click
      end
      object esteCompletocomFormatacao1: TMenuItem
        Caption = 'Teste Completo com Formatacao'
        OnClick = esteCompletocomFormatacao1Click
      end
      object LoopingdeVerificaodeStatus1: TMenuItem
        Caption = 'Looping de Verifica'#231#227'o de Status'
        OnClick = LoopingdeVerificaodeStatus1Click
      end
      object LoopingdeVerificaodeStatusDoc1: TMenuItem
        Caption = 'Looping de Verifica'#231#227'o de Status Doc'
        OnClick = LoopingdeVerificaodeStatusDoc1Click
      end
    end
    object ExemplosdeCupons1: TMenuItem
      Caption = 'Exemplos de Cupons'
      object ExemploDual_01: TMenuItem
        Caption = 'Exemplo DUAL 01'
        OnClick = ExemploDual_01Click
      end
      object ExemploDual_02: TMenuItem
        Caption = 'Exemplo DUAL 02'
        OnClick = ExemploDual_02Click
      end
      object ExemploDual_03: TMenuItem
        Caption = 'Exemplo DUAL 03 (tabulacoes)'
        OnClick = ExemploDual_03Click
      end
      object ExemploDual_04: TMenuItem
        Caption = 'Exemplo DUAL 04'
        OnClick = ExemploDual_04Click
      end
      object ExemploDual_05: TMenuItem
        Caption = 'Exemplo DUAL 05'
        OnClick = ExemploDual_05Click
      end
      object ExemploDual_06: TMenuItem
        Caption = 'Exemplo DUAL 06'
        OnClick = ExemploDual_06Click
      end
      object ExemploDual_07: TMenuItem
        Caption = 'Examplo DUAL 07'
        OnClick = ExemploDual_07Click
      end
      object ExemploDual_08: TMenuItem
        Caption = 'Exemplo DUAL 08'
        OnClick = ExemploDual_08Click
      end
      object ExemploDual_09: TMenuItem
        Caption = 'Exemplo DUAL 09'
        OnClick = ExemploDual_09Click
      end
      object ExemploDual_10: TMenuItem
        Caption = 'Exemplo DUAL 10'
        OnClick = ExemploDual_10Click
      end
    end
  end
end
