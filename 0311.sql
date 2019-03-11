create table scott.new_emp
select *
from scott.emp;

select *
from scott.new_emp;

delete
from scott.new_emp;

insert into scott.new_emp
  (EMPNO, ENAME, DEPTNO)
select EMPNO, ENAME, DEPTNO
from scott.emp;


create or replace view scott.v_emp
as
select ename, job, DEPTNO
from scott.emp
where DEPTNO = 30;

select *
from scott.v_emp;