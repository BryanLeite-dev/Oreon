create database oreon;

use oreon;

create table if not exists cliente(
	cod_cli int primary key auto_increment,
    nome varchar(50),
    idade varchar(3),
    sexo enum('M','F'),
    telefone varchar(15),
    email varchar(50)
);

create table if not exists planos(
	cod_plano int primary key auto_increment,
    tipo varchar(50),
    descricao varchar(250)
);

create table if not exists pedido(
cod_pedido int primary key auto_increment,
cod_cli int,
cod_plano int,
dataPedido date,
hora time,
valor decimal(5,2),
descricao varchar(50),
constraint foreign key (cod_cli) references cliente(cod_cli),
constraint foreign key (cod_plano) references planos(cod_plano)
);

INSERT INTO cliente VALUES (default, 'Jorge', '35', 'M', '11 941877829', 'brybryan@gmail.com'),
(default, 'Joana', '20', 'M', '11 943422345', 'miguel.silva.souuza@gmail.com'),
(default, 'Jorge', '18', 'M', '11 943422346', 'Rafaelsouzacanute@gmail.com'),
(default, 'Pedro', '20', 'M', '11 943422349', 'fuleco@gmail.com'),
(default, 'Henrique', '19', 'M', '11 943422359', 'HenriqueEtec@gmail.com'),
(default, 'Jorge', '35', 'M', '11 943422559', 'JorgeAlfredo@gmail.com');


insert into planos values
(default,'Ecoturismo','Uma das principais modalidades de turismo no Brasil é o turismo cultural, focado em apresentar sobre a história e a cultura de um povo e/ou lugar.'),
(default,'Turismo cultural ','Também conhecido como turismo ecológico, o ecoturismo é um dos tipos mais famosos de turismo no Brasil e no mundo, especialmente popular entre pessoas que admiram a natureza e se preocupam com o meio ambiente.'),
(default,'Turismo rural','Um dos tipos de turismo mais comuns é o turismo de estudos, popularmente conhecido como intercâmbio'),
(default,'Turismo rural ','Se você gosta de acordar com o canto dos pássaros, sentir o cheiro de café logo cedo, tomar leite fresco e outras delícias da vida no campo, talvez o turismo rural seja o que você precisa'),
(default,'Turismo de esportes ','Uma das categorias mais antigas de viagens é o turismo de esportes, cujos primeiros registros remontam ao século VIII a.C, na Antiguidade, quando atletas de toda a Grécia se deslocavam para a cidade de Olímpia para provar seus talentos físicos.'),
(default,'Turismo de aventura','Você sabia que um dos tipos de turismo mais famosos é o turismo de aventura? Essa categoria é feita sob medida para quem gosta de desafios físicos e adrenalina nas altura');

insert into pedido values
(default,'2','2','2022-05-15','15:05:15','15.00','Turismo de estudos'),
(default,'1','3','2022-05-17','17:05:16','35.00','Turismo cultural'),
(default,'3','1','2022-05-17','19:05:16','85.00','Ecoturismo'),
(default,'4','4','2022-05-17','15:55:16','75.00','Turismo rural'),
(default,'5','6','2022-05-17','15:55:16','65.00','Turismo de aventura'),
(default,'6','5','2022-05-17','18:55:16','56.00','Turismo de esportes');