show tables from db_school;

drop table db_school.student;
create table db_school.student
(
  id     int auto_increment primary key comment 'id PK',
  -- 字段名 数据类型 [数据范围] [约束] 注释,
  sno    varchar(255) unique comment '学号',
  name   varchar(255) comment '学生姓名',
  age    int(2) comment '年龄',
  height double(3, 2) not null comment '身高 x.yz 米',
  dob    date comment '出生年月日 Date Of Birth'
) comment '学生表';

select *
from db_school.student;

desc db_school.student; -- desc: describe

insert into db_school.student value (null, '006', 'Tom', 19, 1.7, '2000-1-1');

update db_school.student
set dob = '2000-3-1'
where name = 'tom';