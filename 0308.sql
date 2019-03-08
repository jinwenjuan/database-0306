# noinspection SqlWithoutWhereForFile

select *
from db_school.student;



delete
from db_school.student;

show full columns from db_school.student;

show full tables from db_school;

show variables like 'c%';

select *
from scott.emp;


select EMPNO, HIREDATE -- 投影
from scott.emp;

select distinct JOB
from scott.emp;

select *
from scott.emp
# where SAL > 2000;
# where SAL <> 3000;
# where SAL <> 3000 and JOB <> 'salesman';
where SAL <> 3000 or JOB <> 'salesman';

-- ci: case insensitive
select *
from scott.emp
where ENAME = binary 'Scott';

select JOB, ENAME, HIREDATE
from scott.emp
# order by ENAME asc; -- ascend default
# order by ENAME desc; -- descend
# order by ENAME;
# order by HIREDATE; -- 工龄长的在前？后？
order by JOb, ENAME desc ;


select comm
from scott.emp
order by COMM;