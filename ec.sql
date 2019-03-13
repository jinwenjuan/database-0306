drop database if exists db_ec;
create database db_ec;

-- user table
drop table if exists db_ec.user;
create table db_ec.user(
  id int auto_increment primary key comment 'id PK',
  email varchar(255) not null unique comment 'email NN UN',
  password varchar(255) not null comment 'password NN',
  mobile varchar(255) not null unique comment 'mobile NN UN'
)comment 'user table';

-- user table
drop table if exists db_ec.user_info;
create table db_ec.user_info(
  id int auto_increment primary key comment 'id PK',
  avatar varchar(255) comment 'avatar',
  gender char(2) comment 'gender',
  city varchar(255) comment 'city',
  userId int comment 'user id FK'
) comment 'user info table';

alter table db_ec.user_info
add constraint
user_info_fk_userId
foreign key (userId)
references db_ec.user(id);


-- category table

-- user table
drop table if exists db_ec.category;
create table db_ec.category(
  id int auto_increment primary key comment 'id PK',
  title varchar(255) not null comment 'title NN',
  picture varchar(255) comment 'category picture',
  categoryId int comment 'parent category id FK'
)comment 'category table';

-- product table
drop table if exists db_ec.product;
create table db_ec.product(
  id int auto_increment primary key comment 'id PK',
  title varchar(255) not null comment 'title NN',
  price decimal(8,2) not null comment 'price NN',
  originalPrice decimal(8,2) comment 'original price',
  -- slide pictures ?
  -- detail pictures ?
  categoryId int comment 'category id FK'
) comment 'product table';


select *
from db_ec.user;

select *
from db_ec.user_info;