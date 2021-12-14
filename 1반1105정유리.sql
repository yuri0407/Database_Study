--ch06 ���̺� �����ϱ�
--equl join
select *
from employee, department
where employee.dno = department.dno;

select e.ename, d.dname
from employee e, department d
where e.dno = d.dno   --��������
and d.dname = 'SALES';   --�˻�����

--�Ϲ����� ���� ���
select e.eno, e.ename, d.dname, d.dno
from employee e, department d
where e.dno = d.dno     --��������
and e.eno = 7788;       --�˻�����

--natural join
select e.eno, e.ename, d.dname, dno
from employee e natural join department d
where e.eno = 7788;       --�˻�����

--join ~ using
select e.eno, e.ename, d.dname, dno
from employee e join department d
using(dno)   --��������
where e.eno = 7788;       --�˻�����

--join ~ on
select e.eno, e.ename, d.dname, d.dno
from employee e join department d
on e.dno = d.dno     --��������
where e.eno = 7788;       --�˻�����

--non-equl join
--����� �޿� ��� �˻�
select e.ename, e.salary, s.grade
from employee e, salgrade s
where e.salary between s.losal and s.hisal;   --��������

select e.ename, e.salary, s.grade
from employee e join salgrade s
on e.salary between s.losal and s.hisal;   --��������

--��� �̸�, �μ� �̸�, �޿� ��� �˻�
select e.ename, d.dname, e.salary, s.grade
from employee e, department d, salgrade s
where e.dno = d.dno   --��������
and e.salary between s.losal and s.hisal;   --��������

select e.ename, d.dname, e.salary, s.grade
from employee e join department d
on e.dno = d.dno   --��������
join salgrade s
on e.salary between s.losal and s.hisal;   --��������

--self join
--����̸��� ���ӻ���̸� �˻�
select e.ename ����̸�, m.ename ���ӻ���̸�
from employee e, employee m
where e.manager = m.eno;

select e.ename ����̸�, m.ename ���ӻ���̸�
from employee e join employee m
on e.manager = m.eno;

--outer join
--����̸��� ���ӻ���̸� �˻�, null�� ����
select e.ename ����̸�, m.ename ���ӻ���̸�
from employee e left outer join employee m
on e.manager = m.eno;


--ȥ���غ���
--1��
select e.ename, e.dno, d.dname
from employee e, department d
where e.dno = d.dno
and e.ename = 'SCOTT';

--2��
select e.ename, d.dname, d.loc
from employee e join department d
on e.dno = d.dno;

--3��
select dno, e.job, d.loc
from employee e join department d
using(dno)
where dno = 10;

--4��
select e.ename, d.dname, d.loc
from employee e natural join department d
where e.commission>0;

--5��
select e.ename, d.dname
from employee e, department d
where e.dno = d.dno
and e.ename like '%A%';

--6��
select e.ename, e.job, dno, d.dname
from employee e natural join department d
where d.loc = 'NEW YORK';

--8��
select e.ename "Employee", e.manager "Emp#", m.eno "Manager", m.ename "Mgr#"
from employee e left outer join employee m
on e.manager = m.eno
order by e.eno desc;