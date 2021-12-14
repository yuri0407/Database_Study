--where ���� �̿��� ���� �˻�

select ename, job, dno
from employee
where dno = 10;

--�޿��� 1500 �̻��� ��� �˻�
select ename, salary
from employee
where salary >= 1500;

--SCOTT ��� ���� �˻� -���� ������ ��ȸ
select *
from employee
where ename = 'SCOTT';

--�Ի����� 1981/01/01 ������ ����� �˻� -��¥ ������ ��ȸ
select *
from employee
where hiredate <= '1981/01/01';

--�μ���ȣ�� 10�̰� ������ MANAGER�� ��� �˻�
select *
from employee
where dno=10 and job='MANAGER';

--�μ���ȣ�� 10�̰ų� ������ MANAGER�� ��� �˻�
select *
from employee
where dno=10 or job='MANAGER';

--�μ���ȣ�� 10�� �ƴ� ��� �˻�
select *
from employee
where not dno=10;

select *
from employee
where dno<>10;

--�޿��� 1000���� 1500 ������ ��� �˻�
select *
from employee
where salary >=1000 and salary <=1500;

--�޿��� 1000 �̸��̰ų� 1500 �ʰ��� ��� �˻�
select *
from employee
where salary <1000 or salary >1500;

--Ŀ�̼��� 300 �̰ų� 500 �̰ų� 1400�� ��� �˻�
select *
from employee
where commission=300 or commission=500 or commission=1400;

--�޿��� 1000���� 1500 ������ ��� �˻� -between
select *
from employee
where salary between 1000 and 1500;

--�޿��� 1000 �̸��̰ų� 1500 �ʰ��� ��� �˻�
select *
from employee
where salary not between 1000 and 1500;

--1982�⿡ �Ի��� ��� �˻�
select *
from employee
where hiredate between '1982/01/01' and '1982/12/31';

--Ŀ�̼��� 300 �̰ų� 500 �̰ų� 1400�� ��� �˻� -in
select *
from employee
where commission in(300, 500, 1400);

--Ŀ�̼��� 300, 500, 1400�� �ƴ� ��� �˻� -in
select *
from employee
where commission not in(300, 500, 1400);

--like �����ڿ� ���ϵ�ī��
--����̸��� F�� �����ϴ� ��� �˻�
select *
from employee
where ename like 'F%';

--�̸��� M�� ���ԵǾ� �ִ� ��� �˻�
select *
from employee
where ename like '%M%';

--�̸��� N���� ������ ��� �˻�
select *
from employee
where ename like '%N';

--�̸��� �� ��° ���ڰ� A�� ��� �˻�
select *
from employee
where ename like '_A%';

--�̸��� �� ��° ���ڰ� A�� �ƴ� ��� �˻�
select *
from employee
where ename not like '_A%';

--null�� ���� ������
--����� Ŀ�̼� �˻�
select ename, commission
from employee

--Ŀ�̼��� null�� ��� �˻�
select ename, commission
from employee
where commission is null;

--Ŀ�̼��� null�� �ƴ� ��� �˻�
select ename, commission
from employee
where commission is not null;

--������ ���� order by ��
select *
from employee
order by ename asc; --��������

--������ ���� order by ��
select *
from employee
order by ename desc; --��������

--�޿� ���� ������ �˻�
select *
from employee
order by salary desc;

--�ֱ� �Ի��� ������ �˻�
select *
from employee
order by hiredate desc;

--�޿� ���� ��, �̸� ������ �˻�
select *
from employee
order by salary desc, ename asc;