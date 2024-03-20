unit untClasse.VendasCX;

interface

uses

untClasse.Cadastro;

  type
  TVendasCX = class(TCliente)

  private
    FSituacaoVendaCx: Integer;
    FVendaP: Integer;
    FVlrTotalPagoParcial: Real;
    FVlrPagtoP : String;
    FVlrTotalVenda : String;
    FIDVendaCX: Integer;
    FVlrPendente: Real;
    FIDTipoPagto: Integer;
    FIntConfirmaPagto: Integer;
    FIntCupomSimplesConf : Integer;
    FImprimeSimplesConf : Integer;
    procedure SetFSituacaoVendaCx(const Value: Integer);
    procedure SetFVendaP(const Value: Integer);
    function getFVendaP: Integer;
    function getFVlrTotalPagoParcial: Real;
    procedure SetFVlrTotalPagoParcial(const Value: Real);
    function getFVlrPagtoP: String;
    procedure SetFVlrPagtoP(const Value: String);
    function getFVlrTotalVenda: String;
    procedure SetFVlrTotalVenda(const Value: String);
    procedure SetFIDVendaCX(const Value: Integer);
    function getFIDVendaCX : Integer;
    function getFVlrPendente : Real;
    procedure SetFVlrPendente(const Value: Real);
    function getFIDTipoPagto: Integer;
    procedure SetFIDTipopagto(const Value: Integer);
    function getFIntConfirmaPagto : Integer;
    procedure SetFIntConfirmaPagto(const Value: Integer);
    function getFIntCupomSimplesConf: Integer;
    procedure SetFIntCupomSimplesConf(const Value: Integer);
    function getFImprimeSimplesConf: Integer;
    procedure SetFImprimeSimplesConf(const Value: Integer);
  public

    property SituacaoVendaCx : Integer read FSituacaoVendaCx write SetFSituacaoVendaCx;
    property VendaP : Integer read getFVendaP write SetFVendaP;
    property VlrTotalPagoParcial : Real read getFVlrTotalPagoParcial write SetFVlrTotalPagoParcial;
    property VlrPagtoP : String read getFVlrPagtoP write SetFVlrPagtoP;
    property VlrTotalVenda : String read getFVlrTotalVenda write SetFVlrTotalVenda;
    property VlrPendente : Real read getFVlrPendente write SetFVlrPendente;
    property IDVendaCX : Integer read FIDVendaCX write SetFIDVendaCX;
    property IDTipoPagto : Integer read getFIDTipoPagto write SetFIDTipopagto;
    property IntConfirmaPagto : Integer read getFIntConfirmaPagto write SetFIntConfirmaPagto;
    property IntCupomSimplesConf : Integer read getFIntCupomSimplesConf write SetFIntCupomSimplesConf;
    property ImprimeSimplesConf : Integer read getFImprimeSimplesConf write SetFImprimeSimplesConf;
  end;

  ////////////////////////////////////////////////////////////////////////////////

  TVendasCaixa = class

    private
    FVlrPago1: Real;
    FVlrPago2: Real;
    FVlrTotalVenda: Real;
   // FVlrTroco: Real;
    procedure setVlrPago1(const Value: Real);
    function  getVlrPago1 : Real;
    procedure setVlrPago2(const Value: Real);
    function  getVlrPago2 : Real;
    procedure setVlrTotalVenda(const Value: Real);
    function  getVlrTotalVenda : Real;
   // procedure setVlrTroco(const Value: Real);
    public
    {public declarations}

    published
    property VlrPago1 : Real read getVlrPago1 write setVlrPago1;
    property VlrPago2 : Real read getVlrPago2 write setVlrPago2;
    property VlrTotalVenda : Real read FVlrTotalVenda write setVlrTotalVenda;
  //  property VlrTroco : Real read getVlrTroco write setVlrTroco;

  end;

////////////////////////////////////////////////////////////////////////////////

implementation


//uses untClasse.VendasCX;

//uses untClasse.VendasCX;

{ TVendasCX }

function TVendasCX.getFVendaP: Integer;
begin

  Result := FVendaP;
  
end;

function TVendasCX.getFVlrPagtoP: String;
begin

  Result := FVlrPagtoP;

end;

function TVendasCX.getFVlrTotalPagoParcial: Real;
begin

  Result := FVlrTotalPagoParcial;
  
end;

procedure TVendasCX.SetFSituacaoVendaCx(const Value: Integer);
begin
  FSituacaoVendaCx := Value;
end;

procedure TVendasCX.SetFVendaP(const Value: Integer);

begin

  FVendaP := Value;

end;

procedure TVendasCX.SetFVlrTotalPagoParcial(const Value: Real);
begin

  FVlrTotalPagoParcial := Value;

end;

procedure TVendasCX.SetFVlrPagtoP(const Value: String);

begin

  FVlrPagtoP := Value;

end;

function TVendasCX.getFVlrTotalVenda: String;
begin

  Result := FVlrTotalVenda;
  
end;

procedure TVendasCX.SetFVlrTotalVenda(const Value: String);
begin

  FVlrTotalVenda := Value;

end;

function TVendasCX.getFIDVendaCX : Integer;

begin

  Result := FIDVendaCX;
  
end;

procedure TVendasCX.SetFIDVendaCX(const Value: Integer);
begin
  FIDVendaCX := Value;
end;

function TVendasCX.getFVlrPendente : Real;

begin

  Result := FVlrPendente;

end;

procedure TVendasCX.SetFVlrPendente(const Value: Real);
begin
  FVlrPendente := Value;
end;

function TVendasCX.getFIDTipoPagto: Integer;
begin

  Result := FIDTipoPagto;

end;

procedure TVendasCX.SetFIDTipopagto(const Value: Integer);
begin

  FIDTipoPagto := Value;
  
end;

function TVendasCX.getFIntConfirmaPagto: Integer;

begin

  Result := FIntConfirmaPagto;
  
end;

procedure TVendasCX.SetFIntConfirmaPagto(const Value: Integer);

begin

  FIntConfirmaPagto := Value;

end;

function TVendasCX.getFIntCupomSimplesConf: Integer;
begin
Result := FIntCupomSimplesConf;
end;

procedure TVendasCX.SetFIntCupomSimplesConf(const Value: Integer);
begin

  FIntCupomSimplesConf := Value;

end;

function TVendasCX.getFImprimeSimplesConf: Integer;
begin
Result := FImprimeSimplesConf;
end;

procedure TVendasCX.SetFImprimeSimplesConf(const Value: Integer);
begin

  FImprimeSimplesConf := Value;

end;
////////////////////////////////////////////////////////////////////////////////
function TVendasCaixa.getVlrPago1: Real;
begin
Result := FVlrPago1;
end;

function TVendasCaixa.getVlrPago2: Real;
begin
Result := FVlrPago2;
end;

function TVendasCaixa.getVlrTotalVenda: Real;
begin
Result := FVlrTotalVenda;
end;

procedure TVendasCaixa.setVlrPago1(const Value: Real);
begin
  FVlrPago1 := Value;
end;

procedure TVendasCaixa.setVlrPago2(const Value: Real);
begin
  FVlrPago2 := Value;
end;

procedure TVendasCaixa.setVlrTotalVenda(const Value: Real);
begin
  FVlrTotalVenda := Value;
end;

///
end.
