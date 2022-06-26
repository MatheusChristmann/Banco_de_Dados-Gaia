/* Deletando as restrições */

alter table CEP 
	drop constraint CEP_COD_MUNICIPIO_FK;

alter table MUNICIPIO 
	drop constraint MUN_COD_ESTADO_FK;

alter table FUNCIONARIO 
	drop constraint FUN_COD_CARGO_FK;

alter table ENDERECO_FUN 
	drop constraint ENF_TIP_END_FK;

alter table ENDERECO_FUN 
	drop constraint ENF_FUNCIONARIO_FK;

alter table ENDERECO_FUN 
	drop constraint ENF_CEP_FK;

alter table ENDERECO_PES 
	drop constraint ENP_TIP_END_FK;

alter table ENDERECO_PES 
	drop constraint ENP_PESSOA_FK;

alter table ENDERECO_PES 
	drop constraint ENP_CEP_FK;

alter table PRODUTO 
	drop constraint PRO_TIP_MED_FK;

alter table PRODUTO 
	drop constraint PRO_TIP_TAR_FK;

alter table PRODUTO 
	drop constraint PRO_UNI_MED_FK;

alter table PRODUTO 
	drop constraint PRO_PRI_ATIVO_FK;

alter table VENDA 
	drop constraint VEN_COD_PESSOA_FK;

alter table VENDA 
	drop constraint VEN_COD_PAGAMENTO_FK;

alter table VENDA 
	drop constraint VEN_COD_FUNCIONARIO_FK;

alter table VENDA_ITEM 
	drop constraint VEI_VEN_NUMERO_FK;

alter table VENDA_ITEM 
	drop constraint VEI_PRO_COD_FK;

alter table COMPRA 
	drop constraint COM_COD_PESSOA_FK;

alter table COMPRA 
	drop constraint COM_COD_PAGAMENTO_FK;

alter table COMPRA 
	drop constraint COM_COD_FUNCIONARIO_FK;

alter table COMPRA_ITEM 
	drop constraint COI_PRO_COD_FK;

alter table COMPRA_ITEM 
	drop constraint COI_COM_NUMERO_FK;

alter table PRODUTO_MOVIMENTO 
	drop constraint PRM_PESSOA_FK;

alter table PRODUTO_MOVIMENTO 
	drop constraint PRM_PRODUTO_FK;

-------------------------------------------------------------

/* Deletando as tabelas */

drop table if exists CEP cascade;

drop table if exists ESTADO cascade;

drop table if exists MUNICIPIO cascade;

drop table if exists CARGO cascade;

drop table if exists FUNCIONARIO cascade;

drop table if exists PESSOA cascade;

drop table if exists TIPO_ENDERECO cascade;

drop table if exists ENDERECO_FUN cascade;

drop table if exists ENDERECO_PES cascade;

drop table if exists PRINCIPIO_ATIVO cascade;

drop table if exists TIPO_MEDICAMENTO cascade;

drop table if exists TIPO_TARJA cascade;

drop table if exists UNIDADE_MEDIDA cascade;

drop table if exists PRODUTO cascade;

drop table if exists TIPO_PAGAMENTO cascade;

drop table if exists VENDA cascade;

drop table if exists VENDA_ITEM cascade;

drop table if exists COMPRA cascade;

drop table if exists COMPRA_ITEM cascade;

drop table if exists PRODUTO_MOVIMENTO cascade;
