--�����͸� ��ȸ�ϱ� ���� select ��
--��� �μ����� �˻�
select *            --�÷���
from department;    --���̺��

--��� ������� �˻�
select *
from employee;

--��� ����� ����̸�, ����, �Ի��� �˻�
select ename, job, hiredate
from employee;

--����̸�, �޿�, ����(�޿�*12) �˻� - ��������� ���
select ename, salary, salary*12
from employee;

--����̸�, �޿�, ������, ����(�޿� * 12 + ������) �˻� - ��������� ���, nvl�Լ�, ��Ī���
select ename, salary, commission, salary * 12 + nvl(commission, 0) as ����
from employee;

--������̺��� �μ���ȣ �˻� - �ߺ������� ���� distinct
select distinct dno
from employee;

--���� ��¥ ��� - sysdate, dual ���̺�, ���̺��� desc
select sysdate
from dual;

desc dual;
select * from dual;

desc department;