--ch06 테이블 조인하기
--equl join
select *
from employee, department
where employee.dno = department.dno;

select e.ename, d.dname
from employee e, department d
where e.dno = d.dno   --조인조건
and d.dname = 'SALES';   --검색조건

--일반적인 조인 방법
select e.eno, e.ename, d.dname, d.dno
from employee e, department d
where e.dno = d.dno     --조인조건
and e.eno = 7788;       --검색조건

--natural join
select e.eno, e.ename, d.dname, dno
from employee e natural join department d
where e.eno = 7788;       --검색조건

--join ~ using
select e.eno, e.ename, d.dname, dno
from employee e join department d
using(dno)   --조인조건
where e.eno = 7788;       --검색조건

--join ~ on
select e.eno, e.ename, d.dname, d.dno
from employee e join department d
on e.dno = d.dno     --조인조건
where e.eno = 7788;       --검색조건

--non-equl join
--사원별 급여 등급 검색
select e.ename, e.salary, s.grade
from employee e, salgrade s
where e.salary between s.losal and s.hisal;   --조인조건

select e.ename, e.salary, s.grade
from employee e join salgrade s
on e.salary between s.losal and s.hisal;   --조인조건

--사원 이름, 부서 이름, 급여 등급 검색
select e.ename, d.dname, e.salary, s.grade
from employee e, department d, salgrade s
where e.dno = d.dno   --조인조건
and e.salary between s.losal and s.hisal;   --조인조건

select e.ename, d.dname, e.salary, s.grade
from employee e join department d
on e.dno = d.dno   --조인조건
join salgrade s
on e.salary between s.losal and s.hisal;   --조인조건

--self join
--사원이름과 직속상관이름 검색
select e.ename 사원이름, m.ename 직속상관이름
from employee e, employee m
where e.manager = m.eno;

select e.ename 사원이름, m.ename 직속상관이름
from employee e join employee m
on e.manager = m.eno;

--outer join
--사원이름과 직속상관이름 검색, null도 포함
select e.ename 사원이름, m.ename 직속상관이름
from employee e left outer join employee m
on e.manager = m.eno;


--혼자해보기
--1번
select e.ename, e.dno, d.dname
from employee e, department d
where e.dno = d.dno
and e.ename = 'SCOTT';

--2번
select e.ename, d.dname, d.loc
from employee e join department d
on e.dno = d.dno;

--3번
select dno, e.job, d.loc
from employee e join department d
using(dno)
where dno = 10;

--4번
select e.ename, d.dname, d.loc
from employee e natural join department d
where e.commission>0;

--5번
select e.ename, d.dname
from employee e, department d
where e.dno = d.dno
and e.ename like '%A%';

--6번
select e.ename, e.job, dno, d.dname
from employee e natural join department d
where d.loc = 'NEW YORK';

--8번
select e.ename "Employee", e.manager "Emp#", m.eno "Manager", m.ename "Mgr#"
from employee e left outer join employee m
on e.manager = m.eno
order by e.eno desc;