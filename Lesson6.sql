-- Ќайти пользовател€ с наибольшим кол-вом полученных писем
SELECT count(*) as Total, to_user_id as amount  from messages GROUP by amount order by Total DESC;


-- ѕодсчитать общее количество лайков, которые получили 10 самых молодых пользователей.


-- подсчет лайков дл€ каждого пользовател€
select count(*) as Total, user_id from likes group by user_id order by user_id ASC;
-- —ортировка по г.р.
select id, birthday_at from users order by birthday_at desc limit 10; 
-- лайки только дл€ существующих пользователей
select user_id from likes where user_id in(select id from users);


-- подсчет лайков дл€ всех существующих пользователей
select count(*) as Total, user_id from likes  where user_id in(select id from users) group by user_id order by user_id ASC;
-- выбор 10 самых молодых пользователей
select id, birthday_at from users order by birthday_at desc limit 10;
