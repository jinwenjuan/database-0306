-- SQL 命令式
# Ctrl + Enter
show databases ;

create database db_school;

show tables from db_school;

create table db_school.student(
  -- 字段名 数据类型 [数据范围] [约束] 注释,
  name varchar(20) comment '学生姓名',
  age int(2) comment '年龄'
);

select * from db_school.student;

insert into db_school.student value ('Tom', 19);

update db_school.student set age = 20;

delete from db_school.student;

drop table db_school.student;

drop database db_school;