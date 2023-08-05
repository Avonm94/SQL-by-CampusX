-- This is single line comment

/*
this is 
a 
multi 
line 
comment 
*/

-- create database
create database if not exists campus;

-- delete database
drop database campus;

-- work in database
use campus;

-- create a table
create table if not exists sampletb
(
id int,
name varchar(15),
email varchar(50),
city char(15));

-- delete a table
drop table sampletb;

create table if not exists sampletb
(
id int unique not null,
name varchar(15),
email varchar(50) unique,
city char(15));

-- insert records into the table
insert into sampletb (id,name,city,email) values (5251,'Prakash', 'Bangalore','satya@flipkart.com');
insert into sampletb (id,name,city,email) values (5251,'Prakash', 'Bangalore','Prakash@flipkart.com');
insert into sampletb (id,name,city,email) values (5251,'Prakash', 'Bangalore','Prakash1@flipkart.com');
select * from sampletb;

create table if not exists sampletb
(
id int not null,
name varchar(15),
email varchar(50),
city char(15),
unique (id,email));

-- creating a table with primary key
create table if not exists sampletb
(
id int,
name varchar(15),
email varchar(50) unique,
city char(15),
primary key (id));

-- creating a table with foreign key
create table if not exists testtb
(
order_id int,
user_id int,
time datetime,
primary key (order_id),
foreign key (user_id) references sampletb(id));

-- creating a table with check constraints
create table students
( sid int primary key,
sname varchar(60) not null,
email varchar(60) not null unique,
age int check (age > 6 and age < 25)
);


insert into students (sid,sname,email,age) values (5421, 'Prakash','sp@gmai.com',12);

insert into students (sid,sname,email,age) values (5421, 'Prakash','sp@gmai.com',19);

select * from students;

-- creating a table with default constraints
create table fk
(eid int primary key,
ename varchar (50) not null,
city varchar(20) default "Bangalore",
email varchar(65) not null unique);

select * from fk;

insert into fk (eid,ename,email) values (112,'Raju','s@gmail.com');

-- creating a table with auto increment constraints
create table passenger(
id int primary key auto_increment,
name varchar(70) not null);


insert into passenger (name) values ('Amit'); 
insert into passenger (name) values ('Amit');
insert into passenger (name) values ('Rohit');

select * from passenger;

-- Alter Table
-- Add coulmn in existing table
alter table passenger add column city char (21) not null default '0';

-- Remove coulmn from existing table
alter table passenger drop column city;

-- Modify coulmn in existing table
alter table passenger modify column city int not null ;


alter table passenger add column r_rank varchar(30)  ;
alter table passenger add constraint r_rank unique (r_rank);

alter table passenger drop constraint r_rank;

-- Insert values into the table
insert into students (sid,sname,email,age) values (5421, 'Prakash','sp@gmai.com',12);
insert into students values (5421, 'Prakash','sp@gmai.com',12);




