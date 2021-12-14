--4�� �پ��� �Լ�
--���� �Լ�
--���� ���� ��ȯ �Լ� : length/lengthb
select length('Oracle Mania'), length('����Ŭ �ŴϾ�')
from dual;

select lengthb('Oracle Mania'), lengthb('����Ŭ �ŴϾ�') --�ѱ�1���ڴ� 3byte�� ó��
from dual;

--���� �����ϱ� : substr/substrb
select substr('Oracle Mania', 4, 3), substr('Oracle Mania', -4, 3)
from dual;

--�̸��� N���� ������ ��� �˻� :  substr ���
select *
from employee
where substr(ename, -1, 1) = 'N';

--87�⵵�� �Ի��� ��� �˻�
select *
from employee
where substr(hiredate, 1, 2) = '87';

select substrb('����Ŭ�ŴϾ�', 4, 6), substrb('����Ŭ�ŴϾ�', -6, 3)
from dual;

--Ư�� ��ȣ�� ä��� : lpad / rpad
select lpad(salary, 10, '*')
from employee;

--�յ� ���� �����ϱ� : trim / ltrim / rtrim
select trim(' Oracle mania ')
from dual;

--���� �Լ�
--�ݿø�, ���� : round / trunc
select 765.7654, round(765.7654), round(765.7654, 2), round(765.7654, -2)
from dual;

select 765.7654, trunc(765.7654), trunc(765.7654, 2), trunc(765.7654, -2)
from dual;

--�������� ������ ���ϱ� : mod
select mod(31, 2), mod(31, 5), mod(31, 8)
from dual;

--����� �޿��� 500���� ���� ������ ���ϱ�
select ename, salary, mod(salary, 500)
from employee;

--��¥ �Լ�
--���� ��¥ ǥ���ϱ� : sysdate
select sysdate-1 as ����, sysdate as ����, sysdate+1 as ����
from dual;

--������� �ٹ��ϼ� ����ϱ�
select ename, round(sysdate - hiredate)
from employee;

--������� �ٹ��� ���� �� ���ϱ� : months_between
select ename, sysdate, hiredate, trunc(months_between(sysdate, hiredate)) as month
from employee;

--�� ��ȯ �Լ�
--to char()
select ename, hiredate, to_char(hiredate, 'yy-mm'),
                        to_char(hiredate, 'yyyy/mm/dd, hh24:mi:ss')
from employee;

--���� ��¥�� �ð� ���
select sysdate, to_char(sysdate, 'yyyy/mm/dd, hh24:mi:ss')
from dual;

--�޿��� ����ϸ鼭 ��ȭ��ȣ �����̱�
select ename, salary, to_char(salary, 'L999,999')
from employee;

--to_date() : ��¥������ ��ȯ
--1981��2��20�Ͽ� �Ի��� ��� �˻�
select ename, hiredate
from employee
where hiredate = to_date(19810220, 'yyyymmdd');

--to_number() : ���������� ��ȯ
select to_number('100,000', '999,999') - to_number('50,000', '999,999')
from dual;