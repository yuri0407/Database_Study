--2�� ȥ���غ���
--1�� �޿��� 300 �λ��� ��, ��� �̸�, �޿�, �λ�� �޿��� �˻�
select ename, salary, salary+300
from employee;

--2�� ����� �̸�, �޿�, ���� �Ѽ���(����*12+100)�� �� ������ ���� �ͺ��� ���� ������ �˻�
select ename, salary, salary*12+100 as �����Ѽ���
from employee
--order by salary*12+100 desc;
--order by �����Ѽ��� desc;
order by 3 desc;

--3�� �޿��� 2000�� �Ѵ� ����� �̸��� �޿��� �޿��� ���� �ͺ��� ���� ������ �˻�
select ename, salary
from employee
where salary>2000
order by salary desc;

--5�� �޿��� 2000���� 3000 ���̿� ���Ե��� �ʴ� ����� �̸��� �޿� �˻�
select ename, salary
from employee
where salary not between 2000 and 3000;

--6�� 1981�� 2�� 20�Ϻ��� 1981�� 5�� 1�� ���̿� �Ի��� ����� �̸�, ��� ����, �Ի��� �˻�
select ename, job, hiredate
from employee
where hiredate between '1981/02/20' and '1981/05/01';

--8�� ����� �޿��� 2000���� 3000 ���̿� ���Եǰ� �μ���ȣ�� 20 �Ǵ� 30�� ����� �̸�, �޿�, �μ���ȣ �˻�
select ename, salary, dno
from employee
where salary between 2000 and 3000
and dno in(20, 30)
order by ename asc;

select ename, salary, dno
from employee
where (salary >= 2000 and salary <= 3000)
and (dno = 20 or dno = 30)
order by ename asc;


--9�� 1981�⵵�� �Ի��� ����� �̸��� �Ի��� �˻�(like �����ڿ� ���ϵ�ī�� ���)
select ename, hiredate
from employee
where hiredate between '1981/01/01' and '1981/12/31';

select ename, hiredate
from employee
where hiredate like '81%';

--10�� ������(���ӻ��)�� ���� ����� �̸��� ������ �˻�
select ename, job
from employee
where manager is null;

--13�� �̸��� A�� E�� ��� �����ϰ� �ִ� ����� �̸� �˻�
select ename
from employee
where ename like '%A%'
and ename like '%E%';

--14�� ������(����)�� �繫��(CLERK) �Ǵ� �������(SALESMAN)�̸鼭
--�޿��� 1600 �Ǵ� 950 �Ǵ� 1300�� �ƴ� ����� �̸�, ������, �޿� �˻�
select ename, job, salary
from employee
where (job = 'CLERK' or job = 'SALESMAN')
--and (salary <> 1600 and salary <> 950 and salary <> 1300);
and not(salary = 1600 and salary = 950 and salary = 1300);

select ename, job, salary
from employee
where job in('CLERK', 'SALESMAN')
and salary not in(1600, 950, 1300);