unit untClasse.Cadastro;

interface

uses SysUtils;

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

//uses untClasse.Cadastro;



{ TCliente }


{ TCliente }

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

    raise Exception.Create('O campo nome do cliente está em branco');

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
