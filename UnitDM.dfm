object dm: Tdm
  OldCreateOrder = False
  Height = 330
  Width = 485
  object ReqUsuarioPost: TRESTRequest
    Method = rmPOST
    Params = <
      item
        Kind = pkREQUESTBODY
        Name = 'body'
        Options = [poDoNotEncode]
        ContentType = ctAPPLICATION_JSON
      end>
    Response = RESTUsuarioResponse
    SynchronizedEvents = False
    Left = 192
    Top = 16
  end
  object RESTUsuarioResponse: TRESTResponse
    Left = 40
    Top = 24
  end
  object dtUsuario: TDataSource
    DataSet = tblUsuario
    Left = 360
    Top = 24
  end
  object RESTUsuario: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'http://localhost:8080/cpapi/usuario/'
    ContentType = 'application/json'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 64
    Top = 96
  end
  object ReqUsuarioGet: TRESTRequest
    Client = RESTUsuario
    Params = <
      item
        Kind = pkREQUESTBODY
        Name = 'body'
        Options = [poDoNotEncode]
        ContentType = ctAPPLICATION_JSON
      end>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 104
    Top = 168
  end
  object RESTResponse1: TRESTResponse
    ContentType = 'application/json'
    Left = 96
    Top = 232
  end
  object RESTResponseDataSetAdapter1: TRESTResponseDataSetAdapter
    Active = True
    Dataset = tblUsuario
    FieldDefs = <>
    Response = RESTResponse1
    Left = 240
    Top = 112
  end
  object tblUsuario: TFDMemTable
    Active = True
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'login'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'senha'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'nome'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'telefones'
        DataType = ftWideString
        Size = 255
      end>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 384
    Top = 112
  end
end
