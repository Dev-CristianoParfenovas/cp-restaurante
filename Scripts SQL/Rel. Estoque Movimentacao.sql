SELECT TBLMOVESTOQUE.*, LOCALESTOCAGEM.NOME As LocalEstoque FROM TBLMOVESTOQUE LEFT OUTER JOIN CADPRODUTOS ON TBLMOVESTOQUE.IDPROD=CADPRODUTOS.IDPROD LEFT OUTER JOIN LOCALESTOCAGEM ON CADPRODUTOS.IDLOCAL = LOCALESTOCAGEM.IDESTOQUE WHERE TBLMOVESTOQUE.IDPROD=179
