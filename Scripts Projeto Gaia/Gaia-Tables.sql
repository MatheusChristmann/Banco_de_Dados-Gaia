/* Criação da Base de Dados */

create database gaia;

----------------------------------------------------------------

/* Criação das Tabelas */

create table ESTADO (
	EST_COD serial
 	constraint EST_COD_PK primary key, 
	EST_SIGLA char(2) not null unique, 
	EST_NOME  varchar(25) not null
);


comment on table ESTADO 	
	is 'Cadastro de Unidades Federativas.';
	comment on column ESTADO.EST_COD 
		is 'Código do estado.';
	comment on column ESTADO.EST_SIGLA 
		is 'Sigla do estado.';
	comment on column ESTADO.EST_NOME 
		is 'Nome do estado.';	

----------------------------------------------------------------
create table MUNICIPIO (
	  MUN_COD serial
	  constraint MUN_COD_PK primary key, 
	  MUN_NOME varchar(40) not null, 
	  COD_ESTADO int4 not null
);

alter table MUNICIPIO 
	add constraint MUN_COD_ESTADO_FK foreign key (COD_ESTADO) 
	references ESTADO (EST_COD);
 
	
comment on table MUNICIPIO 
	is 'Cadastro de Municípios.';
	comment on column MUNICIPIO.MUN_COD 
		is 'Código do munícipio.';
	comment on column MUNICIPIO.MUN_NOME 
		is 'Nome do município.';
	comment on column MUNICIPIO.COD_ESTADO 
		is 'Código do estado do município.';	

----------------------------------------------------------------
create table CEP (
  	CEP_COD varchar(9)
  	constraint CEP_COD_PK primary key, 
  	COD_MUNICIPIO int4 not null
);
 
alter table CEP
	add constraint CEP_COD_MUNICIPIO_FK foreign key (COD_MUNICIPIO) 
	references MUNICIPIO (MUN_COD);
 
	
comment on table CEP 
	is 'Cadastro de CEPs dos Munícipios.';
	comment on column CEP.CEP_COD 
		is 'CEP.';
	comment on column CEP.COD_MUNICIPIO 
		is 'Código do município do CEP.';	

----------------------------------------------------------------
create table CARGO (
  	CAR_COD       serial
  	constraint CAR_COD_PK primary key, 
  	CAR_DESCRICAO varchar(50) not null, 
  	CAR_SALARIO   numeric(8, 2) not null
 );


comment on table CARGO 
	is 'Cadastro de Cargos para os Funcionários.';
	comment on column CARGO.CAR_COD 
		is 'Código do cargo.';
	comment on column CARGO.CAR_DESCRICAO 
		is 'Descrição (Nome) do cargo.';
	comment on column CARGO.CAR_SALARIO 
		is 'Salário do cargo.';

----------------------------------------------------------------
create table FUNCIONARIO (
	FUN_COD serial
	constraint FUN_COD_PK primary key, 
	FUN_NOME varchar(50) not null, 
	FUN_CPF numeric(11, 0) not null unique, 
	FUN_RG numeric(7, 0) not null unique, 
	FUN_DATA_NASCIMENTO date not null, 
	FUN_GENERO char(1)
	constraint FUN_GENERO_CK check (FUN_GENERO in ('F', 'M')), 
	COD_CARGO int4 not null
);

alter table FUNCIONARIO 
	add constraint FUN_COD_CARGO_FK foreign key (COD_CARGO) 
	references CARGO (CAR_COD);


comment on table FUNCIONARIO 
	is 'Cadastro de Funcionários.';
	comment on column FUNCIONARIO.FUN_COD 
		is 'Código do funcionário.';
	comment on column FUNCIONARIO.FUN_NOME 
		is 'Nome do funcionário.';
	comment on column FUNCIONARIO.FUN_CPF 
		is 'CPF do funcionário.';
	comment on column FUNCIONARIO.FUN_RG 
		is 'RG do funcionário.';
	comment on column FUNCIONARIO.FUN_DATA_NASCIMENTO 
		is 'Data de nascimento do funcionário.';
	comment on column FUNCIONARIO.FUN_GENERO 
		is 'Gênero do funcionário (M = Masculino, F = Feminino).';
	comment on column FUNCIONARIO.COD_CARGO 
		is 'Código do cargo vinculado ao funcionário.';
	
----------------------------------------------------------------
create table PESSOA (
  PES_COD serial
  constraint PES_COD_PK primary key, 
  PES_NOME varchar(50) not null, 
  PES_TIPO char(1) not null
  constraint PES_TIPO_CK check (PES_TIPO in ('F', 'J')),
  PES_CPFCNPJ numeric(14, 0) not null unique, 
  PES_IE varchar(9) unique, 
  PES_GENERO char(1)
  constraint PES_GENERO_CK check (PES_GENERO in ('F', 'M')), 
  PES_DATA_NASCIMENTO date not null, 
  PES_DATA_CADASTRO   date not null
);
 

comment on table PESSOA 
	is 'Cadastro de Pessoas (Cliente e Fornecedores).';
	comment on column PESSOA.PES_COD 
		is 'Código da pessoa.';
	comment on column PESSOA.PES_NOME 
		is 'Nome completo da pessoa.';
	comment on column PESSOA.PES_TIPO 
		is 'Tipo da pessoa (J = Jurídica ou F = Física).';
	comment on column PESSOA.PES_CPFCNPJ 
		is 'CPF/CNPJ da pessoa.';
	comment on column PESSOA.PES_IE 
		is 'Inscrição estadual da pessoa.';
	comment on column PESSOA.PES_GENERO 
		is 'Gênero da Pessoa (M = Masculino, F = Feminino).';
	comment on column PESSOA.PES_DATA_NASCIMENTO 
		is 'Data de nascimento da pessoa (ou data de fundação, caso seja CNPJ).';
	comment on column PESSOA.PES_DATA_CADASTRO 
		is 'Data de cadastro da pessoa no banco de dados/sistema.';	

----------------------------------------------------------------
create table TIPO_ENDERECO (
  TIE_COD serial
  constraint TIE_COD_PK primary key, 
  TIE_DESCRICAO varchar(25) not null
);
 
	
comment on table TIPO_ENDERECO 
	is 'Cadastro de Tipos de Endereço.';
	comment on column TIPO_ENDERECO.TIE_COD 	
		is 'Código do tipo de endereço.';
	comment on column TIPO_ENDERECO.TIE_DESCRICAO 
		is 'Descrição do tipo de endereço.';	
	
----------------------------------------------------------------
create table ENDERECO_FUN (
  ENF_ID serial
  constraint ENF_ID_PK primary key, 
  ENF_TIP_END int4 not null, 
  ENF_FUNCIONARIO int4 not null,
  constraint ENF_TPE_FUM_UK Unique(ENF_TIP_END, ENF_FUNCIONARIO),
  ENF_BAIRRO varchar(50), 
  ENF_RUA varchar(50), 
  ENF_NUMERO numeric(6, 0), 
  ENF_TELEFONE varchar(9), 
  ENF_CELULAR varchar(12),
  ENF_EMAIL varchar(40), 
  ENF_CEP varchar(9) not null
);

alter table ENDERECO_FUN 
add constraint ENF_TIP_END_FK foreign key (ENF_TIP_END) 
references TIPO_ENDERECO (TIE_COD);

alter table ENDERECO_FUN 
add constraint ENF_FUNCIONARIO_FK foreign key (ENF_FUNCIONARIO) 
references FUNCIONARIO (FUN_COD);

alter table ENDERECO_FUN 
add constraint ENF_CEP_FK foreign key (ENF_CEP) 
references CEP (CEP_COD);

	
comment on table ENDERECO_FUN 
	is 'Cadastro dos Endereços de Funcionários.';
	comment on column ENDERECO_FUN.ENF_ID 
		is 'ID de identificação do endereço do funcionario.';
	comment on column ENDERECO_FUN.ENF_TIP_END 
		is 'Código do tipo de Endereço.';
	comment on column ENDERECO_FUN.ENF_FUNCIONARIO 
		is 'Código do funcionário.';
	comment on column ENDERECO_FUN.ENF_BAIRRO 
		is 'Nome do bairro.';
	comment on column ENDERECO_FUN.ENF_RUA 
		is 'Nome da rua.';
	comment on column ENDERECO_FUN.ENF_NUMERO 
		is 'Número do endereço.';
	comment on column ENDERECO_FUN.ENF_TELEFONE 
		is 'Número de telefone.';
	comment on column ENDERECO_FUN.ENF_CELULAR 
		is 'Número de celular.';
	comment on column ENDERECO_FUN.ENF_EMAIL 
		is 'Endereço de email.';
	comment on column ENDERECO_FUN.ENF_CEP 
		is 'CEP do endereço.';	

----------------------------------------------------------------
create table ENDERECO_PES (
  ENP_ID serial
  constraint ENP_ID_PK primary key, 
  ENP_TIP_END int4 not null, 
  ENP_PESSOA int4 not null, 
  constraint ENP_TPE_PES_UK Unique(ENP_TIP_END, ENP_PESSOA),
  ENP_BAIRRO varchar(50), 
  ENP_RUA varchar(50), 
  ENP_NUMERO numeric(6, 0), 
  ENP_TELEFONE varchar(9), 
  ENP_CELULAR varchar(12), 
  ENP_EMAIL varchar(40), 
  ENP_CEP varchar(9) not null
);

alter table ENDERECO_PES 
add constraint ENP_TIP_END_FK foreign key (ENP_TIP_END) 
references TIPO_ENDERECO (TIE_COD);   

alter table ENDERECO_PES 
add constraint ENP_PESSOA_FK foreign key (ENP_PESSOA) 
references PESSOA (PES_COD);
   
alter table ENDERECO_PES 
add constraint ENP_CEP_FK foreign key (ENP_CEP) 
references CEP (CEP_COD);
   
	
comment on table ENDERECO_PES
	is 'Cadastro de Endereços de Pessoas.';
	comment on column ENDERECO_PES.ENP_ID 
		is 'ID de identificação de endereço da pessoa.';
	comment on column ENDERECO_PES.ENP_TIP_END 
		is 'Código do tipo de endereço.';
	comment on column ENDERECO_PES.ENP_PESSOA 
		is 'Código da pessoa.';
	comment on column ENDERECO_PES.ENP_BAIRRO 
		is 'Nome do bairro.';
	comment on column ENDERECO_PES.ENP_RUA 
		is 'Nome da rua.';
	comment on column ENDERECO_PES.ENP_NUMERO 
		is 'Número do endereço.';
	comment on column ENDERECO_PES.ENP_TELEFONE 
		is 'Número de telefone.';
	comment on column ENDERECO_PES.ENP_CELULAR 
		is 'Número de celular.';
	comment on column ENDERECO_PES.ENP_EMAIL 
		is 'Endereço de email.';
	comment on column ENDERECO_PES.ENP_CEP 
		is 'CEP do endereço.';	

----------------------------------------------------------------
create table PRINCIPIO_ATIVO (
  PIA_COD serial 
  constraint PIA_COD_PK primary key, 
  PIA_DESCRICAO varchar(50) not null 
);
 
	
comment on table PRINCIPIO_ATIVO 
	is 'Cadastro de Princípios Ativos.';
	comment on column PRINCIPIO_ATIVO.PIA_COD 
		is 'Código do princípio ativo.';
	comment on column PRINCIPIO_ATIVO.PIA_DESCRICAO 
		is 'Descrição/nome do princípio ativo.';	

----------------------------------------------------------------
create table TIPO_MEDICAMENTO (
  TIM_COD serial
  constraint TIM_COD_PK primary key, 
  TIM_DESCRICAO varchar(25) not null 
);
 
		
comment on table TIPO_MEDICAMENTO 
	is 'Cadastro de Tipos de Medicamentos.';
	comment on column TIPO_MEDICAMENTO.TIM_COD 
		is 'Código do tipo de medicamento.';
	comment on column TIPO_MEDICAMENTO.TIM_DESCRICAO 
		is 'Descrição do tipo de medicamento.';
			
----------------------------------------------------------------
create table TIPO_TARJA (
  TIT_COD serial
  constraint TIT_COD_PK primary key, 
  TIT_DESCRICAO varchar(25) not null
); 

	
comment on table TIPO_TARJA 
	is 'Cadastro de Tipos de Tarja.';
	comment on column TIPO_TARJA.TIT_COD 
		is 'Código do tipo de tarja.';
	comment on column TIPO_TARJA.TIT_DESCRICAO 
		is 'Descrição do tipo de tarja.';

----------------------------------------------------------------
create table UNIDADE_MEDIDA (
  UNM_COD serial
  constraint UNM_COD_PK primary key, 
  UNM_DESCRICAO varchar(25) not null
);
 
 
comment on table UNIDADE_MEDIDA 
	is 'Cadastro de Unidades de Medida.';
	comment on column UNIDADE_MEDIDA.UNM_COD 
		is 'Código da unidade de medida.';
	comment on column UNIDADE_MEDIDA.UNM_DESCRICAO 
		is 'Descrição da unidade de medida.';		

----------------------------------------------------------------
create table PRODUTO (
  PRO_COD serial 
  constraint PRO_COD_PK primary key, 
  PRO_NOME varchar(40) not null, 
  PRO_DESCRICAO varchar(60), 
  PRO_PRECO numeric(8, 2) not null, 
  PRO_QUANTIDADE numeric(8, 2) not null, 
  PRO_PESO numeric(7, 3), 
  PRO_PRI_ATIVO int4 not null, 
  PRO_TIP_MED int4 not null, 
  PRO_TIP_TAR int4 not null, 
  PRO_UNI_MED int4 not null, 
  PRO_ESTOQUE_MINIMO numeric(8, 2) not null
);

alter table PRODUTO 
add constraint PRO_PRI_ATIVO_FK foreign key (PRO_PRI_ATIVO) 
references PRINCIPIO_ATIVO (PIA_COD);

alter table PRODUTO 
add constraint PRO_UNI_MED_FK foreign key (PRO_UNI_MED) 
references UNIDADE_MEDIDA (UNM_COD);

alter table PRODUTO 
add constraint PRO_TIP_TAR_FK foreign key (PRO_TIP_TAR) 
references TIPO_TARJA (TIT_COD);

alter table PRODUTO 
add constraint PRO_TIP_MED_FK foreign key (PRO_TIP_MED) 
references TIPO_MEDICAMENTO (TIM_COD);


comment on table PRODUTO 
	is 'Cadastro de Produtos.';
	comment on column PRODUTO.PRO_COD 
		is 'Código do produto.';
	comment on column PRODUTO.PRO_NOME 
		is 'Nome do produto.';
	comment on column PRODUTO.PRO_DESCRICAO 
		is 'Descrição do produto.';
	comment on column PRODUTO.PRO_PRECO 
		is 'Preço de venda do produto.';
	comment on column PRODUTO.PRO_QUANTIDADE 
		is 'Quantidade em estoque do produto.';
	comment on column PRODUTO.PRO_PESO 
		is 'Peso bruto do produto em gramas.';
	comment on column PRODUTO.PRO_PRI_ATIVO 
		is 'Princípio ativo do produto.';
	comment on column PRODUTO.PRO_TIP_MED 
		is 'Tipo de medicamento do produto.';
	comment on column PRODUTO.PRO_TIP_TAR 
		is 'Tipo de tarja do produto.';
	comment on column PRODUTO.PRO_UNI_MED 
		is 'Unidade de medida do produto.';
	comment on column PRODUTO.PRO_ESTOQUE_MINIMO 
		is 'Quantidade de estoque mínimo para o produto.';	

----------------------------------------------------------------
create table TIPO_PAGAMENTO (
  TPG_COD serial 
  constraint TPG_COD_PK primary key, 
  TPG_DESCRICAO varchar(40) not null 
);

 
comment on table TIPO_PAGAMENTO 
	is 'Cadastro de Tipos de Pagamento.';
	comment on column TIPO_PAGAMENTO.TPG_COD 
		is 'Código do Tipo de Pagamento';
	comment on column TIPO_PAGAMENTO.TPG_DESCRICAO 
		is 'Descrição do Tipo de Pagamento';

----------------------------------------------------------------
create table VENDA (
  VEN_NUMERO serial
  constraint VEN_NUMERO_PK primary key, 
  COD_PESSOA int4 not null, 
  VEN_DATA timestamp not null, 
  COD_PAGAMENTO int4 not null, 
  COD_FUNCIONARIO int4 not null, 
  VEN_RECEITA bytea
);

alter table VENDA 
add constraint VEN_COD_PESSOA_FK foreign key (COD_PESSOA) 
references PESSOA (PES_COD);

alter table VENDA 
add constraint VEN_COD_PAGAMENTO_FK foreign key (COD_PAGAMENTO) 
references TIPO_PAGAMENTO (TPG_COD);

alter table VENDA 
add constraint VEN_COD_FUNCIONARIO_FK foreign key (COD_FUNCIONARIO) 
references FUNCIONARIO (FUN_COD);
 
	
comment on table VENDA 
	is 'Tabela com registro de Vendas.';
	comment on column VENDA.VEN_NUMERO 
		is 'Número de venda.';
	comment on column VENDA.COD_PESSOA 
		is 'Código da pessoa a qual está sendo realizada a venda.';
	comment on column VENDA.VEN_DATA 
		is 'Data da venda.';
	comment on column VENDA.COD_PAGAMENTO 
		is 'Código do tipo de pagamento usado na venda.';
	comment on column VENDA.COD_FUNCIONARIO 
		is 'Código do funcionário que efetuou a venda.';
	comment on column VENDA.VEN_RECEITA 
		is 'Receita apresentada durante a venda.';
	
----------------------------------------------------------------
create table VENDA_ITEM (
  VEI_ID serial
  constraint VEI_ID_PK primary key, 
  VEI_VEN_NUMERO int4 not null, 
  VEI_PRO_COD int4 not null, 
  constraint VEI_VEN_COD_UK Unique(VEI_VEN_NUMERO, VEI_PRO_COD),
  VEI_QTD_ITEM numeric(8, 2) not null, 
  VEI_PRECO numeric(8, 2) not null, 
  VEI_TOTAL_ITEM numeric(8, 2) not null
);
 
alter table VENDA_ITEM 
add constraint VEI_VEN_NUMERO_FK foreign key (VEI_VEN_NUMERO) 
references VENDA (VEN_NUMERO);

alter table VENDA_ITEM 
add constraint VEI_PRO_COD_FK foreign key (VEI_PRO_COD) 
references PRODUTO (PRO_COD);


comment on table VENDA_ITEM 
	is 'Tabela com os Itens(Produtos) da Venda.';
	comment on column VENDA_ITEM.VEI_ID 
		is 'ID de identificação do item de uma venda.';
	comment on column VENDA_ITEM.VEI_VEN_NUMERO 
		is 'Número da venda a qual o item pertence.';
	comment on column VENDA_ITEM.VEI_PRO_COD 
		is 'Código do item(produto) na venda.';
	comment on column VENDA_ITEM.VEI_QTD_ITEM 
		is 'Quantidade do item na venda.';
	comment on column VENDA_ITEM.VEI_PRECO 
		is 'Preço utilizado para venda. Se trata de uma cópia do preço do produto.';
	comment on column VENDA_ITEM.VEI_TOTAL_ITEM 
		is 'Valor total do item na venda.';
	
----------------------------------------------------------------
create table COMPRA (
  COM_NUMERO serial
  constraint COM_NUMERO_PK primary key, 
  COD_PESSOA int4 not null, 
  COM_DATA timestamp not null, 
  COD_PAGAMENTO int4 not null, 
  COD_FUNCIONARIO int4 not null
);
 
alter table COMPRA 
add constraint COM_COD_PESSOA_FK foreign key (COD_PESSOA) 
references PESSOA (PES_COD);

alter table COMPRA 
add constraint COM_COD_PAGAMENTO_FK foreign key (COD_PAGAMENTO) 
references TIPO_PAGAMENTO (TPG_COD);

alter table COMPRA 
add constraint COM_COD_FUNCIONARIO_FK foreign key (COD_FUNCIONARIO) 
references FUNCIONARIO (FUN_COD);


comment on table COMPRA 
	is 'Tabela com registro de Compras.';
	comment on column COMPRA.COM_NUMERO 
		is 'Número da compra.';
	comment on column COMPRA.COD_PESSOA 
		is 'Código da pessoa a qual foi feita a compra.';
	comment on column COMPRA.COM_DATA 
		is 'Data da efetivação da compra.';
	comment on column COMPRA.COD_PAGAMENTO 
		is 'Código do tipo de pagamento da compra.';
	comment on column COMPRA.COD_FUNCIONARIO 
		is 'Código do funcionário que efetuou a compra.';
	
----------------------------------------------------------------
create table COMPRA_ITEM (
  COI_ID serial 
  constraint COI_ID_PK primary key, 
  COI_COM_NUMERO int4 not null, 
  COI_PRO_COD int4 not null, 
  constraint CEI_COM_COD_UK Unique(COI_COM_NUMERO, COI_PRO_COD),
  COI_QTD_ITEM numeric(8, 2) not null, 
  COI_UNITARIO_ITEM numeric(8, 2) not null, 
  COI_TOTAL_ITEM numeric(8, 2) not null
);

alter table COMPRA_ITEM 
add constraint COI_COM_NUMERO_FK foreign key (COI_COM_NUMERO) 
references COMPRA (COM_NUMERO);

alter table COMPRA_ITEM 
add constraint COI_PRO_COD_FK foreign key (COI_PRO_COD) 
references PRODUTO (PRO_COD);

 	
comment on table COMPRA_ITEM 
	is 'Itens(Produtos) da Compra.';
	comment on column COMPRA_ITEM.COI_ID 
		is 'ID de identificação do item de uma compra.';
	comment on column COMPRA_ITEM.COI_COM_NUMERO 
		is 'Número da compra a qual o item pertence.';
	comment on column COMPRA_ITEM.COI_PRO_COD 
		is 'Código do item(produto) na compra.';
	comment on column COMPRA_ITEM.COI_QTD_ITEM 
		is 'Quantidade do item na compra.';
	comment on column COMPRA_ITEM.COI_UNITARIO_ITEM 
		is 'Valor unitário do item.';
	comment on column COMPRA_ITEM.COI_TOTAL_ITEM 
		is 'Valor total do item.';

----------------------------------------------------------------
create table PRODUTO_MOVIMENTO (
  PRM_ID serial
  constraint PRM_ID_PK primary key, 
  PRM_DATA timestamp not null, 
  PRM_PRODUTO int4 not null, 
  PRM_PESSOA int4 not null, 
  PRM_QTD_PRODUTO numeric(8, 2) not null
);
 
alter table PRODUTO_MOVIMENTO add constraint PRM_PESSOA_FK foreign key (PRM_PESSOA) 
references PESSOA (PES_COD);

alter table PRODUTO_MOVIMENTO add constraint PRM_PRODUTO_FK foreign key (PRM_PRODUTO) 
references PRODUTO (PRO_COD);
 
	
comment on table PRODUTO_MOVIMENTO 	
	is 'Tabela contendo as movimentações de entrada e saída de produtos. Utilizada no controle de estoque.';
	comment on column PRODUTO_MOVIMENTO.PRM_ID 
		is 'ID de identificação da movimentação de um produto.';
	comment on column PRODUTO_MOVIMENTO.PRM_DATA 
		is 'Data em que foi realizada a compra ou a venda de um produto.';
	comment on column PRODUTO_MOVIMENTO.PRM_PRODUTO 
		is 'Código do produto que está sofrendo movimentação.';
	comment on column PRODUTO_MOVIMENTO.PRM_PESSOA 
		is 'Código da pessoa que realizou a venda ou a compra.';
	comment on column PRODUTO_MOVIMENTO.PRM_QTD_PRODUTO 
		is 'Quantidade do produto que está sofrendo movimentação.';	

----------------------------------------------------------------

/* Criação dos Índices */

create index PRM_PESSOA_SK
on PRODUTO_MOVIMENTO(PRM_PESSOA);

create index PRM_PRODUTO_SK
on PRODUTO_MOVIMENTO(PRM_PRODUTO);

create index ENP_PESSOA_SK
on ENDERECO_PES(ENP_PESSOA);

create index ENF_FUNCIONARIO_SK
on ENDERECO_FUN(ENF_FUNCIONARIO);

create index ENP_CEP_SK 
on ENDERECO_PES(ENP_CEP);

create index ENP_TIP_END_SK 
on ENDERECO_PES(ENP_TIP_END);

create index ENF_CEP_SK
on ENDERECO_FUN(ENF_CEP);

create index ENF_TIP_END_SK
on ENDERECO_FUN(ENF_TIP_END);

create index COD_MUNICIPIO_SK
on CEP(COD_MUNICIPIO);

create index COD_ESTADO_SK 
on MUNICIPIO(COD_ESTADO);

create index COD_FUNCIONARIO_VENDA_SK 
on VENDA(COD_FUNCIONARIO);

create index COD_FUNCIONARIO_COMPRA_SK
on COMPRA(COD_FUNCIONARIO);

create index COD_CARGO_SK
on FUNCIONARIO(COD_CARGO);

create index VEI_VEN_NUMERO_SK
on VENDA_ITEM(VEI_VEN_NUMERO);

create index VEI_PRO_COD_SK
on VENDA_ITEM(VEI_PRO_COD);

create index COD_PAGAMENTO_VENDA_SK
on VENDA(COD_PAGAMENTO);

create index COD_PESSOA_VENDA_SK
on VENDA(COD_PESSOA);

create index COD_PESSOA_COMPRA_SK
on COMPRA(COD_PESSOA);

create index COD_PAGAMENTO_COMPRA_SK
on COMPRA(COD_PAGAMENTO);

create index COI_PRO_COD_SK 
on COMPRA_ITEM(COI_PRO_COD);

create index COI_COM_NUMERO_SK 
on COMPRA_ITEM(COI_COM_NUMERO);

create index PRO_UNI_MED_SK
on PRODUTO(PRO_UNI_MED);

create index PRO_TIP_TAR_SK
on PRODUTO(PRO_TIP_TAR);

create index PRO_TIP_MED_SK
on PRODUTO(PRO_TIP_MED);

create index PRO_PRI_ATIVO_SK 
on PRODUTO(PRO_PRI_ATIVO); 
