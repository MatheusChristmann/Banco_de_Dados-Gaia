/* Gerador de Dados utilizado: https://generatedata.com/generator

Banco de Dados Gaia fundado em 2010 */

/* Inserções de Dados */

insert into ESTADO values
  (1, 'RS', 'Rio Grande do Sul'),
  (2, 'SC', 'Santa Catarina'),
  (3, 'SP', 'São Paulo');

-----------------------------------
insert into municipio values
  (1,'Cunha Porã',2),
  (2,'Romelândia',2),
  (3,'São Miguel do Oeste',2),
  (4,'Ametista do sul',1),
  (5,'São Paulo',3);

-----------------------------------
insert into cep values
  ('89890-000', 1),
  ('89908-000', 2),
  ('89900-000', 3),
  ('98465-000', 4),
  ('01153-000', 5);

-----------------------------------
insert into cargo values
  (1,'Gerente', 2811.00),
  (2,'Atendente', 1495.00),
  (3,'Balconista', 1657.00),
  (4,'Auxiliar Administrativo', 1516.00);

-----------------------------------
insert into funcionario values 
  (1, 'Dalton Noe', '13281178590', '9035706', '27/05/1997', 'M', 3),
  (2, 'Drew Carpenter', '90497266366', '5244285', '10/12/1998', 'M', 2),
  (3, 'Kristen P. Simmons', '85431825412', '1765224', '10/7/1990', 'F', 4),
  (4, 'Lunea Barker', '41664601696', '4746512', '16/2/1998', 'F', 1),
  (5, 'Nevada Hampton', '68179216011', '5672848', '26/11/2000', 'F', 2);

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
  (14, 'Scott G. Mota', 'F', '14676257915', null, 'M', '25/09/1989', '19/11/2020'),
  (15, 'Ultrices Posuere Cubilia Foundation', 'J', '46614370640211', '217441885', null, '11/12/1985', '23/07/2015'),
  (16, 'Pellentesque Eget Industries', 'J', '68975936914348', '163334175', null, '25/10/1997', '10/09/2015');

-----------------------------------
insert into TIPO_ENDERECO values 
(1, 'Residencial Fixo'),
(2, 'Residencial Temporario'),
(3, 'Comercial'),
(4, 'Cobrança');

-----------------------------------
insert into ENDERECO_FUN values 
  (1, 3, 4, 'Santa Maria', 'Jesus', 70, '1646-6158', '71-966367528', 'in.lobortis.tellus@outlook.com', '89908-000'),
  (2, 1, 3, 'Centro', 'Fontain', 1036, '4727-3435', '15-926435112', 'in.felis@google.com', '89908-000'),
  (3, 4, 2, 'Interbi', 'Weekned', 5, '5497-5334', '48-937231316', 'arcu.sed@google.com', '89900-000'),
  (4, 3, 1, 'Ricaso', 'Samanta ', 680, '6107-1564', '74-967478756', 'blandit.mattis.cras@hotmail.com', '89890-000'),
  (5, 1, 5, 'Centro', 'Vira Lobos', null, '8013-2591', '18-944726258', 'dictum.mi@google.com', '89908-000'),
  (6, 2, 4, 'Centro', 'Presidente Fin', 613, '2818-8335', '14-912314567', 'tellus@outlook.com', '89890-000'),
  (7, 3, 3, 'Centro', 'Avenida 23', 38, '6584-2156', '43-961722564', 'congue.turpis@hotmail.com', '89908-000');

-----------------------------------
insert into ENDERECO_PES values 
  (1,3,7,'Zone','Goosd',3638,'1646-6158','71-966367528','id.magna@hotmail.com','89890-000'),
  (2,3,2,'Santa_Maria','La_sale',2188,'4727-3435','15-926435112','maecenas.libero@google.com','89890-000'),
  (3,4,10,'Santa_Maria','Avenida_Brasail',754,'5497-5334','48-937231316','vel.arcu@outlook.com','89890-000'),
  (4,3,1,'Interior', null, null,'6107-1564','74-967478756','mauris.ut@outlook.com','89900-000'),
  (5,1,11,'Tec','Avenida_Brasail',4118,'8013-2591','18-944726258','in.magna@hotmail.com','89908-000'),
  (6,2,4,'Zone','Avenida_Brasail',3573,'2818-8335','14-912314567','fermentum.risus@google.com','89908-000'),
  (7,3,14,'Interlag','Goosd',1926,'6584-2156','43-961722564','adipiscing.elit@hotmail.com','89900-000'),
  (8,2,13,'Interlag','Avenida_Brasail',3370,'8638-5576','42-948217794','commodo.tincidunt.nibh@outlook.com','89890-000'),
  (9,2,3,'Interior',null,null,'7622-8968','62-992782774','nibh@hotmail.com','89908-000'),
  (10,3,16,'Tec','Avenida_Brasail',3760,'6353-2298','52-978167262','tellus.aenean.egestas@hotmail.com','89890-000'),
  (11,3,8,'Centro','La_sale',4921,'9136-6667','74-938326940','ultrices.posuere.cubilia@outlook.com','89890-000'),
  (12,3,5,'Zone','Avenida_Brasail',911,'7521-3030','79-914535545','nunc.in.at@google.com','89900-000'),
  (13,3,9,'Interlag','La_sale',3600,'6425-8802','55-941483887','molestie.sed@hotmail.com','89890-000'),
  (14,1,12,'Interlag','La_sale',4945,'1191-4741','13-908134805','fringilla.ornare@hotmail.com','89890-000'),
  (15,4,6,'Interior',null,null,'7791-0382','87-911066356','eget@hotmail.com','89908-000'),
  (16,1,15,'Santa_Maria','France',1257,'6678-5815','74-941818856','risus@google.com','89908-000');

-----------------------------------
insert into PRINCIPIO_ATIVO values
(1, 'Paracetamol'),
(2, 'Diazepam'),
(3, 'Alopurinol'),
(4, 'Guaifenesina');

-----------------------------------
insert into TIPO_MEDICAMENTO values 
(1,'Referência'), 
(2, 'Genérico'),
(3, 'Similar');

-----------------------------------
insert into TIPO_TARJA values 
(1, 'Sem tarja'),
(2, 'Tarja Amarela'),
(3, 'Tarja Vermelha'),
(4, 'Tarja Preta');

-----------------------------------
insert into UNIDADE_MEDIDA values 
(1, 'Quilograma'),
(2, 'Unidade'),
(3, 'Caixa'),
(4, 'Litro');

-----------------------------------
insert into PRODUTO values 
(1, 'Paracetamol P750', 'Medicamento para alívio de dores de cabeça', 4.99, 0, 0.75, 1, 2, 2, 2, 500),
(2, 'Alopurinol', 'Medicamento usado para controlar Ácido Úrico', 7.99, 0, 0.10, 3, 2, 3, 2, 30),
(3, 'Valium', 'Medicamento para alívio da ansiedade', 23.99, 0, 0.10, 2, 1, 4, 2, 100),
(4, 'Paracetamol P500', 'Medicamento para alívio de dores de cabeça', 3.99, 0, 0.50, 1, 2, 2, 2, 500),
(5, 'Xarope Vick', 'Ajuda na eliminação do catarro em tosses', 15.00, 0, 0.12, 4, 2, 1, 2, 50);

-----------------------------------
insert into TIPO_PAGAMENTO values
(1, 'Dinheiro'),
(2, 'Cartão de Crédito'),
(3, 'Cartão de Débito'),
(4, 'Pix'), 
(5, 'Cheque'), 
(6, 'Boleto Bancário ');

-----------------------------------
insert into VENDA values
(1, 2, '07/04/2018 13:51:57', 2, 3, null),
(2, 5, '29/01/2019 09:59:49', 6, 2, null),
(3, 8, '28/12/2020 19:00:47', 4, 5, null),
(4, 9, '02/02/2021 07:25:06', 3, 3, null),
(5, 10, '19/07/2021 14:39:38', 1, 4, null),
(6, 11, '25/12/2021 10:05:21', 2, 2, null),
(7, 2, '14/02/2022 14:30:23', 1, 5, null), 
(8, 14, '23/03/2022 15:39:53', 4, 4, null);

-----------------------------------
insert into VENDA_ITEM values 
(1, 1, 2, 20, 7.99, 159.80),
(2, 2, 1, 10, 4.99, 49.90),
(3, 3, 5, 60, 15.00, 900.00),
(4, 4, 3, 10, 23.99, 239.90),
(5, 5, 4, 200, 3.99, 798.00),
(6, 6, 2, 5, 7.99, 39.95),
(7, 7, 1, 30, 4.99, 149.70),
(8, 8, 5, 15, 15.00, 225.00);

-----------------------------------
insert into COMPRA values 
(1, 4, '01/01/2012 07:40:05', 5, 4),
(2, 15, '01/01/2013 07:50:45', 5, 4),
(3, 15, '01/09/2013 08:00:02', 5, 4),
(4, 3, '01/04/2014 07:42:23', 5, 4),
(5, 16, '01/06/2020 07:35:59', 5, 4),
(6, 16, '01/06/2020 07:37:00', 5, 4);

-----------------------------------
insert into COMPRA_ITEM values 
(1, 1, 1, 3000, 2.99, 8970),
(2, 2, 2, 500, 3.50, 1750),
(3, 3, 3, 2000, 10, 20000),
(4, 4, 4, 4000, 1.50, 6000),
(5, 5, 1, 2000, 3.00, 6000),
(6, 6, 5, 1000, 7.00, 7000);

-----------------------------------
insert into PRODUTO_MOVIMENTO values
(1, '01/01/2012 07:40:05', 1, 4, 3000),
(2, '01/01/2013 07:50:45', 2, 15, 500),
(3, '01/09/2013 08:00:02', 3, 15, 2000),
(4, '01/04/2014 07:42:23', 4, 3, 4000),
(5, '07/04/2018 13:51:57', 2, 3, -20),
(6, '29/01/2019 09:59:49', 1, 2, -10),
(7, '01/06/2020 07:35:59', 1, 16, 2000),
(8, '01/06/2020 07:37:00', 5, 16, 1000),
(9, '28/12/2020 19:00:47', 5, 5, -60),
(10, '02/02/2021 07:25:06', 3, 3, -10),
(11, '19/07/2021 14:39:38', 4, 4, -200),
(12, '25/12/2021 10:05:21', 2, 2, -5),
(13, '14/02/2022 14:30:23', 1, 5, -30), 
(14, '23/03/2022 15:39:53', 5, 4, -15);

-----------------------------------

/*  Updates para realizar as movimentações de produtos  */

---------------Compras--------------------
update produto
set pro_quantidade = pro_quantidade + 3000
where pro_cod = 1;

update produto
set pro_quantidade = pro_quantidade + 500
where pro_cod = 2;

update produto
set pro_quantidade = pro_quantidade + 2000
where pro_cod = 3;

update produto
set pro_quantidade = pro_quantidade + 4000
where pro_cod = 4;

update produto
set pro_quantidade = pro_quantidade + 2000
where pro_cod = 1;

update produto
set pro_quantidade = pro_quantidade + 1000
where pro_cod = 5;

----------------Vendas--------------------
update produto
set pro_quantidade = pro_quantidade - 20
where pro_cod = 2;

update produto
set pro_quantidade = pro_quantidade - 10
where pro_cod = 1;

update produto
set pro_quantidade = pro_quantidade - 60
where pro_cod = 5;

update produto
set pro_quantidade = pro_quantidade - 10
where pro_cod = 3;

update produto
set pro_quantidade = pro_quantidade - 200
where pro_cod = 4;

update produto
set pro_quantidade = pro_quantidade - 5
where pro_cod = 2;

update produto
set pro_quantidade = pro_quantidade - 30
where pro_cod = 1;

update produto
set pro_quantidade = pro_quantidade - 15
where pro_cod = 5;

	

