object dmModule: TdmModule
  OldCreateOrder = False
  Height = 809
  Width = 1277
  object IBDGERAL: TIBDatabase
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    ServerType = 'IBServer'
    Left = 768
    Top = 16
  end
  object ibCadastro: TIBQuery
    Database = IBDGERAL
    Transaction = TRCadastro
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLCADASTRO')
    Left = 65531
    Top = 16
  end
  object TRCadastro: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 3
    Top = 64
  end
  object dtsCadastro: TDataSource
    DataSet = ibCadastro
    Left = 3
    Top = 120
  end
  object IBDCep: TIBDatabase
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    ServerType = 'IBServer'
    Left = 712
    Top = 72
  end
  object ibLogradouro: TIBQuery
    Database = IBDGERAL
    Transaction = TRLogradouro
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLLOGRADOURO')
    Left = 75
    Top = 16
  end
  object TRLogradouro: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 75
    Top = 64
  end
  object dtsLogradouro: TDataSource
    DataSet = ibLogradouro
    Left = 75
    Top = 112
  end
  object ibContato: TIBQuery
    Database = IBDGERAL
    Transaction = TRContato
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLCONTATO')
    Left = 147
    Top = 16
  end
  object TRContato: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 147
    Top = 64
  end
  object dtsContato: TDataSource
    DataSet = ibContato
    Left = 147
    Top = 112
  end
  object ibDocumentacao: TIBQuery
    Database = IBDGERAL
    Transaction = TRDocumentacao
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLCADDOCUMENTACAO')
    Left = 208
    Top = 16
  end
  object TRDocumentacao: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 208
    Top = 64
  end
  object dtsDocumentacao: TDataSource
    DataSet = ibDocumentacao
    Left = 208
    Top = 112
  end
  object ibClassificacao: TIBQuery
    Database = IBDGERAL
    Transaction = TRClassificacao
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLCLASSIFICACAO')
    Left = 292
    Top = 16
  end
  object TRClassificacao: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 292
    Top = 64
  end
  object dtsClassificacao: TDataSource
    DataSet = ibClassificacao
    Left = 292
    Top = 112
  end
  object TRCep: TIBTransaction
    DefaultDatabase = IBDCep
    Left = 712
    Top = 128
  end
  object ibProdutos: TIBQuery
    Database = IBDGERAL
    Transaction = TRProdutos
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM CADPRODUTOS')
    Left = 464
    Top = 16
  end
  object TRProdutos: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 464
    Top = 64
  end
  object dtsProdutos: TDataSource
    DataSet = ibProdutos
    Left = 464
    Top = 112
  end
  object ibEstoque: TIBQuery
    Database = IBDGERAL
    Transaction = TREstoque
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLLOCALESTOCAGEM')
    Left = 552
    Top = 16
  end
  object TREstoque: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 552
    Top = 64
  end
  object dtsEstoque: TDataSource
    DataSet = ibEstoque
    Left = 552
    Top = 112
  end
  object ibGrupo: TIBQuery
    Database = IBDGERAL
    Transaction = TRGrupo
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLGRUPO')
    Left = 616
    Top = 16
  end
  object TRGrupo: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 616
    Top = 64
  end
  object dtsGrupo: TDataSource
    DataSet = ibGrupo
    Left = 616
    Top = 112
  end
  object ibSubgrupo: TIBQuery
    Database = IBDGERAL
    Transaction = TRSubgrupo
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLSUBGRUPO')
    Left = 146
    Top = 168
  end
  object TRSubgrupo: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 146
    Top = 216
  end
  object dtsSubGrupo: TDataSource
    DataSet = ibSubgrupo
    Left = 146
    Top = 264
  end
  object ibEntrProdEstoque: TIBQuery
    Database = IBDGERAL
    Transaction = TREntrProdEstoque
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLENTRADAESTOQUEPROD')
    Left = 240
    Top = 168
  end
  object TREntrProdEstoque: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 240
    Top = 216
  end
  object dtsEntrProdEstoque: TDataSource
    DataSet = ibEntrProdEstoque
    Left = 240
    Top = 272
  end
  object ibMovEst: TIBQuery
    Database = IBDGERAL
    Transaction = TRMovEst
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLMOVESTOQUE')
    Left = 260
    Top = 168
  end
  object TRMovEst: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 260
    Top = 216
  end
  object dtsMovEst: TDataSource
    DataSet = ibMovEst
    Left = 260
    Top = 272
  end
  object ibTipoProd: TIBQuery
    Database = IBDGERAL
    Transaction = TRTipoProd
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLTIPOPRODUTO')
    Left = 316
    Top = 168
  end
  object TRTipoProd: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 316
    Top = 216
  end
  object dtsTipoProd: TDataSource
    DataSet = ibTipoProd
    Left = 316
    Top = 272
  end
  object ibEntradamercadoria: TIBQuery
    Database = IBDGERAL
    Transaction = TREntradamercadoria
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM ENTRADAESTOQUE')
    Left = 2
    Top = 140
  end
  object TREntradamercadoria: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 23
    Top = 176
  end
  object dtsEntradamercadoria: TDataSource
    DataSet = ibEntradamercadoria
    Left = 23
    Top = 224
  end
  object ibNatureza: TIBQuery
    Database = IBDGERAL
    Transaction = TRNatureza
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM NATUREZA')
    Left = 543
    Top = 168
  end
  object TRNatureza: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 543
    Top = 216
  end
  object dtsNatureza: TDataSource
    DataSet = ibNatureza
    Left = 543
    Top = 264
  end
  object ibCPagar: TIBQuery
    Database = IBDGERAL
    Transaction = TRCPagar
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLCONTASAPAGAR')
    Left = 191
    Top = 360
  end
  object TRCPagar: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 191
    Top = 320
  end
  object dtsCPagar: TDataSource
    DataSet = ibCPagar
    Left = 191
    Top = 400
  end
  object ibInventario: TIBQuery
    Database = IBDGERAL
    Transaction = TRInventario
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM INVENTARIO')
    Left = 327
    Top = 320
  end
  object TRInventario: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 327
    Top = 368
  end
  object dtsInventario: TDataSource
    DataSet = ibInventario
    Left = 327
    Top = 416
  end
  object ibProdinvent: TIBQuery
    Database = IBDGERAL
    Transaction = TRProdinvent
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLINVENTARIOPROD')
    Left = 391
    Top = 320
  end
  object TRProdinvent: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 391
    Top = 368
  end
  object dtsProdinvent: TDataSource
    DataSet = ibProdinvent
    Left = 391
    Top = 416
  end
  object ibTipoPagtoF: TIBQuery
    Database = IBDGERAL
    Transaction = TRTipoPagtoF
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLTIPOPAGTOAVULSO')
    Left = 455
    Top = 252
  end
  object TRTipoPagtoF: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 455
    Top = 368
  end
  object dtsTipoPagtoF: TDataSource
    DataSet = ibTipoPagtoF
    Left = 455
    Top = 356
  end
  object ibServsVenda: TIBQuery
    Database = IBDGERAL
    Transaction = TRServsVenda
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLSERVICOSVENDAS')
    Left = 664
    Top = 16
  end
  object TRServsVenda: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 664
    Top = 64
  end
  object dtsServsVenda: TDataSource
    DataSet = ibServsVenda
    Left = 664
    Top = 112
  end
  object ibRecVendas: TIBQuery
    Database = IBDGERAL
    Transaction = TRRecVendas
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLRECEBEVENDAS')
    Left = 432
    Top = 170
  end
  object TRRecVendas: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 432
    Top = 218
  end
  object dtsRecVendas: TDataSource
    DataSet = ibRecVendas
    Left = 432
    Top = 274
  end
  object ibTempVendaLoja: TIBQuery
    Database = IBDGERAL
    Transaction = TRTempVendaLoja
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLSERVICOSVENDAS')
    Left = 504
    Top = 312
  end
  object TRTempVendaLoja: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 504
    Top = 344
  end
  object dtsTempVendaLoja: TDataSource
    DataSet = ibTempVendaLoja
    Left = 504
    Top = 376
  end
  object dtsServsVendasCli: TDataSource
    DataSet = ibServsVendasCli
    Left = 136
    Top = 365
  end
  object TRServsVendasCli: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 136
    Top = 325
  end
  object ibServsVendasCli: TIBQuery
    Database = IBDGERAL
    Transaction = TRServsVendasCli
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLSERVICOSVENDASCLI')
    Left = 160
    Top = 311
  end
  object dtsTempProd: TDataSource
    DataSet = ibTempProd
    Left = 672
    Top = 412
  end
  object TRTempProd: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 672
    Top = 459
  end
  object ibTempProd: TIBQuery
    Database = IBDGERAL
    Transaction = TRTempProd
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLSERVICOSVENDAS')
    Left = 672
    Top = 366
  end
  object dtsDiaMes: TDataSource
    DataSet = ibDiaMes
    Left = 263
    Top = 415
  end
  object TRDiaMes: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 263
    Top = 367
  end
  object ibDiaMes: TIBQuery
    Database = IBDGERAL
    Transaction = TRDiaMes
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLDIAMES')
    Left = 263
    Top = 319
  end
  object dtsTipoVenda: TDataSource
    DataSet = ibTipoVenda
    Left = 552
    Top = 266
  end
  object TRTipoVenda: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 552
    Top = 152
  end
  object ibTipoVenda: TIBQuery
    Database = IBDGERAL
    Transaction = TRTipoVenda
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLTIPOVENDA')
    Left = 552
    Top = 167
  end
  object dtsVendaConvenio: TDataSource
    DataSet = ibVendaConvenio
    Left = 248
    Top = 489
  end
  object TRVendaConvenio: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 248
    Top = 507
  end
  object ibVendaConvenio: TIBQuery
    Database = IBDGERAL
    Transaction = TRVendaConvenio
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLVENDACONVENIO')
    Left = 248
    Top = 402
  end
  object dtsAPagar: TDataSource
    DataSet = ibAPagar
    Left = 160
    Top = 474
  end
  object TRAPagar: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 168
    Top = 431
  end
  object ibAPagar: TIBQuery
    Database = IBDGERAL
    Transaction = TRAPagar
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLCONTASAPAGAR')
    Left = 168
    Top = 388
  end
  object dtsAReceber: TDataSource
    DataSet = ibAReceber
    Left = 456
    Top = 271
  end
  object TRAReceber: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 456
    Top = 220
  end
  object ibAReceber: TIBQuery
    Database = IBDGERAL
    Transaction = TRAReceber
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLCONTASARECEBER')
    Left = 456
    Top = 169
  end
  object dtsHistorico: TDataSource
    DataSet = ibHistorico
    Left = 24
    Top = 357
  end
  object TRHistorico: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 24
    Top = 313
  end
  object ibHistorico: TIBQuery
    Database = IBDGERAL
    Transaction = TRHistorico
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLHISTORICOCR')
    Left = 24
    Top = 267
  end
  object dtsServicos: TDataSource
    DataSet = ibServicos
    Left = 16
    Top = 422
  end
  object TRServicos: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 16
    Top = 380
  end
  object ibServicos: TIBQuery
    Database = IBDGERAL
    Transaction = TRServicos
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLSERVICOSAPAGAR')
    Left = 16
    Top = 336
  end
  object dtsTipodoc: TDataSource
    DataSet = ibTipodoc
    Left = 583
    Top = 265
  end
  object TRTipodoc: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 583
    Top = 221
  end
  object ibTipodoc: TIBQuery
    Database = IBDGERAL
    Transaction = TRTipodoc
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLTIPODOCUMENTO')
    Left = 583
    Top = 175
  end
  object dtsBancos: TDataSource
    DataSet = ibBancos
    Left = 112
    Top = 436
  end
  object TRBancos: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 112
    Top = 458
  end
  object ibBancos: TIBQuery
    Database = IBDGERAL
    Transaction = TRBancos
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM BANCOS'
      '')
    Left = 112
    Top = 351
  end
  object dtsSituacao: TDataSource
    DataSet = ibSituacao
    Left = 616
    Top = 414
  end
  object TRSituacao: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 616
    Top = 367
  end
  object ibSituacao: TIBQuery
    Database = IBDGERAL
    Transaction = TRSituacao
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLSITUACAO'
      '')
    Left = 616
    Top = 321
  end
  object dtsEventos: TDataSource
    DataSet = ibEventos
    Left = 336
    Top = 487
  end
  object TREventos: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 336
    Top = 448
  end
  object ibEventos: TIBQuery
    Database = IBDGERAL
    Transaction = TREventos
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLEVENTO'
      '')
    Left = 336
    Top = 402
  end
  object dtsMatPrima: TDataSource
    DataSet = ibMatPrima
    Left = 392
    Top = 519
  end
  object TRMatPrima: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 392
    Top = 493
  end
  object ibMatPrima: TIBQuery
    Database = IBDGERAL
    Transaction = TRMatPrima
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLMATERIAPRIMA'
      '')
    Left = 392
    Top = 447
  end
  object dtsKitComp: TDataSource
    DataSet = ibKitComp
    Left = 464
    Top = 480
  end
  object TRKitComp: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 464
    Top = 438
  end
  object ibKitComp: TIBQuery
    Database = IBDGERAL
    Transaction = TRKitComp
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLKITCOMPOSICAO')
    Left = 464
    Top = 392
  end
  object dtsUser: TDataSource
    DataSet = ibUser
    Left = 536
    Top = 457
  end
  object TRUser: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 536
    Top = 489
  end
  object ibUser: TIBQuery
    Database = IBDGERAL
    Transaction = TRUser
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLUSER')
    Left = 536
    Top = 441
  end
  object dtsTempProdNome: TDataSource
    DataSet = ibTempProdNome
    Left = 728
    Top = 412
  end
  object TRTempProdNome: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 728
    Top = 459
  end
  object ibTempProdNome: TIBQuery
    Database = IBDGERAL
    Transaction = TRTempProdNome
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM CADPRODUTOS')
    Left = 728
    Top = 366
  end
  object ibPedVenda: TIBQuery
    Database = IBDGERAL
    Transaction = TRPedVenda
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLPEDIDODEVENDA')
    Left = 109
    Top = 16
  end
  object TRPedVenda: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 109
    Top = 64
  end
  object dtsPedVenda: TDataSource
    DataSet = ibPedVenda
    Left = 109
    Top = 112
  end
  object ibPedVendaConsulta: TIBQuery
    Database = IBDGERAL
    Transaction = TRPedVendaConsulta
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLPEDIDODEVENDA')
    Left = 348
    Top = 16
  end
  object TRPedVendaConsulta: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 348
    Top = 64
  end
  object dtsPedVendaConsulta: TDataSource
    DataSet = ibPedVendaConsulta
    Left = 348
    Top = 112
  end
  object ibManutPedVenda: TIBQuery
    Database = IBDGERAL
    Transaction = TRManutPedVenda
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLPEDIDODEVENDA')
    Left = 380
    Top = 16
  end
  object TRManutPedVenda: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 380
    Top = 64
  end
  object dtsManutPedVenda: TDataSource
    DataSet = ibManutPedVenda
    Left = 380
    Top = 112
  end
  object ibDetalhePedVenda: TIBQuery
    Database = IBDGERAL
    Transaction = TRDetalhePedVenda
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLDETALHEPEDVENDA')
    Left = 232
    Top = 16
  end
  object TRDetalhePedVenda: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 232
    Top = 64
  end
  object dtsDetalhePedVenda: TDataSource
    DataSet = ibDetalhePedVenda
    Left = 232
    Top = 112
  end
  object TRLocalEstoque: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 43
    Top = 64
  end
  object ibLocalEstoque: TIBQuery
    Database = IBDGERAL
    Transaction = TRLocalEstoque
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM LOCALESTOCAGEM')
    Left = 43
    Top = 16
  end
  object dtsLocalEstoque: TDataSource
    DataSet = ibCadastro
    Left = 43
    Top = 104
  end
  object ibPosVenda: TIBQuery
    Database = IBDGERAL
    Transaction = TRPosVenda
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLPOSVENDA')
    Left = 579
    Top = 16
  end
  object TRPosVenda: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 579
    Top = 64
  end
  object dtsPosVenda: TDataSource
    DataSet = ibPosVenda
    Left = 579
    Top = 112
  end
  object ibDadosEmpresa: TIBQuery
    Database = IBDGERAL
    Transaction = TRDadosEmpresa
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLDADOSEMPRESA')
    Left = 640
    Top = 16
  end
  object TRDadosEmpresa: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 640
    Top = 64
  end
  object dtsDadosEmpresa: TDataSource
    DataSet = ibDadosEmpresa
    Left = 640
    Top = 112
  end
  object ibTempProdEstoque: TIBQuery
    Database = IBDGERAL
    Transaction = TRTempProdEstoque
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLENTRADAESTOQUEPROD')
    Left = 35
    Top = 8
  end
  object TRTempProdEstoque: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 27
    Top = 64
  end
  object dtsTempProdEstoque: TDataSource
    DataSet = ibCadastro
    Left = 27
    Top = 104
  end
  object ibConfig: TIBQuery
    Database = IBDGERAL
    Transaction = TRConfig
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLCONFIGURACOES')
    Left = 114
    Top = 168
  end
  object TRConfig: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 114
    Top = 216
  end
  object dtsConfig: TDataSource
    DataSet = ibConfig
    Left = 114
    Top = 264
  end
  object ibTempProdutos: TIBQuery
    Database = IBDGERAL
    Transaction = TRTempProdutos
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM CADPRODUTOS')
    Left = 340
    Top = 168
  end
  object TRTempProdutos: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 340
    Top = 216
  end
  object dtsTempProdutos: TDataSource
    DataSet = ibTempProdutos
    Left = 340
    Top = 272
  end
  object ibAberturaCX: TIBQuery
    Database = IBDGERAL
    Transaction = TRAberturaCX
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLABERTURACX')
    Left = 174
    Top = 16
  end
  object TRAberturaCX: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 174
    Top = 64
  end
  object dtsAberturaCX: TDataSource
    DataSet = ibAberturaCX
    Left = 174
    Top = 112
  end
  object ibUnidVenda: TIBQuery
    Database = IBDGERAL
    Transaction = TRUnidVenda
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLUNIDADEDEVENDA')
    Left = 685
    Top = 16
  end
  object TRUnidVenda: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 685
    Top = 64
  end
  object dtsUnidVenda: TDataSource
    DataSet = ibUnidVenda
    Left = 685
    Top = 112
  end
  object ibDataSistema: TIBQuery
    Database = IBDGERAL
    Transaction = TRDataSistema
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLDATASISTEMA')
    Left = 478
    Top = 169
  end
  object TRDataSistema: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 478
    Top = 220
  end
  object dtsDataSistema: TDataSource
    DataSet = ibDataSistema
    Left = 478
    Top = 271
  end
  object ibCondicoesPagto: TIBQuery
    Database = IBDGERAL
    Transaction = TRCondicoesPagto
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM CONDICOESPAGAMENTO')
    Left = 287
    Top = 168
  end
  object TRCondicoesPagto: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 287
    Top = 216
  end
  object dtsCondicoesPagto: TDataSource
    DataSet = ibCondicoesPagto
    Left = 287
    Top = 272
  end
  object ibTempCadastro: TIBQuery
    Database = IBDGERAL
    Transaction = TRTempCadastro
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLCADASTRO')
    Left = 177
    Top = 168
  end
  object TRTempCadastro: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 177
    Top = 216
  end
  object dtsTempCadastro: TDataSource
    DataSet = ibTempCadastro
    Left = 177
    Top = 264
  end
  object dtsTempAReceber: TDataSource
    DataSet = ibTempAReceber
    Left = 732
    Top = 137
  end
  object TRTempAReceber: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 729
    Top = 69
  end
  object ibTempAReceber: TIBQuery
    Database = IBDGERAL
    Transaction = TRTempAReceber
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLCONTASERECEBER')
    Left = 732
    Top = 23
  end
  object dtsCores: TDataSource
    DataSet = ibCores
    Left = 615
    Top = 265
  end
  object TRCores: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 615
    Top = 221
  end
  object ibCores: TIBQuery
    Database = IBDGERAL
    Transaction = TRCores
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLCORES')
    Left = 615
    Top = 175
  end
  object dtsTamanho: TDataSource
    DataSet = ibTamanho
    Left = 647
    Top = 265
  end
  object TRTamanho: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 647
    Top = 221
  end
  object ibTamanho: TIBQuery
    Database = IBDGERAL
    Transaction = TRTamanho
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLTAMANHO')
    Left = 647
    Top = 175
  end
  object TRTempEntradaEstoque: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 688
    Top = 221
  end
  object ibTempEntradaEstoque: TIBQuery
    Database = IBDGERAL
    Transaction = TRTempEntradaEstoque
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLENTRADAESTOQUEPROD')
    Left = 688
    Top = 175
  end
  object dtsTempEntradaEstoque: TDataSource
    DataSet = ibTempEntradaEstoque
    Left = 688
    Top = 265
  end
  object ibCReceberBx: TIBQuery
    Database = IBDGERAL
    Transaction = TRCReceberBx
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLCONTASARECEBERBX')
    Left = 696
    Top = 304
  end
  object TRCReceberBx: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 696
    Top = 336
  end
  object dtsCReceberBx: TDataSource
    DataSet = ibCReceberBx
    Left = 696
    Top = 360
  end
  object ibDetalheNota: TIBQuery
    Database = IBDGERAL
    Transaction = TRDetalheNota
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLDETALHENOTA')
    Left = 88
    Top = 168
  end
  object TRDetalheNota: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 88
    Top = 216
  end
  object dtsDetalheNota: TDataSource
    DataSet = ibDetalheNota
    Left = 88
    Top = 264
  end
  object ibNotaFiscal: TIBQuery
    Database = IBDGERAL
    Transaction = TRNotaFiscal
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLNOTAFISCAL')
    Left = 56
    Top = 168
  end
  object TRNotaFiscal: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 56
    Top = 216
  end
  object dtsNotaFiscal: TDataSource
    DataSet = ibNotaFiscal
    Left = 56
    Top = 264
  end
  object dtsTempNF: TDataSource
    DataSet = ibTempNF
    Left = 88
    Top = 420
  end
  object TRTempNF: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 88
    Top = 372
  end
  object ibTempNF: TIBQuery
    Database = IBDGERAL
    Transaction = TRTempNF
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLNOTAFISCAL')
    Left = 88
    Top = 324
  end
  object ibPedCompra: TIBQuery
    Database = IBDGERAL
    Transaction = TRPedCompra
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLPEDIDODECOMPRA'
      '')
    Left = 584
    Top = 307
  end
  object TRPedCompra: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 584
    Top = 353
  end
  object dtsPedCompra: TDataSource
    DataSet = ibPedCompra
    Left = 584
    Top = 400
  end
  object ibDetalhePedCompra: TIBQuery
    Database = IBDGERAL
    Transaction = TRDetalhePedCompra
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLDETALHEPEDCOMPRA'
      '')
    Left = 549
    Top = 307
  end
  object TRDetalhePedCompra: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 549
    Top = 353
  end
  object dtsDetalhePedCompra: TDataSource
    DataSet = ibDetalhePedCompra
    Left = 549
    Top = 400
  end
  object ibTempPedCompra: TIBQuery
    Database = IBDGERAL
    Transaction = TRTempPedCompra
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLPEDIDODECOMPRA'
      '')
    Left = 608
    Top = 307
  end
  object TRTempPedCompra: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 608
    Top = 353
  end
  object dtsTempPedCompra: TDataSource
    DataSet = ibTempPedCompra
    Left = 608
    Top = 400
  end
  object dtsEtiqueta6089: TDataSource
    DataSet = ibEtiqueta6089
    Left = 735
    Top = 265
  end
  object TREtiqueta6089: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 735
    Top = 221
  end
  object ibEtiqueta6089: TIBQuery
    Database = IBDGERAL
    Transaction = TREtiqueta6089
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLETIQUETA6089')
    Left = 735
    Top = 175
  end
  object ibTempEtiqueta6089: TIBQuery
    Database = IBDGERAL
    Transaction = TRTempEtiqueta6089
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLETIQUETA6089')
    Left = 700
    Top = 175
  end
  object TRTempEtiqueta6089: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 700
    Top = 221
  end
  object dtsTempEtiqueta6089: TDataSource
    DataSet = ibTempEtiqueta6089
    Left = 700
    Top = 265
  end
  object ibDetalhePosVenda: TIBQuery
    Database = IBDGERAL
    Transaction = TRDetalhePosVenda
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLDETALHEPOSVENDA')
    Left = 603
    Top = 16
  end
  object TRDetalhePosVenda: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 603
    Top = 64
  end
  object dtsDetalhePosVenda: TDataSource
    DataSet = ibDetalhePosVenda
    Left = 603
    Top = 112
  end
  object ibDetalheOrcamento: TIBQuery
    Database = IBDGERAL
    Transaction = TRDetalheOrcamento
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLDETALHEORCAMENTO')
    Left = 277
    Top = 16
  end
  object TRDetalheOrcamento: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 277
    Top = 64
  end
  object dtsDetalheOrcamento: TDataSource
    DataSet = ibDetalheOrcamento
    Left = 277
    Top = 112
  end
  object TROrcamentoPed: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 254
    Top = 64
  end
  object ibOrcamentoPed: TIBQuery
    Database = IBDGERAL
    Transaction = TROrcamentoPed
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLORCAMENTOPEDIDO')
    Left = 254
    Top = 16
  end
  object dtsOrcamentoPed: TDataSource
    DataSet = ibOrcamentoPed
    Left = 254
    Top = 112
  end
  object ibConfigNota: TIBQuery
    Database = IBDGERAL
    Transaction = TRConfigNota
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLCONFIGNOTA')
    Left = 544
    Top = 16
  end
  object TRConfigNota: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 544
    Top = 64
  end
  object dtsConfigNota: TDataSource
    DataSet = ibConfigNota
    Left = 544
    Top = 112
  end
  object ibPagtoPendente: TIBQuery
    Database = IBDGERAL
    Transaction = TRPagtoPendente
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLPAGTOPENDENTE')
    Left = 209
    Top = 168
  end
  object TRPagtoPendente: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 209
    Top = 216
  end
  object dtsPagtoPendente: TDataSource
    DataSet = ibPagtoPendente
    Left = 209
    Top = 264
  end
  object ibServicosPagar: TIBQuery
    Database = IBDGERAL
    Transaction = TRServicosPagar
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLSERVICOSAPAGAR')
    Left = 317
    Top = 16
  end
  object TRServicosPagar: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 317
    Top = 64
  end
  object dtsServicosPagar: TDataSource
    DataSet = ibServicosPagar
    Left = 317
    Top = 112
  end
  object ibEtiquetaGr: TIBQuery
    Database = IBDGERAL
    Transaction = TREtiquetaGr
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLETIQUETAGR')
    Left = 489
    Top = 16
  end
  object TREtiquetaGr: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 489
    Top = 64
  end
  object dtsEtiquetaGr: TDataSource
    DataSet = ibEtiquetaGr
    Left = 489
    Top = 112
  end
  object ibEtiquetaGrande: TIBQuery
    Database = IBDGERAL
    Transaction = TREtiquetaGrande
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLETIQUETAGRANDE')
    Left = 518
    Top = 16
  end
  object TREtiquetaGrande: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 518
    Top = 64
  end
  object dtsEtiquetaGrande: TDataSource
    DataSet = ibEtiquetaGrande
    Left = 518
    Top = 112
  end
  object ibHistPedVenda: TIBQuery
    Database = IBDGERAL
    Transaction = TRHistPedVenda
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLPEDIDODEVENDA')
    Left = 434
    Top = 16
  end
  object TRHistPedVenda: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 434
    Top = 64
  end
  object dtsHistPedVenda: TDataSource
    DataSet = ibHistPedVenda
    Left = 434
    Top = 112
  end
  object ibRelatPedVenda: TIBQuery
    Database = IBDGERAL
    Transaction = TRRelatPedVenda
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLPEDIDODEVENDA')
    Left = 410
    Top = 16
  end
  object TRRelatPedVenda: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 410
    Top = 64
  end
  object dtsRelatPedVenda: TDataSource
    DataSet = ibRelatPedVenda
    Left = 410
    Top = 112
  end
  object ibControleServ: TIBQuery
    Database = IBDGERAL
    Transaction = TRControleServ
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLCONTROLESERVICOS')
    Left = 298
    Top = 312
  end
  object TRControleServ: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 298
    Top = 360
  end
  object dtsControleServ: TDataSource
    DataSet = ibControleServ
    Left = 298
    Top = 408
  end
  object ibTipoServico: TIBQuery
    Database = IBDGERAL
    Transaction = TRTipoServico
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLTIPOSERVICOS')
    Left = 510
    Top = 169
  end
  object TRTipoServico: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 510
    Top = 220
  end
  object dtsTipoServico: TDataSource
    DataSet = ibTipoServico
    Left = 510
    Top = 271
  end
  object ibTempServicos: TIBQuery
    Database = IBDGERAL
    Transaction = TRTempServicos
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLSERVICOS')
    Left = 54
    Top = 336
  end
  object TRTempServicos: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 54
    Top = 380
  end
  object dtsTempServicos: TDataSource
    DataSet = ibTempServicos
    Left = 54
    Top = 422
  end
  object TRHistPendente: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 65535
    Top = 176
  end
  object dtsHistPendente: TDataSource
    DataSet = ibEntradamercadoria
    Left = 65535
    Top = 224
  end
  object ibHistPendente: TIBQuery
    Database = IBDGERAL
    Transaction = TRHistorico
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLHISTORICOPENDENTE')
    Top = 267
  end
  object ibCotacao: TIBQuery
    Database = IBDGERAL
    Transaction = TRCotacao
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLCOTACAO')
    Left = 361
    Top = 168
  end
  object TRCotacao: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 361
    Top = 216
  end
  object dtsCotacao: TDataSource
    DataSet = ibCotacao
    Left = 361
    Top = 272
  end
  object ibTempCotacao: TIBQuery
    Database = IBDGERAL
    Transaction = TRTempCotacao
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLCOTACAO')
    Left = 381
    Top = 168
  end
  object TRTempCotacao: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 381
    Top = 216
  end
  object dtsTempCotacao: TDataSource
    DataSet = ibTempCotacao
    Left = 381
    Top = 272
  end
  object ibDetalheCotacao: TIBQuery
    Database = IBDGERAL
    Transaction = TRDetalheCotacao
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLDETALHECOTACAO')
    Left = 404
    Top = 168
  end
  object TRDetalheCotacao: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 404
    Top = 216
  end
  object dtsDetalheCotacao: TDataSource
    DataSet = ibDetalheCotacao
    Left = 404
    Top = 272
  end
  object ibEstoquePrateleira: TIBQuery
    Database = IBDGERAL
    Transaction = TREstoquePrateleira
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLENTRADAESTOQUEPROD')
    Left = 125
    Top = 16
  end
  object TREstoquePrateleira: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 125
    Top = 64
  end
  object dtsEstoquePrateleira: TDataSource
    DataSet = ibEstoquePrateleira
    Left = 125
    Top = 112
  end
  object ibHistoricoEstoqueNF: TIBQuery
    Database = IBDGERAL
    Transaction = TRHistoricoEstoqueNF
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLHISTORICOESTOQUENF'
      '')
    Left = 441
    Top = 312
  end
  object TRHistoricoEstoqueNF: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 441
    Top = 352
  end
  object dtsHistoricoEstoqueNF: TDataSource
    DataSet = ibHistoricoEstoqueNF
    Left = 441
    Top = 384
  end
  object ibDetalheEntrEstoque: TIBQuery
    Database = IBDGERAL
    Transaction = TRDetalheEntrEstoque
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLDETALHEENTRESTOQUE')
    Left = 294
    Top = 319
  end
  object TRDetalheEntrEstoque: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 294
    Top = 359
  end
  object dtsDetalheEntrEstoque: TDataSource
    DataSet = ibDetalheEntrEstoque
    Left = 294
    Top = 399
  end
  object dtsTempServicosVendas: TDataSource
    DataSet = ibTempServicosVendas
    Left = 584
    Top = 508
  end
  object TRTempServicosVendas: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 584
    Top = 555
  end
  object ibTempServicosVendas: TIBQuery
    Database = IBDGERAL
    Transaction = TRTempServicosVendas
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLSERVICOSVENDAS')
    Left = 584
    Top = 462
  end
  object dtsCST: TDataSource
    DataSet = ibCST
    Left = 816
    Top = 68
  end
  object TRCST: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 816
    Top = 115
  end
  object ibCST: TIBQuery
    Database = IBDGERAL
    Transaction = TRCST
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBL_CST')
    Left = 816
    Top = 22
  end
  object dtsST: TDataSource
    DataSet = ibST
    Left = 872
    Top = 68
  end
  object TRST: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 872
    Top = 115
  end
  object ibST: TIBQuery
    Database = IBDGERAL
    Transaction = TRST
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBL_CST')
    Left = 872
    Top = 22
  end
  object dtsCSOSN: TDataSource
    DataSet = ibCSOSN
    Left = 816
    Top = 212
  end
  object TRCSOSN: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 816
    Top = 259
  end
  object ibCSOSN: TIBQuery
    Database = IBDGERAL
    Transaction = TRCSOSN
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBL_CSOSN')
    Left = 816
    Top = 166
  end
  object dtsProdEquivalente: TDataSource
    DataSet = ibProdEquivalente
    Left = 873
    Top = 212
  end
  object TRProdEquivalente: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 873
    Top = 259
  end
  object ibProdEquivalente: TIBQuery
    Database = IBDGERAL
    Transaction = TRProdEquivalente
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLPRODEQUIVALENTE')
    Left = 873
    Top = 166
  end
  object dtsProdutoFornecedor: TDataSource
    DataSet = ibProdutoFornecedor
    Left = 816
    Top = 356
  end
  object TRProdutoFornecedor: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 816
    Top = 403
  end
  object ibProdutoFornecedor: TIBQuery
    Database = IBDGERAL
    Transaction = TRProdutoFornecedor
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLPRODFORN')
    Left = 816
    Top = 310
  end
  object dtsibDetalheEquivalente: TDataSource
    DataSet = ibDetalheEquivalente
    Left = 874
    Top = 356
  end
  object TRibDetalheEquivalente: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 874
    Top = 403
  end
  object ibDetalheEquivalente: TIBQuery
    Database = IBDGERAL
    Transaction = TRibDetalheEquivalente
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLPRODDETALHEEQUIVALENTE')
    Left = 874
    Top = 310
  end
  object dtsImposto: TDataSource
    DataSet = ibImposto
    Left = 819
    Top = 545
  end
  object TRImposto: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 816
    Top = 501
  end
  object ibImposto: TIBQuery
    Database = IBDGERAL
    Transaction = TRImposto
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLIMPOSTO_IBPT')
    Left = 811
    Top = 447
  end
  object TRMPV: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 32
    Top = 554
  end
  object dtsMPV: TDataSource
    DataSet = ibMPV
    Left = 32
    Top = 610
  end
  object ibMPV: TIBQuery
    Database = IBDGERAL
    Transaction = TRMPV
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLMPV')
    Left = 32
    Top = 506
  end
  object TRDetalheMPV: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 79
    Top = 544
  end
  object dtsDetalheMPV: TDataSource
    DataSet = ibDetalheMPV
    Left = 79
    Top = 576
  end
  object ibDetalheMPV: TIBQuery
    Database = IBDGERAL
    Transaction = TRDetalheMPV
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLDETALHEMPV'
      '')
    Left = 79
    Top = 504
  end
  object TRDetalhePedVendaNota: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 143
    Top = 568
  end
  object dtsDetalhePedVendaNota: TDataSource
    DataSet = ibDetalhePedVendaNota
    Left = 143
    Top = 600
  end
  object ibDetalhePedVendaNota: TIBQuery
    Database = IBDGERAL
    Transaction = TRDetalhePedVendaNota
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLDETALHEPEDVENDANOTA'
      '')
    Left = 143
    Top = 528
  end
  object TRPedVendaNota: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 247
    Top = 600
  end
  object dtsPedVendaNota: TDataSource
    DataSet = ibPedVendaNota
    Left = 247
    Top = 632
  end
  object ibPedVendaNota: TIBQuery
    Database = IBDGERAL
    Transaction = TRPedVendaNota
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLPEDIDODEVENDA'
      '')
    Left = 247
    Top = 560
  end
  object TRImprimePedVendaNF: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 327
    Top = 600
  end
  object dtsImprimePedVendaNF: TDataSource
    DataSet = ibImprimePedVendaNF
    Left = 327
    Top = 632
  end
  object ibImprimePedVendaNF: TIBQuery
    Database = IBDGERAL
    Transaction = TRImprimePedVendaNF
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLPEDIDODEVENDA'
      '')
    Left = 327
    Top = 560
  end
  object dtsCFOP: TDataSource
    DataSet = ibCFOP
    Left = 491
    Top = 649
  end
  object TRCFOP: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 488
    Top = 605
  end
  object ibCFOP: TIBQuery
    Database = IBDGERAL
    Transaction = TRCFOP
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBL_CFOP')
    Left = 483
    Top = 551
  end
  object dtsProdutosEquivalentes: TDataSource
    DataSet = ibProdutosEquivalentes
    Left = 699
    Top = 625
  end
  object TRProdutosEquivalentes: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 696
    Top = 581
  end
  object ibProdutosEquivalentes: TIBQuery
    Database = IBDGERAL
    Transaction = TRProdutosEquivalentes
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM CADPRODUTOS')
    Left = 691
    Top = 527
  end
  object dtsCRT: TDataSource
    DataSet = ibCRT
    Left = 443
    Top = 657
  end
  object TRCRT: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 440
    Top = 613
  end
  object ibCRT: TIBQuery
    Database = IBDGERAL
    Transaction = TRCRT
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBL_CRT')
    Left = 435
    Top = 559
  end
  object dtsIBGE: TDataSource
    DataSet = ibIBGE
    Left = 403
    Top = 657
  end
  object TRIBGE: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 400
    Top = 613
  end
  object ibIBGE: TIBQuery
    Database = IBDGERAL
    Transaction = TRIBGE
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBL_IBGE')
    Left = 395
    Top = 559
  end
  object dtsDataEntrEstoque: TDataSource
    DataSet = ibDataEntrEstoque
    Left = 883
    Top = 553
  end
  object TRDataEntrEstoque: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 880
    Top = 509
  end
  object ibDataEntrEstoque: TIBQuery
    Database = IBDGERAL
    Transaction = TRDataEntrEstoque
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLDATAENTRESTOQUE')
    Left = 875
    Top = 455
  end
  object ibChaveSat: TIBQuery
    Database = IBDGERAL
    Transaction = TRChaveSat
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBL_CHAVESAT')
    Left = 776
    Top = 506
  end
  object TRChaveSat: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 777
    Top = 554
  end
  object dtsChaveSat: TDataSource
    DataSet = ibChaveSat
    Left = 783
    Top = 603
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=/firebird/db/SYSDBA/employee.fdb'
      'User_Name=SYSDBA'
      'Password=MASTERKEY'
      'Protocol=TCPIP'
      'Server=fbserver.com.br'
      'Port=3050'
      'DriverID=FB')
    Left = 952
    Top = 64
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 960
    Top = 120
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 960
    Top = 176
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 496
    Top = 344
  end
  object fdQry: TFDQuery
    Connection = FDConnection1
    Left = 960
    Top = 232
  end
  object dtsRestaurante: TDataSource
    DataSet = ibRestaurante
    Left = 1056
    Top = 76
  end
  object TRRestaurante: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 1056
    Top = 123
  end
  object ibRestaurante: TIBQuery
    Database = IBDGERAL
    Transaction = TRRestaurante
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLRESTAURANTE')
    Left = 1056
    Top = 30
  end
  object dtsVendasAberto: TDataSource
    DataSet = ibVendasAberto
    Left = 1136
    Top = 76
  end
  object TRVendasAberto: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 1136
    Top = 123
  end
  object ibVendasAberto: TIBQuery
    Database = IBDGERAL
    Transaction = TRVendasAberto
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLRESTAURANTE')
    Left = 1136
    Top = 30
  end
  object ibSomaVendasAberto: TIBQuery
    Database = IBDGERAL
    Transaction = TRSomaVendasAberto
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLRESTAURANTE')
    Left = 555
    Top = 591
  end
  object TRSomaVendasAberto: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 560
    Top = 645
  end
  object dtsSomaVendasAberto: TDataSource
    DataSet = ibSomaVendasAberto
    Left = 563
    Top = 689
  end
  object dtsPagtoParcial: TDataSource
    DataSet = ibPagtoParcial
    Left = 635
    Top = 689
  end
  object TRPagtoParcial: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 632
    Top = 645
  end
  object ibPagtoParcial: TIBQuery
    Database = IBDGERAL
    Transaction = TRPagtoParcial
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLPAGTOPARCIAL')
    Left = 627
    Top = 591
  end
  object TRControleMesas: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 520
    Top = 592
  end
  object ibControleMesas: TIBQuery
    Database = IBDGERAL
    Transaction = TRControleMesas
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLCONTROLEMESAS')
    Left = 520
    Top = 544
  end
  object dtsControleMesas: TDataSource
    DataSet = ibControleMesas
    Left = 520
    Top = 640
  end
  object dtsProdRestaurante: TDataSource
    DataSet = ibProdRestaurante
    Left = 19
    Top = 761
  end
  object TRProdRestaurante: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 16
    Top = 717
  end
  object ibProdRestaurante: TIBQuery
    Database = IBDGERAL
    Transaction = TRProdRestaurante
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM CADPRODUTOS')
    Left = 11
    Top = 663
  end
  object dtsDetalheRestaurante: TDataSource
    DataSet = ibDetalheRestaurante
    Left = 74
    Top = 744
  end
  object TRDetalheRestaurante: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 74
    Top = 696
  end
  object ibDetalheRestaurante: TIBQuery
    Database = IBDGERAL
    Transaction = TRDetalheRestaurante
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLDETALHERESTAURANTE')
    Left = 74
    Top = 648
  end
  object ibStatusMesa: TIBQuery
    Database = IBDGERAL
    Transaction = TRStatusMesa
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBL_STATUSMESA')
    Left = 163
    Top = 663
  end
  object TRStatusMesa: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 168
    Top = 717
  end
  object dtsStatusMesa: TDataSource
    DataSet = ibStatusMesa
    Left = 171
    Top = 761
  end
  object dtsAcessoSis: TDataSource
    DataSet = ibAcessoSis
    Left = 855
    Top = 113
  end
  object TRAcessoSis: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 852
    Top = 69
  end
  object ibAcessoSis: TIBQuery
    Database = IBDGERAL
    Transaction = TRAcessoSis
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLACESSOSIS')
    Left = 855
    Top = 23
  end
  object TRRecebeRestaurante: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 244
    Top = 728
  end
  object dtsRecebeRestaurante: TDataSource
    DataSet = ibRecebeRestaurante
    Left = 244
    Top = 776
  end
  object ibRecebeRestaurante: TIBQuery
    Database = IBDGERAL
    Transaction = TRRecebeRestaurante
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLRECEBERESTAURANTE')
    Left = 244
    Top = 680
  end
  object TRTempRestaurante: TIBTransaction
    DefaultDatabase = IBDGERAL
    Left = 211
    Top = 496
  end
  object dtsTempRestaurante: TDataSource
    DataSet = ibTempRestaurante
    Left = 211
    Top = 544
  end
  object ibTempRestaurante: TIBQuery
    Database = IBDGERAL
    Transaction = TRTempRestaurante
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'SELECT * FROM TBLRESTAURANTE')
    Left = 211
    Top = 448
  end
end
