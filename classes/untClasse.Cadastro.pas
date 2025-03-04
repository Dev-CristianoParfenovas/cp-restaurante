unit untClasse.Cadastro;

interface

uses SysUtils;

type

  TCadastro = class

  private
    FNome : String;
    FEndereco : String;

    function  getNome : String;
    procedure setNome(Value : String);
    function  getEndereco : String;
    procedure setEndereco(Value : String);

  public
  {public declarations}
  
  published
    property Nome : String read getNome write setNome;
    property Endereco : String read getEndereco write setEndereco;
    //constructor Create;
    
  end;
////////////////////////////////////////////////////////////////////////////////

  TProdutos = class(TCadastro)

    private
    FCodigoBarras: String;
    FTextCodigo: String;
    FRefProd: String;

    procedure SetCodigoBarras(const Value: String);
    function getCodigoBarras : String;
    procedure SetTextCodigo(const Value: String);
    function getTextCodigo : String;
    procedure SetRefProd(const Value: String);
    function getRefProd : String;
    public
    {public declarations}

    published
      property CodigoBarras : String read getCodigoBarras write setCodigoBarras;
      property TextCodigo : String read getTextCodigo write setTextCodigo;
      property RefProd : String read FRefProd write SetRefProd;
      //constructor Create;
      //destructor Destroy; Override;

  end;


////////////////////////////////////////////////////////////////////////////////
type
  TCliente = class

    private
    FNome : String;
    FID: integer;
    FBuscaNome: String;
    FTelefone : String;

    function getFNome: String;
    procedure setFNome(const Value: String);
    function getFID: integer;
    procedure setFID(const Value: integer);
    procedure SetBuscaNome(const Value: String);
    function getTelefone: String;
    procedure SetTelefone(const Value: String);

    public
    property Nome : String read getFNome write setFNome;
    property ID : integer read getFID write setFID;
    property BuscaNome : String read FBuscaNome write SetBuscaNome;
    property Telefone : String read getTelefone write SetTelefone;

  end;
  


implementation


{TCadastro}

function TCadastro.getNome : String;

begin

  Result := FNome;

end;

procedure TCadastro.setNome(Value : String);

begin

  if Value = '' then
    raise Exception.Create('O Nome est� em branco, favor informar!!');

    FNome := Value;

end;

function TCadastro.getEndereco : String;

begin

  Result := FEndereco;

end;

procedure TCadastro.setEndereco(Value : String);

begin

  if Value = '' then
    raise Exception.Create('O Endere�o est� em branco, favor informar!!');

  if Value <> '' then

    FEndereco := Value;

end;

{constructor TCadastro.Create;
begin

  Nome := '';
  FEndereco := '';
  
end;}

{ TProdutos }

{constructor TProdutos.Create;

begin

end;

destructor TProdutos.Destroy;

begin

  inherited;
  
end; }

function TProdutos.getCodigoBarras: String;

begin

  Result := FCodigoBarras;
  
end;

procedure TProdutos.setCodigoBarras(const Value: String);

begin

  FCodigoBarras := Value;

end;

function TProdutos.getTextCodigo: String;

begin

  Result := FTextCodigo;

end;

procedure TProdutos.setTextCodigo(const Value: String);

begin

  FTextCodigo := Value;

end;

function TProdutos.getRefProd : String;

begin

  Result := FRefProd;
  
end;

procedure TProdutos.setRefProd(const Value: String);

begin

  FRefProd := Value;

end;

////////////////////////////////////////////////////////////////////////////////
function TCliente.getFID: integer;
begin
Result := FID;
end;

function TCliente.getFNome: String;
begin
Result := FNome;
end;

function TCliente.getTelefone: String;
begin

  Result := FTelefone;

end;

procedure TCliente.SetBuscaNome(const Value: String);
begin

  if Value <>'' then

    FBuscaNome := Value;

  if Value = '' then

    FBuscaNome := '';

end;

procedure TCliente.setFID(const Value: integer);
begin

  FID := Value;

end;

procedure TCliente.setFNome(const Value: String);
begin

  if Value = '' then

    raise Exception.Create('O campo nome do cliente est� em branco');

    if Value <> '' then

      FNome := Value;


end;

procedure TCliente.SetTelefone(const Value: String);
begin

  if Value <> '' then

    FTelefone := Value;

  if Value = '' then

    FTelefone := '';

end;

end.
 