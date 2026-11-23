create database heranca_Emanuel
default character set utf8mb4
collate utf8mb4_0900_ai_ci;

use heranca_Emanuel;

create table if not exists usuario(
    id int auto_increment primary key,
    email varchar(50),
    senha varchar(8)
) character set utf8mb4;

insert into usuario (email, senha)
value ('emanuel@gmail.com','67676767'),
      ('gabriel@gmail.com','77777777');

create table if not exists cliente(
    nome varchar(50),
    cpf varchar(11),
    id_c int primary key,
    foreign key (id_c) references usuario(id)
);

insert into cliente (nome, cpf, id_c)
value ('Emanuel', '6767676767', 1);

select * from cliente;
select cliente.nome, cliente.cpf, usuario.email
from cliente inner join usuario
on cliente.id_c = usuario.id;