--ch07 ��������
--SCOTT�� ������ �μ����� �ٹ��ϴ� ��� �˻�
select ename, dno
from employee
where dno = ( select dno
              from employee
              where ename = 'SCOTT');
              
--�ּ� �޿��� �޴� ����� �̸�, ������, �޿� �˻�
select ename, job, salary
from employee
where salary = ( select min(salary)
                 from employee );
                 
--30�� �μ��� �ּ� �޿��� ���� ��,
--�μ��� �ּ� �޿��� ���� �ּ� �޿����� ū �μ��� ���
select dno, min(salary)
from employee
group by dno
having min(salary) > ( select min(salary)
                       from employee
                       where dno=30 );

--������ ��������                       
--�μ��� �ּ� �޿��� �޴� ����� �����ȣ�� �̸�, �޿� ���
select eno, ename, salary, dno
from employee
where salary in ( select min(salary)
                 from employee
                 group by dno )
order by dno;

--������ SALESMAN�� �ƴϸ鼭 �޿��� ������ SALESMAN���� ���� ��� �˻�
select ename, job, salary
from employee
where salary < any( select salary
                 from employee
                 where job = 'SALESMAN' )
and job<>'SALESMAN';

--������ SALESMAN�� �ƴϸ鼭 �޿��� ��� SALESMAN���� ���� ��� �˻�
select ename, job, salary
from employee
where salary < all( select salary
                 from employee
                 where job = 'SALESMAN' )
and job <> 'SALESMAN';

--ȥ���غ���
--1��
select ename, job
from employee
where job = ( select job
              from employee
              where eno=7788 );

--2��
select ename, job
from employee
where salary > ( select salary
                 from employee
                 where eno=7499 );
--3��
select ename, job, salary
from employee
where salary = ( select min(salary)
                 from employee );

--4��
select job, round(avg(salary), 1)
from employee
group by job
having round(avg(salary),1) = ( select min(round(avg(salary), 1))
                                from employee
                                group by job );

--5��
select ename, salary, dno
from employee
where salary in ( select min(salary)
                  from employee
                  group by dno );

--6��
select eno, ename, job, salary
from employee
where salary < any( select salary
                    from employee
                    where job = 'ANALYST' )
and job <> 'ANALYST';

--9��
select ename, hiredate
from employee
where dno = ( select dno
              from employee
              where ename='BLAKE' )
and ename <> 'BLAKE';

--10��
select eno, ename
from employee
where salary > ( select avg(salary)
                 from employee )
order by salary;

--11��
select eno, ename
from employee
where dno in ( select dno
              from employee
              where ename like '%K%' );

--12��
select ename, dno, job
from employee
where dno = ( select dno
              from department
              where loc = 'DALLAS' );

--13��
select ename, salary
from employee
where manager = ( select eno
              from employee
              where ename = 'KING' );

--14��
select dno, ename, job
from employee
where dno = (select dno
                         from department
                        where dname = 'RESEARCH');

--15��
select eno, ename, salary
from employee
where salary > (select avg(salary)
                             from employee)
and dno in(select dno
                    from employee
                    where ename like '%M%');

--16��
select job, avg(salary)
from employee
group by job
having avg(salary) = (select min(avg(salary))
                                        from employee
                                        group by job);