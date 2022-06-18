--https://generatedata.com/generator
--Empresa Gaia fundada em 2010

insert into estado values
  (1, 'RS', 'Rio Grande do Sul'),
  (2, 'SC', 'Santa Catarina'),
  (3, 'SP', 'São Paulo');

select * from ESTADO ;

-----------------------------------
insert into municipio values
  (1,'Cunha Porã',2),
  (2,'Romelândia',2),
  (3,'São Miguel do Oeste',2),
  (4,'Ametista do sul',1),
  (5,'São Paulo',3);

select * from MUNICIPIO ;

-----------------------------------
insert into cep values
  ('89890-000', 1),
  ('89908-000', 2),
  ('89900-000', 3),
  ('98465-000', 4),
  ('01153-000', 5);

select * from CEP ;

-----------------------------------
insert into cargo values
  (1,'Gerente', 2811.00),
  (2,'Atendente', 1495.00),
  (3,'Balconista', 1657.00),
  (4,'Auxiliares Administrativo', 1516.00);

select * from CARGO ;

-----------------------------------
insert into funcionario values 
  (1, 'Dalton Noe', '13281178590', '0935706', '27/05/1997', 'M', 3),
  (2, 'Drew Carpenter', '90497266366', '5244285', '10/12/1998', 'M', 2),
  (3, 'Kristen P. Simmons', '85431825412', '1765224', '10/7/1990', 'F', 4),
  (4, 'Lunea Barker', '41664601696', '4746512', '16/2/1998', 'F', 1),
  (5, 'Nevada Hampton', '68179216011', '5672848', '26/11/2000', 'O', 2);

select * from FUNCIONARIO ;
 
-----------------------------------
insert into PESSOA values 
  (1, 'Purus Foundation', 'J', '61623825779672', '266168678', null, '18/11/1972', '07/05/2018'),  
  (2, 'Hanna U. Amaral', 'F', '55135062855', null, 'F', '01/07/1965', '13/07/2016'),
  (3, 'Mi Lorem Company', 'J', '93073502143518', '885536528', null, '30/01/1994', '07/12/2017'),
  (4, 'Egestas A Limited', 'J', '70277373648318', '190309547', null, '26/09/1966', '19/12/2013'),
  (5, 'Steel de Sousa', 'F', '53183143410', null, 'M', '27/03/1998', '20/05/2022'),
  (6, 'Timothy de Campos', 'F', '71616122621', null, 'M', '11/01/1980', '25/01/2019'),
  (7, 'Chantale T. Moura', 'F', '12804290644', null, 'F', '12/01/1985', '28/05/2010'),
  (8, 'Abel T. Fernandes', 'F', '22873741645', null, 'M', '04/05/1969', '26/06/2013'),
  (9, 'Abraham G. de Assis', 'F', '28254972785', null, 'M', '07/07/1985', '30/04/2014'),
  (10, 'Ila R. Teixeira', 'F', '23686765412', null, 'F', '24/03/1991', '12/12/2017'),
  (11, 'Hall Santos', 'F', '20243940983', null, 'F', '19/09/1983', '07/12/2016'),
  (12, 'Christian Oliveira', 'F', '54449225105', null, 'M', '15/06/1986', '08/10/2014'),
  (13, 'Bradley de Freitas', 'F', '65055154593', null, 'M', '20/12/1998', '24/11/2011'),
  (14, 'Scott G. Mota', 'F', '04676257915', null, 'M', '25/09/1989', '19/11/2020'),
  (15, 'Ultrices Posuere Cubilia Foundation', 'J', '46614370640211', '217441885', null, '11/12/1985', '23/07/2015'),
  (16, 'Pellentesque Eget Industries', 'J', '68975936914348', '163334175', null, '25/10/1997', '10/09/2015');

select * from PESSOA ;

-----------------------------------
insert into TIPO_ENDERECO values 
(1, 'Residencial Fixo'),
(2, 'Residencial Temporario'),
(3, 'Comercial'),
(4, 'Cobrança');

select * from TIPO_ENDERECO ;

-----------------------------------
insert into ENDERECO_FUN values 
  (1, 3, 4, 'Santa Maria', 'Jesus', 70, '16466158', '71-966367528', 'in.lobortis.tellus@outlook.com', '89908-000'),
  (2, 1, 3, 'Centro', 'Fontain', 1036, '47273435', '15-926435112', 'in.felis@google.com', '89908-000'),
  (3, 4, 2, 'Interbi', 'Weekned', 5, '54975334', '48-937231316', 'arcu.sed@google.com', '89900-000'),
  (4, 3, 1, 'Ricaso', 'Samanta ', 680, '61071564', '74-967478756', 'blandit.mattis.cras@hotmail.com', '89890-000'),
  (5, 1, 5, 'Centro', 'Vira Lobos', null, '80132591', '18-944726258', 'dictum.mi@google.com', '89908-000'),
  (6, 2, 4, 'Centro', 'Presidente Fin', 613, '28188335', '14-912314567', 'tellus@outlook.com', '89890-000'),
  (7, 3, 3, 'Centro', 'Avenida 23', 38, '65842156', '43-961722564', 'congue.turpis@hotmail.com', '89908-000');

select * from ENDERECO_FUN ;

-----------------------------------
insert into ENDERECO_PES values 
  (1,3,7,'Zone','Goosd',3638,'16466158','71-966367528','id.magna@hotmail.com','89890-000'),
  (2,3,2,'Santa_Maria','La_sale',2188,'47273435','15-926435112','maecenas.libero@google.com','89890-000'),
  (3,4,10,'Santa_Maria','Avenida_Brasail',754,'54975334','48-937231316','vel.arcu@outlook.com','89890-000'),
  (4,3,1,'Interior','France',2319,'61071564','74-967478756','mauris.ut@outlook.com','89900-000'),
  (5,1,11,'Tec','Avenida_Brasail',4118,'80132591','18-944726258','in.magna@hotmail.com','89908-000'),
  (6,2,4,'Zone','Avenida_Brasail',3573,'28188335','14-912314567','fermentum.risus@google.com','89908-000'),
  (7,3,14,'Interlag','Goosd',1926,'65842156','43-961722564','adipiscing.elit@hotmail.com','89900-000'),
  (8,2,13,'Interlag','Avenida_Brasail',3370,'86385576','42-948217794','commodo.tincidunt.nibh@outlook.com','89890-000'),
  (9,2,3,'Interior','Avenida_Brasail',3650,'76228968','62-992782774','nibh@hotmail.com','89908-000'),
  (10,3,16,'Tec','Avenida_Brasail',3760,'63532298','52-978167262','tellus.aenean.egestas@hotmail.com','89890-000'),
  (11,3,8,'Centro','La_sale',4921,'91366667','74-938326940','ultrices.posuere.cubilia@outlook.com','89890-000'),
  (12,3,5,'Zone','Avenida_Brasail',911,'75213030','79-914535545','nunc.in.at@google.com','89900-000'),
  (13,3,9,'Interlag','La_sale',3600,'64258802','55-941483887','molestie.sed@hotmail.com','89890-000'),
  (14,1,12,'Interlag','La_sale',4945,'11914741','13-908134805','fringilla.ornare@hotmail.com','89890-000'),
  (15,4,6,'Interior','Goosd',11,'77910382','87-911066356','eget@hotmail.com','89908-000'),
  (16,1,15,'Santa_Maria','France',1257,'66785815','74-941818856','risus@google.com','89908-000');

select * from ENDERECO_PES ;

-----------------------------------
insert into PRINCIPIO_ATIVO values



select * from PRINCIPIO_ATIVO ;

-----------------------------------
insert into TIPO_MEDICAMENTO values 
select * from TIPO_MEDICAMENTO ;
-----------------------------------
insert into TIPO_TARJA values 
(1, 'Sem tarja'),
(2, 'Tarja Amarela'),
(3, 'Tarja Vermelha'),
(4, 'Tarja Preta');

select * from TIPO_TARJA;
-----------------------------------
insert into UNIDADE_MEDIDA values 
select * from UNIDADE_MEDIDA ;
-----------------------------------
insert into PRODUTO values 
select * from PRODUTO ;
-----------------------------------
insert into XXX values 
select * from TIPO_PAGAMENTO ;
-----------------------------------
insert into VENDA values 
select * from VENDA ;
-----------------------------------
insert into VENDA_ITEM values 
select * from VENDA_ITEM ;
-----------------------------------
insert into COMPRA values 
select * from COMPRA ;
-----------------------------------
insert into COMPRA_ITEM values 
select * from COMPRA_ITEM ;
-----------------------------------
insert into PRODUTO_MOVIMENTO values C
select * from PRODUTO_MOVIMENTO ;
-----------------------------------
