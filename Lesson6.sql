-- ����� ������������ � ���������� ���-��� ���������� �����
SELECT count(*) as Total, to_user_id as amount  from messages GROUP by amount order by Total DESC;


-- ���������� ����� ���������� ������, ������� �������� 10 ����� ������� �������������.


-- ������� ������ ��� ������� ������������
select count(*) as Total, user_id from likes group by user_id order by user_id ASC;
-- ���������� �� �.�.
select id, birthday_at from users order by birthday_at desc limit 10; 
-- ����� ������ ��� ������������ �������������
select user_id from likes where user_id in(select id from users);


-- ������� ������ ��� ���� ������������ �������������
select count(*) as Total, user_id from likes  where user_id in(select id from users) group by user_id order by user_id ASC;
-- ����� 10 ����� ������� �������������
select id, birthday_at from users order by birthday_at desc limit 10;
