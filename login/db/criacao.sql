create database login;

use login;
create table user (
	iduser int primary key,
    username varchar(20) not null,
    password varchar(8) not null
);

insert into user (iduser, username, password) values
(1, 'mariana', '12345678');

select * from user;

insert into user (iduser, username, password) values
(2, 'sabrina', '123'),
(3, 'joao', '456');