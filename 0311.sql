# noinspection SqlWithoutWhereForFile

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

select ENAME, DNAME
from scott.emp e
       inner join scott.dept d
                  on e.DEPTNO = d.DEPTNO
where ENAME = 'allen';

create or replace view scott.v_name
as
select e.EMPNO, e.ENAME, d.DNAME
from scott.emp e
       inner join scott.dept d
                  on e.DEPTNO = d.DEPTNO;

select *
from scott.v_name
where ENAME = 'allen';

-- install
-- conf
-- basic
-- dialect

-- sal 大于 scott 员工 sal ？
select sal
from scott.emp
where ENAME = 'sco_tt';

select *
from scott.emp
where sal > (
  select sal
  from scott.emp
  where ENAME = 'sco_tt'
); -- sub query 子查询


start transaction;
-- DMLs
delete
from scott.emp
where ENAME = 'allen';

select *
from scott.emp;

rollback; -- 回滚
commit; -- 提交

