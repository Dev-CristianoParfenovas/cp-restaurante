SELECINNER JOIN TBLCADASTRO ON TBLCONTASAPAGAR.IDFORNECEDOR=TBLCADASTRO.IDCADT TBLCONTASAPAGAR.*,TBLHISTORICO.TIPO,TBLSERVICOSAPAGAR.TIPO,TBLTIPODOCUMENTO.TIPO As Tipodoc,BANCOS.DESCRICAO,TBLSITUACAO.DESCRICAO,TBLEVENTO.TIPO As TipoEvento,TBLCADASTRO.NOME As Fornecedor  FROM TBLCONTASAPAGAR INNER JOIN TBLHISTORICO ON TBLCONTASAPAGAR.HISTORICO=TBLHISTORICO.IDHISTORICO INNER JOIN TBLSERVICOSAPAGAR ON TBLCONTASAPAGAR.IDSERVICOS=TBLSERVICOSAPAGAR.IDSERVICO INNER JOIN TBLTIPODOCUMENTO ON TBLCONTASAPAGAR.IDTIPODOC=TBLTIPODOCUMENTO.IDTIPODOC INNER JOIN BANCOS ON TBLCONTASAPAGAR.IDBANCO=BANCOS.IDBCO INNER JOIN TBLSITUACAO ON TBLCONTASAPAGAR.IDSITUACAO=TBLSITUACAO.IDSITUACAO INNER JOIN TBLEVENTO ON TBLCONTASAPAGAR.IDEVENTO=TBLEVENTO.IDEVENTO INNER JOIN TBLCADASTRO ON TBLCONTASAPAGAR.IDFORNECEDOR=TBLCADASTRO.IDCAD
