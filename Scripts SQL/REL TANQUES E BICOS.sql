SELECT tanquesbicos.idtanque,tanquesbicos.IDLOCAL,tanquesbicos.IDCOMB,tanquesbicos.idtanques,tanquesbicos.VLRVENDA,tanquesbicos.bico,localestocagem.nome As LocalEstoque,TBLTANQUES.TANQUE As NomeTanque,cadprodutos.nome FROM cadprodutos INNER JOIN tanquesbicos ON cadprodutos.idprod=tanquesbicos.idcomb INNER JOIN TBLTANQUES ON TANQUESBICOS.IDCOMB=TBLTANQUES.IDPROD INNER JOIN localestocagem ON cadprodutos.idlocal = localestocagem.idestoque
