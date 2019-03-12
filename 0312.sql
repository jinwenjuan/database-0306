show index from scott.emp;
-- MySQL, Primary key & Foreign key 默认为索引

create index idx_ename on scott.emp (ENAME);

drop index idx_ename on scott.emp;

show index from db_school.student;

select ENAME
from scott.emp;

-- 如果 index 只有好处，没有必要存在这个概念
create index ind_password on db_csdn.user(password); -- 434176 KB
create index ind_username on db_csdn.user(username); -- 434176 KB
create index ind_email on db_csdn.user(email); -- 434176 KB

show index from db_csdn.user;

select password, count(password)
from db_csdn.user
group by password
order by 2 desc
limit 10 offset 0;

select *
from db_csdn.user
limit 100 offset 0;

select password
from db_csdn.user
where password regexp '^\198[0-9]{1}[0-9]{1,2}[0-9]{1,2}$';