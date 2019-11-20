-- Практическое задание по теме “Операторы, фильтрация, сортировка и ограничение”
-- Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.

select created_at, updated_at from users;

UPDATE users  set created_at = from_unixtime(rand()*(unix_timestamp('2010-12-31')-unix_timestamp('1990-01-01'))+unix_timestamp('1990-01-01'))
;
UPDATE users  set updated_at = from_unixtime(rand()*(unix_timestamp('2019-11-15')-unix_timestamp('2010-12-31'))+unix_timestamp('2010-12-31'))            
;          

-- Таблица users была неудачно спроектирована. Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения в формате "20.10.2017 8:10". 
-- Необходимо преобразовать поля к типу DATETIME, сохранив введеные ранее значения.

ALTER TABLE users MODIFY created_at DATE;
ALTER TABLE users MODIFY updated_at DATE;

-- В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 0, если товар закончился и выше нуля, если на складе имеются запасы. 
-- Необходимо отсортировать записи таким образом, чтобы они выводились в порядке увеличения значения value. Однако, нулевые запасы должны выводиться в конце, после всех записей.

SELECT id, name, value FROM storehouses_products ORDER BY value DESC