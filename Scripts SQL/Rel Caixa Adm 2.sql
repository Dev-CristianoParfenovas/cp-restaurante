SELECT TBLCAIXAADM.BICO,TBLCAIXAADM.IDPRODPISTA,TBLCAIXAADM.IDPROD,TBLCAIXAADM.NUMINICIAL,TBLCAIXAADM.NUMFINAL,TBLCAIXAADM.QTDE,TBLCAIXAADM.VLRUNIT,TBLCAIXAADM.VLRVENDAA,TBLCAIXAADM.DATA,TBLCAIXAADM.HORA,CADPRODUTOS.VALORCUSTO,CADPRODUTOS.NOME As NomeProd FROM TBLCAIXAADM INNER JOIN CADPRODUTOS ON TBLCAIXAADM.IDPROD=CADPRODUTOS.IDPROD INNER JOIN tbltipoproduto on CADPRODUTOS.TIPOPROD=TBLTIPOPRODUTO.IDTIPOPROD WHERE TBLTIPOPRODUTO.NOME = ''Combustiveis''
