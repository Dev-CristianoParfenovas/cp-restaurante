unit Model.Usuario;

interface

uses FireDAC.Comp.Client, Data.DB, System.SysUtils, Model.Connection,
REST.Types, System.JSON;

type
    TCliente = class
    private
        FID_CLIENTE: Integer;
        FNOME: string;
        FLOGIN: string;
        FSENHA: string;
    public
        constructor Create;
        destructor Destroy; override;
        property ID_CLIENTE : Integer read FID_CLIENTE write FID_CLIENTE;
        property NOME : string read FNOME write FNOME;
        property LOGIN : string read FLOGIN write FLOGIN;
        property SENHA : string read FSENHA write FSENHA;

        function ListarCliente(order_by: string; out erro: string): TFDQuery;
        function Inserir(out erro: string): Boolean;
        function Excluir(out erro: string): Boolean;
        function Editar(out erro: string): Boolean;
        function POST_PUT_Clientes(verbo: TRestRequestMethod; id_usuario: integer;
      nome, login, senha: string; out erro: string): boolean;
end;

implementation

uses
UnitDM, REST.Client;

{ TCliente }

constructor TCliente.Create;
begin
    Model.Connection.Connect;
end;

destructor TCliente.Destroy;
begin
    Model.Connection.Disconect;
end;

{--- POST / PUT ---}
function TCliente.POST_PUT_Clientes(verbo: TRestRequestMethod;
                                         id_usuario: integer;
                                         nome, login, senha: string;
                                         out erro: string): boolean;
var
    jsonBody : TJSONObject;
begin
    try
        try
            Result := false;
            erro := '';

            jsonBody := TJSONObject.Create;
            jsonBody.AddPair('nome', nome);
            jsonBody.AddPair('login', login);
            jsonBody.AddPair('senha', senha);

            if verbo = rmPUT then
                jsonBody.AddPair('id', id_usuario.ToString);


            dm.ReqUsuarioPost.Params.Clear;
            dm.ReqUsuarioPost.Body.ClearBody;
            dm.ReqUsuarioPost.Method := verbo; // POST ou PUT
            dm.ReqUsuarioPost.Body.Add(jsonBody.ToString,
                                          ContentTypeFromString('application/json'));
            dm.ReqUsuarioPost.Execute;

            // Tratar retorno...
            if (dm.ReqUsuarioPost.Response.StatusCode  <> 200) and
               (dm.ReqUsuarioPost.Response.StatusCode  <> 201) then
            begin
                erro := 'Erro ao salvar dados: ';
                exit;
            end;

            Result := true;

        except on ex:exception do
                erro := 'Ocorreu um erro: ' + ex.Message;
        end;
    finally
        jsonBody.DisposeOf;
    end;
end;

function TCliente.Excluir(out erro: string): Boolean;
var
    qry : TFDQuery;
begin
    try
        qry := TFDQuery.Create(nil);
        qry.Connection := Model.Connection.FConnection;

        with qry do
        begin
            Active := false;
            sql.Clear;
            SQL.Add('DELETE FROM TAB_CLIENTE WHERE ID_CLIENTE=:ID_CLIENTE');
            ParamByName('ID_CLIENTE').Value := ID_CLIENTE;
            ExecSQL;
        end;

        qry.Free;
        erro := '';
        result := true;

    except on ex:exception do
        begin
            erro := 'Erro ao excluir cliente: ' + ex.Message;
            Result := false;
        end;
    end;
end;

function TCliente.Editar(out erro: string): Boolean;
var
    qry : TFDQuery;
begin
    // Validacoes...
    if ID_CLIENTE <= 0 then
    begin
        Result := false;
        erro := 'Informe o id. cliente';
        exit;
    end;

    try
        qry := TFDQuery.Create(nil);
        qry.Connection := Model.Connection.FConnection;

        with qry do
        begin
            Active := false;
            sql.Clear;
            SQL.Add('UPDATE TAB_CLIENTE SET NOME=:NOME, EMAIL=:EMAIL, FONE=:FONE');
            SQL.Add('WHERE ID_CLIENTE=:ID_CLIENTE');
            ParamByName('NOME').Value := NOME;
            ParamByName('EMAIL').Value := LOGIN;
            ParamByName('FONE').Value := SENHA;
            ParamByName('ID_CLIENTE').Value := ID_CLIENTE;
            ExecSQL;
        end;

        qry.Free;
        erro := '';
        result := true;

    except on ex:exception do
        begin
            erro := 'Erro ao alterar cliente: ' + ex.Message;
            Result := false;
        end;
    end;
end;

function TCliente.Inserir(out erro: string): Boolean;
var
    qry : TFDQuery;
begin
    // Validacoes...
    if NOME.IsEmpty then
    begin
        Result := false;
        erro := 'Informe o nome do usuario';
        exit;
    end;

    try
        qry := TFDQuery.Create(nil);
        qry.Connection := Model.Connection.FConnection;

        with qry do
        begin
            Active := false;
            sql.Clear;
            SQL.Add('INSERT INTO usuario(nome, login, senha)');
            SQL.Add('VALUES(:nome, :login, :senha)');

            ParamByName('nome').Value := NOME;
            ParamByName('login').Value := LOGIN;
            ParamByName('senha').Value := SENHA;

            ExecSQL;

            // Busca ID inserido...
            Params.Clear;
            SQL.Clear;
            SQL.Add('SELECT MAX(id) AS id FROM usuario');
            SQL.Add('WHERE nome=:nome');
            ParamByName('nome').Value := NOME;
            active := true;

            ID_CLIENTE := FieldByName('id').AsInteger;
        end;

        qry.Free;
        erro := '';
        result := true;

    except on ex:exception do
        begin
            erro := 'Erro ao cadastrar cliente: ' + ex.Message;
            Result := false;
        end;
    end;
end;

function TCliente.ListarCliente(order_by: string;
                                out erro: string): TFDQuery;
var
    qry : TFDQuery;
begin
    try
        qry := TFDQuery.Create(nil);
        qry.Connection := Model.Connection.FConnection;

        with qry do
        begin
            Active := false;
            SQL.Clear;
            SQL.Add('SELECT * FROM TAB_CLIENTE WHERE 1 = 1');

            if ID_CLIENTE > 0 then
            begin
                SQL.Add('AND ID_CLIENTE = :ID_CLIENTE');
                ParamByName('ID_CLIENTE').Value := ID_CLIENTE;
            end;

            if order_by = '' then
                SQL.Add('ORDER BY NOME')
            else
                SQL.Add('ORDER BY ' + order_by);

            Active := true;
        end;

        erro := '';
        Result := qry;
    except on ex:exception do
        begin
            erro := 'Erro ao consultar clientes: ' + ex.Message;
            Result := nil;
        end;
    end;
end;

end.
