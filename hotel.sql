drop database if exists hotel;
create database hotel character set utf8;
use hotel;

create table login(
id                               int             not null primary key auto_increment,
username                         varchar(50)     not null,
password                         varchar(50)     not null
)engine=innodb;

create table guests(
id                               int             not null primary key auto_increment,
full_name                        varchar(50)     not null,
email                            varchar(50)     not null,
address                          varchar(50),
dateofbirth                      varchar(11),
phonenumber                      varchar(20)
)engine=innodb;


insert into guests(full_name, email, address, dateofbirth, phonenumber)
values ('Ana Trifunovic', 'trifunovia@yahoo.com', '200 Palace Fields, Tuam, Co. Galway', '23.11.1977.', '087/786-7084');

insert into guests(full_name, email, address, dateofbirth, phonenumber)
values ('Goran Trifunovic', 'filipmateo2@gmail.com', '200 Palace Fields, Tuam, Co. Galway', '25.06.1977.', '085/744-2499');

insert into guests(full_name, email, address, dateofbirth, phonenumber)
values ('Filip Mateo Trifunovic', 'filipmateo5@gmail.com', '200 Palace Fields, Tuam, Co. Galway', '24.01.2011.', '089/946-7784');

insert into guests(full_name, email, address, dateofbirth, phonenumber)
values ('Stjepan Pranjic', 'stjepan@gmail.com', '200 Palace Fields, Tuam, Co. Galway', '25.02.2004.', '089/984-9713');

insert into guests(full_name, email, address, dateofbirth, phonenumber)
values ('Antonio Pranjic', 'toncika2013@gmail.com', '200 Palace Fields, Tuam, Co. Galway', '25.05.2011.', '089/986-8338');

insert into guests(full_name, email, address, dateofbirth, phonenumber)
values ('Russell Crowe', 'rcrowe123@gmail.com', '5th Avenue, New York, USA', '-', '-');

insert into guests(full_name, email, address, dateofbirth, phonenumber)
values ('Marco Van Basten', 'mvb25895@gmail.com', 'Somwhere, Amsterdam, Amsterdam', '-', '-');

insert into guests(full_name, email, address, dateofbirth, phonenumber)
values ('James Dean', 'j.dean@gmail.com', '123 Elm Street, Washington, USA', '-', '-');

insert into guests(full_name, email, address, dateofbirth, phonenumber)
values ('Rud Gullit ', 'gullit1@gmail.com', 'bjorm 8, Unknown', '-', '-');

insert into guests(full_name, email, address, dateofbirth, phonenumber)
values ('Howard Cole', 'h.cole456@yahoo.com', 'Docks, Galway', '-', '-');

insert into guests(full_name, email, address, dateofbirth, phonenumber)
values ('Jack Rabbit', 'j.rabbit33333@gmail.com', '24 High Street, Ballinrobe, Co.Mayo', '-', '-');

insert into guests(full_name, email, address, dateofbirth, phonenumber)
values ('Rudyard Kipling', 'kipling.r222@gmail.com', 'Unknown', '-', '-');

insert into guests(full_name, email, address, dateofbirth, phonenumber)
values ('Derek Skelly', 'dskelly@gmail.com', '198 Palace Fields, Tuam, Co.Galway', '-', '085/725-6648');

insert into login(username, password)
values ('Ana', 'Ana123');

insert into login(username, password)
values ('a', 'A');

insert into login(username, password)
values ('Goran', 'Goc1977');

insert into login(username, password)
values ('Filip', 'Filip2011');

insert into login(username, password)
values ('Antonio', 'Antonio123');