unit untRelAPR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls;

type
  TfrmRelAPR = class(TForm)
    qrpRelAPR: TQuickRep;
    DetailBand1: TQRBand;
    qrdbCliente: TQRDBText;
    qrdbNomeAnimal: TQRDBText;
    qrdbSexo: TQRDBText;
    qrdbRaca: TQRDBText;
    qrdbPeso: TQRDBText;
    qrdbPelagem: TQRDBText;
    qrdbNascto: TQRDBText;
    qrlRisco: TQRLabel;
    qrdbQueixaPrinc: TQRDBText;
    qrl_QPrinc: TQRLabel;
    qrl_Duracao: TQRLabel;
    qrdbDuracao: TQRDBText;
    qrdbCurso: TQRDBText;
    qrl_Curso: TQRLabel;
    qrdbFreq: TQRDBText;
    qrl_Freq: TQRLabel;
    qrdbTratamento: TQRDBText;
    qrl_Tratamento: TQRLabel;
    qrdbFormaap: TQRDBText;
    qrl_Formaap: TQRLabel;
    qrl_Resultados: TQRLabel;
    qrdbResultados: TQRDBText;
    PageHeaderBand1: TQRBand;
    qrl_RelAPU: TQRLabel;
    TitleBand1: TQRBand;
    qrlCliente: TQRLabel;
    qrlNomeAnimal: TQRLabel;
    qrlSexoAnimal: TQRLabel;
    qrlRaca: TQRLabel;
    qrlPeso: TQRLabel;
    qrlPelagem: TQRLabel;
    qrlNascto: TQRLabel;
    QRLabel1: TQRLabel;
    qrdbEspSimNaoAPR: TQRDBText;
    qrdbQtoTempo: TQRDBText;
    qrdbProgredindo: TQRDBText;
    qrdbRegredindo: TQRDBText;
    qrdbFreqManha: TQRDBText;
    qrdbFreqTarde: TQRDBText;
    qrdbFreqNoite: TQRDBText;
    qrdbFreqDiasAlt: TQRDBText;
    QRLabel2: TQRLabel;
    qrdbSerosa: TQRDBText;
    qrdbSerosang: TQRDBText;
    qrdbSanguino: TQRDBText;
    qrddMucoP: TQRDBText;
    qrdbPurulenta: TQRDBText;
    qrdbUnilateral: TQRDBText;
    qrdbBilateral: TQRDBText;
    qrdbRonquidaoSN: TQRDBText;
    qrlRonquidaoSN: TQRLabel;
    qrl_AutPVozSN: TQRLabel;
    qrdbAutProgVozSN: TQRDBText;
    qrl_RespRuid: TQRLabel;
    qrdbRespRuidS: TQRDBText;
    qrdbRespRuidN: TQRDBText;
    qrdbRespRuidSuave: TQRDBText;
    qrdbRespRuidAspero: TQRDBText;
    qrdbRespRuidFluido: TQRDBText;
    qrl_Sufoc: TQRLabel;
    qrdbSufS: TQRDBText;
    qrlEng_SN: TQRLabel;
    qrdbEngS: TQRDBText;
    qrl_TosseSN: TQRLabel;
    qrdbTosseS: TQRDBText;
    qrl_Comendo: TQRLabel;
    qrdbComendo: TQRDBText;
    qrl_Bebendo: TQRLabel;
    qrdbBebendo: TQRDBText;
    qrdbSufN: TQRDBText;
    qrdbEngN: TQRDBText;
    qrdbTosseN: TQRDBText;
    qrl_DispSN: TQRLabel;
    qrdbDispS: TQRDBText;
    qrdbDispN: TQRDBText;
    qrl_PorxExSN: TQRLabel;
    qrdbPorExS: TQRDBText;
    qrdbPorExN: TQRDBText;
    qrl_CianoseSN: TQRLabel;
    qrdbCianoseS: TQRDBText;
    qrdbCianoseN: TQRDBText;
    qrl_Sincope: TQRLabel;
    qrdbSincopeS: TQRDBText;
    qrdbSincopeN: TQRDBText;
    QRImage2: TQRImage;
    QRImage1: TQRImage;
    QRImage3: TQRImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelAPR: TfrmRelAPR;

implementation

{$R *.dfm}

end.
