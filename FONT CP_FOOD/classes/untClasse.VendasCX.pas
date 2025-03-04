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
  end;

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

end.
