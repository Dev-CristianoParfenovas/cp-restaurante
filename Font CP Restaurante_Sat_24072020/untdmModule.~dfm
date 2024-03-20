object dmModule: TdmModule
  OldCreateOrder = False
  Left = 65
  Top = 65529
  Height = 776
  Width = 1032
  object IBDGERAL: TIBDatabase
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 736
    Top = 8
  end
  object ibCadastro: TIBQuery
    Database = IBDGERAL
    Transaction = TRCadastro
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLCADASTRO')
    Left = 16
    Top = 16
  end
  object TRCadastro: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 24
    Top = 64
  end
  object dtsCadastro: TDataSource
    DataSet = ibCadastro
    Left = 24
    Top = 120
  end
  object IBDCep: TIBDatabase
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 776
    Top = 160
  end
  object ibLogradouro: TIBQuery
    Database = IBDGERAL
    Transaction = TRLogradouro
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLLOGRADOURO')
    Left = 96
    Top = 16
  end
  object TRLogradouro: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 96
    Top = 64
  end
  object dtsLogradouro: TDataSource
    DataSet = ibLogradouro
    Left = 104
    Top = 104
  end
  object ibContato: TIBQuery
    Database = IBDGERAL
    Transaction = TRContato
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLCONTATO')
    Left = 184
    Top = 16
  end
  object TRContato: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 184
    Top = 64
  end
  object dtsContato: TDataSource
    DataSet = ibContato
    Left = 216
    Top = 120
  end
  object ibDocumentacao: TIBQuery
    Database = IBDGERAL
    Transaction = TRDocumentacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLCADDOCUMENTACAO')
    Left = 246
    Top = 16
  end
  object TRDocumentacao: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 246
    Top = 64
  end
  object dtsDocumentacao: TDataSource
    DataSet = ibDocumentacao
    Left = 262
    Top = 120
  end
  object ibClassificacao: TIBQuery
    Database = IBDGERAL
    Transaction = TRClassificacao
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLCLASSIFICACAO')
    Left = 341
    Top = 16
  end
  object TRClassificacao: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 341
    Top = 64
  end
  object dtsClassificacao: TDataSource
    DataSet = ibClassificacao
    Left = 373
    Top = 120
  end
  object TRCep: TIBTransaction
    Active = False
    DefaultDatabase = IBDCep
    AutoStopAction = saNone
    Left = 824
    Top = 216
  end
  object ibProdutos: TIBQuery
    Database = IBDGERAL
    Transaction = TRProdutos
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM CADPRODUTOS')
    Left = 432
    Top = 16
  end
  object TRProdutos: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 440
    Top = 64
  end
  object dtsProdutos: TDataSource
    DataSet = ibProdutos
    Left = 480
    Top = 120
  end
  object ibEstoque: TIBQuery
    Database = IBDGERAL
    Transaction = TREstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLLOCALESTOCAGEM')
    Left = 480
    Top = 16
  end
  object TREstoque: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 480
    Top = 64
  end
  object dtsEstoque: TDataSource
    DataSet = ibEstoque
    Left = 512
    Top = 120
  end
  object ibGrupo: TIBQuery
    Database = IBDGERAL
    Transaction = TRGrupo
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLGRUPO')
    Left = 552
    Top = 16
  end
  object TRGrupo: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 552
    Top = 64
  end
  object dtsGrupo: TDataSource
    DataSet = ibGrupo
    Left = 552
    Top = 120
  end
  object ibSubgrupo: TIBQuery
    Database = IBDGERAL
    Transaction = TRSubgrupo
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLSUBGRUPO')
    Left = 153
    Top = 168
  end
  object TRSubgrupo: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 153
    Top = 216
  end
  object dtsSubGrupo: TDataSource
    DataSet = ibSubgrupo
    Left = 153
    Top = 264
  end
  object ibEntrProdEstoque: TIBQuery
    Database = IBDGERAL
    Transaction = TREntrProdEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLENTRADAESTOQUEPROD')
    Left = 328
    Top = 168
  end
  object TREntrProdEstoque: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 328
    Top = 216
  end
  object dtsEntrProdEstoque: TDataSource
    DataSet = ibEntrProdEstoque
    Left = 328
    Top = 272
  end
  object ibMovEst: TIBQuery
    Database = IBDGERAL
    Transaction = TRMovEst
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLMOVESTOQUE')
    Left = 356
    Top = 168
  end
  object TRMovEst: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 356
    Top = 216
  end
  object dtsMovEst: TDataSource
    DataSet = ibMovEst
    Left = 356
    Top = 272
  end
  object ibTipoProd: TIBQuery
    Database = IBDGERAL
    Transaction = TRTipoProd
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLTIPOPRODUTO')
    Left = 404
    Top = 168
  end
  object TRTipoProd: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 404
    Top = 216
  end
  object dtsTipoProd: TDataSource
    DataSet = ibTipoProd
    Left = 404
    Top = 272
  end
  object ibEntradamercadoria: TIBQuery
    Database = IBDGERAL
    Transaction = TREntradamercadoria
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM ENTRADAESTOQUE')
    Left = 23
    Top = 140
  end
  object TREntradamercadoria: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
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
    SQL.Strings = (
      'SELECT * FROM NATUREZA')
    Left = 543
    Top = 168
  end
  object TRNatureza: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
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
    SQL.Strings = (
      'SELECT * FROM TBLCONTASAPAGAR')
    Left = 191
    Top = 360
  end
  object TRCPagar: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
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
    SQL.Strings = (
      'SELECT * FROM INVENTARIO')
    Left = 327
    Top = 320
  end
  object TRInventario: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
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
    SQL.Strings = (
      'SELECT * FROM TBLINVENTARIOPROD')
    Left = 391
    Top = 320
  end
  object TRProdinvent: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
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
    SQL.Strings = (
      'SELECT * FROM TBLTIPOPAGTOAVULSO')
    Left = 495
    Top = 252
  end
  object TRTipoPagtoF: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
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
    SQL.Strings = (
      'SELECT * FROM TBLSERVICOSVENDAS')
    Left = 616
    Top = 16
  end
  object TRServsVenda: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 616
    Top = 64
  end
  object dtsServsVenda: TDataSource
    DataSet = ibServsVenda
    Left = 616
    Top = 120
  end
  object ibRecVendas: TIBQuery
    Database = IBDGERAL
    Transaction = TRRecVendas
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLRECEBEVENDAS')
    Left = 456
    Top = 170
  end
  object TRRecVendas: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 456
    Top = 218
  end
  object dtsRecVendas: TDataSource
    DataSet = ibRecVendas
    Left = 456
    Top = 274
  end
  object ibTempVendaLoja: TIBQuery
    Database = IBDGERAL
    Transaction = TRTempVendaLoja
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLSERVICOSVENDAS')
    Left = 536
    Top = 312
  end
  object TRTempVendaLoja: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 536
    Top = 336
  end
  object dtsTempVendaLoja: TDataSource
    DataSet = ibTempVendaLoja
    Left = 536
    Top = 360
  end
  object dtsServsVendasCli: TDataSource
    DataSet = ibServsVendasCli
    Left = 144
    Top = 383
  end
  object TRServsVendasCli: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 144
    Top = 343
  end
  object ibServsVendasCli: TIBQuery
    Database = IBDGERAL
    Transaction = TRServsVendasCli
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLSERVICOSVENDASCLI')
    Left = 144
    Top = 311
  end
  object dtsTempProd: TDataSource
    DataSet = ibTempProd
    Left = 672
    Top = 412
  end
  object TRTempProd: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 672
    Top = 459
  end
  object ibTempProd: TIBQuery
    Database = IBDGERAL
    Transaction = TRTempProd
    BufferChunks = 1000
    CachedUpdates = False
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
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 263
    Top = 367
  end
  object ibDiaMes: TIBQuery
    Database = IBDGERAL
    Transaction = TRDiaMes
    BufferChunks = 1000
    CachedUpdates = False
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
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 552
    Top = 152
  end
  object ibTipoVenda: TIBQuery
    Database = IBDGERAL
    Transaction = TRTipoVenda
    BufferChunks = 1000
    CachedUpdates = False
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
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 248
    Top = 507
  end
  object ibVendaConvenio: TIBQuery
    Database = IBDGERAL
    Transaction = TRVendaConvenio
    BufferChunks = 1000
    CachedUpdates = False
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
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 168
    Top = 431
  end
  object ibAPagar: TIBQuery
    Database = IBDGERAL
    Transaction = TRAPagar
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLCONTASAPAGAR')
    Left = 168
    Top = 388
  end
  object dtsAReceber: TDataSource
    DataSet = ibAReceber
    Left = 496
    Top = 271
  end
  object TRAReceber: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 496
    Top = 220
  end
  object ibAReceber: TIBQuery
    Database = IBDGERAL
    Transaction = TRAReceber
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLCONTASARECEBER')
    Left = 496
    Top = 169
  end
  object dtsHistorico: TDataSource
    DataSet = ibHistorico
    Left = 24
    Top = 391
  end
  object TRHistorico: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 24
    Top = 347
  end
  object ibHistorico: TIBQuery
    Database = IBDGERAL
    Transaction = TRHistorico
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLHISTORICOCR')
    Left = 24
    Top = 267
  end
  object dtsServicos: TDataSource
    DataSet = ibServicos
    Left = 16
    Top = 456
  end
  object TRServicos: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 16
    Top = 414
  end
  object ibServicos: TIBQuery
    Database = IBDGERAL
    Transaction = TRServicos
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLSERVICOSAPAGAR')
    Left = 32
    Top = 362
  end
  object dtsTipodoc: TDataSource
    DataSet = ibTipodoc
    Left = 600
    Top = 265
  end
  object TRTipodoc: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 600
    Top = 221
  end
  object ibTipodoc: TIBQuery
    Database = IBDGERAL
    Transaction = TRTipodoc
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLTIPODOCUMENTO')
    Left = 600
    Top = 175
  end
  object dtsBancos: TDataSource
    DataSet = ibBancos
    Left = 88
    Top = 470
  end
  object TRBancos: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 88
    Top = 492
  end
  object ibBancos: TIBQuery
    Database = IBDGERAL
    Transaction = TRBancos
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM BANCOS'
      '')
    Left = 88
    Top = 385
  end
  object dtsSituacao: TDataSource
    DataSet = ibSituacao
    Left = 616
    Top = 414
  end
  object TRSituacao: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 616
    Top = 367
  end
  object ibSituacao: TIBQuery
    Database = IBDGERAL
    Transaction = TRSituacao
    BufferChunks = 1000
    CachedUpdates = False
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
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 336
    Top = 448
  end
  object ibEventos: TIBQuery
    Database = IBDGERAL
    Transaction = TREventos
    BufferChunks = 1000
    CachedUpdates = False
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
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 392
    Top = 493
  end
  object ibMatPrima: TIBQuery
    Database = IBDGERAL
    Transaction = TRMatPrima
    BufferChunks = 1000
    CachedUpdates = False
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
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 464
    Top = 438
  end
  object ibKitComp: TIBQuery
    Database = IBDGERAL
    Transaction = TRKitComp
    BufferChunks = 1000
    CachedUpdates = False
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
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 536
    Top = 489
  end
  object ibUser: TIBQuery
    Database = IBDGERAL
    Transaction = TRUser
    BufferChunks = 1000
    CachedUpdates = False
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
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 728
    Top = 459
  end
  object ibTempProdNome: TIBQuery
    Database = IBDGERAL
    Transaction = TRTempProdNome
    BufferChunks = 1000
    CachedUpdates = False
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
    SQL.Strings = (
      'SELECT * FROM TBLPEDIDODEVENDA')
    Left = 130
    Top = 16
  end
  object TRPedVenda: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 130
    Top = 64
  end
  object dtsPedVenda: TDataSource
    DataSet = ibPedVenda
    Left = 130
    Top = 104
  end
  object ibPedVendaConsulta: TIBQuery
    Database = IBDGERAL
    Transaction = TRPedVendaConsulta
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLPEDIDODEVENDA')
    Left = 369
    Top = 16
  end
  object TRPedVendaConsulta: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 369
    Top = 64
  end
  object dtsPedVendaConsulta: TDataSource
    DataSet = ibPedVendaConsulta
    Left = 401
    Top = 120
  end
  object ibManutPedVenda: TIBQuery
    Database = IBDGERAL
    Transaction = TRManutPedVenda
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLPEDIDODEVENDA')
    Left = 401
    Top = 16
  end
  object TRManutPedVenda: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 401
    Top = 64
  end
  object dtsManutPedVenda: TDataSource
    DataSet = ibManutPedVenda
    Left = 433
    Top = 120
  end
  object ibDetalhePedVenda: TIBQuery
    Database = IBDGERAL
    Transaction = TRDetalhePedVenda
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLDETALHEPEDVENDA')
    Left = 311
    Top = 16
  end
  object TRDetalhePedVenda: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 311
    Top = 64
  end
  object dtsDetalhePedVenda: TDataSource
    DataSet = ibDetalhePedVenda
    Left = 343
    Top = 120
  end
  object TRLocalEstoque: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 64
    Top = 64
  end
  object ibLocalEstoque: TIBQuery
    Database = IBDGERAL
    Transaction = TRLocalEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM LOCALESTOCAGEM')
    Left = 64
    Top = 16
  end
  object dtsLocalEstoque: TDataSource
    DataSet = ibCadastro
    Left = 64
    Top = 104
  end
  object ibPosVenda: TIBQuery
    Database = IBDGERAL
    Transaction = TRPosVenda
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLPOSVENDA')
    Left = 515
    Top = 16
  end
  object TRPosVenda: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 515
    Top = 64
  end
  object dtsPosVenda: TDataSource
    DataSet = ibPosVenda
    Left = 515
    Top = 120
  end
  object ibDadosEmpresa: TIBQuery
    Database = IBDGERAL
    Transaction = TRDadosEmpresa
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLDADOSEMPRESA')
    Left = 584
    Top = 16
  end
  object TRDadosEmpresa: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 584
    Top = 64
  end
  object dtsDadosEmpresa: TDataSource
    DataSet = ibDadosEmpresa
    Left = 584
    Top = 120
  end
  object ibTempProdEstoque: TIBQuery
    Database = IBDGERAL
    Transaction = TRTempProdEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLENTRADAESTOQUEPROD')
    Left = 56
    Top = 8
  end
  object TRTempProdEstoque: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 48
    Top = 64
  end
  object dtsTempProdEstoque: TDataSource
    DataSet = ibCadastro
    Left = 48
    Top = 104
  end
  object ibConfig: TIBQuery
    Database = IBDGERAL
    Transaction = TRConfig
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLCONFIGURACOES')
    Left = 105
    Top = 168
  end
  object TRConfig: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 105
    Top = 216
  end
  object dtsConfig: TDataSource
    DataSet = ibConfig
    Left = 105
    Top = 264
  end
  object ibTempProdutos: TIBQuery
    Database = IBDGERAL
    Transaction = TRTempProdutos
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM CADPRODUTOS')
    Left = 428
    Top = 168
  end
  object TRTempProdutos: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 428
    Top = 216
  end
  object dtsTempProdutos: TDataSource
    DataSet = ibTempProdutos
    Left = 428
    Top = 272
  end
  object ibAberturaCX: TIBQuery
    Database = IBDGERAL
    Transaction = TRAberturaCX
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLABERTURACX')
    Left = 212
    Top = 16
  end
  object TRAberturaCX: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 212
    Top = 64
  end
  object dtsAberturaCX: TDataSource
    DataSet = ibAberturaCX
    Left = 244
    Top = 120
  end
  object ibUnidVenda: TIBQuery
    Database = IBDGERAL
    Transaction = TRUnidVenda
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLUNIDADEDEVENDA')
    Left = 653
    Top = 16
  end
  object TRUnidVenda: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 653
    Top = 64
  end
  object dtsUnidVenda: TDataSource
    DataSet = ibUnidVenda
    Left = 653
    Top = 120
  end
  object ibDataSistema: TIBQuery
    Database = IBDGERAL
    Transaction = TRDataSistema
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLDATASISTEMA')
    Left = 502
    Top = 169
  end
  object TRDataSistema: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 502
    Top = 220
  end
  object dtsDataSistema: TDataSource
    DataSet = ibDataSistema
    Left = 502
    Top = 271
  end
  object ibCondicoesPagto: TIBQuery
    Database = IBDGERAL
    Transaction = TRCondicoesPagto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM CONDICOESPAGAMENTO')
    Left = 383
    Top = 168
  end
  object TRCondicoesPagto: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 383
    Top = 216
  end
  object dtsCondicoesPagto: TDataSource
    DataSet = ibCondicoesPagto
    Left = 383
    Top = 272
  end
  object ibTempCadastro: TIBQuery
    Database = IBDGERAL
    Transaction = TRTempCadastro
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLCADASTRO')
    Left = 304
    Top = 168
  end
  object TRTempCadastro: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 304
    Top = 216
  end
  object dtsTempCadastro: TDataSource
    DataSet = ibTempCadastro
    Left = 304
    Top = 264
  end
  object dtsTempAReceber: TDataSource
    DataSet = ibTempAReceber
    Left = 708
    Top = 113
  end
  object TRTempAReceber: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 705
    Top = 69
  end
  object ibTempAReceber: TIBQuery
    Database = IBDGERAL
    Transaction = TRTempAReceber
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLCONTASERECEBER')
    Left = 708
    Top = 23
  end
  object dtsCores: TDataSource
    DataSet = ibCores
    Left = 632
    Top = 265
  end
  object TRCores: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 632
    Top = 221
  end
  object ibCores: TIBQuery
    Database = IBDGERAL
    Transaction = TRCores
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLCORES')
    Left = 632
    Top = 175
  end
  object dtsTamanho: TDataSource
    DataSet = ibTamanho
    Left = 664
    Top = 265
  end
  object TRTamanho: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 664
    Top = 221
  end
  object ibTamanho: TIBQuery
    Database = IBDGERAL
    Transaction = TRTamanho
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLTAMANHO')
    Left = 664
    Top = 175
  end
  object TRTempEntradaEstoque: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 705
    Top = 221
  end
  object ibTempEntradaEstoque: TIBQuery
    Database = IBDGERAL
    Transaction = TRTempEntradaEstoque
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLENTRADAESTOQUEPROD')
    Left = 705
    Top = 175
  end
  object dtsTempEntradaEstoque: TDataSource
    DataSet = ibTempEntradaEstoque
    Left = 705
    Top = 265
  end
  object ibCReceberBx: TIBQuery
    Database = IBDGERAL
    Transaction = TRCReceberBx
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLCONTASARECEBERBX')
    Left = 696
    Top = 304
  end
  object TRCReceberBx: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
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
    SQL.Strings = (
      'SELECT * FROM TBLDETALHENOTA')
    Left = 80
    Top = 168
  end
  object TRDetalheNota: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 80
    Top = 216
  end
  object dtsDetalheNota: TDataSource
    DataSet = ibDetalheNota
    Left = 80
    Top = 264
  end
  object ibNotaFiscal: TIBQuery
    Database = IBDGERAL
    Transaction = TRNotaFiscal
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLNOTAFISCAL')
    Left = 56
    Top = 168
  end
  object TRNotaFiscal: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 56
    Top = 216
  end
  object dtsNotaFiscal: TDataSource
    DataSet = ibNotaFiscal
    Left = 56
    Top = 264
  end
  object ibPagtoPendente: TIBQuery
    Database = IBDGERAL
    Transaction = TRPagtoPendente
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLPAGTOPENDENTE')
    Left = 273
    Top = 16
  end
  object TRPagtoPendente: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 273
    Top = 64
  end
  object dtsPagtoPendente: TDataSource
    DataSet = ibPagtoPendente
    Left = 305
    Top = 120
  end
  object ibImprimeVendasLoja: TIBQuery
    Database = IBDGERAL
    Transaction = TRImprimeVendasLoja
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLSERVICOSVENDAS')
    Left = 496
    Top = 312
  end
  object TRImprimeVendasLoja: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 496
    Top = 336
  end
  object dtsImprimeVendasLoja: TDataSource
    DataSet = ibImprimeVendasLoja
    Left = 496
    Top = 360
  end
  object ibServicosPagar: TIBQuery
    Database = IBDGERAL
    Transaction = TRServicosPagar
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLSERVICOSAPAGAR')
    Left = 129
    Top = 168
  end
  object TRServicosPagar: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 129
    Top = 216
  end
  object dtsServicosPagar: TDataSource
    DataSet = ibServicosPagar
    Left = 129
    Top = 264
  end
  object ibConsultaVendas: TIBQuery
    Database = IBDGERAL
    Transaction = TRConsultaVendas
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLSERVICOSVENDAS')
    Left = 153
    Top = 16
  end
  object TRConsultaVendas: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 153
    Top = 64
  end
  object dtsConsultaVendas: TDataSource
    DataSet = ibConsultaVendas
    Left = 161
    Top = 104
  end
  object ibDetalheRestaurante: TIBQuery
    Database = IBDGERAL
    Transaction = TRDetalheRestaurante
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLDETALHERESTAURANTE')
    Left = 178
    Top = 168
  end
  object TRDetalheRestaurante: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 178
    Top = 216
  end
  object dtsDetalheRestaurante: TDataSource
    DataSet = ibDetalheRestaurante
    Left = 178
    Top = 264
  end
  object ibRestaurante: TIBQuery
    Database = IBDGERAL
    Transaction = TRRestaurante
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLRESTAURANTE')
    Left = 229
    Top = 168
  end
  object TRRestaurante: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 229
    Top = 216
  end
  object dtsRestaurante: TDataSource
    DataSet = ibRestaurante
    Left = 229
    Top = 264
  end
  object ibTempRestaurante: TIBQuery
    Database = IBDGERAL
    Transaction = TRTempRestaurante
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLRESTAURANTE')
    Left = 259
    Top = 168
  end
  object TRTempRestaurante: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 259
    Top = 216
  end
  object dtsTempRestaurante: TDataSource
    DataSet = ibTempRestaurante
    Left = 259
    Top = 264
  end
  object ibControleMesas: TIBQuery
    Database = IBDGERAL
    Transaction = TRControleMesas
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLCONTROLEMESAS')
    Left = 280
    Top = 168
  end
  object TRControleMesas: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 280
    Top = 216
  end
  object dtsControleMesas: TDataSource
    DataSet = ibControleMesas
    Left = 280
    Top = 264
  end
  object ibRecebeRestaurante: TIBQuery
    Database = IBDGERAL
    Transaction = TRRecebeRestaurante
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLRECEBERESTAURANTE')
    Left = 204
    Top = 168
  end
  object TRRecebeRestaurante: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 204
    Top = 216
  end
  object dtsRecebeRestaurante: TDataSource
    DataSet = ibRecebeRestaurante
    Left = 204
    Top = 264
  end
  object dtsTempServicosVendas: TDataSource
    DataSet = ibTempServicosVendas
    Left = 759
    Top = 113
  end
  object TRTempServicosVendas: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 756
    Top = 69
  end
  object ibTempServicosVendas: TIBQuery
    Database = IBDGERAL
    Transaction = TRTempServicosVendas
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLSERVICOSVENDAS')
    Left = 759
    Top = 23
  end
  object dtsAcessoSis: TDataSource
    DataSet = ibAcessoSis
    Left = 855
    Top = 113
  end
  object TRAcessoSis: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 852
    Top = 69
  end
  object ibAcessoSis: TIBQuery
    Database = IBDGERAL
    Transaction = TRAcessoSis
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLACESSOSIS')
    Left = 855
    Top = 23
  end
  object dtsCep: TDataSource
    DataSet = ibCep
    Left = 823
    Top = 273
  end
  object ibCep: TIBQuery
    Database = IBDCep
    Transaction = TRCep
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM FRANCA')
    Left = 823
    Top = 167
  end
  object TRTempVendasCli: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 824
    Top = 375
  end
  object ibTempVendasCli: TIBQuery
    Database = IBDGERAL
    Transaction = TRTempVendasCli
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLSERVICOSVENDASCLI')
    Left = 824
    Top = 327
  end
  object dtsTempVendasCli: TDataSource
    DataSet = ibTempVendasCli
    Left = 832
    Top = 415
  end
  object dtsCFOP: TDataSource
    DataSet = ibCFOP
    Left = 491
    Top = 649
  end
  object TRCFOP: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 488
    Top = 605
  end
  object ibCFOP: TIBQuery
    Database = IBDGERAL
    Transaction = TRCFOP
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBL_CFOP')
    Left = 483
    Top = 551
  end
  object dtsProdutosEquivalentes: TDataSource
    DataSet = ibProdutosEquivalentes
    Left = 700
    Top = 625
  end
  object TRProdutosEquivalentes: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 697
    Top = 581
  end
  object ibProdutosEquivalentes: TIBQuery
    Database = IBDGERAL
    Transaction = TRProdutosEquivalentes
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM CADPRODUTOS')
    Left = 692
    Top = 527
  end
  object dtsCST: TDataSource
    DataSet = ibCST
    Left = 816
    Top = 68
  end
  object TRCST: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 816
    Top = 115
  end
  object ibCST: TIBQuery
    Database = IBDGERAL
    Transaction = TRCST
    BufferChunks = 1000
    CachedUpdates = False
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
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 872
    Top = 115
  end
  object ibST: TIBQuery
    Database = IBDGERAL
    Transaction = TRST
    BufferChunks = 1000
    CachedUpdates = False
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
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 816
    Top = 259
  end
  object ibCSOSN: TIBQuery
    Database = IBDGERAL
    Transaction = TRCSOSN
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBL_CSOSN')
    Left = 816
    Top = 166
  end
  object dtsImposto: TDataSource
    DataSet = ibImposto
    Left = 819
    Top = 545
  end
  object TRImposto: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 816
    Top = 501
  end
  object ibImposto: TIBQuery
    Database = IBDGERAL
    Transaction = TRImposto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLIMPOSTO_IBPT')
    Left = 811
    Top = 447
  end
  object dtsibDetalheEquivalente: TDataSource
    DataSet = ibDetalheEquivalente
    Left = 874
    Top = 356
  end
  object TRibDetalheEquivalente: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 874
    Top = 403
  end
  object ibDetalheEquivalente: TIBQuery
    Database = IBDGERAL
    Transaction = TRibDetalheEquivalente
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLPRODDETALHEEQUIVALENTE')
    Left = 874
    Top = 310
  end
  object dtsProdutoFornecedor: TDataSource
    DataSet = ibProdutoFornecedor
    Left = 816
    Top = 356
  end
  object TRProdutoFornecedor: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 816
    Top = 403
  end
  object ibProdutoFornecedor: TIBQuery
    Database = IBDGERAL
    Transaction = TRProdutoFornecedor
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLPRODFORN')
    Left = 816
    Top = 310
  end
  object dtsProdEquivalente: TDataSource
    DataSet = ibProdEquivalente
    Left = 873
    Top = 212
  end
  object TRProdEquivalente: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 873
    Top = 259
  end
  object ibProdEquivalente: TIBQuery
    Database = IBDGERAL
    Transaction = TRProdEquivalente
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLPRODEQUIVALENTE')
    Left = 873
    Top = 166
  end
  object dtsEstoquePrateleira: TDataSource
    DataSet = ibEstoquePrateleira
    Left = 125
    Top = 112
  end
  object TREstoquePrateleira: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 125
    Top = 64
  end
  object ibEstoquePrateleira: TIBQuery
    Database = IBDGERAL
    Transaction = TREstoquePrateleira
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLENTRADAESTOQUEPROD')
    Left = 125
    Top = 16
  end
  object dtsProdRestaurante: TDataSource
    DataSet = ibProdRestaurante
    Left = 579
    Top = 641
  end
  object TRProdRestaurante: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 576
    Top = 597
  end
  object ibProdRestaurante: TIBQuery
    Database = IBDGERAL
    Transaction = TRProdRestaurante
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM CADPRODUTOS')
    Left = 571
    Top = 543
  end
  object dtsStatusMesa: TDataSource
    DataSet = ibStatusMesa
    Left = 331
    Top = 657
  end
  object TRStatusMesa: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 328
    Top = 613
  end
  object ibStatusMesa: TIBQuery
    Database = IBDGERAL
    Transaction = TRStatusMesa
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBL_STATUSMESA')
    Left = 323
    Top = 559
  end
  object dtsVendasAberto: TDataSource
    DataSet = ibVendasAberto
    Left = 211
    Top = 665
  end
  object TRVendasAberto: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 208
    Top = 621
  end
  object ibVendasAberto: TIBQuery
    Database = IBDGERAL
    Transaction = TRVendasAberto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLRESTAURANTE')
    Left = 203
    Top = 567
  end
  object dtsPagtoParcial: TDataSource
    DataSet = ibPagtoParcial
    Left = 59
    Top = 657
  end
  object TRPagtoParcial: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 56
    Top = 613
  end
  object ibPagtoParcial: TIBQuery
    Database = IBDGERAL
    Transaction = TRPagtoParcial
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLPAGTOPARCIAL')
    Left = 51
    Top = 559
  end
  object dtsSomaVendasAberto: TDataSource
    DataSet = ibSomaVendasAberto
    Left = 139
    Top = 665
  end
  object TRSomaVendasAberto: TIBTransaction
    Active = False
    DefaultDatabase = IBDGERAL
    AutoStopAction = saNone
    Left = 136
    Top = 621
  end
  object ibSomaVendasAberto: TIBQuery
    Database = IBDGERAL
    Transaction = TRSomaVendasAberto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM TBLRESTAURANTE')
    Left = 131
    Top = 567
  end
end
