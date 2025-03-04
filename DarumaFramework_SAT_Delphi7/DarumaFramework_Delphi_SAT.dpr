program DarumaFramework_Delphi_SAT;

uses
  Forms,
  DarumaFramework_SAT in 'DarumaFramework_SAT.pas' {FR_DarumaFramework_SAT},
  EmissaoCupomTeste in 'EmissaoCupomTeste.pas' {FR_EmissaoCupomTeste},
  Metodo_aCFeVender_SAT_Daruma in 'Metodo_aCFeVender_SAT_Daruma.pas' {FR_aCFeVender_SAT_Daruma},
  Metodo_aCFeAbrir_SAT_Daruma in 'Metodo_aCFeAbrir_SAT_Daruma.pas' {FR_aCFeAbrir_SAT_Daruma},
  Metodo_aCFeTotalizar_SAT_Daruma in 'Metodo_aCFeTotalizar_SAT_Daruma.pas' {FR_aCFeTotalizar_SAT_Daruma},
  Metodo_aCFeEfetuarPagamento_SAT_Daruma in 'Metodo_aCFeEfetuarPagamento_SAT_Daruma.pas' {FR_aCFeEfetuarPagamento_SAT_Daruma},
  Metodo_tCFeEncerrar_SAT_Daruma in 'Metodo_tCFeEncerrar_SAT_Daruma.pas' {FR_tCFeEncerrar_SAT_Daruma},
  Metodo_aCFAbrir_SAT_Daruma in 'Metodo_aCFAbrir_SAT_Daruma.pas' {FR_MetodoaCFAbrir_SAT_Daruma},
  Metodo_aCFVender_SAT_Daruma in 'Metodo_aCFVender_SAT_Daruma.pas' {FR_MetodoaCFVender_SAT_Daruma},
  Metodo_aCFTotalizar_SAT_Daruma in 'Metodo_aCFTotalizar_SAT_Daruma.pas' {FR_MetodoaCFTotalizar_SAT_Daruma},
  Metodo_aCFEfetuarPagamento_SAT_Daruma in 'Metodo_aCFEfetuarPagamento_SAT_Daruma.pas' {FR_MetodoaCFEfetuarPagamento_SAT_Daruma},
  Metodo_tCFEncerrar_SAT_Daruma in 'Metodo_tCFEncerrar_SAT_Daruma.pas' {FR_MetodotCFEncerrar_SAT_Daruma},
  Metodo_aCFEstornarPagamento_SAT_Daruma in 'Metodo_aCFEstornarPagamento_SAT_Daruma.pas' {FR_MetodoaCFEstornarPagamento_SAT_Daruma},
  Metodo_regAlterarValor_SAT_Daruma in 'Metodo_regAlterarValor_SAT_Daruma.pas' {FR_MetodoregAlterarValor_SAT_Daruma},
  Metodo_regRetornarValor_SAT_Daruma in 'Metodo_regRetornarValor_SAT_Daruma.pas' {FR_MetodoregRetornarValor_SAT_Daruma},
  Metodo_tCFeAssociarAssinatura_SAT_Daruma in 'Metodo_tCFeAssociarAssinatura_SAT_Daruma.pas' {FR_MetodotCFeAssociarAssinatura_SAT_Daruma},
  Metodo_tCFeEnviar_SAT_Daruma in 'Metodo_tCFeEnviar_SAT_Daruma.pas' {FR_MetodotCFeEnviar_SAT_Daruma},
  Metodo_aCFeCancelarFormaPagamento_SAT_Daruma in 'Metodo_aCFeCancelarFormaPagamento_SAT_Daruma.pas' {FR_MetodoaCFeCancelarFormaPagamento_SAT_Daruma},
  Metodo_aCFeCancelarItem_SAT_Daruma in 'Metodo_aCFeCancelarItem_SAT_Daruma.pas' {FR_MetodoaCFeCancelarItem_SAT_Daruma},
  Metodo_aCFeEstornarPagamento_SAT_Daruma in 'Metodo_aCFeEstornarPagamento_SAT_Daruma.pas' {FR_MetodoaCFeEstornarPagamento_SAT_Daruma},
  Metodo_rConsultarStatusEspecifico_SAT_Daruma in 'Metodo_rConsultarStatusEspecifico_SAT_Daruma.pas' {FR_MetodorConsultarStatusEspecifico_SAT_Daruma},
  Metodo_tCFeCancelarParametrizado_SAT_Daruma in 'Metodo_tCFeCancelarParametrizado_SAT_Daruma.pas' {FR_tCFeCancelarParametrizado_SAT_Daruma},
  Metodo_rInfoEstendida_SAT_Daruma in 'Metodo_rInfoEstendida_SAT_Daruma.pas' {FR_MetodorInfoEstendida_SAT_Daruma},
  Metodo_iImprimirCFe_SAT_Daruma in 'Metodo_iImprimirCFe_SAT_Daruma.pas' {FR_MetodoiImprimirCFe_SAT_Daruma};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFR_DarumaFramework_SAT, FR_DarumaFramework_SAT);
  Application.CreateForm(TFR_EmissaoCupomTeste, FR_EmissaoCupomTeste);
  Application.CreateForm(TFR_aCFeVender_SAT_Daruma, FR_aCFeVender_SAT_Daruma);
  Application.CreateForm(TFR_aCFeAbrir_SAT_Daruma, FR_aCFeAbrir_SAT_Daruma);
  Application.CreateForm(TFR_aCFeTotalizar_SAT_Daruma, FR_aCFeTotalizar_SAT_Daruma);
  Application.CreateForm(TFR_aCFeEfetuarPagamento_SAT_Daruma, FR_aCFeEfetuarPagamento_SAT_Daruma);
  Application.CreateForm(TFR_tCFeEncerrar_SAT_Daruma, FR_tCFeEncerrar_SAT_Daruma);
  Application.CreateForm(TFR_MetodoaCFAbrir_SAT_Daruma, FR_MetodoaCFAbrir_SAT_Daruma);
  Application.CreateForm(TFR_MetodoaCFVender_SAT_Daruma, FR_MetodoaCFVender_SAT_Daruma);
  Application.CreateForm(TFR_MetodoaCFTotalizar_SAT_Daruma, FR_MetodoaCFTotalizar_SAT_Daruma);
  Application.CreateForm(TFR_MetodoaCFEfetuarPagamento_SAT_Daruma, FR_MetodoaCFEfetuarPagamento_SAT_Daruma);
  Application.CreateForm(TFR_MetodotCFEncerrar_SAT_Daruma, FR_MetodotCFEncerrar_SAT_Daruma);
  Application.CreateForm(TFR_MetodoaCFEstornarPagamento_SAT_Daruma, FR_MetodoaCFEstornarPagamento_SAT_Daruma);
  Application.CreateForm(TFR_MetodoregAlterarValor_SAT_Daruma, FR_MetodoregAlterarValor_SAT_Daruma);
  Application.CreateForm(TFR_MetodoregRetornarValor_SAT_Daruma, FR_MetodoregRetornarValor_SAT_Daruma);
  Application.CreateForm(TFR_MetodotCFeAssociarAssinatura_SAT_Daruma, FR_MetodotCFeAssociarAssinatura_SAT_Daruma);
  Application.CreateForm(TFR_MetodotCFeEnviar_SAT_Daruma, FR_MetodotCFeEnviar_SAT_Daruma);
  Application.CreateForm(TFR_MetodoaCFeCancelarFormaPagamento_SAT_Daruma, FR_MetodoaCFeCancelarFormaPagamento_SAT_Daruma);
  Application.CreateForm(TFR_MetodoaCFeCancelarItem_SAT_Daruma, FR_MetodoaCFeCancelarItem_SAT_Daruma);
  Application.CreateForm(TFR_MetodoaCFeEstornarPagamento_SAT_Daruma, FR_MetodoaCFeEstornarPagamento_SAT_Daruma);
  Application.CreateForm(TFR_MetodorConsultarStatusEspecifico_SAT_Daruma, FR_MetodorConsultarStatusEspecifico_SAT_Daruma);
  Application.CreateForm(TFR_tCFeCancelarParametrizado_SAT_Daruma, FR_tCFeCancelarParametrizado_SAT_Daruma);
  Application.CreateForm(TFR_MetodorInfoEstendida_SAT_Daruma, FR_MetodorInfoEstendida_SAT_Daruma);
  Application.CreateForm(TFR_MetodoiImprimirCFe_SAT_Daruma, FR_MetodoiImprimirCFe_SAT_Daruma);
  Application.Run;
end.
